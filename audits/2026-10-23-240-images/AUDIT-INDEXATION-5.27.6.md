# Geniuspace — contenus, images et indexation

Contrôle du 23 octobre 2026. Les modifications sont préparées et testées sur la copie locale Joomla, pas déployées sur geniuspace.io.

## Ce que signifie le signal Search Console

Vous indiquez 3 pages indexées et 230 « Explorée, actuellement non indexée ». Google a exploré ces URL mais ne les retient pas actuellement dans son index. Ce statut ne prouve à lui seul ni une pénalité, ni une interdiction robots, ni une cause unique. Des pages proches, une valeur ajoutée insuffisamment distincte, la sélection d’une autre URL canonique, la qualité générale du site et les délais de traitement peuvent intervenir. Ajouter des mots, des balises Schema ou une image ne garantit pas une indexation.

## Enrichissement livré

240 sujets distincts, soit 20 dans chacun des 12 univers. Chaque dossier reçoit un cas pédagogique supplémentaire propre à son sujet, ses hypothèses, un tableau de données, un protocole de vérification, les limites de sa conclusion et une fiche CSV spécifique. Les exemples chiffrés sont fictifs et explicitement présentés comme tels : aucune expérimentation de terrain, qualification professionnelle ou statistique de trafic n’est inventée. Les sources et périmètres documentaires déjà présents restent accessibles.

La collection totalise 102 258 mots, avec une moyenne de 426 mots et un minimum de 341 mots par dossier. Elle comprend douze guides principaux plus développés et des dossiers ciblés. Ces chiffres décrivent les fichiers livrés : ils ne constituent pas un critère de classement ni la preuve que chaque dossier serait une étude exhaustive. Les domaines juridiques, financiers, médicaux ou réglementaires exigent toujours une vérification qualifiée et datée des cas réels.

240 illustrations originales générées pour les 240 thèmes, contrôlées sur douze planches de vingt. Chaque illustration possède quatre variantes WebP (480, 800, 1200 et 1600 px) et un JPEG social de 1200 × 675 px, soit 1 200 fichiers. Les descriptions alternatives décrivent les scènes ; les noms de fichiers suivent les sujets. Les images sont créditées comme illustrations avec assistance IA, sans prétendre montrer un véritable reportage ou un test de produit. Les fichiers de couverture remplacés directement par l’administrateur restent prioritaires ; les variantes et crédits du paquet ne leur sont pas attribués automatiquement. Les 240 PNG maîtres sont conservés dans l’espace de travail ; les packs installables contiennent les exports optimisés.

Les données restent dans les champs natifs et les relations parent/enfant. La mise à jour conserve les identités, URL natives, champs supplémentaires, commentaires et liens. L’action explicite d’actualisation remplace uniquement les préfixes de texte d’origine reconnus ; elle préserve les ajouts en fin de texte et signale les textes réécrits sans les écraser. Une couverture ou une description personnalisée reste prioritaire. L’installation seule ne publie rien.

## Constats publics vérifiés

- La racine HTTPS redirige vers `/hub/jeux-video?nx_mode=forum`. Le titre présenté est « Jeux Vidéo | Communauté Geniuspace », et le H1 décrit le jeu vidéo. Cette entrée explique l’univers Gaming plutôt que la plateforme entière. Prévoir une véritable entrée de marque Geniuspace dans le menu d’accueil Joomla, avec la mission du site, ses univers et des liens vers leurs pages principales, en conservant le shell et les fonctions existantes.
- Les variantes HTTP et `www` restaient accessibles après redirection, avec des canoniques sur leurs propres hôtes. Le correctif prépare une redirection 301 des requêtes de lecture de ces variantes vers `https://geniuspace.io`, en conservant chemin et paramètres. Les POST de paiement, webhooks et l’administration sont exclus. Après installation, vérifier aussi la configuration HTTPS du serveur/proxy et les redirections avant Joomla.
- Le JSON-LD `WebSite` existe déjà et nomme Geniuspace. Il déclare cependant `en-gb` alors que les pages observées sont françaises : vérifier la langue du contenu et la configuration Joomla, sans annoncer de traductions inexistantes. Le correctif stabilise le nom, l’URL et l’identifiant du site, conserve les autres propriétés et ajoute l’alias exact `Geniuspace.io`.
- Les pages observées annoncent `index, follow`. Le fichier robots.txt public ne contient pas de ligne Sitemap. Une requête au plan natif a dépassé le délai de 50 secondes : cela nécessite une vérification de disponibilité et de performance sur l’hébergement, pas une conclusion de panne permanente. Les tests du plan natif local sont consignés séparément.
- L’absence d’une balise HTML de vérification Google ne prouve pas l’absence de propriété Search Console : la validation DNS est également possible.

Les résultats Google eux-mêmes n’ont pas pu être consultés depuis cet environnement : le proxy a refusé les connexions. Il serait donc inexact d’affirmer pourquoi Google affiche précisément « geuissance », « genispace » ou un concurrent. L’identité de marque, l’adresse canonique, les preuves éditoriales et les références indépendantes sont à examiner ensemble.

## Ordre d’action conseillé après installation

1. Installer les deux packs d’images A et B puis le paquet complet 5.27.6 ; vider les caches Joomla et ceux du proxy/CDN.
2. Ouvrir JoomCCK → Outils → Forum Geniuspace → Collection complète, puis « Publier ou actualiser les textes d’origine ». Choisir un univers ou les douze, garder la page ouverte et consulter les reçus. Les textes personnalisés signalés demandent une intégration éditoriale manuelle de leurs cas, disponible dans l’aperçu.
3. Vérifier en navigation déconnectée quelques URL d’articles réels et leurs images, puis les variantes HTTP/www, leurs redirections et les canoniques finales. Vérifier les pages les plus anciennes et les plus récentes, les contenus privés et les brouillons.
4. Contrôler le plan de site public jusqu’à une réponse XML 200 valide et rapide. Ajouter ensuite, sans effacer les règles robots existantes : `Sitemap: https://geniuspace.io/index.php?option=com_joomcck&task=geniuspace.sitemap`. Déclarer ce plan dans Search Console. Les URL de flux et de plans peuvent contenir des paramètres ; les articles gardent leurs URL natives.
5. Dans Inspection de l’URL, comparer l’URL canonique déclarée avec celle sélectionnée par Google, le HTML exploré, le contenu principal, le dernier passage et les éventuelles erreurs de chargement. Examiner un échantillon de pages non indexées par univers. Demander une nouvelle indexation de quelques pages nettement améliorées, puis suivre l’évolution ; une soumission n’oblige pas Google à les indexer.
6. Développer les preuves réelles : captures et mesures reproductibles pour les benchmarks, documents primaires datés pour les sujets réglementaires, entretiens autorisés, exemples originaux de votre activité et une page auteur expliquant honnêtement son rôle. Ajouter ces éléments aux guides concernés au fil de leur disponibilité.
7. Maintenir un maillage contextuel utile : guide principal → dossier précis → action ou outil → discussion correspondante. Les relations natives existantes restent en place. Éviter la répétition artificielle de la marque et les pages quasi identiques ciblant seulement des variantes de mots-clés.

Références à consulter : [contenu utile selon Google](https://developers.google.com/search/docs/fundamentals/creating-helpful-content), [nom du site](https://developers.google.com/search/docs/appearance/site-names), [rapport d’indexation](https://support.google.com/webmasters/answer/7440203). Ces pages sont indiquées pour votre développeur ; leur consultation directe était bloquée dans cet environnement.

## Installation et limites

Les trois archives installables sont complémentaires. Le paquet principal conserve tous les fichiers du précédent paquet 5.27.5 ; les deux archives média ajoutent les nouvelles images. Les 899 fichiers des champs natifs et 278 fichiers AllVideoShare de référence sont inchangés. Aucun compte de membre, avis ou compteur fictif n’est créé. Aucun moteur de table existant n’est converti par cette livraison. Le ZIP d’aperçu est un document de contrôle hors ligne, pas une extension à installer.

Les contrôles et empreintes sont joints aux archives. Sous trois requêtes concurrentes sur le laboratoire, les 239 pages contrôlées ont une médiane de réponse d’environ 10 secondes et un maximum d’environ 20 secondes : ce résultat demande un profilage du rendu et des requêtes natives et ne permet pas d’annoncer un site rapide en production. Les nouvelles images WebP de 480 px ont une taille médiane de 26 ko, mais l’optimisation des images ne résout pas à elle seule le temps du serveur. Ils établissent les propriétés testées sur la copie locale ; ils ne remplacent pas le contrôle après installation sur votre hébergement et ne garantissent aucun classement Google.
