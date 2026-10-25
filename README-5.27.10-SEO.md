# Geniuspace 5.27.10 — audit des topics et stratégie SEO dans le site

[Télécharger le ZIP installable](https://github.com/GUILLAUMEDEPLANQUE-geniuspace/cck2027/raw/refs/heads/main/GENIUSPACE_TOPICS_STRATEGIE_SEO_5.27.10.zip) · [Audit et stratégie sur 90 jours](STRATEGIE-SEO-GENIUSPACE-2026-10-25.md) · [Rapports techniques](audits/5.27.10-seo/)

**Base requise : Geniuspace 5.27.8 ou 5.27.9.** Installer ce ZIP avec un compte super administrateur dans **Joomla → Système → Installation → Extensions**. Le correctif Japon 5.27.9 et ses images sont inclus : inutile de l’installer séparément avant celui-ci.

Le paquet ajoute une présentation de marque au Méta-Hub, des paramètres SEO natifs configurables, un éditeur Geniuspace relié au schéma WebSite, un sitemap corrigé et un outil privé de contrôle des discussions. Le renvoi automatique du Méta-Hub vers Jeux vidéo devient une option explicite ; la vue Multi-Blog reste disponible. Le Méta-Hub sans paramètre de mode présente désormais la même identité que l’entrée depuis l’accueil.

L’installation publie réellement les vingt articles et quinze topics Japon manquants, avec leurs catégories, champs et relations natifs. Les contenus existants ne sont pas dupliqués ; leurs modifications et leur visibilité choisie sont conservées. **Les 165 autres topics prévus se contrôlent et se publient avec les outils existants : ce ZIP ne les publie pas automatiquement.** Les packs d’images globaux restent nécessaires pour les univers qui ne les ont pas encore reçus.

## Retrouver les réglages et contrôles

- **Configuration JoomCCK → Identité de marque et accueil :** titre SEO, H1 et présentation du Méta-Hub.
- **Configuration JoomCCK → Univers et notation :** option de redirection vers un seul univers, désactivée par défaut.
- **JoomCCK → Outils → Audit SEO → Topics et stratégie de marque :** audit par lots des discussions natives, et contrôle des quinze topics prévus dans chaque univers.
- Accès direct au diagnostic privé après connexion à l’administration : `administrator/index.php?option=com_joomcck&view=tools&layout=nexustopicseo`.

Le diagnostic ne publie rien : il distingue les sujets absents, restreints et accessibles, et contrôle les champs publics, l’exclusion d’indexation, les catégories et les relations vers les guides. Les remarques sur les titres de test et les illustrations sont des points éditoriaux à examiner. Les invités sont dirigés vers la connexion native ou se voient refuser l’accès.

Sitemap public corrigé :

```text
https://geniuspace.io/?option=com_joomcck&task=geniuspace.sitemap
```

L’installateur ajoute cette déclaration à un `robots.txt` existant, sans retirer ses directives ni ses autres sitemaps. Si le fichier est absent, inaccessible en écriture ou lié symboliquement, il est conservé et l’installateur affiche un avertissement. Soumettre ensuite le sitemap dans Search Console avec le compte propriétaire.

## Protection des personnalisations

Les empreintes sont vérifiées avant remplacement. Un fichier personnalisé inconnu provoque l’arrêt du correctif. Les sauvegardes privées sont placées dans `.nexus-seo-backups`, à côté de la racine Joomla ; le compte PHP doit pouvoir y écrire. Les publications passent par une transaction et les tables concernées doivent déjà utiliser InnoDB. Aucune conversion de moteur n’est exécutée.

Le ZIP contient quinze fichiers applicatifs et cent variantes des vingt illustrations Japon. Les autres extensions, fichiers d’implémentation des champs, comptes, paiements et paramètres IA ne sont pas remplacés par ce paquet. La désinstallation conserve le contenu, les images, les fichiers applicatifs et la déclaration de sitemap ; elle ne constitue pas un retour arrière automatique.

**Statut : préparé et testé sur la copie locale, sans installation attestée en production.** La dernière authentification Joomla de production avait été refusée.

Les rapports joints attestent **135 contrôles ciblés réussis et 13 validations syntaxiques PHP** : installation réelle, champs et méthodes conservés, relations, audit protégé, sitemap, robots, navigation et affichages PC/mobile. Ils ne constituent pas une certification de l’intégralité du projet.

L’audit public relève 9 discussions et 5 articles existants, ainsi que 180 nouvelles URL attendues en 404. Une structure correcte ne garantit pas l’indexation ou le classement de Google.

Archive : 10 509 761 octets. SHA-256 :

```text
286b042ca2541f638e8958d52094b9c453fe4ab0654ac629cc56442d0aa59f66
```
