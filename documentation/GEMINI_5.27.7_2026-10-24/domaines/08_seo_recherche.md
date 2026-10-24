# SEO, SEF et recherche

URLs, schémas, sitemaps, JMap, maillage, médias et recherche publique.

Version 5.27.7. Présence dans le code ; ne prouve pas la configuration ou l’utilisation en production.

26 classes ; 128 fonctions/méthodes nommées ; 125 expressions SQL repérées dans ce domaine du noyau Geniuspace.

## Geniuspace\EditorialPack

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:6`
- L8–45 · public · `function install(): array`
- L47–85 · public · `function library2026(): array`
- L87–152 · public · `function collection2026(string $universe): array`
- L154–188 · public · `function topics2026(string $universe): array`
- L189–198 · private · `function collectionValues(array$a): array`
- L199–212 · private · `function mergeCollectionRelations(array$map,int$id,array$targets,array$defaults,string$links): void`
- L213–217 · private · `function removeCollectionRecords(array$ids): void`
- L218–224 · private · `function record(array$map,string$alias,string$title,int$cat,string$description,array$values,string$format,object$user,array&$created,string$edition='5.12.0'): int`
- L225–231 · private · `function values(array$map,int$id,array$values): void`
- L232–237 · private · `function asset(array$map,int$record,string$alias,string$name,string$title,string$description,array&$files): array`

## Geniuspace\ExtendedLists

`components/com_joomcck/site/library/php/geniuspace/ExtendedLists.php:6`
- L8–13 · private · `function date(object $item,int $field,object $section): string`
- L14–42 · private · `function card(object $view,object $item,string $mode,int $source): string`
- L43–44 · private · `function filter(string $name,int $value,object $view): string`
- L45–49 · private · `function visible(object $f,object $record,object $section): bool`
- L50–71 · public · `function render(object $view,string $mode): string`
- L72–73 · private · `function dimension(mixed $value): string`
- L74–78 · private · `function thumbnail(string $url,object $record,object $p): string`
- L79–84 · private · `function secondary(object $view,string $selected,string $current): ?string`
- L85–88 · private · `function ajaxUrl(object $view,int $field,string $func): string`
- L89–96 · private · `function mapOptions(object $p): array`
- L97–106 · public · `function markerData(object $field,array $post): array`
- L107–115 · public · `function calendarEvents(object $field,array $post): array`
- L116–117 · public · `function absolute(string $url): string`

## Geniuspace\ExtendedRelations

`components/com_joomcck/site/library/php/geniuspace/ExtendedRelations.php:4`
- L6–7 · public · `function configured(object $f): bool`
- L8–13 · public · `function prerequisites(object $f,int $section): array`
- L14–28 · public · `function validate(object $f,mixed $value,int $source): void`

## Geniuspace\HtmlInsights

`components/com_joomcck/site/library/php/geniuspace/HtmlInsights.php:6`
- L8–14 · public · `function document(string $html): array`
- L15–31 · public · `function audit(string $html): array`
- L33–41 · public · `function recordLinks(string $html): array`
- L42–50 · public · `function decorate(string $html,int $field): string`
- L51–59 · public · `function editor(int $field,?int $record = 0,$params = null,string $format = 'html'): string`

## Geniuspace\JmapBridge

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:5`
- L7–11 · public · `function boot(): bool`
- L12–17 · public · `function install(): void`
- L18–46 · public · `function data(object $params,object $db,object $model): array`
- L47–50 · public · `function summary(array $m): string`
- L51–67 · public · `function feed(array $existing): array`
- L68–77 · public · `function media(array $items,string $format): void`

## Geniuspace\LinkIndex

`components/com_joomcck/site/library/php/geniuspace/LinkIndex.php:6`
- L8–24 · public · `function record(Store $store, int $id): void`
- L25–30 · public · `function batch(Store $store, int $after = 0, int $limit = 200): int`

## Geniuspace\NativeSemantic

`components/com_joomcck/site/library/php/geniuspace/NativeSemantic.php:6`
- L10–14 · public · `function validateField(mixed $params): void`
- L15–110 · public · `function project(int $id,?array $rendered=null,?string $canonical=null,?array $draft=null): array`
- L112–122 · public · `function faq(string $html): array`
- L123–132 · public · `function render(object $view): void`

## Geniuspace\NativeSeo

`components/com_joomcck/site/library/php/geniuspace/NativeSeo.php:6`
- L8–32 · public · `function render(object $view, string $style): void`

## Geniuspace\NativeUrls

`components/com_joomcck/site/library/php/geniuspace/NativeUrls.php:5`
- L7–13 · public · `function url(array|object $record): string`
- L14–28 · private · `function readUrl(array|object $record): string`
- L29–37 · public · `function saved(int $id): void`
- L38–42 · public · `function target(string $url): ?string`

## Geniuspace\NexusBlogIndex

`components/com_joomcck/site/library/php/geniuspace/NexusBlogIndex.php:6`
- L9–9 · public · `function state(int $hub): array`
- L12–19 · public · `function url(int $hub,array $query=[]): string`
- L21–22 · private · `function category(): int`
- L24–28 · public · `function canonical(int $hub): string`
- L31–78 · public · `function data(int $hub,object $params,?array $nativeIds=null): array`
- L80–98 · private · `function company(array $projection): ?array`
- L100–112 · private · `function format(array $p): string`
- L115–129 · public · `function recent(int $hub,object $params): array`
- L131–141 · public · `function metadata(int $hub,array $state): void`
- L143–150 · private · `function card(array $item,int $hub,bool $feature=false,int $number=0): string`
- L152–188 · public · `function render(object $view,int $hub,object $params): string`

## Geniuspace\NexusKnowledge

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:6`
- L8–13 · public · `function words(string $text): array`
- L14–20 · public · `function source(int $record,?NativeAccess $gate=null): ?array`
- L21–41 · public · `function passages(array $p): array`
- L42–50 · public · `function indexRecord(int $record): int`
- L51–64 · public · `function tick(int $max=20): array`
- L65–96 · public · `function search(string $query,int $limit=20): array`
- L97–106 · public · `function context(int $record): array`

## Geniuspace\NexusSitemap

`components/com_joomcck/site/library/php/geniuspace/NexusSitemap.php:6`
- L8–29 · public · `function response(int $shard=-1): Response`

## Geniuspace\PublicMaterial

`components/com_joomcck/site/library/php/geniuspace/PublicMaterial.php:6`
- L9–15 · public · `function projection(int $id,bool $indexable=true,?NativeAccess $access=null): ?array`
- L16–37 · public · `function record(int $id,bool $indexable=true,?NativeAccess $access=null): ?array`
- L39–51 · public · `function visuals(array $projection): array`
- L52–66 · public · `function fieldText(string $type,mixed $v): string`
- L67–77 · private · `function media(string $type,mixed $v,array &$images,array &$videos): void`
- L79–92 · private · `function nativeAssets(array $record,array $field,mixed $value,array &$images,array &$videos): void`
- L93–99 · private · `function asset(string $v): string`

## Geniuspace\RelationCards

`components/com_joomcck/site/library/php/geniuspace/RelationCards.php:6`
- L8–20 · public · `function value(object $record,string $ids,bool $image=false): string`
- L21–29 · public · `function cards(object $field,object $record): string`
- L30–36 · public · `function company(object $item,object $params): array`

## Geniuspace\RelationFusion

`components/com_joomcck/site/library/php/geniuspace/RelationFusion.php:10`
- L12–15 · private · `function param(object $field, string $name, mixed $fallback = null): mixed`
- L18–85 · public · `function append(object $field, object $record, string $native, ?array $records = null): string`
- L87–92 · private · `function cut(string $text, int $length): string`
- L94–101 · private · `function label(object $field): string`
- L103–108 · private · `function defaultProperty(object $field): string`
- L111–137 · private · `function annotations(object $record, object $field): array`
- L140–159 · private · `function readmoreTargets(object $field, object $origin): array`

## Geniuspace\RelationInsights

`components/com_joomcck/site/library/php/geniuspace/RelationInsights.php:6`
- L9–19 · public · `function lockForSave(array $record): void`
- L20–24 · public · `function release(): void`
- L25–40 · public · `function guard(array $d,array $p,int $source,int $type): void`
- L41–48 · public · `function inherited(array $d,array $p): string`

## Geniuspace\Relationships

`components/com_joomcck/site/library/php/geniuspace/Relationships.php:6`
- L8–8 · public · `function __construct(private Studio $s)`
- L9–10 · public · `function validate(array $d): array`
- L11–12 · private · `function definition(string $key,bool $lock=false): array`
- L13–13 · private · `function where(string $key): string`
- L14–15 · public · `function read(string $key,int $source,bool $private=false): array`
- L16–27 · public · `function assign(string $key,int $source,array $items,int $expected): array`

## Geniuspace\RenderedSeo

`components/com_joomcck/site/library/php/geniuspace/RenderedSeo.php:6`
- L8–15 · private · `function summary(string $text): string`
- L16–21 · private · `function social(string $url): void`
- L22–45 · public · `function record(object $view): void`
- L46–68 · public · `function listing(object $view): void`

## Geniuspace\Seo

`components/com_joomcck/site/library/php/geniuspace/Seo.php:5`
- L7–48 · public · `function diagnosis(array $record): array`
- L50–104 · public · `function graph(Config $config, ?array $company, string $url, string $title, ?array $record = null, array $items = [], array $connections = []): array`
- L106–203 · private · `function entity(array $r, array $company, string $orgId): ?array`
- L205–208 · public · `function json(array $data): string`

## Geniuspace\SeoAudit

`components/com_joomcck/site/library/php/geniuspace/SeoAudit.php:6`
- L8–36 · public · `function page(int $after=0,int $limit=20): array`
- L37–46 · public · `function html(string $html): array`

## Geniuspace\SemanticLinks

`components/com_joomcck/site/library/php/geniuspace/SemanticLinks.php:6`
- L8–17 · public · `function relations(int $record,int $limit=6): array`
- L18–24 · public · `function suggestions(string $query,array $exclude=[],int $limit=6): array`
- L25–30 · public · `function render(int $record,int $limit=6): string`
- L31–36 · public · `function block(array $items,string $title): string`

## Geniuspace\EditorialImages

`components/com_joomcck/site/library/php/geniuspace/EditorialImages.php:6`
- L9–28 · public · `function forRecord(array|object $record,string $url): string`
- L31–59 · private · `function legacyRecord(array|object $record,string $url): ?string`
- L61–93 · public · `function metadata(string $url): ?array`
- L94–97 · public · `function resolve(string $url): string`
- L98–103 · public · `function alternative(string $url,string $existing): string`
- L104–109 · public · `function attributes(string $url,string $sizes,int $width=1200,int $height=700): string`

## Geniuspace\PublicDiscovery

`components/com_joomcck/site/library/php/geniuspace/PublicDiscovery.php:6`
- L9–20 · public · `function absolute(string $url,?string $root=null): string`
- L22–36 · public · `function images(array $projection,int $limit=12): array`
- L38–58 · public · `function related(array $projection,NativeAccess $access,int $limit=12): array`
- L60–65 · public · `function head(): void`

## Geniuspace\BrandSeo

`components/com_joomcck/site/library/php/geniuspace/BrandSeo.php:6`
- L8–16 · public · `function redirect(string $url,string $method='GET',bool $site=true): ?string`
- L17–33 · public · `function render(string $body,string $origin): string`

## Geniuspace\EditorialRevision

`components/com_joomcck/site/library/php/geniuspace/EditorialRevision.php:6`
- L8–54 · public · `function apply(array $map,array $articles,array $ids): array`
- L55–60 · private · `function cover(array $im): string`

## Geniuspace\SearchTerms

`components/com_joomcck/site/library/php/geniuspace/SearchTerms.php:5`
- L7–8 · public · `function tokens(string $query): array`
- L9–13 · private · `function pattern(string $word): string`
- L14–18 · public · `function predicate(object $db,array $columns,string $query): string`
- L19–23 · public · `function rankSql(object $db,string $query): string`
- L24–28 · public · `function readableMatches(array $projection,string $query): bool`
- L29–33 · public · `function rank(string $title,string $query): int`

## SQL et données

Les expressions suivantes sont du PHP source ; les variables ne sont pas évaluées. Pour un EXPLAIN réel, reconstruire une requête paramétrée sur une copie de test.

### SQL00805 · Geniuspace\EditorialPack::install

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:12`

```php
if((int)$db->setQuery('SELECT GET_LOCK('.$db->quote($lock).',0)')->loadResult()!==1)throw new \DomainException('Installation éditoriale en cours.',409);
```

### SQL00806 · Geniuspace\EditorialPack::install

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:15`

```php
$component=json_decode($db->setQuery("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult(),true)?:[];
```

### SQL00807 · Geniuspace\EditorialPack::install

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:18`

```php
if($db->setQuery('SELECT id FROM #__js_res_record WHERE alias='.$db->quote($alias))->loadResult())throw new \DomainException('Un contenu utilise déjà l’alias '.$alias.'. Aucun remplacement effectué.',409);
```

### SQL00808 · Geniuspace\EditorialPack::install

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:35`

```php
$db->setQuery('UPDATE #__js_res_record SET comments=1 WHERE id='.$topic)->execute();
```

### SQL00809 · Geniuspace\EditorialPack::install

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:38`

```php
$component=json_decode($db->setQuery("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult(),true)?:[];
```

### SQL00810 · Geniuspace\EditorialPack::install

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:38`

```php
$db->setQuery("UPDATE #__extensions SET params=".$db->quote(Seo::json($component))." WHERE element='com_joomcck' AND type='component'")->execute();
```

### SQL00811 · Geniuspace\EditorialPack::install

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:41`

```php
$db->setQuery('DELETE FROM #__js_res_files WHERE id='.(int)$file['id'])->execute();
```

### SQL00812 · Geniuspace\EditorialPack::install

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:44`

```php
$db->setQuery('SELECT RELEASE_LOCK('.$db->quote($lock).')')->loadResult();
```

### SQL00813 · Geniuspace\EditorialPack::library2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:51`

```php
if((int)$db->setQuery('SELECT GET_LOCK('.$db->quote($lock).',0)')->loadResult()!==1)throw new \DomainException('Import éditorial en cours.',409);
```

### SQL00814 · Geniuspace\EditorialPack::library2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:54`

```php
$component=json_decode($db->setQuery("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult(),true)?:[];
```

### SQL00815 · Geniuspace\EditorialPack::library2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:62`

```php
if($db->setQuery('SELECT id FROM #__js_res_record WHERE alias='.$db->quote('geniuspace-guide-2026-'.$a['slug']))->loadResult())throw new \DomainException('Un dossier utilise déjà cette adresse. Aucun remplacement effectué.',409);
```

### SQL00816 · Geniuspace\EditorialPack::library2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:79`

```php
$component=json_decode($db->setQuery("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult(),true)?:[];
```

### SQL00817 · Geniuspace\EditorialPack::library2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:79`

```php
$db->setQuery("UPDATE #__extensions SET params=".$db->quote(Seo::json($component))." WHERE element='com_joomcck' AND type='component'")->execute();
```

### SQL00818 · Geniuspace\EditorialPack::library2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:82`

```php
$db->setQuery('DELETE FROM #__js_res_record_values WHERE record_id='.(int)$id)->execute();
```

### SQL00819 · Geniuspace\EditorialPack::library2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:82`

```php
$db->setQuery('DELETE FROM #__js_res_record_category WHERE record_id='.(int)$id)->execute();
```

### SQL00820 · Geniuspace\EditorialPack::library2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:82`

```php
foreach(['knowledge_chunks','native_url_identity','native_url_history','jmap_identity']as$table)if(SchemaHealth::has($table))$db->setQuery('DELETE FROM #__gp_social_'.$table.' WHERE record_id='.(int)$id)->execute();
```

### SQL00821 · Geniuspace\EditorialPack::library2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:82`

```php
if(SchemaHealth::has('links'))$db->setQuery('DELETE FROM #__gp_social_links WHERE source_id='.(int)$id.' OR target_id='.(int)$id)->execute();
```

### SQL00822 · Geniuspace\EditorialPack::library2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:84`

```php
$db->setQuery('SELECT RELEASE_LOCK('.$db->quote($lock).')')->loadResult();
```

### SQL00823 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:96`

```php
if((int)$db->setQuery('SELECT GET_LOCK('.$db->quote($lock).',0)')->loadResult()!==1)throw new \DomainException('Import éditorial en cours. Réessayez ce lot.',409);
```

### SQL00824 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:108`

```php
$existing=$db->setQuery('SELECT id,section_id,type_id,params,fields FROM #__js_res_record WHERE alias='.$db->quote('geniuspace-guide-2026-'.$a['slug']))->loadAssoc();
```

### SQL00825 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:115`

```php
$restores[$id]=['fields'=>$existing['fields'],'fieldsdata'=>$pendingRaw['fieldsdata'],'mtime'=>$pendingRaw['mtime'],'published'=>(int)$pendingRaw['published'],'categories'=>$db->setQuery('SELECT catid,published FROM #__js_res_record_category WHERE record_id='.$id)->loadAssocList(),'params'=>$existing['params'],'values'=>$db->setQuery('SELECT * FROM #__js_res_record_values WHERE record_id='.$id)->loadAssocList()];
```

### SQL00826 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:123`

```php
$db->setQuery('UPDATE #__js_res_record SET params='.$db->quote(Seo::json($p)).' WHERE id='.$id)->execute();
```

### SQL00827 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:141`

```php
$db->setQuery('UPDATE #__js_res_record SET published=1 WHERE id='.(int)$id)->execute();
```

### SQL00828 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:141`

```php
$db->setQuery('UPDATE #__js_res_record_category SET published=1 WHERE record_id='.(int)$id)->execute();
```

### SQL00829 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:144`

```php
$db->setQuery('UPDATE #__js_res_record SET params='.$db->quote(Seo::json($p)).' WHERE id='.$id)->execute();
```

### SQL00830 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:148`

```php
$db->setQuery('UPDATE #__js_res_record SET fields='.$db->quote($r['fields']).',fieldsdata='.$db->quote($r['fieldsdata']).',mtime='.$db->quote($r['mtime']).',published='.(int)$r['published'].',params='.$db->quote($r['params']).' WHERE id='.(int)$id)->execute();
```

### SQL00831 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:148`

```php
foreach($r['categories']as$c)$db->setQuery('UPDATE #__js_res_record_category SET published='.(int)$c['published'].' WHERE record_id='.(int)$id.' AND catid='.(int)$c['catid'])->execute();
```

### SQL00832 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:148`

```php
$db->setQuery('DELETE FROM #__js_res_record_values WHERE record_id='.(int)$id)->execute();
```

### SQL00833 · Geniuspace\EditorialPack::collection2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:151`

```php
$db->setQuery('SELECT RELEASE_LOCK('.$db->quote($lock).')')->loadResult();
```

### SQL00834 · Geniuspace\EditorialPack::topics2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:159`

```php
if((int)$db->setQuery('SELECT GET_LOCK('.$db->quote($lock).',0)')->loadResult()!==1)throw new \DomainException('Import éditorial en cours.',409);
```

### SQL00835 · Geniuspace\EditorialPack::topics2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:166`

```php
$guide=$db->setQuery('SELECT id,params,section_id,type_id FROM #__js_res_record WHERE alias='.$db->quote('geniuspace-guide-2026-'.$t['guide_slug']))->loadAssoc();
```

### SQL00836 · Geniuspace\EditorialPack::topics2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:169`

```php
$old=$db->setQuery('SELECT id,params,section_id,type_id,published FROM #__js_res_record WHERE alias='.$db->quote('geniuspace-discussion-2026-'.$t['slug']))->loadAssoc();
```

### SQL00837 · Geniuspace\EditorialPack::topics2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:170`

```php
$restores[$id]=['row'=>ProductAccess::raw($id),'values'=>$db->setQuery('SELECT * FROM #__js_res_record_values WHERE record_id='.$id)->loadAssocList(),'categories'=>$db->setQuery('SELECT * FROM #__js_res_record_category WHERE record_id='.$id)->loadAssocList()];
```

### SQL00838 · Geniuspace\EditorialPack::topics2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:184`

```php
$db->setQuery('UPDATE #__js_res_record SET published=1 WHERE id='.(int)$id)->execute();
```

### SQL00839 · Geniuspace\EditorialPack::topics2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:184`

```php
$db->setQuery('UPDATE #__js_res_record_category SET published=1 WHERE record_id='.(int)$id)->execute();
```

### SQL00840 · Geniuspace\EditorialPack::topics2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:185`

```php
$db->setQuery('UPDATE #__js_res_record SET params='.$db->quote(Seo::json($p)).' WHERE id='.(int)$id)->execute();
```

### SQL00841 · Geniuspace\EditorialPack::topics2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:187`

```php
$db->setQuery('DELETE FROM #__js_res_record_values WHERE record_id='.(int)$id)->execute();
```

### SQL00842 · Geniuspace\EditorialPack::topics2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:187`

```php
$db->setQuery('DELETE FROM #__js_res_record_category WHERE record_id='.(int)$id)->execute();
```

### SQL00843 · Geniuspace\EditorialPack::topics2026

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:187`

```php
$db->setQuery('SELECT RELEASE_LOCK('.$db->quote($lock).')')->loadResult();
```

### SQL00844 · Geniuspace\EditorialPack::mergeCollectionRelations

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:208`

```php
$db->setQuery('UPDATE #__js_res_record SET fields='.$db->quote(Seo::json($fields)).',fieldsdata='.$db->quote(Text::plain($body)).',mtime='.$db->quote(gmdate('Y-m-d H:i:s')).' WHERE id='.$id)->execute();
```

### SQL00845 · Geniuspace\EditorialPack::mergeCollectionRelations

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:209`

```php
$db->setQuery('DELETE FROM #__js_res_record_values WHERE record_id='.$id.' AND field_id IN ('.implode(',',array_unique($indexIds)).')')->execute();
```

### SQL00846 · Geniuspace\EditorialPack::removeCollectionRecords

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:216`

```php
$db->setQuery('DELETE FROM #__js_res_record_values WHERE record_id='.$id)->execute();
```

### SQL00847 · Geniuspace\EditorialPack::removeCollectionRecords

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:216`

```php
$db->setQuery('DELETE FROM #__js_res_record_category WHERE record_id='.$id)->execute();
```

### SQL00848 · Geniuspace\EditorialPack::removeCollectionRecords

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:216`

```php
foreach(['knowledge_chunks','native_url_identity','native_url_history','jmap_identity']as$table)if(SchemaHealth::has($table))$db->setQuery('DELETE FROM #__gp_social_'.$table.' WHERE record_id='.$id)->execute();
```

### SQL00849 · Geniuspace\EditorialPack::removeCollectionRecords

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:216`

```php
if(SchemaHealth::has('links'))$db->setQuery('DELETE FROM #__gp_social_links WHERE source_id='.$id.' OR target_id='.$id)->execute();
```

### SQL00850 · Geniuspace\EditorialPack::values

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:229`

```php
$db->setQuery('DELETE FROM #__js_res_record_values WHERE record_id='.$id)->execute();
```

### SQL00851 · Geniuspace\EditorialPack::asset

`components/com_joomcck/site/library/php/geniuspace/EditorialPack.php:236`

```php
$file=ProductAccess::store()->rows('SELECT * FROM #__js_res_files WHERE id='.(int)$table->id,1)[0];
```

### SQL00906 · Geniuspace\ExtendedRelations::prerequisites

`components/com_joomcck/site/library/php/geniuspace/ExtendedRelations.php:11`

```php
$db->setQuery('SELECT r.id AS value,r.title FROM #__js_res_record r JOIN #__js_res_types t ON t.id=r.type_id JOIN #__js_res_sections s ON s.id=r.section_id WHERE r.type_id='.(int)$f->type_id.' AND r.section_id='.max(0,$section).' AND r.published=1 AND t.published=1 AND s.published=1 AND r.hidden=0 AND r.archive=0 AND r.access IN ('.$levels.') AND s.access IN ('.$levels.") AND (r.pubtime IS NULL OR r.pubtime='0000-00-00 00:00:00' OR r.pubtime<=".$now.") AND (r.extime IS NULL OR r.extime='0000-00-00 00:00:00' OR r.extime>".$now.')'.($f->params->get('params.user_strict')?' AND r.user_id='.(int)$u->id:''),0,1000);
```

### SQL00907 · Geniuspace\ExtendedRelations::validate

`components/com_joomcck/site/library/php/geniuspace/ExtendedRelations.php:18`

```php
$db->setQuery('SELECT type_id,field_type,params FROM #__js_res_fields WHERE id='.(int)$f->params->get('params.child_field'));
```

### SQL00908 · Geniuspace\ExtendedRelations::validate

`components/com_joomcck/site/library/php/geniuspace/ExtendedRelations.php:20`

```php
$db->setQuery('SELECT id,user_id,access,published,type_id,section_id FROM #__js_res_record WHERE id IN ('.implode(',',$ids).')');
```

### SQL00909 · Geniuspace\ExtendedRelations::validate

`components/com_joomcck/site/library/php/geniuspace/ExtendedRelations.php:25`

```php
$db->setQuery("SELECT field_value FROM #__js_res_record_values WHERE field_type='child' AND record_id IN (".implode(',',$front).')',0,1001);
```

### SQL01034 · Geniuspace\JmapBridge::install

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:15`

```php
if($s->rows("SELECT id FROM #__jmap WHERE type='plugin' AND name='Nexusjoomcck'",1))return;
```

### SQL01035 · Geniuspace\JmapBridge::install

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:16`

```php
$s->run("INSERT INTO #__jmap (type,name,description,published,ordering,params) VALUES ('plugin','Nexusjoomcck','Native JoomCCK sections, categories, records, fields, media and public comments',1,50,".$s->q(Seo::json(['priority'=>'0.5','changefreq'=>'weekly','include_comments'=>1,'include_categories'=>1])).')');
```

### SQL01036 · Geniuspace\JmapBridge::data

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:21`

```php
$rows=$db->setQuery('SELECT id FROM #__js_res_record WHERE '.$where.' ORDER BY id',$start,$limit?:0)->loadColumn();
```

### SQL01037 · Geniuspace\JmapBridge::data

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:38`

```php
$cat=$db->setQuery('SELECT * FROM #__js_res_categories WHERE id='.$id.' AND published=1 AND access IN ('.implode(',',$levels?:[0]).')')->loadAssoc();
```

### SQL01038 · Geniuspace\JmapBridge::data

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:42`

```php
$name=$db->setQuery('SELECT name FROM #__js_res_sections WHERE id='.$id)->loadResult();
```

### SQL01039 · Geniuspace\JmapBridge::feed

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:56`

```php
// Never reuse stale JoomCCK overrides as a public corpus after withdrawal or route changes.
            $native=str_contains($url,'com_joomcck')||(bool)$s->rows('SELECT record_id FROM #__gp_social_jmap_identity WHERE canonical='.$s->q($url),1);
```

### SQL01040 · Geniuspace\JmapBridge::feed

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:60`

```php
$batch=$s->rows('SELECT id FROM #__js_res_record WHERE id>'.$after.' ORDER BY id',1000);
```

### SQL01041 · Geniuspace\JmapBridge::feed

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:60`

```php
if($last&&$s->rows('SELECT id FROM #__js_res_record WHERE id>'.$last,1)){\Joomla\CMS\Factory::getApplication()->setHeader('Link','<'.\Joomla\CMS\Uri\Uri::root().'index.php?option=com_jmap&view=sitemap&format=aifeed&after='.$last.'>; rel="next"',true);
```

### SQL01042 · Geniuspace\JmapBridge::feed

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:63`

```php
$s->run('INSERT INTO #__gp_social_jmap_identity (record_id,url_hash,canonical,mtime) VALUES ('.$m['id'].','.$s->q(hash('sha256',$m['url'])).','.$s->q($m['url']).','.$s->q($m['modified']).') ON DUPLICATE KEY UPDATE canonical=VALUES(canonical),url_hash=VALUES(url_hash),mtime=VALUES(mtime)');
```

### SQL01043 · Geniuspace\JmapBridge::media

`components/com_joomcck/site/library/php/geniuspace/JmapBridge.php:71`

```php
$c=$s->rows('SELECT * FROM #__js_res_categories WHERE id='.(int)$item->native_category_id,1)[0]??null;
```

### SQL01045 · Geniuspace\LinkIndex::record

`components/com_joomcck/site/library/php/geniuspace/LinkIndex.php:10`

```php
$row = $store->rows('SELECT id,type_id,fields FROM #__js_res_record WHERE id=' . $id, 1)[0] ?? null;
```

### SQL01046 · Geniuspace\LinkIndex::record

`components/com_joomcck/site/library/php/geniuspace/LinkIndex.php:12`

```php
$store->run('DELETE FROM #__gp_social_links WHERE source_id=' . $id);
```

### SQL01047 · Geniuspace\LinkIndex::record

`components/com_joomcck/site/library/php/geniuspace/LinkIndex.php:15`

```php
foreach ($store->rows("SELECT field_id,field_value AS target FROM #__js_res_record_values WHERE record_id=".$id." AND field_type='child'",1000) as $edge) { $target=(int)$edge['target'];
```

### SQL01048 · Geniuspace\LinkIndex::record

`components/com_joomcck/site/library/php/geniuspace/LinkIndex.php:16`

```php
foreach ($store->rows("SELECT v.record_id AS target,f.id AS field_id FROM #__js_res_record_values v INNER JOIN #__js_res_fields f ON f.field_type='parent' AND f.published=1 AND f.type_id=".(int)$row['type_id']." AND CAST(JSON_UNQUOTE(JSON_EXTRACT(f.params,'$.params.child_field')) AS UNSIGNED)=v.field_id WHERE v.field_type='child' AND v.field_value=".$store->q((string)$id),1000) as $edge) { $target=(int)$edge['target'];
```

### SQL01049 · Geniuspace\LinkIndex::record

`components/com_joomcck/site/library/php/geniuspace/LinkIndex.php:17`

```php
foreach ($store->rows('SELECT id,field_type,params FROM #__js_res_fields WHERE type_id=' . (int) $row['type_id'] . " AND field_type IN ('gprelation','gpproof') AND published=1", 1000) as $f) {
                $kind = $f['field_type'] === 'gprelation' ? 'relation' : 'proof';
```

### SQL01050 · Geniuspace\LinkIndex::batch

`components/com_joomcck/site/library/php/geniuspace/LinkIndex.php:28`

```php
foreach ($store->rows('SELECT id FROM #__js_res_record WHERE id>' . max(0, $after) . ' ORDER BY id', min(1000, max(1, $limit))) as $r) { $last = (int) $r['id'];
```

### SQL01156 · Geniuspace\NativeSemantic::project

`components/com_joomcck/site/library/php/geniuspace/NativeSemantic.php:32`

```php
if(!in_array($f['field_type'],['text','textarea','html','datetime','select','radio','url','image','int','digits'],true)){$issues[]='Le rôle '.$role.' requiert un champ natif compatible : '.$f['label'];
```

### SQL01161 · Geniuspace\NativeUrls::readUrl

`components/com_joomcck/site/library/php/geniuspace/NativeUrls.php:19`

```php
$t=ReadMemo::get('url-type:'.(int)$r->type_id,static fn()=>$s->rows('SELECT id,params FROM #__js_res_types WHERE id='.(int)$r->type_id,1)[0]??[]);
```

### SQL01162 · Geniuspace\NativeUrls::readUrl

`components/com_joomcck/site/library/php/geniuspace/NativeUrls.php:19`

```php
$sec=ReadMemo::get('url-section:'.(int)$r->section_id,static fn()=>$s->rows('SELECT * FROM #__js_res_sections WHERE id='.(int)$r->section_id,1)[0]??[]);
```

### SQL01163 · Geniuspace\NativeUrls::readUrl

`components/com_joomcck/site/library/php/geniuspace/NativeUrls.php:22`

```php
$menus=ReadMemo::get('url-public-menus:'.implode(',',$levels),static fn()=>$s->rows("SELECT id,link FROM #__menu WHERE published=1 AND client_id=0 AND access IN (".implode(',',$levels?:[0]).") AND type='component' ORDER BY id",1000));
```

### SQL01164 · Geniuspace\NativeUrls::saved

`components/com_joomcck/site/library/php/geniuspace/NativeUrls.php:31`

```php
$old=$s->rows('SELECT * FROM #__gp_social_native_url_identity WHERE record_id='.$id,1)[0]??null;
```

### SQL01165 · Geniuspace\NativeUrls::saved

`components/com_joomcck/site/library/php/geniuspace/NativeUrls.php:33`

```php
$s->run('INSERT IGNORE INTO #__gp_social_native_url_history (url_hash,record_id,old_url,current_url,ctime) VALUES ('.$s->q($old['url_hash']).','.$id.','.$s->q($old['canonical']).','.$s->q($url).','.$s->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL01166 · Geniuspace\NativeUrls::saved

`components/com_joomcck/site/library/php/geniuspace/NativeUrls.php:34`

```php
$s->run('UPDATE #__gp_social_native_url_history SET current_url='.$s->q($url).' WHERE record_id='.$id);
```

### SQL01167 · Geniuspace\NativeUrls::saved

`components/com_joomcck/site/library/php/geniuspace/NativeUrls.php:36`

```php
$s->run('INSERT INTO #__gp_social_native_url_identity (record_id,canonical,url_hash,mtime) VALUES ('.$id.','.$s->q($url).','.$s->q($hash).','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE canonical=VALUES(canonical),url_hash=VALUES(url_hash),mtime=VALUES(mtime)');
```

### SQL01168 · Geniuspace\NativeUrls::target

`components/com_joomcck/site/library/php/geniuspace/NativeUrls.php:40`

```php
$row=$s->rows('SELECT record_id FROM #__gp_social_native_url_history WHERE url_hash='.$s->q(hash('sha256',$url)),1)[0]??null;
```

### SQL01175 · Geniuspace\NexusBlogIndex::data

`components/com_joomcck/site/library/php/geniuspace/NexusBlogIndex.php:44`

```php
$rows=$s->rows('SELECT id,section_id,type_id,fields,params FROM #__js_res_record WHERE '.$where.' ORDER BY id DESC',200);
```

### SQL01176 · Geniuspace\NexusBlogIndex::data

`components/com_joomcck/site/library/php/geniuspace/NexusBlogIndex.php:68`

```php
$user=$s->rows('SELECT name FROM #__users WHERE id='.(int)$p['raw']['user_id'].' AND block=0',1)[0]??[];
```

### SQL01177 · Geniuspace\NexusBlogIndex::company

`components/com_joomcck/site/library/php/geniuspace/NexusBlogIndex.php:87`

```php
if($field->field_type==='parent')$targetType=(int)(ProductAccess::store()->rows('SELECT type_id FROM #__js_res_fields WHERE id='.(int)$field->params->get('params.child_field'),1)[0]['type_id']??0);
```

### SQL01178 · Geniuspace\NexusBlogIndex::company

`components/com_joomcck/site/library/php/geniuspace/NexusBlogIndex.php:88`

```php
$target=ReadMemo::get('native-type-metadata:'.$targetType,static fn()=>ProductAccess::store()->rows('SELECT params FROM #__js_res_types WHERE id='.$targetType,1)[0]??[]);
```

### SQL01179 · Geniuspace\NexusBlogIndex::company

`components/com_joomcck/site/library/php/geniuspace/NexusBlogIndex.php:92`

```php
$type=ProductAccess::store()->rows('SELECT params FROM #__js_res_types WHERE id='.(int)$target->type_id,1)[0]??[];
```

### SQL01180 · Geniuspace\NexusBlogIndex::recent

`components/com_joomcck/site/library/php/geniuspace/NexusBlogIndex.php:119`

```php
$rows=$s->rows('SELECT r.id,r.title,r.section_id,r.type_id,r.fields,c.id AS comment_id,c.name,c.comment,c.ctime,c.langs FROM #__js_res_comments c INNER JOIN #__js_res_record r ON r.id=c.record_id WHERE c.id>1 AND c.published=1 AND c.hide=0 AND c.private=0 AND c.access IN ('.implode(',',$levels?:[0]).') AND r.published=1 AND r.hidden=0 AND r.section_id IN ('.implode(',',$sections?:[0]).') ORDER BY c.ctime DESC,c.id DESC',100);
```

### SQL01181 · Geniuspace\NexusBlogIndex::recent

`components/com_joomcck/site/library/php/geniuspace/NexusBlogIndex.php:123`

```php
$type=$s->rows('SELECT params FROM #__js_res_types WHERE id='.(int)$row['type_id'],1)[0]??[];
```

### SQL01206 · Geniuspace\NexusKnowledge::source

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:17`

```php
$section=json_decode($s->rows('SELECT params FROM #__js_res_sections WHERE id='.(int)$p['raw']['section_id'],1)[0]['params']??'{}',true)?:[];
```

### SQL01207 · Geniuspace\NexusKnowledge::source

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:18`

```php
if($s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$p['raw']['type_id']." AND field_type='gppassport' AND published=1",1))return null;
```

### SQL01208 · Geniuspace\NexusKnowledge::indexRecord

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:45`

```php
$s->run('DELETE FROM #__gp_social_knowledge_chunks WHERE record_id='.$record);
```

### SQL01209 · Geniuspace\NexusKnowledge::tick

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:54`

```php
if((int)($s->rows('SELECT GET_LOCK('.$s->q($lock).',0) AS locked',1)[0]['locked']??0)!==1)return ['busy'=>true];
```

### SQL01210 · Geniuspace\NexusKnowledge::tick

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:56`

```php
$state=$s->rows('SELECT * FROM #__gp_social_knowledge_cursor WHERE name='.$s->q($name),1)[0]??null;
```

### SQL01211 · Geniuspace\NexusKnowledge::tick

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:58`

```php
$ids=$s->rows('SELECT id FROM #__js_res_record WHERE id>'.(int)$state['cursor_id'].' ORDER BY id',max(1,min(40,$max)));
```

### SQL01212 · Geniuspace\NexusKnowledge::tick

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:61`

```php
$s->run('UPDATE #__gp_social_knowledge_cursor SET cursor_id='.$cursor.',cycles=cycles+1,mtime='.$s->q(gmdate('Y-m-d H:i:s')).' WHERE name='.$s->q($name));
```

### SQL01213 · Geniuspace\NexusKnowledge::tick

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:63`

```php
$s->rows('SELECT RELEASE_LOCK('.$s->q($lock).') AS released',1);
```

### SQL01214 · Geniuspace\NexusKnowledge::search

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:71`

```php
$rows=$s->rows('SELECT *,MATCH(title,body) AGAINST('.$s->q($boolean).' IN BOOLEAN MODE) AS relevance FROM #__gp_social_knowledge_chunks WHERE MATCH(title,body) AGAINST('.$s->q($boolean).' IN BOOLEAN MODE) ORDER BY relevance DESC,id DESC',250);
```

### SQL01215 · Geniuspace\NexusKnowledge::search

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:73`

```php
$rows=$s->rows('SELECT * FROM #__gp_social_knowledge_chunks WHERE '.implode(' OR ',$clauses).' ORDER BY id DESC',250);
```

### SQL01216 · Geniuspace\NexusKnowledge::search

`components/com_joomcck/site/library/php/geniuspace/NexusKnowledge.php:90`

```php
// Newly published titles are discoverable before the incremental body index runs.
        foreach($s->rows('SELECT id FROM #__js_res_record WHERE published=1 AND hidden=0 AND title LIKE '.$s->db->quote('%'.$s->db->escape(mb_substr($query,0,200),true).'%',false).' ORDER BY id DESC',40)as$row){
            $id=(int)$row['id'];
```

### SQL01227 · Geniuspace\NexusSitemap::response

`components/com_joomcck/site/library/php/geniuspace/NexusSitemap.php:16`

```php
foreach($db->setQuery("SELECT DISTINCT FLOOR(id/500) AS shard FROM #__js_res_record WHERE published=1 AND access IN (".$allowed.") AND hidden=0 AND archive=0 AND (meta_index IS NULL OR meta_index NOT LIKE '%noindex%') ORDER BY shard",0,50000)->loadAssocList()as$r)$body.='<sitemap><loc>'.$e($root.'&shard='.(int)$r['shard']).'</loc></sitemap>';
```

### SQL01228 · Geniuspace\NexusSitemap::response

`components/com_joomcck/site/library/php/geniuspace/NexusSitemap.php:19`

```php
foreach($s->rows('SELECT id FROM #__js_res_record WHERE id>='.($shard*500).' AND id<'.(($shard+1)*500).' AND published=1 AND access IN ('.$allowed.') AND hidden=0 AND archive=0 ORDER BY id',500)as$r){$p=PublicMaterial::projection((int)$r['id'],true,$access);
```

### SQL01419 · Geniuspace\PublicMaterial::projection

`components/com_joomcck/site/library/php/geniuspace/PublicMaterial.php:12`

```php
$sp=ReadMemo::get('native-section-metadata:'.(int)$r['section_id'],static fn()=>ProductAccess::store()->rows('SELECT params FROM #__js_res_sections WHERE id='.(int)$r['section_id'],1)[0]??[]);
```

### SQL01420 · Geniuspace\PublicMaterial::record

`components/com_joomcck/site/library/php/geniuspace/PublicMaterial.php:31`

```php
$commentCount=(int)(ProductAccess::store()->rows('SELECT COUNT(*) AS n FROM #__js_res_comments WHERE record_id='.$id.' AND published=1 AND private=0 AND hide=0 AND access IN ('.implode(',',$levels?:[0]).')',1)[0]['n']??0);
```

### SQL01421 · Geniuspace\PublicMaterial::record

`components/com_joomcck/site/library/php/geniuspace/PublicMaterial.php:32`

```php
foreach(ProductAccess::store()->rows('SELECT id,record_id,params,name,comment,ctime FROM #__js_res_comments WHERE record_id='.$id.' AND published=1 AND private=0 AND hide=0 AND access IN ('.implode(',',$levels?:[0]).') ORDER BY id DESC',100)as$c){$entry=['id'=>(int)$c['id'],'author'=>Text::plain($c['name']),'text'=>Text::plain($c['comment']),'date'=>$c['ctime'],'url'=>$url.'#comment-'.(int)$c['id']];
```

### SQL01422 · Geniuspace\PublicMaterial::nativeAssets

`components/com_joomcck/site/library/php/geniuspace/PublicMaterial.php:86`

```php
$f=$s->rows('SELECT * FROM #__js_res_files WHERE filename='.$s->q($name).' AND record_id='.(int)$record['id'].' AND field_id='.(int)$field['id'].' AND saved=1',1)[0]??null;
```

### SQL01455 · Geniuspace\RelationFusion::annotations

`components/com_joomcck/site/library/php/geniuspace/RelationFusion.php:117`

```php
$db->setQuery("SELECT id,params FROM #__js_res_fields WHERE type_id=" . (int)$record->type_id
            . " AND field_type='gprelation' AND published=1", 0, 40);
```

### SQL01456 · Geniuspace\RelationFusion::readmoreTargets

`components/com_joomcck/site/library/php/geniuspace/RelationFusion.php:143`

```php
$db->setQuery('SELECT field_value FROM #__js_res_record_values WHERE record_id=' . $id . ' AND field_id=' . $fid, 0, 100);
```

### SQL01457 · Geniuspace\RelationFusion::readmoreTargets

`components/com_joomcck/site/library/php/geniuspace/RelationFusion.php:146`

```php
$db->setQuery('SELECT record_id FROM #__js_res_record_values WHERE field_value=' . $db->quote((string)$id) . ' AND field_id=' . $fid, 0, 100);
```

### SQL01458 · Geniuspace\RelationInsights::lockForSave

`components/com_joomcck/site/library/php/geniuspace/RelationInsights.php:12`

```php
foreach($store->rows("SELECT id,params FROM #__js_res_fields WHERE type_id=".(int)($record['type_id']??0)." AND field_type='gprelation' AND published=1",1000)as$f){$p=FieldOptions::params($f['params']);
```

### SQL01459 · Geniuspace\RelationInsights::lockForSave

`components/com_joomcck/site/library/php/geniuspace/RelationInsights.php:17`

```php
$store->db->setQuery('SELECT GET_LOCK('.$store->q($name).',5)');
```

### SQL01460 · Geniuspace\RelationInsights::release

`components/com_joomcck/site/library/php/geniuspace/RelationInsights.php:23`

```php
$store->db->setQuery('SELECT RELEASE_LOCK('.$store->q($name).')');
```

### SQL01461 · Geniuspace\RelationInsights::guard

`components/com_joomcck/site/library/php/geniuspace/RelationInsights.php:32`

```php
$r=$store->rows('SELECT type_id FROM #__js_res_record WHERE id='.$id,1)[0]??null;
```

### SQL01462 · Geniuspace\RelationInsights::guard

`components/com_joomcck/site/library/php/geniuspace/RelationInsights.php:37`

```php
$r=$store->rows('SELECT type_id,fields FROM #__js_res_record WHERE id='.$id,1)[0]??null;
```

### SQL01463 · Geniuspace\RelationInsights::guard

`components/com_joomcck/site/library/php/geniuspace/RelationInsights.php:38`

```php
foreach($store->rows("SELECT id,params FROM #__js_res_fields WHERE type_id=".(int)$r['type_id']." AND field_type='gprelation' AND published=1",1000)as$f)try{$next=FieldEngine::parse('relation',(string)($values[$f['id']]??''),FieldOptions::params($f['params']));
```

### SQL01464 · Geniuspace\Relationships::definition

`components/com_joomcck/site/library/php/geniuspace/Relationships.php:12`

```php
$row=$s->store->rows('SELECT id,data FROM #__gp_social_definitions WHERE scope='.$s->store->q($s->company['slug'])." AND kind='relation' AND name=".$s->store->q($key).($lock&&$s->store->db instanceof \Joomla\Database\DatabaseDriver?' FOR UPDATE':''),1)[0]??null;
```

### SQL01465 · Geniuspace\Relationships::read

`components/com_joomcck/site/library/php/geniuspace/Relationships.php:15`

```php
foreach($s->store->rows('SELECT target_id,metadata FROM #__gp_social_typed_relations WHERE '.$this->where($key).' AND source_id='.$source,100) as $edge)if(($target=$s->repository->record($s->company,(int)$edge['target_id']))&&in_array($target['type_id'],$d['target_type_ids'],true)){$meta=json_decode($edge['metadata'],true)?:[];
```

### SQL01466 · Geniuspace\Relationships::read

`components/com_joomcck/site/library/php/geniuspace/Relationships.php:15`

```php
$revision=(int)($s->store->rows('SELECT revision FROM #__gp_social_relation_states WHERE '.$this->where($key).' AND source_id='.$source,1)[0]['revision']??0);
```

### SQL01467 · Geniuspace\Relationships::assign

`components/com_joomcck/site/library/php/geniuspace/Relationships.php:20`

```php
if($d['cardinality']!=='n:n'&&$s->store->rows('SELECT source_id FROM #__gp_social_typed_relations WHERE '.$this->where($key).' AND target_id='.$id.' AND source_id<>'.$source,1))throw new \DomainException('Cette cible appartient déjà à une autre source.',409);
```

### SQL01468 · Geniuspace\Relationships::assign

`components/com_joomcck/site/library/php/geniuspace/Relationships.php:22`

```php
foreach($s->store->rows('SELECT target_id FROM #__gp_social_typed_relations WHERE '.$this->where($key).' AND source_id='.$cursor,1000) as $r)$queue[]=(int)$r['target_id'];
```

### SQL01469 · Geniuspace\Relationships::assign

`components/com_joomcck/site/library/php/geniuspace/Relationships.php:25`

```php
$s->store->run('DELETE FROM #__gp_social_typed_relations WHERE '.$this->where($key).' AND source_id='.$source);
```

### SQL01470 · Geniuspace\Relationships::assign

`components/com_joomcck/site/library/php/geniuspace/Relationships.php:25`

```php
$s->store->run('DELETE FROM #__gp_social_relation_states WHERE '.$this->where($key).' AND source_id='.$source);
```

### SQL01497 · Geniuspace\SeoAudit::page

`components/com_joomcck/site/library/php/geniuspace/SeoAudit.php:12`

```php
$rows=$store->rows('SELECT id,title FROM #__js_res_record WHERE id>'.$after.' ORDER BY id',$limit);
```

### SQL01498 · Geniuspace\SeoAudit::page

`components/com_joomcck/site/library/php/geniuspace/SeoAudit.php:34`

```php
$more=(bool)$store->rows('SELECT id FROM #__js_res_record WHERE id>'.$cursor,1);
```

### SQL01693 · Geniuspace\EditorialImages::legacyRecord

`components/com_joomcck/site/library/php/geniuspace/EditorialImages.php:44`

```php
$file=ProductAccess::store()->rows('SELECT * FROM #__js_res_files WHERE id='.(int)$query['file'].' AND record_id='.(int)($r['id']??0).' AND saved=1',1)[0]??null;
```

### SQL01694 · Geniuspace\EditorialImages::legacyRecord

`components/com_joomcck/site/library/php/geniuspace/EditorialImages.php:49`

```php
$field=ProductAccess::store()->rows('SELECT params FROM #__js_res_fields WHERE id='.(int)$file['field_id'].' AND type_id='.(int)($r['type_id']??0).' AND published=1',1)[0]??null;
```

### SQL01771 · Geniuspace\EditorialRevision::apply

`components/com_joomcck/site/library/php/geniuspace/EditorialRevision.php:34`

```php
$saved[$id]=['raw'=>$raw,'field_ids'=>$in,'values'=>$db->setQuery('SELECT * FROM #__js_res_record_values WHERE record_id='.$id.' AND field_id IN ('.$in.')')->loadAssocList()];
```

### SQL01772 · Geniuspace\EditorialRevision::apply

`components/com_joomcck/site/library/php/geniuspace/EditorialRevision.php:36`

```php
$db->setQuery('UPDATE #__js_res_record SET fields='.$db->quote(Seo::json($fields)).',fieldsdata='.$db->quote(Text::plain($fields[$bodyId])).',meta_descr='.$db->quote($meta).',mtime='.$db->quote(gmdate('Y-m-d H:i:s')).',params='.$db->quote(Seo::json($params)).' WHERE id='.$id.' AND fields='.$db->quote($raw['fields']).' AND params='.$db->quote($raw['params']).' AND meta_descr='.$db->quote($raw['meta_descr']))->execute();
```

### SQL01773 · Geniuspace\EditorialRevision::apply

`components/com_joomcck/site/library/php/geniuspace/EditorialRevision.php:38`

```php
$db->setQuery('DELETE FROM #__js_res_record_values WHERE record_id='.$id.' AND field_id IN ('.$in.')')->execute();
```

### SQL01774 · Geniuspace\EditorialRevision::apply

`components/com_joomcck/site/library/php/geniuspace/EditorialRevision.php:50`

```php
$db->setQuery('UPDATE #__js_res_record SET fields='.$db->quote($r['fields']).',fieldsdata='.$db->quote($r['fieldsdata']).',meta_descr='.$db->quote($r['meta_descr']).',mtime='.$db->quote($r['mtime']).',params='.$db->quote($r['params']).' WHERE id='.(int)$id)->execute();
```

### SQL01775 · Geniuspace\EditorialRevision::apply

`components/com_joomcck/site/library/php/geniuspace/EditorialRevision.php:50`

```php
$db->setQuery('DELETE FROM #__js_res_record_values WHERE record_id='.(int)$id.' AND field_id IN ('.$snapshot['field_ids'].')')->execute();
```
