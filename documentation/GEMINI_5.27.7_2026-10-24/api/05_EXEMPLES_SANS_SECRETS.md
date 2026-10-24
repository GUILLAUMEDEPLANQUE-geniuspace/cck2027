# Exemples conceptuels d’API, sans identifiants

Ces exemples ne sont pas à exécuter sans une session et un contexte autorisés. Remplacer les marqueurs par les identifiants lus dans la configuration native, jamais par ceux d’un autre site.

## Lire un document de design

GET `index.php?option=com_joomcck&task=geniuspace.designApi&action=read&scope=universe&section=<SECTION>&target=<CATEGORIE>`

Authentification : session Joomla ; autorisation évaluée par le scope.

## Demander un aperçu

POST `index.php?option=com_joomcck&task=geniuspace.designApi`

En-têtes : `Content-Type: application/json`, `X-Geniuspace-CSRF: <TOKEN_DE_LA_SESSION>`. Origine : celle du site.

```json
{"action":"preview","scope":"universe","section":"<ENTIER_SECTION>","target":"<ENTIER_CATEGORIE>","document":"<DOCUMENT_JSON_VALIDE>"}
```

Le document réel est un objet conforme à DesignDocument, pas une chaîne comme dans ces marqueurs pédagogiques. Utiliser le contrat et une lecture existante pour connaître la structure exacte. Les opérations de sauvegarde attendent leur révision native ; ne pas en inventer le nom ni la valeur.

## Mutation métier

POST `index.php?option=com_joomcck&task=geniuspace.product`, session native, CSRF et origine vérifiés. L’action, ses champs et son autorisation sont décrits par le dispatcher concerné. Un nom d’action seul n’est pas une permission.

## Lecture de médias et sitemap

GET `index.php?option=com_joomcck&task=geniuspace.nativeMedia&file=<ID_FICHIER>&w=768`

GET `index.php?option=com_joomcck&task=geniuspace.sitemap`

GET `index.php?option=com_joomcck&task=geniuspace.sitemap&shard=<FRAGMENT>`

Les ACL et états natifs restent applicables. Un ID de fichier ne donne pas automatiquement accès aux octets.
