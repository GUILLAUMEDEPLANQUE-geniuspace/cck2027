# Delta technique 5.27.7 → 5.27.8

Ce document complète le dossier Gemini versionné 5.27.7 ; il ne prétend pas le remplacer par un audit de production.

## Lecture et affichage

- `NexusBlogIndex::category(int $hub)` distingue un filtre explicite `nx_blog_category` d’une navigation depuis une feuille de l’annuaire. Le second cas utilise la racine réelle de l’univers. `url()`, `canonical()`, `data()` et `metadata()` partagent ce périmètre.
- `NexusBlogIndex::data()` parcourt plusieurs fenêtres avec curseur plutôt que de conclure à une collection vide après 200 discussions. Le travail par requête reste borné et la pagination progresse.
- `PublicationRecovery::neighbors()` fournit, pour une feuille sans sujet, des liens vers des discussions du même univers après vérification des droits publics. Cette liste n’est pas présentée comme le contenu propre à la feuille.
- `default_record_nexus_forum7.php` conserve ses régions, champs, mécanismes, relations et outils. Les outils d’une discussion sont regroupés dans un élément `details`. Le texte, les métriques et les réponses restent dans le flux principal.
- `absolu.css` corrige la flexibilité de `.forum7-forum-thread` et la disposition des signatures sur petits écrans. La version de l’asset est mise à jour.

## Réparation administrative

Contrôleur : `geniuspace.repairPublications`, uniquement **POST + session super administrateur + jeton Joomla**. Réponses JSON privées sans cache, `nosniff` et `noindex`.

| Stage | Service | Effet |
|---|---|---|
| `diagnose` | `PublicationRecovery::diagnose()` | Compteurs et disponibilité des images, sans export des membres |
| `universe` | `PublicationRecovery::universe()` | Réutilise les importeurs natifs des 20 articles et 15 discussions |
| `remove-import` | `LegacyMemberRemoval::remove()` | Retrait des comptes marqués par l’ancien outil de migration |
| `sql-diagnose` | `SqlImportRecovery::preview()` | Vérifie le fichier SQL original et les correspondances présentes |
| `sql-topics` | `SqlImportRecovery::repairTopics()` | Préserve et raccorde les 45 topics du SQL original |
| `sql-remove` | `LegacyMemberRemoval::removeSql()` | Retire les comptes exactement reconnus dans le SQL |

Vue : `view=tools&layout=nexusrepair`. Client : `publication-recovery.js`. Aucun retrait ou import de contenu n’est déclenché implicitement par l’installation.

`SqlImportRecovery::read()` n’accepte que les octets de l’export fourni, vérifiés par SHA-256. `literals()` ne lit que des littéraux ; elle n’appelle ni `eval`, ni l’exécution du SQL importé. La clé de table `jos_` du fichier source n’est jamais utilisée comme préfixe de base installé : les écritures ciblées passent par le préfixe natif `#__`.

Les 450 comptes et leurs fiches doivent correspondre aux données d’origine, pas seulement à leurs numéros. Les changements d’identité, de visite ou de droits provoquent un arrêt. Le nettoyage des comptes n’appelle pas l’ancien événement global de suppression utilisateur qui efface tous les contenus d’un auteur : il effectue un retrait ciblé et utilise la table utilisateur native, après contrôle de l’activité supplémentaire.

Les écritures transactionnelles du raccordement utilisent `Store::atomic()`, y compris les opérations imbriquées de `LinkIndex`. Les anciennes identités publiques connues passent par `NativeUrls::saved()` pour conserver le mécanisme de redirection existant. Les moteurs des tables affectées sont contrôlés avant la mutation.

Les sauvegardes sont placées à côté de la racine web, dans des répertoires privés ; les fichiers sont en mode 0600 et les répertoires en 0700. Les contenus de sauvegarde ne sont pas retournés par l’API. Le dossier ne contient aucun export de ces données.

## Fusion IA

Les services `Omega*`, ressources navigateur et workers de `COM_NEXUSOMEGA_5.27.0_COMMUNAUTE.zip` sont intégrés au répertoire natif des services Geniuspace. Les fichiers `Schema.php` et `SchemaMigration.php` plus récents du projet sont conservés : l’ancienne archive aurait retiré des déclarations et des migrations hors IA.

Le composant MVC `com_nexusomega` est installé comme enfant du paquet complet. Son installateur ne réapplique pas un ancien overlay sur le cœur fusionné. Les panneaux utilisent les services natifs existants et les nouvelles fonctions apportées par l’archive. Les options et droits précédents restent en base.

Les contrôleurs `AssistantController` et `ApiController` envoient explicitement leurs en-têtes avant de fermer Joomla. Le contrôle HTTP a révélé que `setHeader()` seul suivi de `close()` ne suffisait pas. Les erreurs internes du contrôleur membre sont neutralisées.

Les nouvelles fonctions ne dispensent pas de configurer les modèles, sources, comptes d’agent et passerelles. Le mode documentaire est distinct d’une génération par modèle. Les acteurs logiciels restent identifiés et ne sont pas des comptes humains.

## Contrôles à reprendre sur l’hébergement

Après installation et exécution des actions explicites, vérifier les compteurs réels de retrait, les topics hérités visibles dans leurs univers, le Multi-Blog depuis une sous-rubrique, ses URL canoniques et ses images, les réponses sur desktop/mobile et la configuration des moteurs IA. Les mesures locales et simulations d’erreur ne constituent pas une mesure de charge sur geniuspace.io.
