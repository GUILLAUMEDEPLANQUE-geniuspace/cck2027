# Geniuspace — audit des parcours, ergonomie et innovations

21 octobre 2026 · Base examinée : NEXUS 5.26.0 · Ordinateur et mobile.

**La priorité : rendre immédiatement utile la richesse déjà présente.** Geniuspace possède des publications spécialisées, des champs natifs, des entreprises, des offres, une académie, des échanges, des avis, des médias et des outils. Sa différenciation la plus forte serait de permettre à une personne de passer d'un intérêt à un résultat documenté, avec un contexte conservé à chaque étape.

Le chantier recommandé conserve les fonctionnalités, les univers, leurs couleurs, le shell de super-app, le constructeur, les champs, les formats, les modules et les relations. Il change leur ordre d'apparition, simplifie le premier geste et enrichit les échanges. Ce document constitue **un audit et une feuille de route** ; les recommandations ne sont pas des modifications déjà déployées.

## 1. Ce qui a réellement été essayé

| Travail | Résultat et portée |
|---|---|
| 47 observations page × largeur | 12 univers en 1440 × 1000 et 390 × 844, Multi-Blog, offres, entreprise, académie, cours, leçon, produit, vidéo, réservation, blog d'entreprise, inscription ; Gaming également en 3440 px. |
| Personnages de simulation | 12 comptes auteurs distincts, un par univers ; les mêmes deux autres membres répondent dans les 12 univers ; un compte candidat et un compte recruteur existants. Ce sont 16 identités de test, sans participants humains recrutés. |
| Publications communautaires réelles dans la copie | 12 messages courts enregistrés par le formulaire natif ; 24 commentaires publiés, dont 12 réponses imbriquées. Aucune de ces opérations n'a été réalisée en production. |
| Publications métier supplémentaires | Création par soumission HTTP au contrôleur natif, sous le compte recruteur ordinaire : entreprise, cours, leçon, offre, article, produit, ressource vidéo, rendez-vous, compétence, communauté, exercice et projet/preuve. Les 12 sont publiés, leurs pages répondent 200, le titre apparaît et un H1 est visible. Entreprise, cours, offre, article du Multi-Blog et produit sont également retrouvés dans leurs cinq listes respectives. |
| Liens des nouvelles fiches | Le nouveau cours contient le lien vers la nouvelle leçon et vers l'entreprise ; la leçon renvoie au cours. Les références ont été remappées vers les nouvelles fiches, sans réaffecter les enfants d'une entreprise appartenant à un autre compte. |
| Vidéo réellement transférée | Ajout temporaire d'un champ natif `gpavsvideo` au type de test, upload de 88 094 853 octets en 84 fragments, sauvegarde du record, liaison native fichier–champ–vidéo, lecture réelle, chapitre à 2 s, lecture partielle HTTP 206, affichage à 390 px, commentaire avec instant, vote d'un autre membre à 4/5. Le retrait de la fiche coupe l'accès anonyme au fichier. |
| Avis réellement publiés | Un article de format Avis est enregistré par le contrôleur natif. Deux autres comptes publient un avis de 5/5 et de 3/5, chacun avec deux critères, points forts, points faibles et texte. Moyenne enregistrée : 4/5 ; note éditoriale : 4,5/5. Le JSON-LD public annonce bien 4/5 et deux avis. |
| Retrouver un sujet | Les 12 nouveaux sujets sont retrouvés par la recherche. Une observation de premier rechargement était transitoirement vide dans Paranormal ; le sujet était présent au rechargement mobile suivant et dans la recherche. Aucune mauvaise catégorie n'a été constatée pour ce sujet. |
| Formats | Les 23 entrées de publication ouvrent chacune le format attendu, avec quatre étapes et des champs différents. Cela valide leur ouverture et leur structure ; pas l'enregistrement de chacun de leurs médias ou de chaque format. |
| Recruteur | Ouverture du formulaire natif d'offre, neuf onglets d'entreprise exercés, consultation des services. Une entreprise temporaire appartenant réellement au recruteur permet d'exercer la personnalisation et l'aperçu, sans publier de composition. |
| Candidat | Recherche d'offre, ouverture des prérequis de l'offre HRBP, cours vers première leçon, espace personnel. Aucun paiement ni candidature finale n'a été envoyé. |
| Site public | Trois GET anonymes : accueil, Jeux vidéo et offres ; HTTP 200. L'accueil redirige vers Jeux vidéo. Aucun formulaire soumis et aucune authentification en production. |
| Restitution de la copie | Première série : retrait de 14 comptes, 13 fiches et 24 commentaires. Seconde série : retrait de 14 fiches, trois commentaires, un compte, le champ vidéo temporaire et ses fichiers ; paramètres AllVideoShare restaurés. Retour vérifié aux nombres initiaux : 481 fiches, 335 commentaires, 401 catégories, 4 utilisateurs. |

Les 47 observations ont répondu HTTP 200, sans exception JavaScript capturée, sans débordement horizontal global, avec un H1 visible dans le rendu et sans image locale cassée détectée. Ce sont de bons résultats techniques. Les captures montrent cependant des problèmes de lisibilité et de hiérarchie que ces contrôles ne détectent pas.

Une première réponse automatisée n'avait pas rempli correctement l'éditeur pendant son initialisation. Le nouvel essai, avec saisie dans le véritable éditeur visuel, a été enregistré. Cet incident de script n'est pas comptabilisé comme un défaut produit.

Les publications métier ont réutilisé un vrai formulaire, sa session, son jeton CSRF et son contrôleur ; certaines valeurs ont été renseignées par `FormData` pour couvrir les structures complexes. Cela teste les sauvegardes et les validations serveur, **pas la facilité de saisir manuellement chaque contrôle**. Le compte ordinaire ne peut pas recopier les enfants d'une entreprise tierce, et le code d'une compétence doit rester unique : ces refus sont attendus. Une valeur `datetime` envoyée avec une mauvaise structure a en revanche produit une erreur serveur ; l'API doit répondre par une erreur de validation compréhensible. La saisie au format attendu a ensuite publié l'offre correctement.

Le test de gros fichier utilise **un extrait de huit secondes complété avec des octets de remplissage**, afin de tester le transfert au-delà d'une requête de 64 Mio. Il ne démontre pas l'encodage, le stockage et la diffusion simultanée de longs films 4K, ni le débit d'un CDN. Le schéma d'avis a été vérifié dans le rendu, sans promesse d'affichage enrichi par Google.

Un défaut utilisateur a été reproduit pendant la réponse vidéo : le sommaire flottant intercepte le clic sur **Publier**. Le commentaire a pu être soumis au clavier pour poursuivre les vérifications. Ce contournement ne corrige pas l'occultation : elle reste une tâche prioritaire.

Les tables locales `js_res_record`, `js_res_comments`, `gp_social_forum_reviews` et `gp_social_video_links` sont **InnoDB**. Une conversion de ces quatre tables n'est donc pas nécessaire dans cette copie. Cela ne renseigne pas le moteur de toutes les extensions ni celui des tables en production ; un inventaire de cette base reste nécessaire avant toute migration.

La navigation vers la première leçon a abouti en HTTP 200 après environ **46 secondes dans le laboratoire**. Deux attentes plus courtes avaient expiré. Le lien fonctionne ; la lenteur de ce chemin mérite un profilage. Cette mesure locale n'est ni un Core Web Vital ni un temps de production.

Les modules `QA_*`, noms `nexusdemo*`, personnages et illustrations de démonstration visibles dans certaines captures appartiennent à la copie. Ils ne prouvent pas leur présence sur le site réel. Les 23 formulaires et les vues observées ne représentent pas une certification exhaustive de toutes les extensions, de leurs autorisations ou de leurs paiements.

## 2. Les acquis à conserver

- La publication courte passe par le moteur natif et reste dans l'univers ; elle n'ouvre pas le long formulaire.
- Le choix de catégorie est déjà prérempli selon l'univers dans les douze essais.
- Les réponses imbriquées, les couleurs et les émojis existent et ont servi pendant les essais.
- Les 23 formats sont réellement distincts. Vidéo, avis, finance, reportage, coalition et dossier pays n'exposent pas la même structure.
- L'index Multi-Blog occupe la largeur disponible et conserve son slider.
- Les critères emploi utilisent les vrais champs natifs. Une recherche exacte « Product Manager » retrouve la seule offre correspondante ; une recherche inexistante renvoie zéro résultat.
- Les neuf onglets d'entreprise fonctionnent, avec un sélecteur mobile. Le propriétaire de l'entreprise de test dispose du constructeur et d'un aperçu sans poignées d'édition.
- Le cours possède déjà un véritable lien « Commencer la première leçon » ; ce lien ne doit pas être recréé comme une nouvelle fonction.

Les lecteurs vidéo avancés, avis multi-critères, outils d'univers, API de widgets, abonnements et IA locale font aussi partie du périmètre existant. Le présent audit n'a pas reproduit un flux vidéo adaptatif à grande échelle, un entraînement de modèle, un règlement marchand ou chaque fonction de ces extensions. Les propositions ci-dessous prolongent ces bases.

## 3. Les corrections qui auront le plus d'effet

### A. Rendre les premiers messages accessibles

Dans l'état actuel, la découverte, les outils et le formulaire précèdent le mur. Avec un sujet réellement publié pour l'essai, voici sa position verticale initiale dans la fenêtre ; ce n'est pas la distance cumulée parcourue par un utilisateur.

| Univers | Premier sujet, 1440 px | Premier sujet, mobile 390 px |
|---|---:|---:|
| Jeux vidéo | 1 843 px | 2 943 px |
| Emploi | 13 107 px | 16 040 px |
| Pays et immobilier | 1 732 px | 2 735 px |
| Boutique Japon | 1 891 px | 3 273 px |
| Business | 1 644 px | 2 492 px |
| Investissement | 1 627 px | 2 426 px |
| Traditions | 1 659 px | 2 400 px |
| Paranormal | Première mesure vide, à investiguer | 2 381 px |
| Manga | 1 659 px | 2 401 px |
| Gastronomie | 1 643 px | 2 383 px |
| Sports | 1 627 px | 2 368 px |
| IA et sciences | 1 746 px | 2 590 px |

Le cas Emploi empile un détail métier très long avant les échanges. Il faut distinguer l'intention « chercher une offre » de l'intention « participer au mur Emploi ». Une offre peut être immédiatement visible alors que la discussion est à plusieurs écrans : les deux situations doivent être évaluées séparément.

**Disposition recommandée :** en-tête d'univers compact → onglets **Discussions / Découvrir / Outils** → compositeur réduit → premier sujet. Les images, sliders, scènes métier et calculateurs restent dans Découvrir et Outils, avec leurs liens directs. Sur la page des offres, le moteur et les résultats précèdent les modules complémentaires ; la question liée au poste reste proche de l'offre sélectionnée.

Mémoriser le dernier onglet par univers, avec priorité à l'URL et à l'historique du navigateur. L'arrivée depuis une campagne peut ouvrir Découvrir ; le retour d'un membre à sa conversation ouvre Discussions. Le shell 100vh est conservé.

**Critère de réception :** à 390 × 844, dans Discussions, voir le titre, un extrait et l'action Répondre du premier sujet avant de défiler.

### B. Corriger le mobile au-delà du simple débordement

Les liens PlayStation, Nintendo, Xbox et métiers se compriment en colonnes étroites. Les mots se coupent sur de nombreuses lignes. Le logo est tronqué ; le ruban de navigation et ses commandes occupent plusieurs couches. Le sommaire flottant et le dock peuvent recouvrir une partie du contenu.

Prévoir des puces de largeur minimale, une liste horizontale à défilement explicite ou une grille de deux éléments lisibles. Autoriser le retour à la ligne entre les mots. Le nom de marque, les actions et le champ de recherche doivent avoir un budget de largeur propre. Le lecteur doit pouvoir agrandir son texte sans casser ces choix.

Sur mobile : une zone principale de lecture ; les commentaires contextuels s'ouvrent dans une feuille basse. Sur ordinateur : une zone de défilement par panneau utile, avec la colonne d'échanges du split conservée. Les cartes et blocs internes ne doivent pas créer une succession de petits panneaux à défiler.

### C. Montrer immédiatement le résultat d'une publication

Les douze messages sont bien enregistrés et retrouvables. Dans les douze essais, leur carte n'était pas insérée immédiatement dans le mur après l'accusé de publication ; elle apparaît après rechargement. Cela peut donner l'impression que le contenu a disparu.

Insérer la vraie carte issue de la réponse serveur, avec son identifiant, dans une zone visible. Afficher **Publié dans [univers] · Voir · Enrichir**. Réserver l'état « en modération » aux décisions effectivement prises par les règles de modération. En cas d'accusé incertain, conserver la saisie et réutiliser le mécanisme natif empêchant les doublons.

### D. Appliquer les étapes guidées à la publication d'offres

Le lien « Publier une offre » ouvre bien le formulaire natif. Dans la configuration de la copie, il contient 122 contrôles de saisie, dont 90 non masqués, et aucun composant d'étapes comparable à celui des 23 formats du forum. Ce ne sont pas 122 champs métier distincts : certains champs produisent plusieurs contrôles.

Le même moteur de champs doit alimenter un parcours en quatre moments :

1. **Le poste** : intitulé, entreprise autorisée, lieu, contrat, salaire.
2. **Le travail réel** : missions, critères indispensables, équipe et conditions.
3. **La candidature** : canal, étapes, éventuels prérequis et engagements de réponse.
4. **Aperçu et diffusion** : vue candidat, formule éventuelle, durée et publication.

Tous les champs restent disponibles dans les étapes et groupes appropriés. Préremplir à partir de la fiche entreprise autorisée ; afficher les éléments manquants ; conserver un brouillon. Les répétitions de champs doivent proposer « Ajouter un élément », avec une présentation synthétique repliable. Les champs avancés ne doivent pas occuper tous les premiers écrans.

### E. Améliorer la pertinence de la recherche

« Product » remonte les cinq offres de la copie. Le diagnostic retrouve cette sous-chaîne dans « production » et « reproductible », présents dans des champs HTML de plusieurs offres. La recherche s'exécute, mais le résultat ne correspond pas à l'intention métier. « Product Manager » retourne bien une seule offre.

Classer les résultats par correspondance avec l'intitulé, métier, compétence, entreprise et lieu ; traiter les mots et expressions avant les simples sous-chaînes. Donner moins de poids aux textes communs et aux gabarits. Pour les données structurées, indexer les valeurs lisibles, avec le rôle du champ ; ne pas donner un poids de contenu aux clés techniques ou au HTML.

Les champs restent tous sélectionnables comme filtres selon la configuration et les droits. L'écran expose d'abord les critères choisis par l'administrateur pour cet univers, puis **Tous les critères**. Montrer les sélections sous forme de puces, le nombre de résultats et un retour clair à l'état précédent. Une recherche vide garde ses critères et propose des alternatives compréhensibles.

### F. Simplifier la réponse sans appauvrir l'éditeur

Le fil essayé comporte sept actions sur certaines réponses et un formulaire avec présentation, couleur, statut, menus d'éditeur, confidentialité et suivi. Ce niveau de contrôle est utile pour une contribution travaillée. Une phrase de réponse demande un accès plus direct.

Afficher **Répondre… · Émoji · Image · Développer**. Développer ouvre le même éditeur riche et ses champs, en conservant le texte. Proposer trois intentions facultatives : Question, Expérience, Proposition. Les couleurs restent associées à une étiquette ; la couleur seule ne porte pas le sens.

Conserver l'arbre complet. Après deux niveaux visuels sur mobile, proposer « Ouvrir cette branche » plutôt que réduire indéfiniment la largeur du texte. Le lien profond, le contexte cité et le retour à la position initiale doivent rester disponibles. Les fonctions de signalement, édition, suppression, vote et confidentialité restent accessibles dans le menu de la réponse.

Les comptes membres ordinaires de l'essai ne disposaient pas du bouton d'image dans les commentaires. Cela dépend de leur autorisation native : ce résultat ne démontre pas que l'éditeur d'image a disparu. Il faut décider et vérifier explicitement quels membres peuvent joindre des médias, puis leur fournir un libellé d'état clair.

Le test vidéo a aussi montré que **le sommaire flottant peut couvrir le bouton Publier** sur ordinateur. Une zone réservée commune au dock, au sommaire et aux actions évite ce conflit. Ce contrôle doit porter sur l'élément réellement situé sous le pointeur, et pas seulement sur la présence du bouton dans le DOM. Le clavier a permis de poursuivre l'essai ; le clic reste à corriger.

## 4. Une architecture d'écran commune et adaptable

| Situation | Contenu prioritaire | Accès complémentaire conservé |
|---|---|---|
| Mur d'univers | Sujet, extrait, réponse rapide | Découvrir, outils, formats, annuaire et sélection. |
| Article, cours, vidéo | Contenu spécialisé et sommaire | Échanges contextuels à droite ; feuille basse mobile. |
| Offre | Intitulé, salaire, lieu, contrat, candidature | Équipe, prérequis expliqués, outils, questions et offres liées. |
| Entreprise | Identité, activité, réponse à l'intention de visite | Les neuf onglets, boutique, forum privé autorisé, blog et académie. |
| Espace professionnel | Questions et dossiers à traiter | Factures, campagnes, statistiques, personnalisation et administration. |

Le dock mobile devrait proposer **Explorer · Suivis · Publier · Messages · Mon espace**. L'action propre à la fiche reste dans son contexte : Postuler, Commencer, Répondre, Réserver. Sur ordinateur, Outils et Entreprises & Créateurs peuvent compléter ces destinations. Tous les accès actuels restent disponibles dans les tiroirs.

Le constructeur doit rester très riche. Son inspecteur doit expliquer chaque bloc par son nom, sa source native et son rôle. La suppression d'un bloc de composition, le masquage personnel d'un widget et la suppression de son contenu sont trois opérations distinctes. Les préférences de masquage doivent disposer d'un bouton Restaurer. L'aperçu doit permettre de comparer bureau, mobile et rôle visiteur avant publication.

Les champs et catégories natifs demeurent la source de vérité. Chaque champ doit posséder un rendu de liste, de détail, de formulaire et, si activé, de filtre. L'ajout d'un champ déclenche un rendu de secours propre dans la bonne région, avec une taille adaptative. Une relation parent/enfant garde sa signification métier : une compétence ne devient pas un encart de coalition par simple position dans un formulaire.

## 5. Le parcours entreprise et le parcours candidat

### Entreprise qui recrute

**Objectif : publier une offre claire et traiter des candidatures utiles.**

Entrer par « Je recrute » → retrouver ou créer sa fiche → confirmer son rôle → préparer l'offre → voir l'aperçu candidat → publier → répondre aux questions → traiter les dossiers → informer les candidats.

La fiche entreprise doit servir de centre d'identité : logo, équipe, offres, blog, formations, catalogue et espaces autorisés. Dans la copie, un recruteur sans rattachement n'obtient pas le bouton de personnalisation ; une entreprise réellement possédée par ce même compte permet de l'utiliser. Ce contrôle est nécessaire. L'interface doit expliquer comment devenir gestionnaire de sa fiche, et proposer un sélecteur explicite lorsqu'une personne représente plusieurs sociétés.

Le meilleur tableau de bord B2B serait une **file de travail** : questions sans réponse, dossiers prêts, candidatures à compléter, rendez-vous, publications à mettre à jour et campagnes arrivant à échéance. Chaque ligne mène à une décision réelle. La performance affichée porte sur la qualité des interactions, les délais et les résultats, avec les dépenses et remboursements associés.

Innovation : **l'offre conversationnelle documentée**. Une question sur une condition de travail peut devenir une réponse officielle datée, liée au passage concerné de l'offre, puis une mise à jour de la fiche. Le candidat distingue une précision, une promesse et une condition vérifiée ; l'entreprise répond une fois à une question récurrente sans effacer l'historique.

### Candidat

**Objectif : comprendre, décider, candidater et suivre.**

Chercher → comparer quelques offres → vérifier le travail réel → poser une question facultative → préparer sa candidature → connaître les éventuels prérequis → envoyer → recevoir un reçu → suivre l'état et la prochaine échéance.

L'offre HRBP mène actuellement à « Vérifier mes prérequis », puis à une évaluation. Conserver cette capacité. Présenter avant le clic le rôle de l'évaluation, son caractère obligatoire ou facultatif, l'ordre des étapes, les règles de tentative et le chemin de retour. Le candidat doit toujours savoir où se trouve l'envoi effectif de sa candidature.

Innovation : **un dossier de candidature réutilisable, contrôlé par le candidat**. Une preuve de compétence peut être réemployée, avec son contexte, sa date et les autorisations choisies. Les informations privées restent privées. Une lacune peut proposer un cours ou un exercice, sans transformer toute découverte d'offre en parcours de formation imposé.

La chaîne existante offre → compétence → cours → exercice → candidature devient alors un trajet lisible. Le statut reprend au bon endroit entre ordinateur et mobile, avec accord et identification du membre.

## 6. Douze univers : douze usages et boucles de valeur

Les scénarios ci-dessous prolongent les publications et réponses exercées. Les innovations sont des propositions à développer, pas des résultats d'utilisateurs réels.

| Univers et scénario | Amélioration immédiate | Innovation et intérêt commercial | Champs et liens natifs à utiliser |
|---|---|---|---|
| **Jeux vidéo** : préparer un playtest ; deux joueurs proposent des observations et une mission courte. | Jeu, plateforme, version et objectif visibles ; réponse rapide ; tests séparés du recrutement générique. | **Boucle joueur → studio → version suivante** : retours horodatés, regroupement des problèmes, décision du studio et notification de la correction. Les studios paient pour organiser et exploiter les tests. | Jeu, build, matériel, vidéo, timestamp, protocole, retours ; relations jeu → session → observations → nouvelle version. |
| **Emploi** : demander une semaine type avant de candidater ; un pair et un recruteur répondent. | Intitulé, conditions et candidature au premier plan ; formulation des prérequis ; recherche métier pertinente. | **Offre conversationnelle et dossier réutilisable**. Réponses datées, étapes explicites, preuves choisies. Vente d'outils recruteurs et de visibilité clairement identifiée. | Entreprise parente, contrat, salaire, lieu, critères, questions, cours, évaluation et candidature. |
| **Pays et immobilier** : préparer un séjour au Japon ; comparer budget et conseils locaux. | Choisir Visiter, S'installer ou Acheter ; dates et hypothèses visibles ; carte facultative. | **Carnet de projet territorial** : décisions, budget, sources locales et mises à jour utiles. Des professionnels répondent à une demande précise et consentie. | Pays, ville, dates, devise, budget, source, résidence vérifiée selon procédure ; liens vers logement, guide, emploi et formation. |
| **Boutique Japon / artisanat** : choisir un yukata ; discuter mesures, provenance et frais. | Guide de tailles, matière, disponibilité et prix total livré ; retour et entretien proches du CTA. | **Passeport de l'objet** : origine documentée, créateur, mesures, entretien, retours d'usage et éventuelle revente. Commandes groupées avec devis et conditions réels. | Produit, artisan parent, variantes, images, origine, frais, délais, avis et lot. |
| **Business et statuts** : préparer les hypothèses d'une activité de conseil ; demander ce qu'il faut vérifier. | Comparaison courte, hypothèses modifiables, sources datées ; détails à la demande. | **Atelier de décision partagé** : versions de scénarios, pièces, questions à l'expert et décision finale. Prestations et demandes professionnelles structurées. | Juridiction, taux, date, hypothèses, sources, scénarios et partenaire professionnel. |
| **Investissement** : comprendre un ETF ; deux membres distinguent risques, frais et hypothèses. | Séparer document officiel, simulation et expérience personnelle ; vocabulaire accessible. | **Carnet de décision révisable** : raison du choix, hypothèses, sources et changements qui justifient de réexaminer le dossier. Réputation fondée sur la qualité de méthode. | Instrument, devise, frais, horizon, risque, sources, date et scénarios ; droits privés sur les positions. |
| **Traditions, herbier et sorcellerie** : comparer une source historique et une interprétation. | Étiquettes Culture, Récit, Pratique et Botanique ; attribution des documents ; pas de certification par simple image. | **Bibliothèque des transmissions** : passage de manuscrit → traduction → variantes → commentaires → atelier. Valorisation d'auteurs, artisans et intervenants identifiés. | Œuvre, époque, langue, provenance, taxon si pertinent, média, citation et atelier. |
| **Paranormal / OSINT** : documenter une observation lumineuse sans conclure trop vite. | Distinguer observation, hypothèse et conclusion ; protéger les coordonnées sensibles. | **Dossier contradictoire versionné** : sources originales, annotations, hypothèses concurrentes et protocoles reproductibles. Une empreinte atteste un fichier, pas son origine ou la véracité du phénomène. | Original, date/heure/fuseau, lieu autorisé, empreinte, source, annotation et état de revue. |
| **Manga, séries et TCG** : discuter d'une œuvre sans dépasser son épisode. | Choix de l'œuvre et progression avant le fil ; protection des titres, aperçus et notifications contre les spoilers. | **Salon synchronisé à ma progression** : théories compatibles, rendez-vous de sortie, annotations et lien facultatif vers des objets de l'œuvre. | Œuvre parente, saison, chapitre/épisode, niveau de spoiler, théorie, événement et produit lié. |
| **Gastronomie et couteaux** : choisir un couteau selon l'usage ; recevoir des retours d'entretien. | Usage, budget, prise en main et entretien avant l'acier ; unités explicites et avis contextualisés. | **Cuisine expérimentale partagée** : version de recette, portions, matériel, résultat photographié et prochaine amélioration. Ateliers et vente d'objets pertinents. | Recette, quantités/unités, durée, matériel, résultat, protocole, produit et atelier. |
| **Sports et arts martiaux** : reprendre le judo ; demander l'accueil des adultes débutants. | Niveau, lieu, séance d'essai et conditions du club ; progression personnelle lisible. | **Carnet de pratique avec retour humain** : objectif, séance, retour autorisé et étape suivante. Clubs et enseignants proposent des sessions adaptées. | Discipline, club, créneau, niveau, objectif, carnet privé, vidéo autorisée et encadrement. |
| **IA, tech et sciences** : évaluer une IA locale avant et après mise à jour ; des membres proposent un protocole. | Résumé sourcé, état réel des traitements et exemples de capacités disponibles ; vocabulaire simple sur le front. | **IA qui démontre ses progrès** : sources collectées, vérifications, mémoire autorisée, évaluation, régressions et version active visibles. Outils et services fondés sur des résultats vérifiables. | Ressource, droits, version, source, date, tâche, évaluation et modèle ; relations vers cours, expérience et discussion. |

Une même personne peut appartenir à plusieurs univers. Son intérêt pour un sujet ne doit pas la transformer automatiquement en candidat, prospect ou acheteur. Les ponts sont proposés avec une raison et une action claire.

## 7. Les innovations à prioriser et leur note

Notes heuristiques sur 10 : priorité produit et potentiel de différenciation pour Geniuspace. Elles ne constituent pas une mesure de marché ni la preuve qu'un concurrent ne possède aucune fonction comparable. Effort relatif : S limité, M transversal modéré, L important ; à estimer par le développeur après cadrage.

| Innovation | Note | Effort | Appui existant et résultat attendu |
|---|---:|---|---|
| **Moteur de missions entre univers** | 9,5 | L | Réutiliser les parcours et relations existants. « Je veux travailler au Japon » devient un plan comprenant conditions, budget, apprentissage et candidatures, avec étapes modifiables. |
| **Questions et preuves attachées au bon passage** | 9,5 | M/L | Étendre les commentaires contextuels aux phrases, conditions, cellules et timestamps. Une réponse devient consultable là où elle aide la décision. |
| **IA avec sources et progrès observables** | 9,5 | L | Raccorder la collecte, la mémoire et les évaluations existantes à une interface compréhensible : version, sources utilisées, gains et régressions mesurés. |
| **File de travail professionnelle commune** | 9 | M | Questions, candidatures, devis, élèves et campagnes renvoient vers leurs vraies fiches. Le professionnel paie pour traiter et réussir son activité. |
| **Dossier collaboratif versionné** | 9 | L | Un projet rassemble ses objets, sources, hypothèses et décisions, avec permissions natives et historique. Applicable à l'emploi, voyage, achat, enquête et formation. |
| **Brouillon réutilisable entre formats** | 9 | M | Transformer une idée en article, vidéo, demande ou avis, en conservant la saisie, les pièces et les étapes. |
| **Réputation par domaine et preuve** | 8,5 | M/L | Distinguer expérience, méthode et contribution utile dans chaque univers. Conserver la note éditoriale et la moyenne simple des membres séparément. |
| **Ponts entre univers expliqués** | 8,5 | M | Proposer une prochaine ressource ou action avec sa raison ; privilégier l'univers actif avant une passerelle commerciale ou thématique. |
| **Espaces adaptables en densité et en langue** | 8,5 | M | Compact, Confort ou Expert, choisis par le membre. Les bibliothèques et widgets restent riches ; leur présence à l'écran suit le contexte et les préférences. |
| **Publication transformée en amélioration livrée** | 9 | M/L | Un retour reçoit un état, une décision et un résultat vérifiable : correction de jeu, mise à jour d'offre, nouvelle recette, source rectifiée. |

L'ensemble le plus défendable serait le **graphe de travail documenté** : les bons objets, des relations fiables, un historique utile, des échanges contextualisés et une IA capable de les exploiter dans les limites des droits. L'accumulation de contenu, de réponses de qualité et de résultats réels pourrait rendre cette continuité plus difficile à reproduire.

### Le moteur de missions

Les nombreux parcours existants constituent une base. Ajouter un modèle commun : objectif, contraintes, état actuel, étapes, preuves attendues, ressources et prochaine action. Les parcours restent modifiables et explicables.

Exemples :

- Offre → question sur les conditions → compétence manquante → cours pertinent → exercice → candidature.
- Pays → intention de visite → ville → budget daté → avis local → itinéraire → réservation choisie.
- Produit japonais → taille ou usage → origine → retours documentés → comparaison → commande → entretien.
- Vidéo de jeu → discussion horodatée → session test → retours → décision du studio → nouvelle version.
- Projet d'entreprise → hypothèses → sources → questions → atelier → partenaires intéressés → devis.
- Observation → original → contexte → hypothèses → vérification collaborative → conclusion révisable.

Le moteur doit annoncer pourquoi il propose une étape. Une étape facultative ne bloque pas artificiellement une autre action. Les relations parent/enfant et les types natifs gardent la propriété des données ; l'index de parcours reste une projection révocable.

### Une IA visible et digne de confiance

Afficher un résumé avec liens vers les passages utilisés, une aide à la formulation des questions, une comparaison structurée et une proposition de prochaine action. Les corrections faites par les membres peuvent alimenter la mémoire après vérification et selon leurs droits.

Il faut distinguer l'ajout à une mémoire consultable et la modification des paramètres d'un modèle. La première peut être rapide après validation ; la seconde exige un jeu d'évaluation conservé, une version, des critères d'activation et un retour arrière. Un tableau « Ce qui a changé » doit exposer des mesures réelles. Une nouvelle ressource ou un compteur de messages n'atteste pas à lui seul une hausse d'intelligence.

Les contenus collectés restent des données non fiables par défaut : ils ne peuvent pas modifier les règles de l'agent, ses permissions ou ses outils. Une révocation d'accès doit aussi retirer le contenu des suggestions et de la mémoire publique dérivée.

## 8. Occident et Asie : emprunter des pratiques précises

Il n'existe pas une seule ergonomie occidentale ou asiatique. Le métier, l'habitude du produit, la langue, le réseau, l'âge et la situation expliquent une grande partie des différences. La recommandation est de tester plusieurs densités et parcours, sans les imposer selon l'origine supposée d'une personne.

| Repère | Pratique utile | Adaptation à Geniuspace |
|---|---|---|
| LinkedIn / Welcome to the Jungle | Contexte professionnel, entreprise et poste comme objets identifiables. | Une offre compréhensible, des conditions comparables et un suivi explicite. |
| Reddit / Stack Overflow / Discord | Réponse, branche, citation, réputation et espace communautaire. | Mur immédiatement accessible, réponse courte, contexte conservé et contribution utile. |
| WeChat / LINE | Destinations familières et continuité entre conversation et service. | Un shell stable et des actions métier accessibles depuis leur conversation, avec visibilité claire sur l'organisation concernée. |
| Naver Cafe | Communautés structurées et organisation durable des contributions. | Annuaire et catégories natifs cohérents, guides durables et accueil des nouveaux membres. |
| Xiaohongshu | Découverte illustrée et collections utiles à une intention. | Carnets de voyage, d'objet et d'expérience que le membre peut réutiliser pour décider. |
| Bilibili | Échanges attachés au temps de la vidéo. | Réponses horodatées, chapitres et annotations ; une éventuelle surimpression reste facultative et respecte les sous-titres. |

Ces repères sont des analogies de conception, pas des audits actuels de leurs produits ni une comparaison mesurée de conversions.

Prévoir les noms en un ou plusieurs blocs libres, les écritures CJK, les claviers avec composition IME, les textes plus longs, les unités, devises, dates et fuseaux. Ajouter des synonymes et translittérations utiles — Kyoto / 京都, par exemple — sans fusionner les contenus de langues différentes. Les sources japonaises, chinoises ou coréennes doivent rester attribuées, avec langue et date ; une traduction doit pouvoir être distinguée de l'original.

Pour la densité, proposer Compact, Confort et Expert. La préférence appartient au membre. Un interface dense peut rester claire grâce à un alignement stable, un contraste suffisant et une action principale évidente ; une interface aérée peut rester efficace grâce à une bonne continuité des actions.

## 9. Rétention, gamification et revenus

La boucle de retour la plus utile : **je pose ou découvre → quelqu'un m'aide → je progresse → je contribue → je reçois une mise à jour qui concerne mon projet**.

Récompenser une explication utile, un retour d'usage détaillé, une source corrigée ou une étape achevée. Les badges doivent expliquer leur critère et distinguer vérification d'identité, expérience et appréciation. Une certification ne découle pas automatiquement d'un OCR, d'un paiement ou d'un volume de messages.

Les notifications doivent indiquer la raison : réponse à ma question, changement d'une condition suivie, retour sur mon essai, chapitre disponible ou devis attendu. Prévoir regroupement, fréquence et arrêt par projet. Une série quotidienne n'a de valeur que si elle aide réellement une pratique choisie.

| Source de revenu | Valeur fournie | Condition de confiance |
|---|---|---|
| Publication et mise en avant d'offres | Diffusion et travail recruteur | Prix, durée, état de paiement et visibilité annoncés avant validation ; promotion identifiable. |
| Espaces professionnels | Traitement des questions, dossiers et contenus | Le professionnel conserve ses données et ses rôles ; résultats et factures consultables. |
| Playtests et études d'usage | Participants pertinents et retours exploitables | Protocole, conditions et rémunération réels ; aucune promesse simulée. |
| Formations et ateliers | Acquisition et mise en pratique d'une compétence | Objectif, niveau, durée, prix et modalités visibles. |
| Catalogues et coalitions | Comparaison, commande ou demande groupée | Prix total, budget réellement déclaré ou confirmé, conditions et état du devis. |
| Publicités contextuelles | Accès à une audience intéressée | Emplacement et durée définis ; contenu sponsorisé distinct d'un avis ou classement éditorial. |

Les formules, prestataires et moyens de paiement existants restent configurables. L'audit n'a pas effectué de paiement Stripe, PayPal ou crypto, ni validé leur exploitation en production. Les montants et rendements commerciaux doivent être décidés et mesurés ; aucun tarif n'est inventé ici.

Indicateur directeur proposé : **projets ayant avancé cette semaine grâce à une interaction utile**. Le décliner par univers : candidature envoyée, question résolue, essai documenté, choix comparé, leçon accomplie, devis qualifié. Ajouter délai de première valeur, taux de réponse, retours à J7/J30, marge après coûts et réclamations. Une hausse de durée de session seule ne prouve pas une amélioration.

## 10. SEO, SEF, GEO et moteurs de réponse

Le socle reste une page native accessible, une intention claire, un objet identifiable, des informations fiables et des liens pertinents. Le contenu public utile doit être présent dans le HTML serveur de son URL canonique, y compris dans le shell de super-app.

- Conserver une URL propre par offre, entreprise, cours, article, vidéo et discussion. Les anciens alias redirigent vers la bonne fiche. Les formulaires, recherches et évaluations privées n'ont pas vocation à devenir des pages d'acquisition indexables.
- Les pages de catégories et géographiques doivent apporter une sélection, une synthèse, des sources, des médias et des réponses propres à leur intention. Ajouter une catégorie ne doit pas générer automatiquement une série de pages pauvres réécrites par IA.
- Écrire le maillage avec des ancres qui expliquent l'action : « Préparer cet entretien », « Voir les conditions de livraison », « Comparer les mesures de cette configuration ». Donner la priorité aux relations natives ; expliquer les recommandations de proximité.
- Conserver une pagination explorable pour les discussions et catalogues, avec liens profonds vers les réponses. Une expérience fluide ne doit pas cacher tous les contenus derrière un défilement infini sans destinations.
- Relier images, légendes, vidéos, chapitres et transcriptions aux objets concernés. Les sous-titres et descriptions doivent être revus ; une transcription automatique peut contenir des erreurs.
- Utiliser les types Schema.org adaptés aux données réellement visibles : JobPosting, Product, VideoObject, Course, DiscussionForumPosting, Comment, Organization, Person et BreadcrumbList selon la page et ses conditions. Les notes éditoriales, avis utilisateurs et compteurs restent distincts et réels.
- Pour les agents et moteurs de réponse : définitions stables, auteur, date, source, passage précis, corrections et historique utile. Les flux et API publics respectent les mêmes droits que le site.
- Pour les campagnes SEM : une promesse et une destination correspondant à l'univers, à la langue et à l'intention de l'annonce ; suivi de la conversion réellement accomplie et du coût par résultat utile.

Dans l'évaluation HRBP ouverte pendant le parcours, deux H1 sont visibles. Cette vue doit rejoindre le contrat d'interface des pages spécialisées. Son éventuelle confidentialité doit être conservée : une évaluation n'a pas à être indexée pour donner l'impression d'un meilleur SEO.

Les douze nouvelles fiches disposent bien d'un titre et d'une canonique dans la copie. La leçon sans menu dédié utilise toutefois un chemin générique `/component/joomcck/item/...?...Itemid=0`. Prévoir un routage et une identité de menu stables pour les objets créés ultérieurement. Les préfixes `nexusdemo*` observés proviennent du jeu de données local ; ils ne sont pas une constatation de l'URL de cette leçon en production.

Les URL de filtres peuvent conserver des paramètres de navigation avec `noindex, follow` et un canonical cohérent. Pour le partage, produire une représentation lisible de la sélection et éviter de sérialiser les contrôles vides. Chaque combinaison de critères ne mérite pas une nouvelle landing page SEO.

Ces mesures améliorent l'exploration, la compréhension et l'utilité des pages. Elles ne garantissent ni première place, ni citation d'un LLM, ni résultat enrichi dans Google, Bing ou Baidu. Les comptes webmaster, l'indexation réelle et les campagnes n'ont pas été examinés ici.

## 11. Rapidité et accessibilité : critères de réception

La copie observée comporte environ 3 000 à 9 800 éléments DOM selon la page. Cette taille ne prouve pas à elle seule une lenteur, mais justifie de mesurer le coût des vues cachées, dialogues, éditeurs et blocs dynamiques.

Charger les éditeurs riches, lecteurs lourds et formulaires spéciaux lorsqu'ils deviennent nécessaires. Servir d'abord le contenu du mode demandé, puis préparer les autres modes sans multiplier les requêtes. Une bascule déjà préparée doit conserver la position et le brouillon. Mettre en lot les lectures de champs et relations ; invalider les projections selon les modifications et les droits. Un cache partagé ne doit pas réutiliser des données privées d'une personne pour une autre.

Le premier média utile peut être prioritaire ; les autres images et lecteurs arrivent progressivement avec dimensions réservées. Les commentaires utilisent une pagination ou des branches chargées à la demande, tout en gardant des liens consultables. Les publicités réservent leur emplacement avant chargement.

Objectifs à mesurer sur de vraies visites mobiles et par région : LCP au 75e percentile ≤ 2,5 s, INP ≤ 200 ms, CLS ≤ 0,1. Ces valeurs sont des objectifs de réception, pas des résultats déjà obtenus par cet audit. Ajouter les budgets de requêtes, mémoire, poids média et délai de publication au suivi technique.

Contrôler aussi les cibles tactiles confortables, le focus visible, le clavier, le zoom, les lecteurs d'écran, les textes CJK, le mouvement réduit et l'ouverture du clavier mobile. L'absence de débordement horizontal ne dispense pas de ces vérifications. Les effets, couleurs et animations restent disponibles avec des états lisibles et une pause.

## 12. Ordre de travail recommandé

**Vague 1 — rendre chaque premier geste évident.** Puces et en-tête mobile ; accès immédiat au mur ; carte visible après publication ; offre et candidature lisibles ; formulaire emploi guidé ; recherche pertinente ; réponse courte ; profilage de la première leçon.

**Vague 2 — assurer la continuité.** Dock commun, suivi, brouillons, messages, rôles d'entreprise, notifications et cohérence du constructeur. Harmoniser les pages privées et formulaires, leurs intitulés et leurs retours.

**Vague 3 — faire émerger l'avantage concurrentiel.** Missions entre univers, preuves liées aux passages, dossiers partagés, file B2B, IA sourcée et évaluation visible. Commencer par des usages bien alimentés — emploi, Gaming et Japon, par exemple — tout en conservant tous les autres univers.

**Vague 4 — développer les usages et revenus qui ont démontré leur valeur.** Études avec candidats, entreprises, créateurs et membres francophones, anglophones et CJK ; mesures par appareil et niveau d'habitude ; expérimentation de prix, fréquence et disposition. Étendre ensuite les modèles qui réduisent réellement les abandons et créent des résultats utiles.

Le fichier [BACKLOG.csv](BACKLOG.csv) transforme ces recommandations en tâches avec priorité, périmètre, impact attendu, effort relatif, critères de réception et mesure.

## 13. Captures et preuves

Les captures proviennent de la copie isolée, avec données de démonstration et tests explicitement nommés. Elles illustrent l'état avant les recommandations ; les fonctions proposées ne sont pas maquettées comme si elles étaient déjà réalisées.

- [Gaming mobile : puces trop étroites et superposition des commandes](preuves/gaming-mobile-initial.png).
- [Gaming ordinateur : découverte avant les échanges](preuves/gaming-desktop-initial.png).
- [Formulaire emploi mobile dans la configuration de test](preuves/recruiter-job-form-mobile.png).
- [Multi-Blog ordinateur : largeur corrigée, sélection encore dominante](preuves/multiblog-1440.png).
- [Réponses imbriquées et couleurs : fonction existante exercée](preuves/jeux_video-thread-desktop.png).
- [Branche de réponses sur mobile](preuves/reply-thread-mobile.png).
- [Entreprise propriétaire : édition et aperçu exercés sans publication](preuves/company-owner-editor.png).
- [Cours nouvellement publié, affichage mobile](preuves/published-courses-mobile.png).
- [Entreprise nouvellement publiée, affichage mobile](preuves/published-companies-mobile.png).
- [Lecteur avec fichier transféré par fragments, affichage mobile](preuves/video-upload-mobile.png).
- [Avis réellement publiés par deux membres](preuves/published-reviews-desktop.png).
- [Bilan vérifiable des observations et essais](BILAN-VERIFICATIONS.json).

Le site de production et le ZIP 5.26.0 n'ont pas été modifiés pendant cet audit.
