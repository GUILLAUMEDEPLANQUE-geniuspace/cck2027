# Geniuspace 5.27.7 — images des index, discussions, import des membres et performances

Cette version complète 5.27.6 sans retirer de fichiers existants. Composant : **6.4.2.199**. Les 899 fichiers des champs natifs JoomCCK et les 278 fichiers AllVideoShare contrôlés restent identiques.

## Télécharger et installer

1. Si les deux packs d’images ne sont pas déjà installés, installer [le pack A](GENIUSPACE_IMAGES_5.27.6_A.zip) puis [le pack B](GENIUSPACE_IMAGES_5.27.6_B.zip) dans l’installateur Joomla. Ces deux archives sont inchangées.
2. Installer [NEXUS 5.27.7](NEXUS_5.27.7.zip). Le ZIP contient le composant et les extensions précédentes, les corrections et les outils de publication/migration. Il ne contient aucune donnée personnelle des membres importés.
3. Vider le cache de pages Joomla et, si vous en utilisez un, le cache de votre proxy/CDN. Vérifier le rendu en navigation privée.
4. Dans **JoomCCK → Outils → Forum de production**, le diagnostic doit indiquer **1 200 / 1 200 fichiers d’images**. Publier ou reprendre les vingt articles de chaque univers, puis ses quinze discussions. Une installation de mise à jour ne publie pas automatiquement des contenus et ne réécrit pas vos articles personnalisés.

Les deux packs représentent 240 illustrations originales : quatre tailles WebP et un JPEG de partage par article. Leurs crédits précisent qu’il s’agit d’illustrations réalisées avec une assistance IA. Les cinq nouvelles couvertures des anciens dossiers sont dans le composant principal.

## Corrections

- **Anciennes couvertures des index :** les cinq dossiers historiques utilisaient aussi des URL du gestionnaire de médias natif. La résolution reconnaît maintenant ces fichiers dans leur véritable article, après contrôle de la référence de champ, du propriétaire du fichier et de l’empreinte des octets d’origine. Les images personnalisées ne sont pas remplacées. Les autorisations du gestionnaire de médias restent actives.
- **SEO des images et des auteurs :** l’index émet des entrées `BlogPosting` dans son `ItemList`, avec l’auteur public et l’image correspondante. Les articles et discussions exposent leurs images connues comme `ImageObject`, avec dimensions et crédit. Variantes responsives, textes alternatifs, JPEG sociaux et sitemaps utilisent les mêmes sources publiques.
- **Index d’univers :** une URL canonique d’index conserve sa catégorie et sa sélection d’articles après rechargement. Les recherches et facettes restent distinctes des pages canoniques.
- **Discussions :** ajout de 180 ouvertures de discussion éditoriales, soit quinze par univers. Elles sont signées, contextualisées et reliées à leurs guides par les champs natifs parent/enfant. Aucun membre, réponse, vote, avis ou trafic n’est fabriqué. L’import est explicite, reprend les lots interrompus et conserve les fils déjà finalisés, y compris ceux que vous avez ensuite dépubliés.
- **Performances :** les catégories, définitions de champs, paramètres et identités de route réutilisent leurs lectures pendant une même requête GET/HEAD. Ces instantanés ne sont pas partagés entre visiteurs et sont désactivés pour les mutations et la CLI. Le radar détaillé, auparavant calculé même dans un panneau fermé, se charge à son ouverture ; son lien reste utilisable sans JavaScript. Les deux modes restent préchargés pour basculer rapidement.
- **Catégories privées :** le contrôle public vérifie les parents réels, y compris les ancêtres privés, dépubliés, manquants ou cycliques. Une permission d’administration ne transforme pas un contenu privé en source publique pour les métadonnées, sitemaps ou agents.

## Import des 450 membres

Dans la copie du projet, **450 comptes Joomla et 450 fiches privées ont été importés**, avec 27 champs natifs et leurs 12 150 valeurs. Les comptes existants et leurs groupes sont conservés. Un second import ne crée pas de doublons.

Pour réaliser cette migration sur votre serveur, ouvrir **JoomCCK → Outils → Importer mes membres historiques** et sélectionner le CSV d’origine. L’outil ne lance jamais le SQL fourni. Il remappe les identifiants et n’écrase pas les comptes ayant déjà le même pseudo ou email.

- Les mots de passe fournis sont ignorés. Chaque nouveau compte reçoit un secret aléatoire distinct et exige un renouvellement. Aucun email n’est envoyé pendant l’import.
- Sans confirmation explicite que le fichier représente des comptes réels de l’ancien site, les nouveaux comptes sont désactivés. **Les 450 comptes de la copie sont actuellement dans cet état.** La confirmation ne réactive pas automatiquement un compte existant déjà importé ou bloqué par un administrateur.
- Seul le groupe Registered est attribué, après vérification qu’il ne donne pas de droits d’administration.
- Les fiches restent privées et non publiées. Les avatars externes sont conservés comme données historiques, sans téléchargement automatique ni attribution d’identité publique. Les déclarations « vérifié/certifié » ne deviennent pas des badges vérifiés.
- Le CSV temporaire est traité hors de la racine web, avec des fichiers privés ; les mots de passe en clair en sont exclus. Les données de lot sont retirées à la fin. Les accès exigent une session administrateur et un jeton CSRF.

Sur des tables MyISAM, les compensations et la reprise ne remplacent pas une transaction couvrant toutes les tables. Une interruption brutale entre deux écritures peut nécessiter une réconciliation administrative des conflits ; l’import privilégie la conservation des comptes existants. Les outils de diagnostic/conversion InnoDB déjà présents restent disponibles. Cette version ne convertit pas silencieusement vos tables.

## Vérifications et limites

Voir [le rapport de validation](audits/5.27.7/release-summary.json) et [le manifeste des fichiers](audits/5.27.7/manifest.json).

- 2 817 contrôles natifs : articles, discussions, couvertures, signatures, relations, import et confidentialité.
- 737 contrôles HTTP : 24 pages complètes, les 420 publications et leurs images dans les sitemaps, refus des mutations non autorisées et chargement du radar.
- 147 contrôles navigateur : douze univers, ordinateur/mobile, images décodées, rechargement canonique cohérent, bascules sans navigation et radar à la demande.
- 340 contrôles d’installation du paquet complet, incluant la conservation des données et extensions natives.
- 5 contrôles spécifiques sur les ancêtres de catégories et la fraîcheur des lectures de mutation ; 5 autres sur la reprise de publication, les dictionnaires de champs et le respect des dépublications manuelles.

Sur la copie contenant les nouveaux articles et discussions, les dernières optimisations réduisent les requêtes de **4 276 à 1 335** pour l’index Multi-Blog et de **4 522 à 1 728** pour le parcours Forum mesuré. Le pic mémoire mesuré de l’index passe d’environ 384 Mio à 64 Mio. Ces mesures proviennent du laboratoire ; elles ne prédisent pas la vitesse de votre hébergement. Les pages complètes restent lourdes : médianes locales d’environ 3,1 s et 4,1 s pour les URL testées, redirections incluses. La bascule des modes ne recharge pas la page.

Le contrôle public du 23 octobre 2026 retrouve une nouvelle couverture historique avec HTTP 200, mais la couverture testée de la collection des 240 retourne HTTP 404. La requête du sitemap public a expiré ; son état après installation doit être contrôlé sur l’hébergement. **Aucune écriture sur geniuspace.io n’a été réalisée dans cette intervention.** Les imports et validations décrits ci-dessus concernent la copie du projet. L’accès administrateur de production précédemment configuré avait été rejeté.

Un balisage valide et des images accessibles facilitent l’exploration ; ils ne garantissent ni l’indexation ni une position dans Google. Les données privées des membres, leurs mots de passe et les fichiers d’import ne figurent jamais dans ce dépôt public.
