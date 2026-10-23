# Livraison 5.27.6 — contrôle de la copie Joomla

Paquet principal final : SHA-256 `a0629d7771fca683d7d9e3a4cf9f68ee5b02116bff22a45392836d0d07ffd24a`.

| Vérification | Résultat et périmètre |
|---|---|
| Conservation du paquet précédent | Tous ses fichiers restent présents ; 899 fichiers de champs natifs et 278 fichiers AllVideoShare inchangés. Les trois installateurs réunis couvrent les 8 982 fichiers source. |
| Installation réelle | Deux extensions média Joomla installées et 1 200 fichiers vérifiés ; installation complète du paquet final réussie, avec 1 766 assertions de conservation et de correspondance des fichiers. |
| Images | 240 PNG originaux conservés, 240 empreintes distinctes ; 1 200 variantes optimisées vérifiées par empreinte, décodage et dimensions. Contrôle visuel sur douze planches de vingt scènes. |
| Texte | 240 cas supplémentaires propres aux sujets et 240 carnets CSV ; descriptions complètes. 102 258 mots dans les corps d’articles, moyenne 426, minimum 341. Les douze guides principaux sont plus développés ; les autres dossiers traitent des questions ciblées. |
| Révision native | 240 identités existantes réutilisées, avec conservation des relations, champs supplémentaires, ajouts et personnalisations. Un texte volontairement réécrit est laissé intact. Réexécution idempotente. |
| Erreur en cours de lot | Échec volontaire après une première écriture MyISAM ; restauration des enregistrements et index de champs concernés vérifiée. Ce test ne constitue pas une garantie transactionnelle globale sur MyISAM. |
| Métadonnées personnalisées | Mise à jour des descriptions d’origine, conservation des résumés et de la description volontairement personnalisés ; dictionnaires globaux des champs conservés lors de la révision. |
| Couvertures personnalisées | URL et alt personnalisés conservés ; un fichier directement remplacé au chemin de l’ancienne couverture bloque son remplacement automatique. Les crédits et variantes du paquet ne sont pas imposés à un fichier modifié. |
| Pages et sitemap | 239 vues HTML publiques contrôlées : réponse 200, canonical, H1, description, auteur, image sociale, schéma et cas pratique. Leurs 239 images distinctes figurent dans le plan natif. La couverture du 240e cas était délibérément personnalisée pour tester sa conservation. |
| Description finale | Contrôle HTTP supplémentaire d’une page par univers après la mise au propre des phrases de description. |
| Ordinateur et mobile | Douze univers testés aux deux tailles, sans exception JavaScript ni débordement global constaté. Deux univers revérifiés après les derniers ajustements de texte. |
| Identité du site | Tests des méthodes/hôtes exclus et du JSON-LD ; simulation HTTP locale des deux hôtes Geniuspace : redirection 301 vers HTTPS sans www, chemin et paramètres conservés. Aucun déploiement public effectué. |
| Nettoyage des essais | 481 publications, 335 commentaires, 1 822 champs, 119 types, 119 sections, 401 catégories et 4 comptes préexistants conservés. Les enregistrements de test et leurs données dérivées sont retirés. Dix-huit suggestions créées par un premier diagnostic sont également retirées après vérification qu’aucune publication conservée ne les utilise. |

Les reçus JSON détaillent les assertions et leur portée. Les captures illustrent la copie locale. L’aperçu comporte 241 pages HTML avec liens locaux vérifiés et 240 illustrations, disponibles en 480 et 1 200 px.

Le contrôle concurrent des 239 pages a mesuré environ 10 secondes de réponse médiane sur ce laboratoire. Un profilage du rendu et des requêtes natives reste nécessaire ; les images légères ne suffisent pas à garantir un serveur rapide. Les fichiers WebP de 480 px ont une taille médiane de 26 ko.

Les observations publiques et la marche à suivre Search Console sont dans [l’audit d’indexation](AUDIT-INDEXATION-5.27.6.md). Les performances et l’indexation devront être contrôlées après installation sur l’hébergement réel. La présence de balises et de schémas ne garantit ni l’indexation ni un classement.
