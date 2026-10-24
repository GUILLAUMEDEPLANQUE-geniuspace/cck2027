# Geniuspace 5.27.8 — publications, import SQL et renfort IA

Paquet Joomla complet : **NEXUS_5.27.8.zip**, composant JoomCCK **6.4.2.200**. Le composant complémentaire **com_nexusomega 5.27.8** est installé par ce même paquet. Les fonctions IA de l’archive fournie sont fusionnées dans le cœur ; son ancien installateur d’overlay n’est pas exécuté sur des fichiers plus récents.

**État : testé sur la copie Joomla/MariaDB locale. Aucune mise à jour ni suppression de comptes n’a été exécutée sur geniuspace.io pendant cette livraison.**

## Installer

1. Conserver une sauvegarde du site et de la base avant la mise à jour.
2. Installer [NEXUS_5.27.8.zip](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/NEXUS_5.27.8.zip) dans Joomla, **Système → Installation → Extensions**.
3. Si les images de la collection ne sont pas déjà installées, installer les packs [Images A](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/GENIUSPACE_IMAGES_5.27.6_A.zip) et [Images B](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/GENIUSPACE_IMAGES_5.27.6_B.zip). Ce sont les packs précédents, conservés à l’identique ; les 1 200 variantes ne sont pas dupliquées dans le paquet principal.

## Corriger l’import qui a été exécuté directement en SQL

Connecté sur le site avec un compte super administrateur, ouvrir :

**https://geniuspace.io/index.php?option=com_joomcck&view=tools&layout=nexusrepair**

La même page est liée depuis les outils du forum. Dans « Votre import a été exécuté directement en SQL » :

1. Choisir le fichier original **geniuspace_450_membres_joomcck.sql** déjà fourni par le propriétaire.
2. Cliquer **Identifier les comptes de ce SQL**. Le nombre réellement reconnu est affiché.
3. Cliquer **Raccorder et conserver les 45 anciens topics**.
4. Cliquer **Retirer les comptes SQL identifiés**.

Le fichier est analysé comme des données : **aucune instruction SQL téléchargée n’est exécutée**. Seul l’export original reconnu par son SHA-256 est accepté. L’outil compare l’identifiant, le pseudo, l’adresse, les dates et les attributs du compte, puis sa fiche d’origine. Il ne supprime jamais une plage d’identifiants sans ces correspondances.

Les topics correspondent dans l’export à un type et une section fixes, à trois anciens identifiants de champs et à des catégories dépourvues de leurs associations natives. La réparation garde leurs identifiants, titres et slugs, réassocie leur texte aux vrais champs du forum et crée les index de catégories. Les anciennes valeurs restent également dans les paramètres d’archive. Les sujets dont l’univers ne peut pas être déterminé restent dans le hub global. Les publications sont attribuées à l’archive communautaire, sans conserver une dépendance aux comptes supprimés.

Une sauvegarde privée précède les opérations. Le retrait nettoie les fiches et leurs index, ainsi que les données de ces fiches dans les index de recherche et de mémoire IA. Les autres comptes sont conservés. Si un compte a été modifié, a reçu d’autres droits ou possède une activité supplémentaire, l’outil s’arrête : un contrôle ciblé est nécessaire. Les tables affectées doivent être InnoDB ; la réparation refuse de promettre un retour arrière transactionnel sur MyISAM.

Une installation seule ne déclenche pas de suppression de comptes.

## Rendre visibles les articles et les discussions manquants

Sur cette même page, **Vérifier les publications**, puis **Restaurer les articles et topics manquants**. Le traitement parcourt les douze univers par lots : 20 articles et 15 discussions par univers. Il réutilise les contenus déjà présents, conserve leurs modifications et ne transforme pas les brouillons personnels en publications.

L’index Multi-Blog ouvre désormais l’univers parent quand on y entre depuis une rubrique comme « Entreprises ». Un filtre de catégorie explicitement choisi reste précis. Le lien « Voir tous les blogs » efface le filtre de rubrique. Un nouveau lot de discussions ne masque plus les articles plus anciens au premier bloc de lecture SQL.

Une rubrique encore vide propose des liens vers de vrais topics de son propre univers, identifiés comme tels. Les articles et les discussions restent des objets distincts, avec leurs champs et URL natifs.

## Présentation des topics

La colonne centrale d’un topic utilise toute la place disponible entre l’annuaire et la colonne latérale. Les outils secondaires restent présents dans un panneau dépliable afin de rapprocher les réponses du texte. Les identités d’entreprise et la signature éditoriale se réorganisent sur mobile.

## Renfort IA fourni

Dans **Composants → NEXUS · IA et communauté**, l’interface complète le cockpit existant : assistant documentaire, connaissances locales, mémoire privée, agents identifiés, progression et évaluations, bibliothèque de modèles et configurations d’exécution. Les services et ressources de l’archive ont été fusionnés sans retirer les migrations plus récentes du projet.

La composition documentaire sans modèle extrait et cite des passages ; elle ne constitue pas un grand modèle de raisonnement. Les moteurs externes, modèles, machines et passerelles demandent leur configuration. Les agents autonomes et la publication automatique restent désactivés par défaut ; aucun faux compte humain, faux lecteur ou faux avis n’est créé. Le test d’installation ne démontre pas une capacité GPU ou une charge de production.

Les endpoints de l’interface IA utilisent des réponses JSON sans cache, les protections de session et de jeton, ainsi que des en-têtes anti-indexation. Une erreur interne du serveur n’est pas renvoyée telle quelle aux membres.

## Validation

Les rapports sous **audits/5.27.8/** distinguent les observations publiques, les tests locaux et la simulation de l’import SQL. Le SQL des membres, le CSV, les mots de passe, les sessions et les sauvegardes privées ne sont pas livrés dans cette archive ou dans le dépôt.
