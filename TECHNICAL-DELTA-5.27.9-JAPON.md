# Delta technique 5.27.9 — publications Japon et Multi-Blog

## Diagnostic public

La page `/hub/boutiques-artisanat-japon` chargeait les ressources 5.27.8 mais ne contenait aucune nouvelle carte native de topic. Le magazine de catégorie était vide, son titre HTML était « Boutique Japon | Communauté Geniuspace · Articles » et son H1 restait global. Le contenu du magazine ne disposait pas de conteneur éditorial centré ; la colonne des commentaires pouvait afficher un commentaire d’un autre univers. Le lien de création de l’état vide perdait la catégorie.

Les articles et topics du lot éditorial étaient préparés dans le paquet précédent, sans avoir été publiés dans la base de production. Une correction CSS seule ne pouvait pas faire apparaître ces fiches.

## Fichiers applicatifs

| Fichier JoomCCK installé | Changement |
|---|---|
| `library/php/geniuspace/NexusBlogIndex.php` | Identité par catégorie, paramètres natifs facultatifs, métadonnées et CollectionPage cohérentes, commentaires limités à la catégorie et ses descendants |
| `models/forms/category.xml` | Ajout de `blog_heading`, `blog_accent`, `blog_intro`, `blog_seo_title`, `blog_seo_description` |
| `views/records/tmpl/default_list_nexus_forum7.php` | Conservation de `cat_id` dans le lien de création |
| `library/php/geniuspace/UniverseBlueprint.php` | Invalidation du cache de `reference-shell.css` par version 5.27.9 |
| `media/com_joomcck/nexus/reference-shell.css` | Conteneurs éditoriaux centrés à 1 600 px, titre équilibré et grille à trois colonnes au-delà de 1 800 px |

Le shell de l’application, ses colonnes et défilements, les sliders, les facettes, les formulaires et les champs existants restent disponibles. Aucun ancien nom de méthode n’est retiré des trois fichiers PHP applicatifs concernés. Le numéro de version du composant principal reste celui du paquet de base ; le correctif est une extension Joomla de type `file`, version 5.27.9.

## Installation et données

`files_geniuspace_japan.xml` et `script.php` constituent une extension de maintenance native Joomla. Le script vérifie les droits super administrateur, PHP ≥ 8.3, la présence du forum, InnoDB, les chemins et les empreintes 5.27.8/finales. Il refuse les liens symboliques et les fichiers personnalisés inconnus.

Le script sauvegarde les cinq fichiers et les images déjà présentes avant de remplacer les fichiers par renommage atomique. Les écritures natives passent par `Store::atomic` : paramètres de catégorie, `EditorialPack::collection2026('artisanat')`, `EditorialPack::topics2026('artisanat')`, liens et index associés. Les catégories et types sont résolus sur l’installation cible. Aucun identifiant de catégorie de la copie locale n’est imposé.

Un reçu privé comptabilise les fiches créées, préservées et réellement publiques selon les ACL natives. Les données déjà présentes sont conservées, sans doublons. Un échec avant validation de la transaction annule les écritures et restaure les fichiers. Le nettoyage du cache intervient après validation ; son échec déclenche un avertissement, sans prétendre annuler une publication déjà enregistrée.

L’extension copie un marqueur neutre par le mécanisme natif `fileset`. Le code et les images préexistantes sont remplacés par le script protégé pour éviter qu’un nettoyage automatique de l’installateur ne supprime des images déjà présentes.

## Preuves

Les rapports sont dans `audits/5.27.9-japon/` :

- Installation réelle : dix contrôles, dont création effective de vingt articles et quinze topics quand ils sont absents, relations natives et absence de doublons à la réinstallation.
- SEO et catégories : onze contrôles, dont H1 et titre contextuels, pagination et paramètres natifs de sous-catégorie.
- Empreintes : trois contrôles avec refus réel d’une source personnalisée et absence d’écriture de publication.
- Navigateur : quinze contrôles, images décodées, changement de vue répété, catégorie conservée, aucune exception JavaScript observée et aucun débordement horizontal global à 390 px. À 2 200 px : contenu de 1 600 px avec marges symétriques de 269 px dans le panneau.
- Artefact : douze contrôles, CRC, SHA-256, périmètre exact de cinq fichiers et cent variantes d’images, XML valides, fichiers applicatifs préservés et absence de fichiers privés dans le ZIP.

Les tests d’installation créent des fiches temporaires dans la copie locale puis les nettoient ; les fiches initiales sont rétablies. Les captures sont locales. L’authentification de production a échoué avant toute publication : aucune installation publique n’est attestée.
