# Geniuspace 5.27.5 — images, URL et maillage public

Cette version ajoute un sitemap d’images et enrichit le catalogue pour les agents IA. Les données viennent des champs et relations natifs JoomCCK. Les contrôles ont été exécutés sur la copie Nexus Innovation Lab. **Aucun déploiement sur geniuspace.io n’est revendiqué.** Le contrôle public en lecture confirme que la page d’accueil et robots.txt répondent HTTP 200 ; il ne prouve pas l’installation du correctif.

## Ce qui change

- Le sitemap natif conserve ses fragments de 500 identifiants et ajoute jusqu’à 12 images publiques par fiche, avec le format XML `image:image / image:loc`. Aucun tag d’image obsolète ni date artificielle.
- Sitemap et catalogue appliquent les mêmes exclusions : accès invité, publication, dates, catégorie, type/section, démonstration et `noindex`. Le retrait d’un droit est pris en compte sans cache partagé périmé.
- Le catalogue expose les images, leurs dimensions connues et leurs crédits, la date de publication et jusqu’à 12 relations natives parent/enfant. Chaque cible repasse les contrôles d’accès. Le réglage de liens SEO du champ reste prioritaire. Aucun lien n’est inventé.
- Les propriétés existantes de l’API restent disponibles et son enveloppe reste `version: 1.0`. La description OpenAPI 3.1 décrit les ajouts dans sa révision 1.1.0. Validation des réponses réelles par JSON Schema.
- Les pages déclarent leur sitemap et la description de l’API dans leur `<head>`. Les cartes de partage affichent le nom configuré du site.
- Les illustrations éditoriales de 1 200 px autorisent `max-image-preview:large`, sauf directive restrictive déjà définie (`noindex`, `none`, `nosnippet`, `noimageindex`, `max-image-preview:*`). Aucun réglage restrictif n’est remplacé.
- Les cartes de publication immédiate et de relations bénéficient des variantes responsives des images connues. Les images personnalisées restent prioritaires.
- La conversion des routes en URL absolues traite correctement une installation Joomla en sous-répertoire et son port.

## Conservation

Aucun fichier existant supprimé : 7778 fichiers dans l’archive, dont un nouvel utilitaire. 9 fichiers existants modifiés, listés et hachés dans [MANIFEST.json](MANIFEST.json) et [reviewed.patch](reviewed.patch).

Les **899 fichiers de champs natifs** et les **278 fichiers AllVideoShare** sont identiques à 5.27.4. Le test réel d’installation conserve les lignes natives, paramètres de modules, abonnements, facturation, tables et moteurs existants. Aucune conversion MyISAM automatique ajoutée par cette version.

Les 240 textes, l’import de 20 articles par chacun des 12 univers, les cinq illustrations thématiques et les versions précédentes des médias restent inclus. Cette mise à jour renforce leur découverte et leur cohérence technique ; elle ne prétend pas avoir réécrit les 240 textes ou créé 240 nouvelles illustrations.

## Vérifications

| Vérification | Résultat |
|---|---:|
| Confidentialité et retrait d’indexation | 77 contrôles réussis |
| URL, directives d’aperçus, collections et cartes | 23 contrôles réussis |
| Navigateur desktop et mobile | 84 contrôles réussis, aucune exception JavaScript |
| HTTP, OpenAPI, XML, métadonnées et schémas | 353 contrôles réussis |
| Installation réelle du package complet | 320 contrôles réussis |
| Syntaxe PHP des fichiers modifiés/ajoutés | 8 fichiers valides |
| Comparaison complète de la projection publique avant/après refactorisation | 481 fiches comparées, 439 lisibles aux invités, aucun changement |

Les tests HTTP parcourent les 61 fiches indexables de cette copie en trois pages de catalogue. Ils vérifient les 11 images du fragment testé par HEAD invité, puis les cinq articles illustrés : titre et description distincts, un H1, sous-titres, canonical, Open Graph, auteur, date et ImageObject cohérents. La copie contient aussi des démonstrations et contenus volontairement non indexables : 439 fiches lisibles ne signifie pas 439 fiches à indexer.

Les tests de sécurité modifient temporairement les droits et paramètres sur la copie, les rétablissent dans des blocs `finally`, puis comparent les empreintes de huit tables natives. Ils vérifient notamment un champ image privé, une image dans du HTML privé et une cible de relation retirée. Les chaînes d’URL sont échappées pour XML et les protocoles non HTTP sont exclus.

Sur cette machine, le fragment de sitemap testé répond en environ 0,73 seconde ; les trois pages de catalogue en environ 1,25 à 1,71 seconde. Ce sont des mesures locales, sans garantie de temps en production. La génération n’appelle pas de service d’IA ni de téléchargement de sources ; elle ne charge pas les corps des commentaires pour ces exports. Les pages du site ne déclenchent pas ces exports en arrière-plan.

## Installation et découverte

1. Installer [NEXUS_5.27.5.zip](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/NEXUS_5.27.5.zip) par l’installateur Joomla, puis vider le cache HTML de Joomla.
2. Le sitemap est : `https://geniuspace.io/index.php?option=com_joomcck&task=geniuspace.sitemap`.
3. Le catalogue est : `https://geniuspace.io/index.php?option=com_joomcck&task=geniuspace.discovery` ; sa description : `https://geniuspace.io/index.php?option=com_joomcck&task=geniuspace.openapi`.
4. Le robots.txt public contrôlé ne déclarait pas de ligne Sitemap. Ajouter, en conservant les règles et sitemaps existants :

```text
Sitemap: https://geniuspace.io/index.php?option=com_joomcck&task=geniuspace.sitemap
```

Soumettre ensuite cette URL à Google Search Console et Bing Webmaster Tools avec les comptes du propriétaire. Ces outils, Baidu et les moteurs de réponses décident de l’exploration et de l’indexation. Ce correctif ne garantit ni classement ni citation par un agent. Aucun accès aux comptes de moteurs ni modification de robots.txt en production n’a été effectué.

## Archive

Version package : **5.27.5**, version composant : **6.4.2.197**. Taille : **60,113,729 octets**.

SHA-256 : `5ee9cbe9d3cdb5cb7e9efc8ec44d866fe86abd3b9f456d28b36a346507a250b1`.

[Rapport d’installation](installation-results.json) · [Tests HTTP](http-results.json) · [Confidentialité](security-results.json) · [Rendu mobile](article-mobile.png) · [Rendu desktop](blog-desktop.png)
