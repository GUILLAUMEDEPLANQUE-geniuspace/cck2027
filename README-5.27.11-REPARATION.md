# Geniuspace 5.27.11 — réparation des publications et des adresses

[Télécharger le ZIP installable](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/GENIUSPACE_REPARATION_180_TOPICS_5.27.11.zip) · [Audit technique et résultats](AUDIT-REPARATION-5.27.11.md) · [Preuves des contrôles](audits/2026-10-25-reparation-52711/) · [SHA-256](SHA256SUMS)

**Testé sur la copie locale Joomla. Pas encore installé sur geniuspace.io : la connexion Joomla sécurisée configurée a de nouveau été refusée.** Aucune publication, suppression de compte ou modification de production n’est annoncée.

Si l’installation affiche **« La publication transactionnelle nécessite InnoDB »**, suivre d’abord [la préparation InnoDB 5.27.12](README-5.27.12-INNODB.md), puis réinstaller ce paquet.

## Installation

1. Sur la base complète Geniuspace **5.27.8**, **5.27.9** ou **5.27.10**, installer ce ZIP avec un super administrateur, dans **Système → Installation → Extensions**. Les correctifs ciblés 5.27.9 et 5.27.10 sont inclus ; il n’est pas nécessaire de les installer séparément.
2. Après l’installation, revenir à une page de l’administration Joomla. Le panneau **« Réparation des douze univers »** apparaît automatiquement. Laisser cette page ouverte pendant les **18 étapes**. Un rechargement ou une reconnexion permet de reprendre les lots déjà enregistrés.
3. Attendre le reçu **« 180/180 topics et 240/240 articles publics vérifiés »**. Le message « extension installée » seul ne prouve pas la publication des contenus.
4. Si des publications ont volontairement été rendues privées, désindexées ou dépubliées, leurs choix sont conservés. Le reçu signale alors les exclusions au lieu d’annoncer un faux total public.
5. Pour relancer un contrôle terminé : ouvrir `/administrator/index.php?option=com_joomcck&view=tools&layout=nexusrepair`, puis lancer la réparation complète. Une relance conserve les publications existantes.

Le ZIP contient **59 fichiers de fonctionnement et 240 carnets pédagogiques vierges**. Sa petite taille est normale : il complète le composant installé. Si des illustrations manquent, le réparateur télécharge les deux packs déjà disponibles sur ce dépôt, vérifie leurs empreintes puis récupère uniquement les fichiers attendus. Les packs représentent environ **112 Mo au total**, avec **240 illustrations et 1 200 variantes**. Aucun script contenu dans ces packs n’est exécuté.

Si le serveur refuse les téléchargements sortants, installer les packs [A](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/GENIUSPACE_IMAGES_5.27.6_A.zip) et [B](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/GENIUSPACE_IMAGES_5.27.6_B.zip) par l’installateur Joomla, puis reprendre la réparation. PHP 8.3 minimum, cURL et ZipArchive sont nécessaires pour la récupération automatique.

## Résultat attendu

- **15 topics + 20 articles dans chacun des 12 univers**, enregistrés comme de vrais contenus JoomCCK avec catégories, couvertures et relations natives. Les auteurs, contenus et choix de visibilité déjà présents sont conservés.
- Les publications anciennes rattachées à quatre anciens univers sont reconnectées aux univers actuels sans perdre leurs anciennes associations. Les anciennes racines d’univers redirigent vers les nouvelles, sauf lorsqu’une mise en page personnalisée doit être conservée.
- L’accueil Joomla vide d’origine devient le Méta-Hub natif, répond directement en **200**, avec une canonique à la racine. Un accueil personnel déjà rédigé n’est pas remplacé.
- Les quatre sujets de test exacts et non enrichis restent accessibles, mais passent en **noindex, follow**. Une réponse publique, une image, une pièce jointe, un texte modifié ou une visibilité privée empêche cette exclusion automatique.
- Le sitemap utilise les appels fonctionnels à la racine et inclut les publications réellement publiques. Les appels concernés des widgets, médias, formulaires et de la présence évitent aussi l’entrée `/index.php` défaillante observée sur le serveur public.
- Les vues secondaires des articles et leçons utilisent leur pagination native : elles ne chargent plus le fil complet en arrière-plan. Cela corrige notamment une erreur 500 du traitement SEF sur une leçon.
- Les contrôles précédents du Multi-Blog, les titres par univers, les métadonnées et les schémas natifs sont inclus.

## Conservation et reprise

L’installateur accepte les empreintes des versions connues et refuse d’écraser un fichier personnalisé inconnu. Il sauvegarde les fichiers avant remplacement dans un dossier privé situé **au-dessus de la racine publique**. La réparation conserve ses reçus dans un autre dossier privé et son état dans les paramètres natifs du composant.

Les tables nécessaires à la publication doivent être **InnoDB**. Si une table contrôlée reste MyISAM, l’installation s’arrête en indiquant son nom ; aucune conversion de moteur n’est lancée automatiquement. Les autres paramètres du composant sont conservés.

Les champs JoomCCK existants, leurs implémentations, les moteurs IA, les comptes, les tarifs et les configurations d’abonnement ne sont pas remplacés. Aucune suppression de comptes ou de contenus n’est exécutée par cette réparation. Désinstaller l’extension de maintenance ne supprime pas les publications et ne constitue pas un retour arrière.

## Après le déploiement

Vérifier l’accueil, les douze fils, les douze magazines et quelques articles/topics en navigation privée. Le sitemap public à déclarer dans Search Console est :

`https://geniuspace.io/?option=com_joomcck&task=geniuspace.sitemap`

Le correctif ajoute cette ligne à un `robots.txt` accessible en écriture sans remplacer ses directives existantes. Si cette écriture est impossible, Joomla affiche un avertissement.

La réparation des 404, du maillage et des canoniques permet l’exploration des pages ; elle ne garantit pas la sélection ou le classement par Google. Le motif Search Console « Explorée, actuellement non indexée » doit être réévalué après le déploiement, avec les résultats réels d’inspection d’URL.
