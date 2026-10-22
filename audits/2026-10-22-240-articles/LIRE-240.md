# Geniuspace : 20 articles dans chacun des 12 univers

Cette collection contient **240 articles rédigés**, leurs métadonnées, leurs schémas de préparation et **240 carnets CSV**. Elle comprend un guide principal par univers et dix-neuf dossiers d’application : mécanisme, cas pratique, démarche, limites et décision.

Auteur affiché : **GUILLAUME DEPLANQUE — GENIUSPACE**.

Ouvrez `index.html` pour parcourir les douze univers, puis les articles. Les aperçus locaux sont volontairement `noindex` : leurs adresses de fichier ne sont pas des URLs de production. Les URLs canoniques et les schémas avec l’adresse définitive sont produits par le site après import natif.

## Contenu du dossier

- `articles-240.json` : les 240 textes et leurs liaisons éditoriales.
- `content/` : 240 pages de relecture illustrées, avec sommaire et liens internes.
- `metadonnees-240.csv` : titres, slugs, descriptions, signature et clés de relation.
- `schemas-240.json` : métadonnées structurées des textes ; les URLs seront résolues sur votre instance.
- `outils/` : 240 fiches pratiques à remplir localement.
- `visuels/` : douze couvertures originales d’univers, quatre tailles WebP et un JPEG social par couverture. Les dossiers d’un même univers partagent sa couverture. Il ne s’agit pas de 240 photographies distinctes ni de preuves de reportage.
- `COLLECTION-240-MANIFEST.json` : décompte vérifiable par univers.

Les cas pédagogiques sont explicitement hypothétiques. Les références externes indiquent le périmètre réellement consulté ; les propositions méthodologiques originales ne sont pas présentées comme des études de terrain ou des conseils personnalisés.

## Publication native

1. Installez le paquet complet **NEXUS 5.27.3** dans l’installateur Joomla.
2. Avec un compte super-administrateur, ouvrez `index.php?option=com_joomcck&view=tools&layout=nexusforum`.
3. Choisissez **Collection complète : 20 articles par univers**.
4. Sélectionnez les douze univers ou un seul, puis **Publier ou compléter la collection**. Gardez la page ouverte pendant les lots.

Le système utilise vos sections, catégories, champs et relations **parent/enfant natifs**. Chaque requête traite un univers de vingt articles et affiche un reçu. Une relance conserve les articles déjà importés, leurs modifications et leurs commentaires. Les douze guides du précédent import sont réutilisés, sans doublon. Les relations inverses les relient aux nouveaux dossiers.

Une mise à jour du composant ne publie rien automatiquement. Le présent paquet ne constitue pas une confirmation de publication sur geniuspace.io : la vérification a été exécutée dans la copie Joomla isolée. Les identifiants de connexion disponibles précédemment n’ont pas permis de confirmer une intervention sur le site public.
