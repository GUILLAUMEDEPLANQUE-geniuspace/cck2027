# Socle, accès et transactions

Runtime, lecture publique, droits, requêtes, transactions et migrations.

Version 5.27.7. Présence dans le code ; ne prouve pas la configuration ou l’utilisation en production.

32 classes ; 174 fonctions/méthodes nommées ; 77 expressions SQL repérées dans ce domaine du noyau Geniuspace.

## Geniuspace\ApiIdentity

`components/com_joomcck/site/library/php/geniuspace/ApiIdentity.php:6`
- L8–14 · public · `function create(Studio $s,int $user,int $days,array $permissions): array`
- L15–24 · public · `function verify(Store $store,array $company,string $authorization): ?array`

## Geniuspace\Blueprint

`components/com_joomcck/site/library/php/geniuspace/Blueprint.php:6`
- L8–17 · public · `function validate(array $d): array`
- L18–28 · public · `function apply(Studio $studio,array $plan): array`
- L29–43 · public · `function generate(string $prompt,array $settings,string $target='blueprint',?callable $transport=null,array $inventory=[]): array`

## Geniuspace\ComponentRuntime

`components/com_joomcck/site/library/php/geniuspace/ComponentRuntime.php:6`
- L8–15 · public · `function params(): \Joomla\Registry\Registry`
- L17–43 · public · `function configuration(): Config`
- L45–52 · public · `function url(string $path): string`
- L54–62 · public · `function rewrite(string $html): string`
- L64–82 · public · `function beforeSave(array &$record): void`
- L84–88 · public · `function afterSave(int $id): void`

## Geniuspace\Config

`components/com_joomcck/site/library/php/geniuspace/Config.php:8`
- L15–174 · public · `function __construct(string $domain, string $json)`
- L176–196 · private · `function applicationGates(mixed $gates, array $sections): array`
- L198–217 · public · `function resolve(string $host): ?array`
- L219–222 · public · `function origin(?array $company = null): string`
- L224–232 · public · `function channel(array $company, int $type): ?array`

## Geniuspace\ExtendedFields

`components/com_joomcck/site/library/php/geniuspace/ExtendedFields.php:6`
- L9–9 · public · `function db(): \Joomla\Database\DatabaseInterface`
- L10–10 · public · `function e(mixed $v): string`
- L11–17 · public · `function wrap(object $field,mixed $html): mixed`
- L18–18 · public · `function ids(mixed $v,int $max=100): array`
- L20–25 · public · `function tokenValid(string $method='post'): bool`
- L26–32 · public · `function assets(bool $map=false): void`
- L34–38 · public · `function publicRecord(int $id,bool $indexable=true): ?object`
- L39–53 · private · `function readPublicRecord(int $id,bool $indexable=true): ?object`
- L54–61 · public · `function publicField(object $r,int $id): ?object`
- L62–62 · public · `function url(object $r): string`
- L63–63 · public · `function schema(array $data): string`
- L64–73 · public · `function targets(object $f,object $record,bool $indexable=true): array`
- L75–78 · public · `function relation(object $f,object $record,string $html): string`
- L79–90 · public · `function guard(object $field,string $func,array $post,?object $record): void`
- L91–103 · public · `function writePermission(object $f,string $action,?object $r=null): void`
- L104–112 · public · `function geoValue(mixed $value): array`
- L113–119 · public · `function commerceValue(mixed $value): array`

## Geniuspace\ExtendedGate

`components/com_joomcck/site/library/php/geniuspace/ExtendedGate.php:4`
- L6–10 · public · `function allowed(array $fields,object $record,object $section): bool`
- L11–15 · public · `function restricted(array $raw): bool`

## Geniuspace\FieldsBridge

`components/com_joomcck/site/library/php/geniuspace/FieldsBridge.php:5`
- L7–31 · public · `function render(string $kind, array $data, string $label, object $record): string`

## Geniuspace\Native

`components/com_joomcck/site/library/php/geniuspace/Native.php:6`
- L8–19 · public · `function promotionSql(): string`
- L20–26 · public · `function featured(object $record): bool`

## Geniuspace\NativeAccess

`components/com_joomcck/site/library/php/geniuspace/NativeAccess.php:6`
- L20–27 · public · `function __construct()`
- L28–60 · public · `function record(int $id): ?array`
- L61–62 · public · `function value(int $record,int $field): mixed`
- L63–64 · public · `function title(int $id): ?array`
- L65–70 · public · `function candidates(int $section,int $except,array $keywords,int $limit=8): array`

## Geniuspace\NativeAutoLinks

`components/com_joomcck/site/library/php/geniuspace/NativeAutoLinks.php:7`
- L9–55 · public · `function render(string $html, int $section, $params): string`
- L57–110 · public · `function process(string $html, array $tags, array $options = []): string`

## Geniuspace\NativeBindings

`components/com_joomcck/site/library/php/geniuspace/NativeBindings.php:6`
- L9–17 · public · `function render(array $r,int $field): string`
- L18–21 · public · `function values(array $r,array $ids): array`
- L22–23 · public · `function text(array $r,array $d,string $role,string $fallback=''): string`
- L24–25 · public · `function html(array $r,array $d,string $role): string`

## Geniuspace\NativeBlueprint

`components/com_joomcck/site/library/php/geniuspace/NativeBlueprint.php:6`
- L8–14 · public · `function validate(array $plan): array`
- L15–20 · public · `function apply(Studio $s,array $plan): array`
- L21–35 · private · `function create(Studio $s,array $plan): array`

## Geniuspace\NativeDesign

`components/com_joomcck/site/library/php/geniuspace/NativeDesign.php:5`
- L7–12 · public · `function region(string $position): string`

## JFormFieldCGeniuspace

`components/com_joomcck/site/library/php/geniuspace/NativeField.php:7`
- L11–11 · private · `function options()`
- L12–23 · public · `function gpBodyGetInput()`
- L24–30 · public · `function validateField($value, $record, $type, $section)`
- L31–38 · public · `function onPrepareSave($value, $record, $type, $section)`
- L39–39 · public · `function onStoreValues($validData, $record)`
- L40–43 · public · `function onPrepareFullTextSearch($value, $record, $type, $section)`
- L44–48 · public · `function gpBodyOnRenderList($record, $type, $section)`
- L49–59 · public · `function gpBodyOnRenderFull($record, $type, $section)`
- L60–64 · public · `function onImport($value, $params, $record = null)`
- L66–66 · public · `function getInput()`
- L68–74 · public · `function onRenderFull($record, $type, $section)`
- L76–80 · public · `function onRenderList($record, $type, $section)`

## Geniuspace\NativeMutation

`components/com_joomcck/site/library/php/geniuspace/NativeMutation.php:6`
- L9–10 · public · `function retains(int $record,int $field): bool`
- L11–12 · public · `function preserveFields(int $record,array $out): array`
- L13–14 · public · `function retainedValue(int $field): mixed`
- L15–19 · public · `function replace(int $record,int $field,mixed $value,string $expected): array`
- L20–63 · private · `function lockedReplace(int $record,int $field,mixed $value,string $expected): array`
- L64–65 · public · `function fieldValue(int $record,int $field): mixed`

## Geniuspace\NativeSecurity

`components/com_joomcck/site/library/php/geniuspace/NativeSecurity.php:6`
- L10–14 · public · `function superToken(string $method='post'): void`
- L16–20 · public · `function slug(mixed $value): string`
- L22–26 · public · `function type(mixed $value): string`
- L28–32 · public · `function selection(mixed $value): array`
- L35–54 · public · `function path(string $root,string $candidate): string`
- L56–61 · public · `function tree(string $root,string $directory): void`
- L63–68 · public · `function templateFile(string $type,string $name,string $ext): string`
- L70–75 · public · `function uploadRoot(): string`
- L77–84 · public · `function uploadedPath(string $relative,string $subfolder=''): string`
- L86–90 · public · `function deleteUpload(string $relative,string $subfolder=''): bool`
- L92–97 · public · `function recordFiles(int $record): void`
- L99–102 · public · `function imageFormats(object $field): array`
- L104–111 · public · `function imageUpload(object $field,array $file): string`
- L113–134 · public · `function imagePrepare(object $field,mixed $value): array|false`
- L136–154 · public · `function imageStore(object $field,object $record): string`
- L156–167 · public · `function imageDeletePermission(object $field,string $file): void`
- L169–179 · public · `function fileEditPermission(object $field,int $id): object`
- L181–198 · public · `function audioConvert(object $field,array $params): int`

## Geniuspace\NativeTemplates

`components/com_joomcck/site/library/php/geniuspace/NativeTemplates.php:6`
- L10–32 · public · `function defaults(): void`
- L34–54 · public · `function copy(string $selection,string $name,string $operation='copy'): bool`
- L56–61 · private · `function plan(array &$plan,string $root,string $from,string $to): void`
- L63–74 · public · `function uninstall(array $selections): bool`
- L76–110 · public · `function install(): bool`

## Geniuspace\NativeTransactions

`components/com_joomcck/site/library/php/geniuspace/NativeTransactions.php:5`
- L7–11 · public · `function run(callable $operation): mixed`
- L13–13 · public · `function beforeClose(): void`

## Geniuspace\NativeTreeLocks

`components/com_joomcck/site/library/php/geniuspace/NativeTreeLocks.php:5`
- L8–18 · public · `function acquire(object $db,string $table): bool`

## Geniuspace\NativeUploadGate

`components/com_joomcck/site/library/php/geniuspace/NativeUploadGate.php:5`
- L8–13 · public · `function directory(string $path,int $mode=0700): void`
- L15–20 · public · `function completeLimit(object $field): int`
- L21–30 · public · `function chunk(object $request,string $directory): void`
- L32–38 · public · `function receipt(string $path,object $field,int $record): ?array`
- L39–49 · public · `function check(object $field,int $record,int $section,bool $comment): void`
- L50–57 · public · `function mime(object $field,string $path): void`

## Geniuspace\ProductAccess

`components/com_joomcck/site/library/php/geniuspace/ProductAccess.php:6`
- L8–9 · public · `function store(): Store`
- L10–11 · public · `function user(): object`
- L12–17 · public · `function authenticated(): int`
- L18–23 · public · `function raw(int $id): array`
- L24–31 · public · `function editable(int $id): array`
- L32–42 · public · `function visible(int $id): array`
- L43–55 · public · `function field(int $record,int $field,string|array $kind,bool $write=false): array`
- L56–57 · public · `function valueHash(mixed $value): string`
- L58–59 · public · `function revision(array $r): string`
- L60–64 · public · `function event(int $record,string $kind,array $payload): void`
- L65–71 · public · `function form(string $action,int $record,array $extra=[]): string`

## Geniuspace\QueryBuilder

`components/com_joomcck/site/library/php/geniuspace/QueryBuilder.php:6`
- L9–9 · public · `function __construct(private Repository $repository,private Store $store,private array $company,private array $options=[],private int $user=0,private ?RemoteData $remote=null)`
- L10–32 · public · `function parse(array $d): array`
- L33–88 · public · `function run(array $query,array $context=[]): array`

## Geniuspace\Repository

`components/com_joomcck/site/library/php/geniuspace/Repository.php:6`
- L15–21 · public · `function __construct(object $db, Config $config, array $guestLevels, ?string $now = null, private bool $socialPrivate = false)`
- L23–26 · private · `function q(string $value): string`
- L27–27 · public · `function database(): object`
- L29–33 · private · `function rows(string $sql, int $offset = 0, int $limit = 0): array`
- L35–38 · private · `function levels(): string`
- L40–53 · public · `function available(array $company): bool`
- L56–73 · public · `function batch(array $company, ?array $channel = null, int $after = 0, int $limit = 100, string $search = '', int $offset = 0): array`
- L75–84 · public · `function record(array $company, int $id): ?array`
- L86–93 · public · `function count(array $company): int`
- L95–109 · private · `function publicTypes(array $ids): array`
- L111–135 · private · `function base(array $company, array $types, bool $profilePrivacy = true): string`
- L138–151 · private · `function deniedCategories(array $company): array`
- L153–207 · private · `function hydrate(array $company, array $row): array`
- L210–306 · public · `function connections(array $company, array $record): array`
- L309–338 · public · `function enrich(array $company, array $record, array $connections): array`
- L340–348 · public · `function actorProfile(array $company, int $user): ?array`
- L350–355 · public · `function owner(array $company, int $record): int`
- L356–362 · public · `function owned(array $company, int $user, int $limit = 100): array`
- L364–368 · private · `function publicField(int $type, int $field): bool`
- L369–377 · public · `function structured(array $company, int $record, int $field, string $type): ?array`
- L380–389 · public · `function fieldValue(array $company,int $record,int $field): mixed`
- L390–417 · public · `function proof(array $company, array $data): array`
- L418–425 · public · `function promotions(array $company): array`
- L426–445 · public · `function compare(array $company, array $data): array`
- L446–450 · public · `function fileField(int $type, int $field): bool`
- L451–462 · private · `function fieldParamsAllowed(string $json): bool`

## Geniuspace\Schema

`components/com_joomcck/site/library/php/geniuspace/Schema.php:6`
- L8–137 · public · `function statements(bool $sqlite = false): array`
- L138–141 · public · `function install(object $db): void`

## Geniuspace\SchemaHealth

`components/com_joomcck/site/library/php/geniuspace/SchemaHealth.php:7`
- L10–10 · public · `function reset(): void`
- L11–17 · public · `function has(string ...$names): bool`
- L18–23 · public · `function missing(): array`
- L28–34 · public · `function notice(): string`

## Geniuspace\SchemaMigration

`components/com_joomcck/site/library/php/geniuspace/SchemaMigration.php:7`
- L9–18 · public · `function apply(object $db): void`
- L19–28 · public · `function statements(): array`
- L29–33 · public · `function clearMenus(): void`

## Geniuspace\SiteInventory

`components/com_joomcck/site/library/php/geniuspace/SiteInventory.php:4`
- L6–12 · public · `function scan(Studio $s): array`

## Geniuspace\Store

`components/com_joomcck/site/library/php/geniuspace/Store.php:6`
- L9–9 · public · `function __construct(public object $db)`
- L10–10 · public · `function q(string $s): string`
- L11–20 · public · `function rows(string $sql, int $limit = 100, int $offset = 0): array`
- L21–21 · public · `function run(string $sql): void`
- L22–29 · public · `function insert(string $table, array $data): int`
- L30–47 · public · `function atomic(callable $operation): mixed`
- L48–48 · public · `function active(object $db): bool`
- L49–50 · public · `function afterTransaction(object $db,callable $callback): void`
- L51–56 · public · `function commitBeforeClose(object $db): void`

## Geniuspace\Text

`components/com_joomcck/site/library/php/geniuspace/Text.php:5`
- L7–11 · public · `function plain(string $value): string`
- L13–16 · public · `function escape(string $value): string`
- L18–30 · public · `function url(string $url): string`
- L32–49 · public · `function date(string $value): ?string`
- L51–56 · public · `function slug(string $title): string`

## Geniuspace\Tokens

`components/com_joomcck/site/library/php/geniuspace/Tokens.php:6`
- L8–15 · public · `function valid(): bool`

## Geniuspace\TransactionHealth

`components/com_joomcck/site/library/php/geniuspace/TransactionHealth.php:5`
- L8–8 · public · `function reset(): void`
- L9–18 · public · `function report(): array`
- L19–23 · public · `function notice(): string`

## Geniuspace\ReadMemo

`components/com_joomcck/site/library/php/geniuspace/ReadMemo.php:6`
- L9–9 · public · `function enabled(): bool`
- L10–15 · public · `function get(string $key,callable $read): mixed`
- L16–16 · public · `function reset(): void`

## SQL et données

Les expressions suivantes sont du PHP source ; les variables ne sont pas évaluées. Pour un EXPLAIN réel, reconstruire une requête paramétrée sur une copie de test.

### SQL00655 · Geniuspace\ApiIdentity::create

`components/com_joomcck/site/library/php/geniuspace/ApiIdentity.php:10`

```php
if($days<1||$days>365||!$user||!$s->store->rows('SELECT id FROM #__users WHERE id='.$user.' AND block=0',1)||!array_is_list($permissions)||!$permissions||array_diff($permissions,['read','content','collections','admin']))throw new \InvalidArgumentException('Identité ou permissions API invalides.');
```

### SQL00656 · Geniuspace\ApiIdentity::verify

`components/com_joomcck/site/library/php/geniuspace/ApiIdentity.php:18`

```php
foreach($store->rows('SELECT id,data FROM #__gp_social_definitions WHERE scope='.$store->q($company['slug'])." AND kind='api_key'",1000) as $r) {
            $d=json_decode($r['data'],true)?:[];
```

### SQL00657 · Geniuspace\ApiIdentity::verify

`components/com_joomcck/site/library/php/geniuspace/ApiIdentity.php:20`

```php
if(!is_string($d['expires_at']??null)||$d['expires_at']<=gmdate('Y-m-d H:i:s')||!is_int($d['user_id']??null)||!$store->rows('SELECT id FROM #__users WHERE id='.$d['user_id'].' AND block=0',1))return null;
```

### SQL00755 · Geniuspace\ComponentRuntime::configuration

`components/com_joomcck/site/library/php/geniuspace/ComponentRuntime.php:30`

```php
$db->setQuery('SELECT id FROM #__js_res_types ORDER BY id');
```

### SQL00756 · Geniuspace\ComponentRuntime::configuration

`components/com_joomcck/site/library/php/geniuspace/ComponentRuntime.php:32`

```php
$db->setQuery('SELECT id,name FROM #__js_res_sections ORDER BY id');
```

### SQL00757 · Geniuspace\ComponentRuntime::beforeSave

`components/com_joomcck/site/library/php/geniuspace/ComponentRuntime.php:72`

```php
$prior = (new Store($db))->rows('SELECT parent,parent_id FROM #__js_res_record WHERE id=' . (int) $record['id'], 1)[0] ?? [];
```

### SQL00899 · Geniuspace\ExtendedFields::readPublicRecord

`components/com_joomcck/site/library/php/geniuspace/ExtendedFields.php:42`

```php
$db->setQuery('SELECT r.*,t.params AS type_params,s.params AS section_params FROM #__js_res_record r INNER JOIN #__js_res_types t ON t.id=r.type_id INNER JOIN #__js_res_sections s ON s.id=r.section_id WHERE r.id='.max(0,$id).' AND r.published=1 AND r.hidden=0 AND r.archive=0 AND t.published=1 AND r.access IN ('.implode(',',$levels?:[0]).") AND (r.pubtime IS NULL OR r.pubtime='0000-00-00 00:00:00' OR r.pubtime<=".$now.") AND (r.extime IS NULL OR r.extime='0000-00-00 00:00:00' OR r.extime>".$now.')');
```

### SQL00900 · Geniuspace\ExtendedFields::readPublicRecord

`components/com_joomcck/site/library/php/geniuspace/ExtendedFields.php:47`

```php
$db->setQuery('SELECT COUNT(*) FROM #__js_res_record_category rc LEFT JOIN #__js_res_categories c ON c.id=rc.catid WHERE rc.record_id='.(int)$r->id.' AND (c.id IS NULL OR c.published<>1 OR c.access NOT IN ('.implode(',',$levels?:[0]).') OR c.section_id<>'.(int)$r->section_id.')');
```

### SQL00901 · Geniuspace\ExtendedFields::readPublicRecord

`components/com_joomcck/site/library/php/geniuspace/ExtendedFields.php:49`

```php
$db->setQuery("SELECT id,field_type FROM #__js_res_fields WHERE type_id=".(int)$r->type_id." AND published=1 AND field_type IN ('paytoaccess','related_access','dripcontent')");
```

### SQL00902 · Geniuspace\ExtendedFields::publicField

`components/com_joomcck/site/library/php/geniuspace/ExtendedFields.php:56`

```php
$db->setQuery('SELECT * FROM #__js_res_fields WHERE id='.$id.' AND type_id='.(int)$r->type_id.' AND published=1');
```

### SQL00903 · Geniuspace\ExtendedFields::targets

`components/com_joomcck/site/library/php/geniuspace/ExtendedFields.php:69`

```php
$db->setQuery("SELECT type_id FROM #__js_res_fields WHERE id=".$child." AND field_type='child' AND published=1");
```

### SQL00904 · Geniuspace\ExtendedFields::targets

`components/com_joomcck/site/library/php/geniuspace/ExtendedFields.php:70`

```php
$db->setQuery('SELECT '.($isParent?'record_id':'field_value').' FROM #__js_res_record_values WHERE field_id='.$child.' AND '.($isParent?'field_value='.$db->quote((string)(int)$record->id):'record_id='.(int)$record->id).' ORDER BY id',0,100);
```

### SQL00905 · Geniuspace\ExtendedGate::restricted

`components/com_joomcck/site/library/php/geniuspace/ExtendedGate.php:13`

```php
return $db->setQuery("SELECT id,field_type FROM #__js_res_fields WHERE type_id=".$type." AND published=1 AND field_type IN ('paytoaccess','related_access','dripcontent')")->loadObjectList();
```

### SQL01132 · Geniuspace\NativeAccess::record

`components/com_joomcck/site/library/php/geniuspace/NativeAccess.php:33`

```php
$raw=ReadMemo::get('native-raw-record:'.max(0,$id),fn()=>$this->store->rows('SELECT * FROM #__js_res_record WHERE id='.max(0,$id),1)[0]??null);
```

### SQL01133 · Geniuspace\NativeAccess::record

`components/com_joomcck/site/library/php/geniuspace/NativeAccess.php:36`

```php
$this->passportTypes[$typeId]??=ReadMemo::get('native-passport-type:'.$typeId,fn()=>(bool)$this->store->rows("SELECT id FROM #__js_res_fields WHERE type_id=".$typeId." AND field_type='gppassport' AND published=1",1));
```

### SQL01134 · Geniuspace\NativeAccess::record

`components/com_joomcck/site/library/php/geniuspace/NativeAccess.php:40`

```php
$type=$this->typeMetadata[$typeId]??=ReadMemo::get('native-type-metadata:'.$typeId,fn()=>$this->store->rows('SELECT params FROM #__js_res_types WHERE id='.$typeId,1)[0]??[]);
```

### SQL01135 · Geniuspace\NativeAccess::record

`components/com_joomcck/site/library/php/geniuspace/NativeAccess.php:41`

```php
$section=$this->sectionMetadata[$sectionId]??=ReadMemo::get('native-section-metadata:'.$sectionId,fn()=>$this->store->rows('SELECT params FROM #__js_res_sections WHERE id='.$sectionId,1)[0]??[]);
```

### SQL01136 · Geniuspace\NativeAccess::record

`components/com_joomcck/site/library/php/geniuspace/NativeAccess.php:47`

```php
$definitions=$this->store->db->setQuery('SELECT id,`key`,alias,label,field_type,params FROM #__js_res_fields WHERE type_id='.$typeId.' AND published=1 AND access IN ('.implode(',',$this->levels?:[0]).')')->loadAssocList();
```

### SQL01137 · Geniuspace\NativeAccess::candidates

`components/com_joomcck/site/library/php/geniuspace/NativeAccess.php:69`

```php
foreach($this->store->rows('SELECT id FROM #__js_res_record WHERE section_id='.$section.' AND id<>'.$except.' AND ('.implode(' OR ',$clauses).') ORDER BY id DESC',40)as$row){if($r=$this->title((int)$row['id']))$out[]=$r;
```

### SQL01138 · Geniuspace\NativeAutoLinks::process

`components/com_joomcck/site/library/php/geniuspace/NativeAutoLinks.php:90`

```php
if (in_array(strtolower($parent->nodeName), ['a','h1','h2','h3','h4','h5','h6','script','style','code','pre','button','textarea','select','svg','math','nav'], true)
                    || $parent instanceof \DOMElement && ($parent->hasAttribute('contenteditable') || $parent->getAttribute('data-no-autolink') === '1')) continue 2;
```

### SQL01139 · Geniuspace\NativeBindings::render

`components/com_joomcck/site/library/php/geniuspace/NativeBindings.php:11`

```php
$row=$s->rows('SELECT field_type FROM #__js_res_fields WHERE id='.$field.' AND type_id='.(int)$r['type_id'],1)[0]??null;
```

### SQL01140 · Geniuspace\NativeBindings::values

`components/com_joomcck/site/library/php/geniuspace/NativeBindings.php:20`

```php
$f=ProductAccess::store()->rows('SELECT label,field_type FROM #__js_res_fields WHERE id='.(int)$id,1)[0]??[];
```

### SQL01141 · Geniuspace\NativeBlueprint::apply

`components/com_joomcck/site/library/php/geniuspace/NativeBlueprint.php:18`

```php
$nativeLock=(int)($s->store->rows("SELECT GET_LOCK('geniuscck_native_blueprint',10) AS acquired",1)[0]['acquired']??0)===1;
```

### SQL01142 · Geniuspace\NativeBlueprint::apply

`components/com_joomcck/site/library/php/geniuspace/NativeBlueprint.php:19`

```php
if($nativeLock)$s->store->rows("SELECT RELEASE_LOCK('geniuscck_native_blueprint') AS released",1);
```

### SQL01143 · Geniuspace\NativeBlueprint::create

`components/com_joomcck/site/library/php/geniuspace/NativeBlueprint.php:25`

```php
if($s->store->rows('SELECT id FROM #__js_res_types WHERE name='.$s->store->q($type['name']),1)||in_array($type['name'],$existing,true)||!in_array($type['section_id'],$s->company['section_ids'],true)||!in_array($type['template_type_id'],array_map('intval',$allowed),true))throw new \DomainException('Nom existant ou section/modèle extérieur à cette entreprise.',409);
```

### SQL01144 · Geniuspace\NativeBlueprint::create

`components/com_joomcck/site/library/php/geniuspace/NativeBlueprint.php:29`

```php
$s->store->db->setQuery('SELECT params FROM #__js_res_types WHERE id='.$type['template_type_id']);
```

### SQL01145 · Geniuspace\NativeBlueprint::create

`components/com_joomcck/site/library/php/geniuspace/NativeBlueprint.php:34`

```php
$s->store->run('DELETE FROM #__js_res_fields WHERE type_id='.$id);
```

### SQL01146 · Geniuspace\NativeDesign::region

`components/com_joomcck/site/library/php/geniuspace/NativeDesign.php:10`

```php
$row=$s->rows('SELECT params,access,published FROM #__js_res_'.$table.' WHERE id='.$id,1)[0]??null;
```

### SQL01147 · Geniuspace\NativeDesign::region

`components/com_joomcck/site/library/php/geniuspace/NativeDesign.php:11`

```php
foreach($s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$r['type_id']." AND field_type='gpelement' AND published=1 ORDER BY ordering",0)as$f){try{$p=ProductAccess::field($id,(int)$f['id'],'gpelement');
```

### SQL01151 · Geniuspace\NativeMutation::lockedReplace

`components/com_joomcck/site/library/php/geniuspace/NativeMutation.php:46`

```php
$s->rows('SELECT id FROM #__js_res_record WHERE id='.$record.' FOR UPDATE',1);
```

### SQL01152 · Geniuspace\NativeSecurity::recordFiles

`components/com_joomcck/site/library/php/geniuspace/NativeSecurity.php:95`

```php
$db->setQuery('SELECT f.fullpath,ff.params FROM #__js_res_files f LEFT JOIN #__js_res_fields ff ON ff.id=f.field_id WHERE f.record_id='.$record);
```

### SQL01153 · Geniuspace\NativeSecurity::imageStore

`components/com_joomcck/site/library/php/geniuspace/NativeSecurity.php:146`

```php
$db->setQuery('SELECT COUNT(*) FROM #__js_res_files WHERE fullpath='.$db->quote($relative).' AND (record_id<>'.(int)$record->id.' OR field_id<>'.(int)$field->id.')');
```

### SQL01154 · Geniuspace\NativeSecurity::fileEditPermission

`components/com_joomcck/site/library/php/geniuspace/NativeSecurity.php:174`

```php
$db->setQuery('SELECT * FROM #__js_res_files WHERE id='.max(0,$id).' AND field_id='.(int)$field->id.' AND saved<>2');
```

### SQL01155 · Geniuspace\NativeSecurity::audioConvert

`components/com_joomcck/site/library/php/geniuspace/NativeSecurity.php:186`

```php
$db->setQuery('SELECT id FROM #__js_res_files WHERE filename='.$db->quote($name).' AND field_id='.(int)$field->id);
```

### SQL01157 · Geniuspace\NativeTreeLocks::acquire

`components/com_joomcck/site/library/php/geniuspace/NativeTreeLocks.php:13`

```php
if((int)$db->setQuery('SELECT GET_LOCK('.$db->quote($name).',3)')->loadResult()!==1)throw new \DomainException('Une réponse se sauvegarde déjà. Votre texte est conservé, réessayez.',409);
```

### SQL01158 · Geniuspace\NativeTreeLocks::acquire

`components/com_joomcck/site/library/php/geniuspace/NativeTreeLocks.php:15`

```php
$db->setQuery('SELECT RELEASE_LOCK('.$db->quote($name).')')->loadResult();
```

### SQL01159 · Geniuspace\NativeTreeLocks::acquire

`components/com_joomcck/site/library/php/geniuspace/NativeTreeLocks.php:17`

```php
// A current read protects the shared root; READ COMMITTED avoids an old nested-set snapshot.
        $db->setQuery('SELECT id FROM '.$db->quoteName($table).' WHERE id=1 FOR UPDATE')->loadResult();
```

### SQL01160 · Geniuspace\NativeUploadGate::receipt

`components/com_joomcck/site/library/php/geniuspace/NativeUploadGate.php:36`

```php
$file=ProductAccess::store()->rows('SELECT * FROM #__js_res_files WHERE id='.(int)$data['id'].' AND field_id='.(int)$field->id.' AND record_id='.$record.' AND user_id='.(int)ProductAccess::user()->id.' AND saved<>2',1)[0]??null;
```

### SQL01403 · Geniuspace\ProductAccess::raw

`components/com_joomcck/site/library/php/geniuspace/ProductAccess.php:20`

```php
$r=ReadMemo::get('native-raw-record:'.max(0,$id),static fn()=>self::store()->rows('SELECT * FROM #__js_res_record WHERE id='.max(0,$id),1)[0]??null);
```

### SQL01404 · Geniuspace\ProductAccess::field

`components/com_joomcck/site/library/php/geniuspace/ProductAccess.php:46`

```php
$f=$s->rows('SELECT * FROM #__js_res_fields WHERE id='.max(0,$field).' AND type_id='.(int)$r['type_id'].' AND published=1',1)[0]??null;
```

### SQL01423 · Geniuspace\QueryBuilder::run

`components/com_joomcck/site/library/php/geniuspace/QueryBuilder.php:51`

```php
foreach($this->store->rows('SELECT id,title AS name,section_id FROM #__js_res_categories WHERE published=1 AND access=1 AND section_id IN ('.implode(',',$this->company['section_ids']).')',1000) as $r)$rows[]=['id'=>(int)$r['id'],'title'=>$r['name'],'section_id'=>(int)$r['section_id']];
```

### SQL01424 · Geniuspace\QueryBuilder::run

`components/com_joomcck/site/library/php/geniuspace/QueryBuilder.php:57`

```php
foreach($this->store->rows('SELECT id,record_id,body AS text,ctime AS date FROM #__gp_social_posts WHERE scope='.$this->store->q($this->company['slug'])." AND state='published' AND visibility='public' AND parent_id>0",1000) as $r)if($social->post((int)$r['id'])&&$r['record_id']&&$this->repository->record($this->company,(int)$r['record_id'])){$r['text']=Text::plain($r['text']);
```

### SQL01425 · Geniuspace\QueryBuilder::run

`components/com_joomcck/site/library/php/geniuspace/QueryBuilder.php:58`

```php
foreach($this->store->rows('SELECT id,record_id,comment AS text,ctime AS date FROM #__js_res_comments WHERE published=1 AND access=1 AND private=0 AND hide=0 AND section_id IN ('.implode(',',$this->company['section_ids']).')',1000) as $r)if($record=$this->repository->record($this->company,(int)$r['record_id'])){$r['text']=Text::plain($r['text']);
```

### SQL01426 · Geniuspace\QueryBuilder::run

`components/com_joomcck/site/library/php/geniuspace/QueryBuilder.php:61`

```php
$meta=$this->store->rows('SELECT field_type,params FROM #__js_res_fields WHERE id='.(int)($d['field_id']??0),1)[0]??null;
```

### SQL01427 · Geniuspace\QueryBuilder::run

`components/com_joomcck/site/library/php/geniuspace/QueryBuilder.php:64`

```php
$definition=$this->store->rows('SELECT data FROM #__gp_social_definitions WHERE scope='.$this->store->q($this->company['slug'])." AND kind='content_type' AND name=".$this->store->q($type),1)[0]??null;
```

### SQL01428 · Geniuspace\QueryBuilder::run

`components/com_joomcck/site/library/php/geniuspace/QueryBuilder.php:66`

```php
foreach($this->store->rows('SELECT id,title,data,ctime AS date FROM #__gp_social_content WHERE scope='.$this->store->q($this->company['slug']).' AND content_type='.$this->store->q($type)." AND published=1 AND access=1",1000) as $r){$values=Studio::publicValues($schema,json_decode($r['data'],true)?:[]);
```

### SQL01429 · Geniuspace\QueryBuilder::run

`components/com_joomcck/site/library/php/geniuspace/QueryBuilder.php:74`

```php
$rows=$this->store->rows('SELECT '.implode(',',$view['columns']).' FROM '.$view['table'],1000);
```

### SQL01473 · Geniuspace\Repository::available

`components/com_joomcck/site/library/php/geniuspace/Repository.php:43`

```php
$rows = ReadMemo::get('public-company-sections:'.$ids.':'.$this->levels(),fn()=>$this->rows('SELECT id, params FROM #__js_res_sections WHERE published=1 AND access IN (' . $this->levels() . ') AND id IN (' . $ids . ')'));
```

### SQL01474 · Geniuspace\Repository::count

`components/com_joomcck/site/library/php/geniuspace/Repository.php:91`

```php
$sql = str_replace('SELECT r.*', 'SELECT COUNT(*) AS total', $this->base($company, $types));
```

### SQL01475 · Geniuspace\Repository::publicTypes

`components/com_joomcck/site/library/php/geniuspace/Repository.php:100`

```php
foreach ($this->rows('SELECT id, params FROM #__js_res_types WHERE published=1 AND id IN (' . $key . ')') as $row) {
                $params = json_decode($row['params'] ?: '{}', true) ?: [];
```

### SQL01476 · Geniuspace\Repository::base

`components/com_joomcck/site/library/php/geniuspace/Repository.php:123`

```php
return 'SELECT r.* FROM #__js_res_record r'
            . ' INNER JOIN #__js_res_types t ON t.id=r.type_id'
            . ' WHERE r.section_id IN (' . implode(',', $company['section_ids']) . ')'
            . ' AND r.type_id IN (' . implode(',', $types) . ')'
            . ' AND r.published=1 AND r.hidden=0 AND r.archive=0 AND t.published=1'
            . ' AND r.access IN (' . $this->levels() . ')'
            . $privacy
            . ' AND (r.pubtime IS NULL OR r.pubtime=' . $zero . ' OR r.pubtime<=' . $now . ')'
            . ' AND (r.extime IS NULL OR r.extime=' . $zero . ' OR r.extime>' . $now . ')'
            . ' AND NOT EXISTS (SELECT 1 FROM #__js_res_record_category rc'
            . ' LEFT JOIN #__js_res_categories c ON c.id=rc.catid'
            . ' WHERE rc.record_id=r.id AND (c.id IS NULL OR c.published<>1 OR c.access NOT IN (' . $this->levels() . ') OR c.section_id<>r.section_id))'.$ancestors;
```

### SQL01477 · Geniuspace\Repository::deniedCategories

`components/com_joomcck/site/library/php/geniuspace/Repository.php:142`

```php
$rows=$this->rows('SELECT id,parent_id,section_id,published,access FROM #__js_res_categories WHERE section_id IN ('.$sections.')');
```

### SQL01478 · Geniuspace\Repository::hydrate

`components/com_joomcck/site/library/php/geniuspace/Repository.php:158`

```php
$fields = $this->rows('SELECT id, field_type, params FROM #__js_res_fields WHERE type_id=' . $typeId . ' AND published=1 AND access IN (' . $this->levels() . ')');
```

### SQL01479 · Geniuspace\Repository::hydrate

`components/com_joomcck/site/library/php/geniuspace/Repository.php:179`

```php
$meta = $this->rows('SELECT params FROM #__js_res_fields WHERE id=' . (int) $widget['field_id'] . ' AND type_id=' . $typeId, 0, 1)[0] ?? [];
```

### SQL01480 · Geniuspace\Repository::hydrate

`components/com_joomcck/site/library/php/geniuspace/Repository.php:186`

```php
$meta=$this->rows('SELECT label,field_type,params FROM #__js_res_fields WHERE id='.$id.' AND type_id='.$typeId,0,1)[0]??null;
```

### SQL01481 · Geniuspace\Repository::connections

`components/com_joomcck/site/library/php/geniuspace/Repository.php:235`

```php
// Original Extended parent/child edges are native CCK relations too.
        if(defined('_JEXEC')&&class_exists(ExtendedFields::class))foreach($this->rows("SELECT * FROM #__js_res_fields WHERE type_id=".$record['type_id']." AND published=1 AND field_type IN ('parent','child')",0,100)as$field){
            if(!$this->publicField($record['type_id'],(int)$field['id']))continue;
```

### SQL01482 · Geniuspace\Repository::connections

`components/com_joomcck/site/library/php/geniuspace/Repository.php:258`

```php
// Explicit references also create reverse links. Revalidate the source AND its field now.
        foreach ($this->rows('SELECT source_id,field_id FROM #__gp_social_links WHERE target_id=' . $record['id'] . " AND kind='relation' ORDER BY source_id", 0, 30) as $edge) {
            $source = $this->record($company, (int) $edge['source_id']);
```

### SQL01483 · Geniuspace\Repository::connections

`components/com_joomcck/site/library/php/geniuspace/Repository.php:268`

```php
// Opt-in typed graph: recheck definition publication and both native records on every read.
        foreach($this->rows('SELECT name,data FROM #__gp_social_definitions WHERE scope='.$this->q($company['slug'])." AND kind='relation' ORDER BY id",0,30) as $definition){
            try{$d=Relationships::validate(json_decode($definition['data'],true));
```

### SQL01484 · Geniuspace\Repository::connections

`components/com_joomcck/site/library/php/geniuspace/Repository.php:273`

```php
foreach($this->rows('SELECT '.$other.' AS record_id FROM #__gp_social_typed_relations WHERE scope='.$this->q($company['slug']).' AND relation_name='.$this->q($definition['name']).' AND '.$field.'='.$record['id'],0,12) as $edge){$target=$this->record($company,(int)$edge['record_id']);
```

### SQL01485 · Geniuspace\Repository::connections

`components/com_joomcck/site/library/php/geniuspace/Repository.php:289`

```php
$sub = 'SELECT tv.record_id FROM #__js_res_record_values sv'
                        . ' INNER JOIN #__js_res_record_values tv ON tv.field_value=sv.field_value'
                        . ' WHERE sv.record_id=' . $record['id'] . ' AND sv.field_id=' . $source
                        . ' AND tv.field_id=' . $target . ' AND sv.field_value<>' . $this->q('');
```

### SQL01486 · Geniuspace\Repository::owner

`components/com_joomcck/site/library/php/geniuspace/Repository.php:353`

```php
$rows = $this->rows('SELECT user_id FROM #__js_res_record WHERE id=' . max(0, $record), 0, 1);
```

### SQL01487 · Geniuspace\Repository::publicField

`components/com_joomcck/site/library/php/geniuspace/Repository.php:366`

```php
$rows = $this->rows('SELECT id,params FROM #__js_res_fields WHERE type_id=' . $type . ' AND id=' . $field . ' AND published=1 AND access IN (' . $this->levels() . ") AND field_type NOT IN ('gpquiz','passwd','uploads','paytodownload','gppassport','gpteam')");
```

### SQL01488 · Geniuspace\Repository::structured

`components/com_joomcck/site/library/php/geniuspace/Repository.php:372`

```php
$f = $this->rows('SELECT field_type,params FROM #__js_res_fields WHERE id=' . $field . ' AND type_id=' . $r['type_id'], 0, 1)[0] ?? null;
```

### SQL01489 · Geniuspace\Repository::structured

`components/com_joomcck/site/library/php/geniuspace/Repository.php:374`

```php
$row = $this->rows('SELECT fields FROM #__js_res_record WHERE id=' . $record, 0, 1)[0];
```

### SQL01490 · Geniuspace\Repository::fieldValue

`components/com_joomcck/site/library/php/geniuspace/Repository.php:384`

```php
$f=$this->rows('SELECT field_type FROM #__js_res_fields WHERE id='.$field.' AND type_id='.$r['type_id'],0,1)[0]??null;
```

### SQL01491 · Geniuspace\Repository::fieldValue

`components/com_joomcck/site/library/php/geniuspace/Repository.php:386`

```php
$row=$this->rows('SELECT fields FROM #__js_res_record WHERE id='.$record,0,1)[0]??null;
```

### SQL01492 · Geniuspace\Repository::compare

`components/com_joomcck/site/library/php/geniuspace/Repository.php:432`

```php
$raw = $this->rows('SELECT fields FROM #__js_res_record WHERE id=' . $id, 0, 1)[0];
```

### SQL01493 · Geniuspace\Repository::compare

`components/com_joomcck/site/library/php/geniuspace/Repository.php:437`

```php
$f = $this->rows('SELECT field_type,params FROM #__js_res_fields WHERE id=' . $field . ' AND type_id=' . $r['type_id'], 0, 1)[0];
```

### SQL01494 · Geniuspace\Repository::fileField

`components/com_joomcck/site/library/php/geniuspace/Repository.php:448`

```php
$rows = $this->rows('SELECT params FROM #__js_res_fields WHERE type_id=' . $type . ' AND id=' . $field . " AND field_type='uploads' AND published=1 AND access IN (" . $this->levels() . ')', 0, 1);
```

### SQL01495 · Geniuspace\Schema::statements

`components/com_joomcck/site/library/php/geniuspace/Schema.php:112`

```php
$statements[] = 'CREATE TABLE IF NOT EXISTS #__gp_social_' . $name . ' (' . $columns . ')' . $tail;
```

### SQL01496 · Geniuspace\SchemaMigration::apply

`components/com_joomcck/site/library/php/geniuspace/SchemaMigration.php:14`

```php
if(!is_string($sql)||!str_starts_with($sql,'CREATE TABLE IF NOT EXISTS #__gp_social_')||str_contains($sql,';'))throw new \RuntimeException('Instruction de migration invalide.');
```

### SQL01509 · Geniuspace\SiteInventory::scan

`components/com_joomcck/site/library/php/geniuspace/SiteInventory.php:8`

```php
foreach($s->store->rows('SELECT id,name,params,published FROM #__js_res_sections WHERE id IN ('.implode(',',$s->company['section_ids']).')',100) as $r){$p=json_decode($r['params']??'{}',true)?:[];
```

### SQL01510 · Geniuspace\SiteInventory::scan

`components/com_joomcck/site/library/php/geniuspace/SiteInventory.php:9`

```php
$rows=$types?$s->store->rows('SELECT id,name,published FROM #__js_res_types WHERE id IN ('.implode(',',array_keys($types)).')',1000):[];
```

### SQL01511 · Geniuspace\SiteInventory::scan

`components/com_joomcck/site/library/php/geniuspace/SiteInventory.php:10`

```php
$fields=$types?$s->store->rows('SELECT id,label,alias,type_id,field_type,published,access FROM #__js_res_fields WHERE type_id IN ('.implode(',',array_keys($types)).') ORDER BY type_id,ordering,id',1000):[];
```

### SQL01554 · Geniuspace\Store::insert

`components/com_joomcck/site/library/php/geniuspace/Store.php:27`

```php
$this->run('INSERT INTO #__gp_social_' . $table . ' (' . $columns . ') VALUES (' . $values . ')');
```

### SQL01555 · Geniuspace\Store::atomic

`components/com_joomcck/site/library/php/geniuspace/Store.php:38`

```php
if(method_exists($this->db,'getServerType')&&in_array($this->db->getServerType(),['mysql','mariadb'],true))$this->db->setQuery('SET TRANSACTION ISOLATION LEVEL READ COMMITTED')->execute();
```

### SQL01595 · Geniuspace\TransactionHealth::report

`components/com_joomcck/site/library/php/geniuspace/TransactionHealth.php:12`

```php
$rows=$db->setQuery('SELECT TABLE_NAME AS name,ENGINE AS engine,TABLE_ROWS AS estimated_rows,DATA_LENGTH AS data_bytes,INDEX_LENGTH AS index_bytes FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() ORDER BY TABLE_NAME')->loadAssocList();
```
