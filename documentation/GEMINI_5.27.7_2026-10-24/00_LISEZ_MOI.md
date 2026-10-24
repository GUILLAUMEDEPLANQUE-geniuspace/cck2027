# Dossier technique Geniuspace pour Gemini

**Code analysé : 5.27.7 — composant 6.4.2.199. Documentation : 24 octobre 2026.**

Le dossier permet de travailler sans téléverser le site ni sa base de données. Il contient une synthèse, des transcriptions ciblées du code et des cartes structurelles. Il n’inclut ni identifiants de connexion, ni mots de passe, ni données des membres, ni configuration privée.

## Le plus simple

1. Télécharger **`01_A_LIRE_ET_COLLER_DANS_GEMINI.txt`** et le joindre à Gemini. Son contenu est autonome : demande d’analyse, architecture, cartes condensées et méthodes critiques.
2. Pour approfondir, décompresser le ZIP et joindre le document du domaine concerné dans `domaines/`.
3. Pour une analyse SQL, ajouter `sql/02_requetes_geniuspace.csv` et `base/03_schema_structure_seule.sql`. Les expressions PHP du CSV ne sont pas des requêtes à exécuter directement.
4. Pour une analyse de permissions, ajouter `30_SOURCE_CRITIQUE.md` et les cartes des relations/champs nécessaires.

**Ne pas commencer en envoyant toutes les annexes à la fois.** Le ZIP sert à distribuer les documents ; l’acceptation des ZIP et la limite de contexte dépendent de l’interface Gemini. Le TXT et les Markdown sont prévus pour un envoi direct, domaine par domaine.

## Fichiers principaux

| Fichier/dossier | Usage |
|---|---|
| `00_MANIFESTE_ANALYSE.json` | Version, périmètre, compteurs, empreinte source et limites |
| `01_A_LIRE_ET_COLLER_DANS_GEMINI.txt` | Document autonome de départ |
| `10_PLAN_TECHNIQUE.md` | Architecture et parcours avec diagrammes Mermaid |
| `20_CONSIGNES_ANALYSE_GEMINI.md` | Résultat attendu, ordre d’analyse et précautions de raisonnement |
| `30_SOURCE_CRITIQUE.md` | Transcriptions exactes de méthodes sensibles avec fichier/ligne |
| `31_WORKER_IA_PYTHON.md` | Source du worker local livré, sans poids ni données |
| `40_PLAN_TRAVAIL_POUR_DEV.md` | Lots d’analyse/validation P0/P1/P2, dépendances et critères d’acceptation |
| `domaines/` | Inventaires et SQL regroupés par sujet |
| `cartes/` | Fichiers, classes, fonctions PHP, appels, dépendances et indices JavaScript |
| `api/` | Contrôleurs déclarés, sous-actions et contrat du studio |
| `base/` | Tables, colonnes, DDL structurel, métadonnées et relations natives |
| `sql/` | Expressions SQL et opérations ORM/query builder candidates |
| `catalogues/` | Types de champs, formats, univers, widgets et extensions |
| `preuves_5_27_7/` | Reçus agrégés antérieurs de la copie, sans données privées |
| `VALIDATION_DOSSIER.json` | Contrôles de cohérence et d’absence de données d’import |
| `SHA256SUMS` | Empreintes des documents distribués |

## Ce que Gemini doit pouvoir conclure

Architecture, séparation des responsabilités, parcours de données, cohérence des contrats natifs, risques identifiables dans les transcriptions, zones de couplage, requêtes à optimiser et tests à préparer.

## Ce qu’il ne doit pas inventer

Une intégration fournisseur active à partir d’un simple nom de classe, une fonctionnalité complète à partir d’un commentaire, des résultats de tests non joints, l’état actuel de production, une métrique commerciale, un classement Google ou une amélioration d’IA non mesurée.

Les inventaires utilisent une analyse **statique/lexicale**, avec les limites indiquées dans le manifeste. Le schéma est celui de la copie locale. Les identifiants de cette copie ne sont pas des constantes à recopier sur un autre site.

Le site et le paquet d’installation ne sont pas modifiés par la création de cette documentation.
