# Geniuspace 5.27.12 — débloquer la réparation sur MyISAM

[Télécharger l’assistant Joomla](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/GENIUSPACE_PREPARATION_INNODB_5.27.12.zip) · [Réparation des publications 5.27.11](README-5.27.11-REPARATION.md) · [Contrôles de cette préparation](audits/2026-10-26-innodb-52712/)

Le message **« La publication transactionnelle nécessite InnoDB : js_res_record »** indique que la table native des publications n’utilise pas encore InnoDB, généralement parce qu’elle est restée en MyISAM. Le réparateur 5.27.11 s’arrête avant de remplacer ses fichiers ou de lancer ses publications. Les lignes « Error installing file » et « Custom install routine failure » sont les conséquences de cet arrêt.

Cet assistant s’installe sur le composant Geniuspace/JoomCCK existant **sans exiger InnoDB et sans convertir de table à l’installation**. Il ajoute quatre fichiers séparés : classe de maintenance, contrôleur natif, page d’administration et script de progression. Il ne remplace aucun des 59 fichiers contrôlés par la réparation 5.27.11. Les deux paquets sont complémentaires.

## Marche à suivre

1. Conserver une **sauvegarde complète récente de l’hébergement et de sa base**.
2. Installer **GENIUSPACE_PREPARATION_INNODB_5.27.12.zip** depuis **Système → Installation → Extensions**, avec un super administrateur. Cliquer ensuite sur **« Ouvrir l’assistant de préparation InnoDB »**.
3. L’assistant est aussi accessible à cette adresse :

   `https://geniuspace.io/administrator/index.php?option=com_joomcck&view=tools&layout=nexusdatabase`

4. Dans **Configuration globale**, mettre le site hors ligne. Suspendre les tâches Joomla et les éventuels cron, imports, agents et files de traitement qui écrivent dans la base. L’administration reste accessible. Revenir dans l’assistant et actualiser le diagnostic.
5. Garder le périmètre **« Publication, commentaires et journal de modération »** pour débloquer la réparation. Le second choix couvre également les autres tables Geniuspace compatibles encore en MyISAM/Aria. Confirmer l’arrêt des traitements et la sauvegarde de l’hébergement, puis cliquer sur **« Sauvegarder, vérifier et convertir »**.
6. Laisser la page ouverte. Les sauvegardes de **toutes les tables sélectionnées** sont d’abord produites et restaurées sur des copies temporaires pour contrôle. Ensuite seulement, les moteurs sont convertis, avec comparaison des données et de la structure après chaque table. Un rechargement reprend les étapes enregistrées.
7. Attendre **« Conversion vérifiée »**, télécharger les sauvegardes SQL privées et les conserver dans un endroit privé.
8. Réinstaller le [ZIP de réparation 5.27.11](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/GENIUSPACE_REPARATION_180_TOPICS_5.27.11.zip), puis laisser son panneau terminer les **180 topics et 240 articles**. Vérifier publications, recherche, filtres et commentaires avant de réactiver les traitements et de remettre le site en ligne.

## Conservation des données

Les sauvegardes sont placées hors de la racine publique connue du serveur, dans `.nexus-innodb-maintenance`, avec dossiers privés et fichiers en mode 0600. Elles comprennent un dump SQL compressé de chaque table convertie, sa structure et une copie structurée utilisée pour la restauration de contrôle. Leur téléchargement nécessite une session super administrateur ; aucune sauvegarde n’est publiée sur GitHub.

Les identifiants, textes, relations, notes, commentaires et index ne sont pas supprimés pour permettre l’installation. Les valeurs binaires, les champs vides, les valeurs nulles, les lignes identiques sans clé primaire et les compteurs de prochains identifiants sont contrôlés. Les anciennes dates zéro et les identifiants zéro sont préservés avec un réglage de session temporaire ; les paramètres SQL du serveur ne sont pas modifiés globalement.

La conversion reconstruit les index avec InnoDB. La définition des index est contrôlée ; le comportement de recherche plein texte peut varier selon les réglages MyISAM/InnoDB du serveur. La vérification de la recherche après migration reste nécessaire.

## Si une étape échoue

Garder le site hors ligne et les traitements suspendus. Les sauvegardes et le journal restent conservés. Consulter le message et le journal Joomla avant de reprendre. Une table modifiée depuis sa sauvegarde, une empreinte de sauvegarde différente ou une structure différente bloque la suite.

Un `ALTER TABLE` n’est **pas annulable avec un rollback SQL**. Plusieurs tables peuvent donc déjà être InnoDB si une étape ultérieure échoue. L’assistant n’essaie pas de masquer cela avec un retour arrière automatique. Le bouton **« Archiver ce journal et refaire le diagnostic »** conserve les sauvegardes et les moteurs déjà convertis ; il ne restaure pas les anciennes données.

Les déclencheurs SQL, colonnes calculées, options de stockage particulières et moteurs autres que MyISAM/Aria demandent une inspection manuelle. Les droits SQL nécessaires comprennent `SELECT`, `SHOW`, `CHECK`, `CREATE`, `INSERT`, `DROP` pour les copies de contrôle, `LOCK TABLES` et `ALTER`. L’outil s’arrête si les permissions ou l’espace disponible sont insuffisants.

Pour une très grosse table qui dépasse les délais du serveur web, effectuer la migration en maintenance avec un opérateur disposant de SSH et d’une sauvegarde restaurée/testée. Ne pas relancer des conversions en boucle ni réduire les index pour contourner un échec.

## Portée des tests

Testé dans la copie locale Joomla : conversion de neuf tables MyISAM isolées, textes multilingues longs, octets binaires, décimaux, valeurs nulles, dates et identifiants zéro en mode SQL strict, compteurs, doublons sans clé primaire, sauvegarde altérée et données modifiées pendant la préparation. Le navigateur a aussi effectué une conversion réelle d’une table de test via l’administration, repris la progression après rechargement et téléchargé la sauvegarde protégée.

**Aucune conversion de la base publique geniuspace.io n’a été exécutée par l’assistant dans cette session.** Ce paquet fournit l’outil pour l’effectuer depuis votre administration, dans les conditions ci-dessus. L’installateur 5.27.11 conserve son contrôle InnoDB.
