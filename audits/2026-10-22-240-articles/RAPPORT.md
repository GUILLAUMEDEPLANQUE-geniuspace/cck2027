# Collection complète : 20 articles par univers

**240 articles rédigés**, soit **20 dans chacun des 12 univers**. Les douze guides principaux sont conservés et 228 dossiers d’application ont été ajoutés. Ce ne sont plus des entrées de catalogue en attente de rédaction.

| Univers | Articles |
|---|---:|
| Jeux vidéo | 20 |
| Emploi & carrières | 20 |
| Pays, voyage & immobilier | 20 |
| Boutiques & artisanat | 20 |
| Business & entreprise | 20 |
| Investissement & patrimoine | 20 |
| Traditions & herboristerie | 20 |
| Enquêtes & OSINT | 20 |
| Manga & pop culture | 20 |
| Gastronomie & couteaux | 20 |
| Sports & arts martiaux | 20 |
| IA, technologie & sciences | 20 |
| **Total** | **240** |

## Contenu livré

Les textes représentent **58 713 mots hors carnets et liens ajoutés au rendu**. Les douze guides principaux développent le cadre de chaque univers ; les dix-neuf dossiers complémentaires répondent à des questions ciblées. Les longueurs réelles figurent dans le [manifeste](COLLECTION-240-MANIFEST.json), sans utiliser le nombre de mots comme certification de qualité.

Chaque dossier ajouté comprend un mécanisme expliqué, un cas pratique, une analyse de décision, quatre vérifications spécifiques, une limite et une conclusion opérationnelle. Exemples : temps de trame, fixe et variable d’un salaire, budget d’Akiya, marge et trésorerie, frais composés, indépendance des sources et permissions d’un RAG. Les cas sont annoncés comme fictifs ; ils ne simulent ni reportage, ni témoignage client, ni expérience personnelle de l’auteur.

Les titres, descriptions et slugs sont distincts. Signature : **GUILLAUME DEPLANQUE — GENIUSPACE**. Le paquet de relecture fournit 240 HTML avec sommaire, 240 schémas de préparation, un export des métadonnées et 240 fiches CSV. Les aperçus locaux sont `noindex` ; les URLs canoniques et schémas définitifs sont produits par Joomla après import.

Les douze couvertures originales d’univers sont partagées entre leurs dossiers. Chacune existe en quatre tailles WebP et un JPEG social. Il ne s’agit pas de 240 nouvelles photographies. Le rendu natif conserve `srcset`, dimensions, texte alternatif et légende.

## Import et maillage natifs

L’import crée des enregistrements, affectations de catégories, valeurs de champs et index de recherche JoomCCK. Il utilise les relations **child/parent natives** et leur index inverse. Les liens des textes sont résolus vers les enregistrements existants, sans identifiants de laboratoire ni domaine de production deviné.

Dans une collection neuve, chaque guide principal relie ses dix-neuf dossiers ; chaque dossier relie le guide et deux voisins. Si les douze guides du précédent import existent, leurs contenus et relations modifiés sont conservés. Les liens inverses les raccordent aux nouveaux dossiers. Les 912 arêtes du manifeste décrivent le plan d’une collection neuve, pas un écrasement des relations personnalisées.

Chaque requête traite vingt articles, un univers à la fois. Le reçu distingue créations et contenus conservés. Une relance est idempotente. Une écriture partielle reste non publique avant préparation des champs et liens ; une reprise reconstruit les index manquants sans effacer les champs modifiés. Cela ne change pas la politique habituelle de publication du forum et n’ajoute pas une modération manuelle.

L’action exige un super-administrateur, un POST, un jeton de session et une origine cohérente. Les alias d’autres publications sont refusés. La compensation cible les nouvelles lignes de l’import, y compris lorsque des tables natives emploient encore MyISAM. Cette livraison n’impose ni conversion de moteur ni nouvelle table.

## Vérifications réalisées

- Import réel de **240 articles natifs**, avec 20 par univers. Migration depuis les douze guides existants et conservation d’une modification du propriétaire.
- Relance sans doublon, reprise d’une écriture partielle et injections d’erreurs SQL au début puis lors de l’indexation ; compensation et restauration des index vérifiées.
- **240 pages HTTP 200**, sans le précédent message de vue indisponible ; H1, canonical SEF, description, signature et schéma Article avec ImageObject et dimensions.
- **240 alias résolus par le routeur natif**, **240 articles dans le sitemap public** et **240 dans le catalogue destiné aux agents IA**.
- Recherche publique d’un nouveau dossier de chaque univers, avec destination SEF.
- Navigateur : couverture mobile 480 px, absence de débordement horizontal, sommaire dans le viewport, huit changements Multi-Blog/Méta-Hub sans rechargement. Interface d’import : sélection, progression, arrêt et reprise. Appels anonymes, sans jeton, par GET et d’origine étrangère refusés.
- Installation réelle du paquet complet : **545 contrôles passés**. Publications, commentaires, champs, catégories, modules, menus et réglages AVS conservés. **899 fichiers de champs natifs et 278 fichiers AVS identiques à 5.27.2 ; aucun fichier antérieur supprimé.**
- Copie de test nettoyée : **481 publications, 335 commentaires et 4 comptes d’origine conservés**. Les 240 objets de test ont été retirés. Aucun compte ou commentaire synthétique ajouté.

Ces contrôles portent sur le rendu et l’exposition technique. Ils ne constituent pas une mesure de classement ou un reçu d’indexation par Google, Bing ou Baidu.

## Installation et statut

[ZIP complet 5.27.3](../../NEXUS_5.27.3.zip) · [Les 240 articles à relire](../../GENIUSPACE_240_ARTICLES_2026-10-22.zip) · [Instructions](LIRE-240.md)

Après installation, ouvrez `index.php?option=com_joomcck&view=tools&layout=nexusforum`, rubrique **Collection complète : 20 articles par univers**, puis **Publier ou compléter la collection**. Les anciens imports de cinq et douze dossiers restent disponibles séparément.

**Publication sur geniuspace.io non confirmée.** La connexion native avait refusé le compte configuré. Les imports et tests ci-dessus ont été réalisés sur la copie isolée.

Preuves : [import](collection-results.json), [reprise](recovery-results.json), [écriture interrompue](hard-stop-results.json), [staging](staging-results.json), [240 pages](seo-results.json), [routeur/sitemap/agents](discovery-results.json), [recherche](search-results.json), [navigateur](browser-results.json), [interface admin](admin-browser-results.json), [installation](installation-results.json), [nettoyage](cleanup-results.json), [manifeste du ZIP](MANIFEST.json).

Téléchargements GitHub vérifiés sans authentification : **HTTP 200 pour les deux ZIP**, téléchargement intégral, empreintes SHA-256 identiques et intégrité ZIP contrôlée. [Preuve](download-verification.json).
