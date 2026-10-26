# Audit Geniuspace — publications, routage et sécurité — 26 octobre 2026

## État du site public et portée du travail

Les vérifications publiques ont confirmé les **180 topics attendus en 404**, **9 discussions accessibles** dont quatre tests très courts, la chaîne de deux redirections de l’accueil vers Jeux vidéo et le problème des fragments du sitemap utilisant `/index.php`.

Une vérification complémentaire a comparé le même appel public `geniuspace.forumRadar` : à la racine, réponse **200 en 1,37 s** ; via `/index.php`, expiration du délai du contrôle après **18,2 s**. Ce test prouve la différence entre les deux entrées au moment du contrôle ; il n’identifie pas à lui seul la règle de serveur ou de proxy responsable. Le correctif évite cette entrée pour les appels concernés sans modifier la configuration du serveur.

**La production n’a pas été modifiée.** La connexion native Joomla configurée, retentée après la confirmation de l’utilisateur puis après le redémarrage de l’environnement le 26 octobre, a été refusée avec un jeton CSRF valide ; le formulaire de connexion est resté affiché. Aucun contournement de l’authentification n’a été tenté. Les preuves de publication ci-dessous concernent la copie locale, avec de vrais enregistrements et les vraies vues Joomla/JoomCCK.

## Causes et corrections

| Problème | Cause constatée dans le projet | Correction livrée |
|---|---|---|
| 180 topics absents | La présence de leur catalogue éditorial dans les fichiers ne prouvait pas leur publication en base ; le correctif précédent ne publiait que le Japon | Publication native reprenable des quinze topics de chacun des douze univers, contrôle final des enregistrements et de leur visibilité |
| Articles absents du Multi-Blog | La collection complète pouvait ne pas avoir été publiée ; les illustrations et les carnets pouvaient manquer | Vingt articles par univers, récupération des illustrations vérifiées et ajout des 240 carnets vierges |
| Ancien sujet absent du bon fil | Quatre anciennes racines coexistent avec les racines actuelles ; les associations natives diffèrent | Association supplémentaire des anciens contenus publics à leur univers actuel, sans retirer leurs anciennes catégories |
| Accueil en deux redirections | Accueil Joomla vide conservé comme point d’entrée au lieu du hub natif | Transformation conditionnelle du menu d’accueil vide en véritable vue native du Méta-Hub |
| Fragments du sitemap expirés | Liens générés vers l’entrée publique `/index.php` défaillante | Fragments et découverte sur l’entrée racine fonctionnelle, déclaration du sitemap dans robots.txt |
| Widgets ou médias susceptibles d’expirer | Même construction de certaines adresses d’API et de formulaires | Changement de l’entrée publique ; paramètres, tâches, contrôles d’accès et traitements existants conservés |
| Sujets de test indexables | Quatre contenus exacts de seulement quelques mots | Noindex conditionnel, sans suppression et avec protection des sujets enrichis depuis l’audit |
| Erreur 500 sur une leçon et charge excessive | Le modèle interne ignorait la requête et ne recevait pas de taille de page : 473 cartes, 3,5 Mo de HTML, dépassement PCRE du traitement SEF Joomla | Taille de page native explicitement initialisée ; 12 cartes et pagination conservée sur le cas testé, réponse 200, environ 405 ko de HTML |
| Installation refusée sur la base annoncée | Trois fichiers introduits après 5.27.8 étaient marqués comme déjà obligatoires | Nouveaux fichiers autorisés sur la base, empreintes conservées pour ceux déjà présents ; vraie mise à jour depuis les fichiers 5.27.8 testée |
| Callback de quiz incorrect | Identifiant concaténé avant validation, sélection sans tous les champs distincts et possibilité d’attribution anonyme | Entier positif validé avant SQL, sélection des couples distincts record/champ, utilisateur authentifié et non bloqué |
| Écriture native hors requête HTTP | Utilisation directe de REMOTE_ADDR dans la table des valeurs | Repli vide en traitement de fond ; absence de warning vérifiée |

Les adresses de notifications de paiement affichées par le backend utilisent aussi la racine. Aucune configuration déjà enregistrée chez Stripe, PayPal ou un autre prestataire n’est modifiée ; leur fonctionnement réel doit être contrôlé avec les comptes concernés.

Les textes éditoriaux existants n’ont pas été réécrits pour ce correctif. Les résultats techniques ne constituent pas une nouvelle évaluation exhaustive de leur qualité métier ni une garantie d’indexation.

## Architecture pour le développeur

La réparation reste dans **com_joomcck**. Elle ne crée pas de second moteur de publications, de table de topics parallèle ou de base de comptes séparée.

| Élément | Responsabilité |
|---|---|
| `PublicationRepair.php` | Création, état, verrou et exécution des lots ; journal privé ; vérification des 420 publications ; récupération des médias |
| `EditorialPack::collection2026()` / `topics2026()` | Enregistrement des contenus via les mécanismes natifs existants ; conservation des contenus présents |
| `CategoryBridge.php` | Raccordement des anciennes catégories publiques et redirections des racines devenues des alias |
| `NativeHome.php` / `ForumRoutes.php` | Menu d’accueil natif et URL racine canonique |
| `TopicSeoAudit.php` / `PublicMaterial` / `NativeAccess` | Contrôle des publications, de leurs champs, de leurs relations et de leur visibilité publique réelle |
| `geniuspace.repairPublications` | API POST protégée par identité, permission core.admin, CSRF et origine |
| `publication-job.js` | Progression visible, reprise après rechargement et gestion d’une étape déjà en cours |
| Plugin système JoomCCK | Affichage du panneau uniquement pour le super administrateur et uniquement tant que la réparation reste à terminer |

Les **18 phases** sont : médias A, médias B, raccordement des catégories, accueil, protection de l’index des tests, douze lots d’univers, vérification finale. Chaque lot de contenus dispose de sa transaction native ; l’état avance avec son reçu. Un verrou de base empêche deux travailleurs d’exécuter le même lot simultanément. Une requête occupée renvoie 409 avec reprise différée ; une étape terminée peut être relue sans créer de doublon.

L’état est enregistré dans `#__extensions.params`, clé `geniuspace_publication_repair_52711`, en conservant les autres paramètres. Les tables contrôlées avant installation sont `js_res_record`, `js_res_record_values`, `js_res_record_category`, `js_res_categories`, `gp_social_links`, `gp_social_knowledge_chunks`, `menu`, `extensions` et `assets`. Une table contrôlée non InnoDB bloque l’installation. Ce contrôle ne prétend pas certifier le moteur de toutes les autres tables du site public.

Les packs d’illustrations sont limités à des adresses HTTPS connues. Leur empreinte globale et celle de chaque image sont vérifiées. Seules les entrées attendues du manifeste sont lues ; pas d’extraction arbitraire ni d’exécution d’installateur tiers. Une image personnalisée dont les octets diffèrent est conservée et interrompt la récupération avec un message explicite.

## Preuves sur la copie locale

Pour éprouver une vraie création, les 420 anciens alias de collection ont été temporairement mis de côté dans la copie locale. La réparation a alors **créé 240 articles et 180 topics**. Deux variantes d’image ont été volontairement retirées pour déclencher de vrais téléchargements des deux packs. Les variantes récupérées correspondent à leurs empreintes. Les fixtures de test sont retirées après contrôle et les alias précédents restaurés.

| Univers | Articles publics | Topics publics |
|---|---:|---:|
| Jeux vidéo | 20 | 15 |
| Emploi et carrières | 20 | 15 |
| Pays et immobilier | 20 | 15 |
| Artisanat et boutiques Japon | 20 | 15 |
| Business et statuts | 20 | 15 |
| Investissement | 20 | 15 |
| Herbier et traditions | 20 | 15 |
| Enquêtes et UAP | 20 | 15 |
| Manga et pop culture | 20 | 15 |
| Gastronomie et couteaux | 20 | 15 |
| Sports et arts martiaux | 20 | 15 |
| IA, technologie et sciences | 20 | 15 |
| **Total** | **240** | **180** |

Le contrôle HTTP a parcouru **457 pages réelles** : les 420 publications, seize fils, seize magazines, l’accueil et les quatre tests exclus de l’index. Les seize listings incluent les quatre anciens univers, afin d’éprouver leurs redirections. **Toutes aboutissent à une réponse 200** après correction ; aucun titre, H1, canonical ou schéma attendu manquant n’a été relevé par les contrôles définis.

Les contrôles portent notamment sur l’unicité du H1 et de la canonique, la description, la validité JSON-LD, `Article` ou `DiscussionForumPosting`, l’auteur, le corps et la bonne illustration, les cartes natives dans les fils et les magazines, ainsi que l’absence du message « Cette vue est momentanément indisponible ». Ils ne constituent pas un test visuel de chaque pixel de chaque fonctionnalité historique.

Après les derniers changements du paquet, **148 pages supplémentaires ou représentatives ont été revérifiées le 26 octobre, sans erreur détectée** : tous les fils et magazines d’univers, l’accueil, les tests, deux articles et deux topics par univers, les deux index généraux Multi-Blog et les autres destinations du sitemap. La leçon qui renvoyait une erreur 500 figure dans ce contrôle final.

Les **six fragments du sitemap** renvoient **482 URL** sur cette copie : les 420 publications attendues et l’accueil y figurent ; les quatre tests noindex n’y figurent pas. Aucun lien de fragment n’utilise `/index.php?`.

Autres vérifications documentées : installation par le véritable installateur Joomla ; refus d’un fichier personnalisé ; autorisations invité ; verrou de concurrence ; conservation des champs et contenus privés ; protection des tests ayant reçu image, fichier ou réponse ; rejet des URL de téléchargement non autorisées ; accueil rédigé conservé ; callback de quiz en mode SQL strict ; reprise du panneau dans Chromium ; publication native avec image et refus des tentatives de rattachement à un autre ticket.

Le 26 octobre, le paquet final a aussi été installé à partir des fichiers figés de la base 5.27.8. Les 59 fichiers de fonctionnement et 240 carnets installés correspondent aux octets du ZIP. Les contrôles du paquet comptent **995 assertions** de provenance, empreintes, chemins et syntaxe ; cela ne représente pas 995 scénarios fonctionnels. Les contrôles ciblés comprennent **27 vérifications de sécurité**, **16 vérifications navigateur**, **12 vérifications de publication riche avec image** et **3 vérifications de refus d’un fichier personnalisé**.

Les nombres détaillés, reçus et contrôles finaux sont dans [le dossier de preuves](audits/2026-10-25-reparation-52711/). Les fichiers privés de connexion, cookies, sauvegardes de données et imports de membres ne sont pas distribués.

## Contrôles à terminer après l’installation publique

1. Confirmer le reçu final réel de production, puis ouvrir les douze univers et les douze magazines sans session administrateur.
2. Contrôler quelques anciens topics et plusieurs nouveaux sujets par univers, leurs URL canoniques et leurs réponses.
3. Contrôler que l’accueil vide est devenu natif, ou relever la raison explicite pour laquelle un accueil personnalisé a été conservé.
4. Tester les interactions du site public avec ses réglages réels : publication rapide, commentaires, recherche, filtres d’emploi, upload et médias. La copie locale ne peut certifier les modules, fichiers personnalisés, règles de proxy ou permissions propres à la production inaccessible.
5. Soumettre le sitemap racine, inspecter un échantillon des nouvelles URL dans Search Console et suivre l’évolution de « Explorée, actuellement non indexée ». Aucune donnée Search Console authentifiée n’a été consultée pour ce correctif.
6. Mesurer la vitesse sur le serveur public après déploiement. Les durées de la copie locale ne prédisent pas le résultat avec les caches, la charge et les extensions de production. Des dépréciations Joomla héritées restent hors du périmètre de cette réparation ciblée.

Il n’est pas possible d’attribuer les variantes de marque suggérées par Google à une cause unique à partir de ces contrôles. Une racine stable, les titres et canoniques cohérents, des auteurs identifiés et le maillage natif renforcent les signaux de Geniuspace ; la sélection finale des résultats appartient aux moteurs.
