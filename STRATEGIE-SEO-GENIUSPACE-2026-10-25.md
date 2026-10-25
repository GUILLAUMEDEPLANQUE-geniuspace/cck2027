# Geniuspace : audit des topics et stratégie de marque

Audit public du 25 octobre 2026. Les observations ci-dessous précèdent le déploiement du correctif 5.27.10. Les tests d’installation et d’interface portent sur la copie locale ; ils ne prouvent pas une modification du site public.

## Sommaire

- [Diagnostic public](#diagnostic-public)
- [Pourquoi les marques proches peuvent passer devant](#pourquoi-les-marques-proches-peuvent-passer-devant)
- [Ce que le correctif ajoute au site](#ce-que-le-correctif-ajoute-au-site)
- [Plan de travail sur 90 jours](#plan-de-travail-sur-90-jours)
- [Maillage natif et qualité des topics](#maillage-natif-et-qualité-des-topics)
- [SEM et visibilité auprès des assistants](#sem-et-visibilité-auprès-des-assistants)
- [Mesure et décisions](#mesure-et-décisions)

## Diagnostic public

| Contrôle | Observation | Conséquence et priorité |
|---|---|---|
| Entrée du site | `/` → 302 vers `/hub?nx_mode=forum&nx_welcome=1` → 302 vers Jeux vidéo | L’arrivée présente un seul univers. Donner une identité claire à Geniuspace dans le Méta-Hub : P0. Une redirection 302 ne constitue pas, à elle seule, un blocage d’indexation. |
| Nouvelles discussions | Les **180 URL attendues ont été testées individuellement : 180 réponses 404**, après nouvelle vérification des erreurs temporaires | Les topics préparés dans les fichiers ne sont pas publiés à ces adresses. Vérifier la base native et publier les lots manquants : P0. Une base privée pourrait contenir des brouillons ; l’audit public ne l’exclut pas. |
| Discussions existantes | **9 discussions publiques** retrouvées et accessibles ; cinq questions éditoriales de 94 à 102 mots et quatre sujets de test de 1 à 3 mots | Conserver les questions utiles. Enrichir les tests ou leur appliquer `noindex` dans JoomCCK après revue : P0. Un topic utile n’a pas besoin d’une longueur d’article. |
| Articles existants | **5 articles publics** retrouvés sur les fils et le sitemap | Ce chiffre n’atteste pas la publication de la collection de 240 articles. |
| Structure des fils | Les 14 URL existantes répondent 200 après vérification ; titres, H1, canoniques et schémas Article/DiscussionForumPosting présents | La présence de balises ne compense pas les sujets absents ou sans contenu utile. Les images sont facultatives pour une discussion textuelle valide. |
| Sitemap | L’index accessible à `/?option=com_joomcck&task=geniuspace.sitemap` renvoie encore ses fragments vers `/index.php`. Les requêtes directes à cette dernière adresse n’ont pas répondu dans les 20–25 secondes de test | Corriger les liens de l’index et déclarer le sitemap qui fonctionne : P0. La cause exacte côté hébergement n’est pas établie. |
| Vérification du fragment | Le même fragment via la racine répond 200 en environ 1,6 s et contient 16 URL, dont les 14 fils/articles identifiés | Le sitemap existe ; son chemin de découverte est défaillant. Les 180 nouveaux topics n’y sont pas présents. |
| Robots | Les règles autorisent les pages publiques et ne déclarent pas de sitemap | Ajouter une déclaration sans remplacer les règles existantes. L’absence de cette ligne n’interdit pas l’indexation. |
| Stabilité | Des réponses 503 temporaires ont été observées durant le parcours ; les 14 fils ont ensuite tous répondu 200, en vérification séquentielle | Examiner les journaux et ressources de l’hébergement. L’audit n’établit pas une panne permanente ou une cause précise. |
| Identité structurée | Un schéma WebSite nommant déjà Geniuspace et l’alternative Geniuspace.io est présent | Renforcer sa cohérence avec l’accueil, les auteurs et l’éditeur ; ne pas ajouter les noms des autres marques comme synonymes. |

Le rapport JSON conserve les observations initiales et les nouvelles vérifications. Il couvre également **121 pages de listes et catégories**, et les 180 URL de topics prévues ; il ne certifie pas des discussions privées ou des fiches impossibles à découvrir publiquement.

Les quatre sujets de test identifiés restent accessibles dans le correctif : `test`, `test2`, `vxvxvxvwxv` et `bvxvxvx-test-sonyxcsdsdfsd`. Leur contenu ne doit pas être allongé artificiellement pour atteindre un nombre de mots. Leur exclusion d’indexation est une décision éditoriale à prendre dans leurs champs natifs, en tenant compte de leurs éventuelles réponses utiles.

## Pourquoi les marques proches peuvent passer devant

Le nom de domaine ne donne pas automatiquement la première position sur une recherche de marque. Google cherche aussi à identifier l’entité visée et l’intention de la requête. La correction orthographique, la langue, le pays, les mentions externes et les signaux établis d’autres sites peuvent modifier les résultats.

Le statut Search Console communiqué par le propriétaire est **3 pages indexées, 230 non indexées, principalement « Explorée, actuellement non indexée »**. Cela signifie que Google a exploré les pages concernées puis ne les a pas retenues dans cet état de son index. Ce statut ne prouve ni une pénalité, ni une cause unique liée à la qualité.

Les observations établissent ici des problèmes concrets de publication, de découverte et d’identité de l’accueil. Elles ne démontrent pas pourquoi une marque concurrente précise occupe une position donnée : les résultats Google, les backlinks, les journaux Googlebot et les canoniques choisies dans Search Console n’ont pas été observés directement. La canonique sélectionnée par Google pour l’accueil reste à relever.

Conserver partout **Geniuspace**, avec **Geniuspace.io** comme variante légitime. Présenter clairement l’activité, ses responsables et ses méthodes. Ne pas répéter « Geniusspace », « Genipspace » ou d’autres noms proches dans les titres, données structurées et textes pour tenter de récupérer ces recherches : cela brouillerait l’identité.

## Ce que le correctif ajoute au site

Le correctif 5.27.10, préparé et testé localement, ajoute :

1. Un Méta-Hub qui présente Geniuspace. Le renvoi automatique vers un seul univers devient une option explicite, désactivée par défaut. Le chemin `/hub` sans paramètre affiche la même vue de marque que l’entrée depuis l’accueil.
2. Un titre SEO, un H1 et une présentation configurables dans JoomCCK. La présentation détaillée et les liens vers toutes les catégories natives restent accessibles dans l’onglet Découvrir, sans repousser les discussions sous un long bloc d’introduction.
3. Une identité WebSite et un éditeur Geniuspace reliés par des identifiants stables. Aucun profil externe, avis, adresse légale, badge ou qualification n’est inventé.
4. Des liens de sitemap et de découverte corrigés. Le Méta-Hub public rejoint le premier fragment du sitemap. L’installateur ajoute la déclaration du sitemap dans un `robots.txt` existant et accessible en écriture, en conservant ses règles ; sinon il signale l’action à faire.
5. Un audit privé, **JoomCCK → Outils → Audit SEO → Topics et stratégie de marque**, pour contrôler les sujets natifs par lots et les quinze topics prévus par univers. L’outil distingue absent, restreint, public et exclu de l’indexation ; il vérifie les champs publics, catégories et relations vers les guides.
6. Le correctif Japon 5.27.9 : vingt articles, quinze topics et leurs illustrations, publication native réelle à l’installation, magazine centré, titres contextuels et absence de doublons à la réinstallation.

Les **165 autres nouveaux topics** ne sont pas publiés automatiquement par ce correctif. L’audit privé permet de confirmer leur état réel ; l’outil existant de récupération publie les univers manquants lorsque leurs ressources et images sont installées. Les contenus existants, leurs modifications et leur visibilité choisie sont conservés.

## Plan de travail sur 90 jours

| Période | Travail | Résultat à vérifier |
|---|---|---|
| Jours 0–7 | Installer le correctif, contrôler les publications réelles, traiter les sujets de test, vérifier le sitemap et les accès invités | Des pages publiques lisibles, des liens cohérents, aucun topic attendu présenté comme publié alors qu’il est absent |
| Jours 0–7 | Inspecter l’accueil et quelques URL prioritaires dans Search Console ; relever canonique déclarée/choisie, dernière exploration et motifs d’exclusion | Un diagnostic par URL, avec dates et preuves |
| Jours 8–30 | Sélectionner deux ou trois univers disposant d’une expertise et de ressources réelles. Revoir leurs dossiers prioritaires, publier leurs discussions associées et compléter leurs parcours | Un ensemble cohérent de pages utiles et reliées ; les autres univers restent disponibles |
| Jours 8–30 | Documenter l’auteur réel, la méthode éditoriale, la façon de corriger un contenu, les sources et les coordonnées publiques pertinentes dans les fiches natives | Des éléments vérifiables, cohérents avec le contenu et les données structurées |
| Jours 8–30 | Inviter de vrais artisans, entreprises, formateurs et membres à contribuer et à mentionner les pages qu’ils utilisent | Des contributions et mentions légitimes ; aucun faux trafic ou faux avis |
| Jours 31–90 | Actualiser les meilleurs dossiers à partir des questions réelles ; consolider les pages qui répondent à la même intention, en gardant les fonctionnalités | Une qualité croissante et des parcours mieux compris, sans inflation de pages quasi identiques |
| Jours 31–90 | Étendre ce qui démontre son utilité aux autres univers, avec leurs formats, preuves et publics propres | Une croissance éditoriale maîtrisée, mesurée sur l’usage et la visibilité réelle |

Ces délais organisent le travail. Ils ne prédisent pas la date d’indexation ou de classement de Google.

## Maillage natif et qualité des topics

Le chemin principal doit rester compréhensible : **Geniuspace → univers → guide → discussion → ressource ou action pertinente**. Les champs natifs parent/enfant définissent les relations, les permissions et les URL. Les liens HTML doivent rester explorables sans qu’un clic JavaScript soit le seul accès au contenu.

Exemples :

- **Japon :** guide des tailles kimono → question sur une mesure réelle → fiche d’artisan → atelier ou produit pertinent.
- **Emploi :** offre → condition précise → discussion → compétence à acquérir → cours → candidature, avec candidature directe toujours accessible.
- **Gaming :** guide matériel → protocole de test → vidéo chapitrée → discussion sur une observation → playtest → retours.
- **Entreprise :** présentation → réalisation documentée → discussion → formation ou devis, selon le besoin du membre.

Chaque topic doit avoir une question distincte, un contexte suffisant pour répondre et une bonne catégorie. Les sources sont nécessaires lorsqu’une contribution affirme des faits qui demandent vérification ; elles ne sont pas une obligation artificielle pour toute question personnelle. Les avis et résultats doivent rester attribués à leur véritable auteur. Un exemple fictif doit être annoncé comme tel.

Pour les guides : apporter une méthode propre, un cas pratique concret, des éléments vérifiables, les limites de la conclusion et une mise à jour réelle. Les métadonnées résument ce contenu. Une FAQ, une image ou un schéma ne remplace pas cette contribution. Les liens entre univers doivent répondre au besoin du lecteur, sans blocs automatiques reliant tout à tout.

## SEM et visibilité auprès des assistants

Pour une éventuelle campagne de marque, préparer des groupes séparés pour **Geniuspace** et **geniuspace.io**, puis des campagnes d’intention précises par univers. Envoyer chaque recherche vers une page utile correspondante, avec un appel à l’action clair et une mesure de conversion consentie. Les tarifs, budgets et campagnes restent à configurer ; aucune campagne n’a été créée ou activée.

Pour les assistants et moteurs de réponse, publier des informations accessibles, datées, attribuées et sourcées. Le catalogue public, les données structurées et les relations entre fiches doivent refléter le contenu visible et respecter les mêmes permissions. Les corrigenda et les limites sont utiles à la confiance. Aucune promesse de citation automatique ou de « score GEO » n’est introduite.

Les performances se travaillent sur les pages réelles : temps de réponse, poids des médias, ressources de l’hébergement et retours des utilisateurs. Le nouvel audit approfondi est réservé aux responsables JoomCCK ; il ne s’exécute pas pour chaque visiteur. Les contrôles locaux ne constituent pas des Core Web Vitals mesurés en conditions réelles.

## Mesure et décisions

Suivre chaque semaine un tableau séparant :

- les URL réellement publiques, les erreurs et les exclusions explicites ;
- les URL indexées et les raisons de non-indexation dans Search Console ;
- les impressions, clics et requêtes contenant Geniuspace ;
- les canoniques choisies sur les pages prioritaires ;
- les actions utiles réelles : réponse, démarrage d’un cours, candidature, demande ou contact ;
- la stabilité du serveur et les mesures de performance réelles.

Soumettre le sitemap accessible dans Search Console. Demander une réexploration ciblée des pages prioritaires corrigées, puis observer leur état ; ne pas multiplier les demandes pour remplacer un travail sur les pages. L’API d’indexation Google ne sert pas à soumettre arbitrairement tous les articles et forums.

À consulter : [nom du site](https://developers.google.com/search/docs/appearance/site-names), [contenu utile](https://developers.google.com/search/docs/fundamentals/creating-helpful-content), [canoniques](https://developers.google.com/search/docs/crawling-indexing/consolidate-duplicate-urls), [sitemaps](https://developers.google.com/search/docs/crawling-indexing/sitemaps/overview).

Les rapports techniques et observations sont fournis dans [audits/5.27.10-seo/](audits/5.27.10-seo/). Aucun accès Search Console authentifié ni classement concurrent n’est attesté par ces rapports.
