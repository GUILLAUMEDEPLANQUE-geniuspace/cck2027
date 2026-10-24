# Geniuspace 5.27.9 — Boutique Japon, publications et identité SEO

[Télécharger le correctif installable](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/GENIUSPACE_JAPON_PUBLICATION_SEO_5.27.9.zip) · [Delta technique](TECHNICAL-DELTA-5.27.9-JAPON.md) · [Rapports des contrôles](audits/5.27.9-japon/)

**Correctif ciblé à installer sur Geniuspace 5.27.8.** Il contient cinq fichiers de l’application et les cent variantes optimisées des vingt illustrations de l’univers Japon. Il réutilise les textes et les fonctions de publication déjà présents dans la version 5.27.8 : son installation publie réellement les vingt articles et quinze topics manquants dans les tables natives JoomCCK, avec leurs catégories et relations parent/enfant. Les deux packs d’images globaux ne sont pas nécessaires pour cet univers.

## Installation

1. Dans Joomla, ouvrir **Système → Installation → Extensions**, avec un compte super administrateur.
2. Charger `GENIUSPACE_JAPON_PUBLICATION_SEO_5.27.9.zip`.
3. Lire le résultat de publication affiché par l’installateur, puis ouvrir le forum Boutique Japon et son Multi-Blog.

La réinstallation ne duplique pas les contenus. Les fiches existantes, leurs modifications et leurs choix de visibilité sont conservés : un contenu volontairement privé ne devient pas public. Les identifiants réels des catégories, champs et types sont résolus à partir du forum installé.

L’installateur vérifie les empreintes des fichiers avant tout remplacement, exige InnoDB pour les tables concernées et crée une sauvegarde privée des fichiers modifiés et des paramètres de catégorie, dans `.nexus-japan-backups` à côté de la racine Joomla. Le compte PHP doit pouvoir y écrire. En cas de personnalisation des fichiers depuis la version 5.27.8, l’installation s’arrête pour permettre une fusion. Aucune conversion de moteur de stockage n’est exécutée.

## Résultat attendu

- **Forum Boutique Japon :** quinze topics natifs, chacun relié à un guide. Exemple : « Kimono ou yukata : quelles mesures demander lorsque les tailles ne sont pas comparables ? »
- **Multi-Blog Japon :** vingt articles et leurs illustrations, slider, filtres et pagination conservés. Contenu centré, largeur maximale de 1 600 px et grille de trois colonnes sur les très grands écrans.
- **Titre HTML du Multi-Blog :** `Artisanat japonais : guides et blogs de créateurs | Geniuspace`.
- **H1 :** « Artisanat japonais » puis « Guides, artisans et créateurs. »
- **Titre HTML du forum :** `Artisanat japonais : boutiques, créateurs et forum | Geniuspace`, si aucun titre personnalisé n’a été défini.
- Description et données structurées du magazine contextualisées ; cartes reliées aux URL canoniques natives des articles et à leurs auteurs et images.
- Derniers commentaires limités à l’univers consulté. Le bouton « Créer un sujet » conserve la catégorie active.

Les nouvelles sous-catégories tirent leur identité de leur titre natif. Cinq paramètres de catégorie permettent de personnaliser le H1, son complément, l’introduction, le titre HTML et la description du Multi-Blog. Les paramètres SEO du forum restent distincts.

## Vérifications et statut de production

**51 contrôles ciblés réussis**, plus la validation syntaxique des quatre fichiers PHP : installation Joomla réelle, création de 35 publications absentes, réinstallation sans doublons, conservation des autres fiches, refus des fichiers personnalisés, métadonnées, navigation, images, rendu PC et mobile. Ces contrôles portent sur cette correction, pas sur une certification de tout le site.

Lors de l’observation publique précédant le correctif, le forum Japon et son magazine ne présentaient aucune des nouvelles publications. **Ce correctif n’a pas été installé en production par l’assistant : Joomla a refusé la connexion d’administration configurée.** Les captures `blog-after-desktop.png` et `blog-after-mobile.png` proviennent de la copie locale après installation.

Le correctif ne supprime aucun compte et ne modifie pas la configuration IA ou les autres extensions. Sa désinstallation conserve les publications, les images et les fichiers applicatifs ; elle ne constitue pas un retour arrière. Les paquets antérieurs restent disponibles. L’indexation et le classement dans les moteurs ne sont pas garantis par des métadonnées ou un schéma.

Archive : 10 477 772 octets. SHA-256 :

```text
ffcfe9f5c6d59847dc15a4565a61212eb842727626985b6cf29c031df8681e33
```
