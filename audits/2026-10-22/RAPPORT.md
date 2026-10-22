# Geniuspace 5.27.0 — ergonomie, parcours et collaboration

Travail et essais du 21–22 octobre 2026, sur la copie isolée « Nexus Innovation Lab ». Ce rapport accompagne un **ZIP complet installable**, fondé sur la version 5.26.0. Aucun déploiement, paiement ou message externe n’a été effectué sur geniuspace.io.

## Ce qui change concrètement

| Problème constaté | Changement livré | Vérification |
|---|---|---|
| Le premier sujet Gaming arrivait vers 2 943 px sur mobile. | Trois onglets : **Discussions / Découvrir / Outils**. Les discussions passent en premier ; les pages d’offres conservent la recherche d’emploi comme entrée. Sliders, images et calculateurs restent accessibles. | Premier sujet vers **479 px**, sur la fenêtre Chromium mobile de 390 × 844 utilisée ici. La mesure finale figure dans `preuves/ux.json`. |
| Le message semblait disparaître après publication. | Le serveur renvoie la carte native sauvegardée ; le flux l’insère immédiatement, avec accès à la discussion et à l’enrichissement. La protection contre les doublons reste active. | 12 publications courtes, une par univers : carte visible immédiatement dans les 12 cas. |
| Le sommaire recouvrait Publier. | Réservation de la place de la toolbar ; le sommaire cède la place aux formulaires, à la citation sélectionnée et aux liens de réponse qu’il croise. | Contrôle du véritable élément qui reçoit le clic, pas seulement de sa position. |
| Les puces et l’en-tête mobile devenaient illisibles. | Largeur minimale des puces, défilement horizontal local, marque entière, deux lignes d’en-tête sans chevauchement, libellé court de publication. | Contrôles des largeurs et du débordement ; captures mobiles jointes. |
| Le formulaire emploi exposait 90 contrôles. | Les mêmes champs natifs sont répartis en **4 étapes** : poste, travail réel, candidature, publication. Brouillon explicite sur l’appareil et aperçu de la saisie. | **10 contrôles visibles à l’ouverture**. Enregistrement natif d’une nouvelle offre, restauration du brouillon et aperçu testés. |
| « Product » ramenait « production ». | Correspondance par mots entiers et priorité au titre ; frontières adaptées aux écritures CJK. Les filtres restent ceux des champs natifs. | « Product » et « Product Manager » retrouvent Product Manager Senior ; le terme de contrôle inexistant ne retourne aucune offre. |

Les données enrichies des cartes sont regroupées dans **« Médias, données et ressources »** : le titre, l’extrait et Répondre sont accessibles plus tôt. Les contenus et outils de ce volet sont conservés dans le HTML. Une composition personnalisée déjà publiée par un administrateur conserve son agencement ; elle n’est pas remplacée automatiquement par la composition par défaut.

La revue a également corrigé le contraste de certaines cartes Gaming/Paranormal, le bouton de citation masqué par les éléments flottants, un paramètre nul qui empêchait d’ouvrir des formulaires spécialisés, et une course d’initialisation de la sauvegarde native TinyMCE pendant les navigations rapides.

## Les cinq innovations mises en place

| Innovation | Fonction livrée | Où la trouver | Limite explicite |
|---|---|---|---|
| Missions entre univers — 9,5/10 | Mission privée, objectif, étapes réordonnables, ressources natives liées, action, résultat et preuve. Points de départ emploi, gaming, Japon et projet professionnel, plus un parcours libre. | **Missions** dans la toolbar ; widget « Missions & dossiers collaboratifs » ; champ parcours natif. | La progression est déclarée par le membre ; elle n’est pas une certification. |
| Questions contextualisées — 9,5/10 | Sélection d’une phrase, citation attachée au vrai champ, contrôle de la révision, lien de retour. Les instants vidéo conservent leur connexion aux commentaires. | **Discuter ce passage** et **Discuter cet instant**. | Une citation retirée de la fiche n’est plus révélée par l’annotation. Les sélecteurs textuels dépendent aussi du navigateur. |
| IA montrant ses preuves — 9,5/10 | Vue des sources publiques encore valides, versions évaluées, proposition acceptée ou rejetée, version active. | Onglet **Progrès IA**, accès assistant, widget correspondant. | Les mesures existantes évaluent le **classement des ressources**. Elles ne prouvent pas une hausse générale de l’intelligence du modèle. Aucune statistique n’est inventée si les évaluations manquent. |
| Tableau de travail entreprise — 9/10 | Vue privée des questions à traiter, candidatures du pipeline natif, propositions/devis et formations. Les actions ouvrent les fiches et traitements natifs. | **Travail pro** dans l’espace Missions ; bouton dédié sur ordinateur ; widget correspondant. | Lecture bornée aux 200 fiches récentes pertinentes, jusqu’à 150 actions affichées. Ce n’est pas un remplacement des tableaux spécialisés. |
| Dossiers collaboratifs — 9/10 | Invitations à accepter, lecture ou contribution, révocation, historique des versions et reprise d’anciennes étapes dans une nouvelle saisie. | Participants et historique du dossier. | Partager le dossier ne partage jamais automatiquement les droits de ses pièces natives. |

Ces notes expriment une priorité produit, pas une mesure de domination commerciale. Les trois nouveaux widgets sont également disponibles dans la bibliothèque du constructeur existant.

JoomCCK reste propriétaire des fiches, champs, relations parent/enfant, médias, commentaires et sauvegardes. Trois tables InnoDB supplémentaires stockent seulement les dossiers de travail, leurs invitations et leurs événements. Les médias et preuves restent des fiches natives. Dix champs natifs supplémentaires sont provisionnés si leur alias n’existe pas : personnage, biographie, capacités, ville, pays, prix d’acquisition, travaux, frais, aides et parcours.

## Essais par type de publication et conseil ergonomique

Les 23 formats ont chacun été **publiés par le contrôleur natif**, puis ont reçu deux réponses de membres. Vidéos, images, fichier texte et capsule audio ont été joints par les chemins d’upload natifs. Les scénarios sont synthétiques et clairement présentés comme des essais. Pour les améliorations communes, les formulaires conservent leurs champs propres et le même parcours guidé ; les conseils spécifiques ci-dessous constituent la prochaine optimisation éditoriale.

| Format essayé | Cas publié | Analyse et prochaine optimisation spécifique |
|---|---|---|
| Discussion | Préparer une candidature et clarifier les conditions. | L’action principale doit rester écrire → publier. Les outils riches s’ouvrent à la demande ; conserver le texte pendant l’enrichissement. |
| Article | Évaluer une IA à partir de ses sources. | Faire précéder le développement d’un résumé utile, puis relier chaque question à son passage. Le lien de citation est livré et vérifié. |
| Données & pitch | Choisir un cadre pour une activité de conseil. | Montrer objectif, hypothèses, date et prochaine décision avant le graphique ; distinguer chiffres sourcés et simulations. |
| Finance & sources | Lire une rémunération avec son contexte. | Présenter période, devise et source avec chaque montant ; comparer à périmètre constant. Éviter les compteurs de rendement trompeurs. |
| Code | Vérifier une addition de postes budgétaires. | Expliquer le résultat attendu avant le bloc technique. Conserver les limites d’exécution et un bouton de copie identifiable. |
| Espaces & relations | Préparer une rencontre culturelle à Kyoto. | Donner lieu, date, accessibilité et taille du groupe avant les relations avancées. Éviter de demander une adresse personnelle publique. |
| Audio | Présenter une source historique et sa transcription. | Afficher durée, lecture et transcription ensemble ; les réponses peuvent distinguer source, interprétation et question. |
| Vidéo | Observer un playtest. | Rendre chapitres, instant à commenter et reprise de lecture évidents. L’essai a publié un commentaire lié à **00:04**. |
| Images | Comparer matière et coupe d’un vêtement. | Légende, détail visuel et texte alternatif doivent expliquer ce qu’il faut comparer ; prévoir une progression photo par photo. |
| Fichiers | Grille de comparaison réutilisable. | Indiquer format, taille et aperçu textuel avant téléchargement ; relier le document à l’objectif du membre. |
| Avis & notes | Carnet d’entretien de couteau japonais. | Séparer rédaction et membres, montrer la taille de l’échantillon ; demander durée d’usage, points forts et limites. Deux vrais avis 5/5 et 3/5 donnent **4/5**, rédaction **4,5/5**. |
| Équipe & joueurs | Former un groupe de playtest. | Afficher disponibilités, rôle recherché, appareil et niveau avant les détails de guilde. Aider à formuler une première prise de contact. |
| Reportage | Reprendre le judo avec des repères concrets. | Introduire lieu, date et point de vue du reportage ; proposer images/vidéo et transcription sans interrompre le récit. |
| Vidéo & avis produit | Essayer un accessoire de jeu. | Relier chaque critère à un instant vidéo et garder l’avis rédactionnel séparé. Dans Gaming, les mêmes scores s’affichent **16/20 membres**, **18/20 rédaction**. |
| Coalition d’achat | Construire une demande de carnets artisanaux. | Montrer besoin, quantité, enveloppe déclarée et prochaine étape. Un montant déclaré ne doit pas devenir « certifié » sans preuve. |
| Raid & playtest | Retour d’une session coopérative. | Demander version, contexte, observation et reproduction ; orienter vers la prochaine version plutôt qu’un formulaire exhaustif. |
| Enquête & fact-checking | Documenter une lumière observée. | Distinguer original, contexte, hypothèses et conclusion. L’empreinte du fichier assure son suivi, pas la vérité de l’interprétation. |
| Rendez-vous expert | Préparer quinze minutes de questions. | Faire écrire le résultat attendu avant les détails de réservation ; rendre les conditions et le coût total lisibles. |
| Offre partenaire | Trouver un partenaire d’atelier. | Exposer livrable, périmètre, délai et critères de réponse. Les échanges professionnels restent dans la file de travail native. |
| Sponsoriser une équipe | Soutenir un atelier sportif. | Montrer usage des fonds, contreparties et preuves attendues ; ne jamais présenter une intention comme un paiement. |
| Dossier pays & tourisme | Préparer un séjour avec un budget daté. | Rassembler carte mentale des étapes, fourchettes de budget et retour de résidents ; proposer la mission de préparation du séjour. |
| Fiche de héros | Présenter un personnage fictif. | Donner identité, progression et capacités avec protection des spoilers. Les nouveaux champs natifs évitent une fiche générique inadaptée. |
| Fiche pays / Akiya | Évaluer une maison ancienne. | Séparer acquisition, travaux, frais et aides conditionnelles. Le coût global et les inconnues doivent précéder la demande de contact. |

Douze autres publications natives ont été créées : entreprise, cours, leçon, offre, blog, produit, ressource vidéo, réservation, compétence, communauté, exercice et projet-preuve. Leurs pages et les cinq index entreprise/formation/emploi/blog/produit ont été contrôlés. Les liens entreprise → cours et emploi, et cours → leçon, sont conservés. Il s’agit de validations fonctionnelles de laboratoire, pas d’inscriptions ou de transactions commerciales réelles.

## Lecture des parcours et rétention

| Profil simulé | Réduction de friction apportée | Prochaine expérimentation mesurable |
|---|---|---|
| Entreprise qui recrute | Offre guidée, aperçu, fiche canonique et accès aux questions/formations dans Travail pro. | Mesurer le taux de formulaires commencés puis publiés et le délai jusqu’à la première question traitée. |
| Candidat | Conditions et ressources natives reliées à une mission personnelle ; question liée à une condition exacte. | Mesurer compréhension des conditions, reprise du brouillon et candidature effectivement achevée, sans classement artificiel des personnes. |
| Membres des 12 univers | Mur plus tôt, réponse directe, formats riches à la demande, mission conservée d’une visite à l’autre. | Mesurer délai jusqu’au premier échange utile et retour à 7 jours ; distinguer quantité de réactions et utilité réelle. |
| Fan de séries / manga | Fiche de personnage adaptée, spoilers protégés, questions et réponses imbriquées. | Tester des groupes à progression différente et vérifier qu’aucun titre de ressource ne révèle un spoiler dans un dossier. |
| Fan du Japon / acheteur | Données de séjour, images et dépenses distinctes ; coalition et fiche Akiya structurées. | Tester une comparaison complète en JPY et en EUR, avec dates et frais clairement séparés. |
| Amateur de traditions | Capsule audio, transcription, sources et distinction entre récit, histoire et allégation. | Mesurer la capacité à retrouver la source plutôt que pousser à multiplier les consultations. |

L’approche combine des actions principales explicites et des interfaces denses accessibles à la demande. Le test de recherche CJK protège un usage en japonais ; il ne constitue pas une étude interculturelle avec de vrais participants. Avant de généraliser, réaliser des tests français, anglais et japonais sur appareils réels, y compris saisie IME et navigation clavier.

La meilleure différenciation est la continuité **comprendre → questionner → préparer → agir → documenter un résultat**. Les badges devraient récompenser une contribution utile et expliquée, sans fabriquer d’urgence, de présence ou de certification. Les offres sponsorisées doivent rester identifiables et pertinentes pour leur univers. Évaluer toute monétisation sur le taux d’actions utiles et la confiance, pas seulement sur les clics.

## SEO, SEF, visibilité IA et sécurité

Les 23 pages de format ont été contrôlées pour leur réponse HTTP, titre, H1 visible, description, URL canonique SEF et JSON-LD analysable. Les paramètres d’affichage ne figurent pas dans les URL canoniques de ces fiches. Les notes des membres et de la rédaction restent distinctes ; les vidéos conservent `VideoObject` et leurs chapitres. Les commentaires contextualisés exposent leur référence vérifiée dans `Comment.about`.

Les ressources liées entre univers restent des liens vers les fiches canoniques natives, ce qui renforce le maillage interne sans multiplier les duplications. Les missions, dossiers et files de travail privées ne sont pas exportés comme contenus publics. Les recherches filtrées restent `noindex, follow`. Les sources de l’IA sont revérifiées au moment de leur affichage.

Le contrôle syntaxique du JSON-LD ne garantit pas l’éligibilité à un résultat enrichi Google, Bing ou Baidu, ni une citation par un agent IA. L’achat de mots-clés et les campagnes SEM ne sont pas configurés par cette livraison. Mesurer ensuite indexation, conversions, liens internes et Core Web Vitals sur le site déployé.

Les essais de sécurité couvrent notamment CSRF, accès hors propriétaire, invitation non encore acceptée, lecture seule, révocation, historique, conflit de révision, champ devenu privé, citation supprimée, correspondance de recherche et échappement des contrôles. Les dossiers n’accordent aucun droit supplémentaire sur les fiches jointes. Les métriques publiques IA utilisent une liste explicite de clés autorisées.

Les nouvelles tables sont InnoDB. Les tables natives préexistantes et leurs moteurs ne sont pas convertis silencieusement. Si le diagnostic de production signale encore MyISAM, utiliser le plan hors ligne existant `tools/prepare-innodb.php` avec sauvegarde et maintenance ; les essais locaux n’établissent pas l’état de la base de production.

## Vérification et livraison

Les résultats détaillés, captures, empreinte du ZIP et chemins modifiés sont fournis dans ce dossier. Les fichiers de comptes, mots de passe, configuration Joomla, données de test et outils locaux ne sont pas dans le ZIP installable. Les données créées pour les simulations sont retirées de la copie locale après les contrôles ; les nouveaux champs et tables fonctionnels sont conservés.

Les essais ont utilisé Chromium automatisé sur ordinateur et fenêtre mobile. Ils ne remplacent pas une recette Safari/iOS, Android réel, lecteur d’écran, une charge de production ou un audit de sécurité exhaustif. La vitesse du serveur de laboratoire n’est pas un indicateur des Core Web Vitals de geniuspace.io. Les changements d’onglet préservent les éditeurs et évitent un rechargement de page ; l’espace de travail ne demande ses données qu’à son ouverture.

Après installation : purger les caches Joomla/CDN, vérifier les trois onglets, une publication courte, une offre filtrée et le nouveau bouton Missions avec vos rôles réels. Les champs de chaque section restent administrables dans JoomCCK ; les personnalisations déjà publiées restent prioritaires.

### Résultats finaux

- **47 fiches publiées** : 23 formats, 12 messages courts et 12 contenus des autres sections.
- **46 réponses** vérifiées sur les 23 formats ; **72 commentaires natifs** ont été retirés lors du nettoyage complet des essais, y compris les reprises et le commentaire vidéo.
- **23 contrôles UX**, 20 de collaboration, 22 de logique/sécurité, 7 cas de métadonnées de citation invalides, 18 de filtres natifs et 16 de composition du constructeur passent.
- Les 23 pages de format et les 12 univers publics après installation passent leurs contrôles dédiés. L’archive finale passe **350 contrôles d’installation et de préservation**.
- **0 fichier source retiré** ; 26 modifiés, 14 ajoutés ; 899 fichiers de champs natifs et 278 fichiers AllVideoShare inchangés.
- La base de laboratoire retrouve **481 fiches, 335 commentaires, 401 catégories et 4 comptes** après retrait des données créées pour les essais. Les dix nouveaux champs fonctionnels et les trois tables des dossiers restent installés.

Un premier rechargement du fil Gastronomie a manqué la carte alors que son insertion immédiate avait réussi. La recharge mobile puis une requête serveur finale l’ont retrouvée. Ce point est conservé dans les preuves, sans le transformer en garantie universelle de cohérence de cache. Une réponse Paranormal et les clics de citation ont été repris après diagnostic ; les réponses finales sont présentes.

**Téléchargement :** [NEXUS 5.27.0](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/NEXUS_5.27.0.zip), 49566165 octets. SHA-256 : `491d6f9b0d28f46531b9cc4f66ffbde11d7cd2d23492893af334bbd8f703d0bc`.
