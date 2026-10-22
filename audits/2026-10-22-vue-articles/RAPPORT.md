# NEXUS 5.27.2 — vue intégrée réparée et collection éditoriale illustrée

**Statut : version installable testée sur la copie isolée. Aucun déploiement ni publication sur geniuspace.io.** L’authentification native avait refusé l’accès configuré ; aucune tentative de contournement n’a été faite.

[Télécharger le ZIP complet](../../NEXUS_5.27.2.zip) · [Lire les douze guides et voir leurs images après extraction](../../GENIUSPACE_GUIDES_ILLUSTRES_2026-10-22.zip)

## Cause du message « Cette vue est momentanément indisponible »

L’erreur a été reproduite sur un véritable article natif. Le journal temporaire de diagnostic indique **`Call to undefined method stdClass::get()`** dans la préparation des métadonnées de la liste intégrée.

`JoomcckModelCategories::getParentsObjectsByChild()` mettait des lignes SQL de type `stdClass` dans le cache `ItemsStore::$categories`. Après la lecture d’un article, la vue forum réutilisait ces lignes alors qu’elle attendait des catégories entièrement préparées par le modèle natif. L’appel de métadonnées échouait et l’exception était remplacée par le message générique, malgré un statut HTTP 200.

Le résultat de la requête de parents reste disponible pour les fils d’Ariane. Il ne remplace plus le cache des catégories complètes. Les métadonnées auteur/robots sont lues dans leur objet JSON natif ; le choix du template par défaut est lu dans les paramètres de catégorie. Le mécanisme d’interception des erreurs reste présent : le correctif répare le chargement qui échouait.

## Lecture des longs articles

Le sommaire complet devient repliable sous 1 680 px et sur mobile. Sur grand écran, il s’ouvre dans sa colonne latérale. Les liens de chapitres, le sommaire flottant, sa progression et le retour en haut sont conservés. Sur le scénario PC de 1 440 px, le H1 commence à **267,7 px**. Le sommaire flottant conserve le correctif de positionnement de la 5.27.1.

## Douze guides, couvertures et carnets

La livraison comprend **12 articles rédigés, 10 975 mots**, chacun accompagné d’un carnet CSV et d’une couverture originale créée avec une assistance IA. Les illustrations sont identifiées comme telles ; aucune photographie de reportage, de voyage ou de test n’est inventée comme preuve.

Les contenus ajoutent des raisonnements, grilles et cas concrets : temps de trame et protocole de benchmark ; preuves de compétences pour une candidature ; jours utilisables au Japon ; mesures et provenance d’un vêtement ; coûts et capacité d’une offre ; scénario de sortie d’un investissement ; attribution d’un grimoire ; limites d’une enquête vidéo ; spoilers et lecture critique ; usage et entretien d’un couteau ; choix d’un cours ; évaluation et permissions d’une IA locale.

Les chiffres sont présentés comme des hypothèses. Les références techniques consultées indiquent les passages concernés. Les autres grilles sont des méthodes proposées par la rédaction ; elles ne sont pas présentées comme des études de terrain.

Les 48 WebP proposent quatre tailles par image, avec **des couvertures mobiles entre 22 634 et 49 424 octets**. Le rendu natif utilise effectivement ces variantes via `srcset` et `sizes`. Les 12 JPEG sont employés dans les métadonnées Open Graph, avec leurs dimensions et leur type MIME.

Auteur affiché : **GUILLAUME DEPLANQUE — GENIUSPACE**. Les champs natifs conservent les titres, texte, auteur, résumés et couvertures. Les articles disposent d’un H1, d’une description propre, d’une URL canonique SEF, de données structurées Article et ImageObject, et de deux relations natives parent/enfant vers des dossiers du lot. Les liens sont résolus après création des cibles. Aucun avis ou trafic fictif n’est ajouté.

## Publier le lot après installation

Dans le compte administrateur : **JoomCCK → Outils → Forum Geniuspace → « Publier les 12 nouveaux dossiers illustrés »**.

Accès direct : `/index.php?option=com_joomcck&view=tools&layout=nexusforum`.

La mise à jour seule ne publie pas ces textes. Le bouton crée douze articles dans les bons univers. Une nouvelle exécution conserve les contenus déjà importés et leurs modifications ultérieures. Les anciens dossiers, leurs vidéos, commentaires et autres champs restent présents.

L’action exige la méthode POST, le jeton natif, une origine compatible et un administrateur autorisé. Un verrou empêche les imports concurrents. Une erreur au milieu du lot retire uniquement les nouveaux enregistrements de l’opération, y compris leurs données dérivées. Deux pannes réelles ont été injectées dans la base locale pour vérifier cette compensation avec les tables natives existantes ; aucune conversion de moteur n’a été imposée.

## Vérifications et limites

| Contrôle | Résultat |
|---|---:|
| Cache de catégories et contrat du modèle natif | 8 contrôles réussis |
| Articles, forums intégrés et catégories existants | 25 routes réussies |
| Import natif, droits, pannes, relations et répétition | 104 contrôles réussis |
| Sélection et sécurité des variantes d’images | 9 contrôles réussis |
| Navigateur PC/mobile et bascules répétées | 25 contrôles réussis |
| SEO du rendu des douze articles | 180 contrôles réussis |
| URL canoniques, images et carnets par HTTP | 84 ressources réussies |
| Non-régression du sommaire flottant | 22 contrôles réussis |
| Installation réelle du package complet | 401 contrôles réussis |
| Structure du lot éditorial hors ligne | 257 contrôles réussis |

Les bascules Forum/Multi-Blog ont été répétées huit fois sur l’index sans navigation complète ni exception JavaScript. Le mobile a effectivement chargé la variante de couverture de 480 px. Les articles ont été vérifiés via leurs vraies URL SEF, pas seulement via des URL à identifiant.

**Aucun fichier source supprimé.** La comparaison avec le ZIP exact 5.27.1 conserve les 899 fichiers de champs natifs et les 278 fichiers natifs AllVideoShare inchangés. Les réglages d’abonnements, factures, promotions et extensions sont conservés par le test d’installation. Les preuves et la liste exacte des fichiers sont jointes.

Après les essais, les douze articles temporaires ont été retirés de la copie : retour à **481 publications, 335 commentaires et 4 comptes**, avec les contenus antérieurs préservés.

Ces tests couvrent les scénarios décrits. Ils ne constituent pas une garantie de classement Google/Bing/Baidu, d’indexation, ni un audit exhaustif de toutes les extensions et de chaque configuration de production.

## Avancement éditorial global

Le catalogue de 240 articles et 180 topics reste en cours. Ce lot contient **12 articles rédigés** ; **228 restent à écrire**. Les 180 ouvertures de topics précédemment préparées ne sont pas des échanges entre membres réels. Aucun compte fictif ni contenu n’a été créé en production.

## Preuves

- [Manifest du package](MANIFEST.json) et [diff des fichiers existants](runtime-changes.patch).
- [Cache](cache-results.json), [routes](route-results.json), [import](library-results.json), [SEO](seo-results.json), [liens et médias](link-results.json).
- [Navigateur](browser-results.json), [installation](installation-results.json), [nettoyage local](cleanup-results.json).
- [PC](article-desktop.png), [mobile](article-mobile.png), [planche des douze couvertures](generated-contact.png).
