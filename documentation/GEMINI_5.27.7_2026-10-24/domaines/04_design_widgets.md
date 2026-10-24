# Design, widgets et formulaires

Documents de design, permissions, édition, navigation, bibliothèques et rendu natif.

Version 5.27.7. Présence dans le code ; ne prouve pas la configuration ou l’utilisation en production.

31 classes ; 176 fonctions/méthodes nommées ; 58 expressions SQL repérées dans ce domaine du noyau Geniuspace.

## Geniuspace\DynamicForm

`components/com_joomcck/site/library/php/geniuspace/DynamicForm.php:6`
- L9–18 · public · `function schema(string $json): array`
- L19–55 · private · `function fields(array $fields,int $depth,int &$count): void`
- L56–57 · private · `function integer(mixed $v,int $min,int $max): int`
- L58–63 · public · `function visible(array $f,array $values): bool`
- L64–69 · public · `function values(array $schema,string $json): array`
- L70–106 · private · `function rows(array $schema,mixed $rows,int &$count,string $path): array`
- L107–120 · public · `function render(array $schema,array $rows,string $title): string`

## Geniuspace\ElementData

`components/com_joomcck/site/library/php/geniuspace/ElementData.php:6`
- L17–42 · public · `function parse(array $d): array`
- L43–43 · public · `function publicKind(array $d): bool`

## Geniuspace\ElementLibrary

`components/com_joomcck/site/library/php/geniuspace/ElementLibrary.php:6`
- L8–12 · public · `function assets(): void`
- L13–30 · public · `function render(array $d,array $r,int $field,bool $full=true): string`
- L31–39 · private · `function parts(array $d,array $r): string`
- L40–43 · public · `function links(array $ids,string $label='Découvrir'): string`
- L44–45 · private · `function form(string $action,int $record,array $extra=[]): string`
- L46–53 · private · `function workspace(): string`
- L54–59 · private · `function preferences(): string`
- L60–63 · private · `function goal(): string`
- L64–69 · private · `function watch(array $r): string`
- L70–75 · private · `function comparison(array $d): string`
- L76–80 · private · `function release(array $r): string`
- L81–87 · private · `function commitments(array $d,array $r,int $field): string`
- L88–92 · private · `function reviewForm(array $r,int $field): string`
- L93–101 · private · `function project(array $d,array $r,int $field): string`
- L102–107 · private · `function study(array $d): string`
- L108–109 · private · `function format(array $d): string`
- L110–113 · private · `function reputation(array $d): string`
- L114–117 · private · `function author(): string`
- L118–122 · private · `function ai(): string`
- L123–124 · private · `function search(): string`
- L125–129 · private · `function taxonomy(array $d): string`
- L130–133 · private · `function sitemap(): string`
- L134–137 · private · `function journey(array $d,array $r): string`
- L138–142 · private · `function actions(array $d,array $r): string`
- L143–146 · private · `function questions(array $d,array $r): string`
- L147–150 · private · `function campaign(array $d,array $r): string`

## Geniuspace\Presentation

`components/com_joomcck/site/library/php/geniuspace/Presentation.php:4`
- L6–9 · public · `function publicSchema(array $schema): array`
- L10–11 · public · `function render(array $item): string`

## Geniuspace\PresentationMap

`components/com_joomcck/site/library/php/geniuspace/PresentationMap.php:6`
- L8–15 · public · `function parameters(array $r): array`
- L16–19 · public · `function field(array $p,array $fields,string $role): int`
- L20–28 · public · `function compare(array $ids): array`

## Geniuspace\Renderer

`components/com_joomcck/site/library/php/geniuspace/Renderer.php:5`
- L7–13 · public · `function shell(Config $config, ?array $company, string $title, string $description, string $url, string $body, array $graph, bool $noindex=false, ?string $next=null): string`

## Geniuspace\Studio

`components/com_joomcck/site/library/php/geniuspace/Studio.php:6`
- L8–8 · public · `function __construct(public Store $store,public Config $config,public Repository $repository,public array $company,public int $user=0,public bool $admin=false,public array $options=[],public ?RemoteData $remote=null)`
- L9–9 · private · `function scope(): string`
- L10–11 · public · `function actor(): void`
- L12–12 · public · `function administrator(): void`
- L13–17 · public · `function definitions(?string $kind=null): array`
- L18–22 · public · `function definition(int $id,string $kind): ?array`
- L23–24 · public · `function type(string $name): ?array`
- L25–28 · public · `function validateDefinition(string $kind,array $data): array`
- L29–30 · private · `function options(array $data): array`
- L31–36 · private · `function glossary(array $data): array`
- L37–38 · private · `function listing(array $data): array`
- L39–52 · public · `function saveDefinition(string $kind,string $name,array $data,int $expected=0): array`
- L53–57 · public · `function query(int $id,array $context=[]): array`
- L58–65 · public · `function content(int $id,bool $private=false): ?array`
- L66–69 · public · `function publicValues(array $schema,array $values): array`
- L70–85 · public · `function saveContent(string $type,string $title,array $values,int $id=0,int $expected=0): array`
- L86–91 · public · `function moderate(int $id,int $expected,bool $published): array`
- L92–93 · private · `function lockContent(int $id): void`
- L94–100 · public · `function deleteContent(int $id,int $expected): void`
- L101–107 · public · `function collection(string $key,int $record=0,bool $add=true): array`

## Geniuspace\StudioBridge

`components/com_joomcck/site/library/php/geniuspace/StudioBridge.php:5`
- L7–13 · public · `function service(int $section): Studio`
- L14–31 · public · `function widget(string $kind,array $data,object $params,object $record): array`

## Geniuspace\StudioRouter

`components/com_joomcck/site/library/php/geniuspace/StudioRouter.php:6`
- L8–8 · public · `function __construct(private Studio $studio,private string $csrf,private bool $tokenValid,private ?array $permissions=null)`
- L9–9 · private · `function json(array $data,int $status=200): Response`
- L10–50 · public · `function handle(string $path,string $method,array $data=[],array $query=[]): Response`
- L51–69 · private · `function mcp(array $request): Response`
- L70–78 · private · `function dashboard(): Response`

## Geniuspace\Styles

`components/com_joomcck/site/library/php/geniuspace/Styles.php:4`
- L6–7 · public · `function variables(array $settings): string`

## Geniuspace\WidgetEngine

`components/com_joomcck/site/library/php/geniuspace/WidgetEngine.php:6`
- L9–40 · public · `function parse(string $kind,string $json): array`
- L41–96 · public · `function render(string $kind,array $d,string $label): string`
- L97–104 · private · `function video(string $url,string $title): string`

## Geniuspace\DesignInline

`components/com_joomcck/site/library/php/geniuspace/DesignInline.php:6`
- L13–13 · public · `function parts(): array`
- L14–14 · public · `function groups(): array`
- L15–20 · public · `function assets(): void`
- L21–29 · public · `function host(string $html,string $scope,int $section,int $target): string`
- L30–34 · public · `function slot(string $html,string $key): string`
- L35–43 · public · `function toolbar(int $hub): string`

## Geniuspace\DesignActions

`components/com_joomcck/site/library/php/geniuspace/DesignActions.php:6`
- L8–13 · public · `function destinations(): array`
- L14–20 · public · `function publication(array $s,array $ctx): string`
- L21–25 · public · `function share(array $s,array $ctx): string`

## Geniuspace\DesignPermissions

`components/com_joomcck/site/library/php/geniuspace/DesignPermissions.php:6`
- L16–22 · public · `function category(int $section,int $category): bool`
- L23–31 · public · `function record(array $record): bool`
- L32–37 · public · `function delegation(int $section,int $category): array`
- L38–51 · public · `function delegate(int $section,int $category,array $data): array`
- L52–53 · private · `function superAdmin(): void`

## Geniuspace\DesignCompositions

`components/com_joomcck/site/library/php/geniuspace/DesignCompositions.php:6`
- L8–9 · public · `function all(): array`
- L10–32 · public · `function append(array $raw,array $ctx,string $preset): array`

## Geniuspace\DesignData

`components/com_joomcck/site/library/php/geniuspace/DesignData.php:6`
- L8–13 · public · `function binding(array $b): array`
- L14–18 · public · `function condition(array $raw): array`
- L19–23 · public · `function visible(array $condition,array $context): bool`
- L24–28 · public · `function apply(array $node,array $context): array`
- L29–42 · private · `function resolve(array $b,array $ctx,bool $list): mixed`
- L43–44 · private · `function category(array $ctx): int`
- L45–48 · private · `function item(int $id): ?array`
- L49–56 · private · `function related(int $record,array $b): array`
- L57–58 · private · `function imageFromHtml(string $html): string`

## Geniuspace\DesignExtension

`components/com_joomcck/site/library/php/geniuspace/DesignExtension.php:6`
- L8–12 · public · `function links(int $record): array`
- L13–25 · public · `function contract(): array`

## Geniuspace\DesignRenderer

`components/com_joomcck/site/library/php/geniuspace/DesignRenderer.php:6`
- L10–11 · public · `function assets(): void`
- L12–12 · private · `function e(mixed $v): string`
- L13–14 · private · `function image(string $src,string $alt,int $width=1200,int $height=675): string`
- L15–15 · private · `function mediaUrl(string $url): bool`
- L16–35 · public · `function render(array $d,array $context,array $slots=[],bool $preview=false): string`
- L36–48 · private · `function node(array $n,array $context,array $slots,bool $preview): string`
- L49–116 · private · `function widget(array $n,array $ctx,array $slots,bool $preview): string`
- L117–121 · private · `function button(array $s): string`
- L122–133 · private · `function menu(array $items,string $title,bool $mega=false): string`
- L134–139 · private · `function records(array $ctx,int $limit): array`
- L140–145 · public · `function nativeField(int $record,int $field,array $ctx): string`
- L146–155 · private · `function slider(string $kind,array $s,array $ctx,string $node): string`
- L156–167 · private · `function media(string $kind,array $s,array $ctx,string $node): string`

## Geniuspace\DesignForms

`components/com_joomcck/site/library/php/geniuspace/DesignForms.php:7`
- L10–11 · public · `function canManage(): bool`
- L12–18 · public · `function authorize(int $section,int $type): array`
- L19–20 · public · `function fields(int $type): array`
- L21–26 · public · `function defaults(array $ctx): array`
- L27–31 · public · `function validate(array $doc,array $ctx): void`
- L32–43 · public · `function optimize(array $raw,array $ctx): array`
- L44–53 · public · `function render(object $view,string $native): string`
- L54–72 · public · `function createRepeat(int $section,int $type,array $data): array`

## Geniuspace\DesignLibrary

`components/com_joomcck/site/library/php/geniuspace/DesignLibrary.php:6`
- L10–10 · private · `function prop(string $label,string $type='text',mixed $default=''): array`
- L11–82 · public · `function all(): array`
- L83–83 · public · `function get(string $id): ?array`
- L84–84 · public · `function reset(): void`
- L85–90 · public · `function register(string $id,array $definition,callable $renderer): void`
- L91–92 · public · `function provider(string $id,array $settings,array $context): ?string`
- L93–102 · public · `function import(array $manifest): array`

## Geniuspace\DesignApi

`components/com_joomcck/site/library/php/geniuspace/DesignApi.php:6`
- L8–47 · public · `function dispatch(): never`
- L48–49 · private · `function optimize(string $scope,int $section,int $target,array $raw): array`
- L50–53 · private · `function fields(int $record): array`
- L54–60 · private · `function media(): array`
- L61–65 · private · `function preview(string $scope,int $section,int $target,array $raw): array`

## Geniuspace\DesignInlineParts

`components/com_joomcck/site/library/php/geniuspace/DesignInlineParts.php:6`
- L9–20 · public · `function markSidebar(string $html): string`
- L21–29 · public · `function sidebar(string $html): array`
- L31–36 · public · `function without(string $html,string $slot): string`
- L37–43 · public · `function stage(string $html): array`

## Geniuspace\DesignNativeContent

`components/com_joomcck/site/library/php/geniuspace/DesignNativeContent.php:6`
- L8–20 · public · `function render(string $html,array $s): string`

## Geniuspace\DesignModules

`components/com_joomcck/site/library/php/geniuspace/DesignModules.php:6`
- L8–13 · private · `function available(): array`
- L14–21 · public · `function catalogue(): array`
- L22–31 · public · `function render(array $settings,bool $preview): string`

## Geniuspace\DesignStudio

`components/com_joomcck/site/library/php/geniuspace/DesignStudio.php:6`
- L8–24 · public · `function page(): never`

## Geniuspace\DesignParticipation

`components/com_joomcck/site/library/php/geniuspace/DesignParticipation.php:7`
- L9–19 · public · `function render(string $kind,array $s,array $ctx,bool $preview): string`

## Geniuspace\DesignDocument

`components/com_joomcck/site/library/php/geniuspace/DesignDocument.php:6`
- L11–12 · public · `function text(mixed $v,int $max=4000): string`
- L13–14 · public · `function number(mixed $v,float $min,float $max): float`
- L15–16 · public · `function color(mixed $v): string`
- L17–24 · public · `function url(mixed $v): string`
- L25–26 · public · `function icon(mixed $v): string`
- L27–32 · public · `function defaults(string $scope): array`
- L33–34 · public · `function native(string $key,string $region): array`
- L35–66 · public · `function clean(array $raw,string $scope): array`
- L67–76 · public · `function items(mixed $items,int $max=60,int $depth=0): array`
- L77–81 · public · `function imagePosition(array $raw): array`
- L82–89 · public · `function layers(mixed $layers): array`
- L90–91 · public · `function chapters(mixed $items): array`
- L92–93 · public · `function textList(mixed $value): array`
- L94–99 · public · `function settings(array $raw,array $def): array`
- L100–103 · public · `function audit(array $d): array`

## Geniuspace\DesignLayouts

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:7`
- L9–10 · public · `function key(string $scope,int $section,int $target): string`
- L11–31 · public · `function authorize(string $scope,int $section,int $target): array`
- L32–33 · public · `function pageContext(int $record): array`
- L34–41 · public · `function contexts(): array`
- L42–48 · public · `function read(string $scope,int $section,int $target): array`
- L49–53 · private · `function fields(array $c): array`
- L54–70 · public · `function write(string $scope,int $section,int $target,string $action,array $data): array`
- L71–76 · public · `function published(string $scope,int $section,int $target): ?array`
- L77–78 · public · `function editorUrl(string $scope,int $section,int $target,bool $admin=false): string`
- L79–80 · public · `function link(string $scope,int $section,int $target): string`

## Geniuspace\DesignNavigation

`components/com_joomcck/site/library/php/geniuspace/DesignNavigation.php:6`
- L8–24 · public · `function apply(string $html,array $items): string`

## Geniuspace\DesignAssist

`components/com_joomcck/site/library/php/geniuspace/DesignAssist.php:6`
- L8–20 · public · `function improve(array $raw,string $scope): array`
- L21–24 · public · `function onColor(string $hex): string`

## Geniuspace\DesignIcons

`components/com_joomcck/site/library/php/geniuspace/DesignIcons.php:6`
- L11–11 · private · `function path(): string`
- L12–13 · public · `function manifest(): array`
- L14–21 · public · `function search(string $collection,string $query='',int $offset=0): array`
- L22–23 · private · `function url(string $collection,string $name): string`
- L24–28 · public · `function valid(string $id): bool`
- L29–35 · public · `function render(string $id): string`

## SQL et données

Les expressions suivantes sont du PHP source ; les variables ne sont pas évaluées. Pour un EXPLAIN réel, reconstruire une requête paramétrée sur une copie de test.

### SQL00802 · TOPLEVEL

`components/com_joomcck/site/library/php/geniuspace/DynamicForm.php:8`

```php
public const TYPES=['text','textarea','number','date','datetime-local','color','email','url','select','checkbox','group','calculated'];
```

### SQL00803 · Geniuspace\DynamicForm::fields

`components/com_joomcck/site/library/php/geniuspace/DynamicForm.php:38`

```php
if($f['type']==='select') {
                if(!is_array($f['options'] ?? null) || !array_is_list($f['options']) || !$f['options'] || count($f['options'])>100)throw new \InvalidArgumentException('Options requises.');
```

### SQL00804 · Geniuspace\DynamicForm::rows

`components/com_joomcck/site/library/php/geniuspace/DynamicForm.php:94`

```php
if($f['type']==='select'&&!in_array($v,$f['options'],true))throw new \InvalidArgumentException($where.' : option inconnue.');
```

### SQL00852 · Geniuspace\ElementLibrary::watch

`components/com_joomcck/site/library/php/geniuspace/ElementLibrary.php:67`

```php
$on=(bool)$s->rows('SELECT record_id FROM #__gp_social_record_watches WHERE user_id='.(int)ProductAccess::user()->id.' AND record_id='.(int)$r['id'].' AND active=1',1);
```

### SQL00853 · Geniuspace\ElementLibrary::study

`components/com_joomcck/site/library/php/geniuspace/ElementLibrary.php:104`

```php
$rows=ProductAccess::store()->rows('SELECT id FROM #__js_res_record ORDER BY id DESC',1000);
```

### SQL00854 · Geniuspace\ElementLibrary::ai

`components/com_joomcck/site/library/php/geniuspace/ElementLibrary.php:121`

```php
$count=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_knowledge_chunks',1)[0]['n']??0);
```

### SQL00855 · Geniuspace\ElementLibrary::taxonomy

`components/com_joomcck/site/library/php/geniuspace/ElementLibrary.php:128`

```php
foreach($s->rows('SELECT id,name FROM #__js_res_sections WHERE '.$where,100)as$r)$out.='<a href="'.Text::escape(\Joomla\CMS\Router\Route::_('index.php?option=com_joomcck&view=records&section_id='.$r['id'],false)).'">'.Text::escape($r['name']).'</a>';
```

### SQL01402 · Geniuspace\PresentationMap::parameters

`components/com_joomcck/site/library/php/geniuspace/PresentationMap.php:10`

```php
$type=ProductAccess::store()->rows('SELECT params FROM #__js_res_types WHERE id='.(int)$r['type_id'],1)[0]??[];
```

### SQL01558 · Geniuspace\Studio::actor

`components/com_joomcck/site/library/php/geniuspace/Studio.php:11`

```php
if(!$this->user||!$this->store->rows('SELECT id FROM #__users WHERE id='.$this->user.' AND block=0',1))throw new \DomainException('Identité Joomla active requise.',403);
```

### SQL01559 · Geniuspace\Studio::definitions

`components/com_joomcck/site/library/php/geniuspace/Studio.php:15`

```php
$sql='SELECT id,kind,name,data,revision FROM #__gp_social_definitions WHERE '.$this->scope();
```

### SQL01560 · Geniuspace\Studio::definition

`components/com_joomcck/site/library/php/geniuspace/Studio.php:20`

```php
$r=$this->store->rows('SELECT id,name,data,revision FROM #__gp_social_definitions WHERE '.$this->scope().' AND id='.$id.' AND kind='.$this->store->q($kind),1)[0]??null;
```

### SQL01561 · Geniuspace\Studio::type

`components/com_joomcck/site/library/php/geniuspace/Studio.php:24`

```php
return $this->store->rows('SELECT id,name,data,revision FROM #__gp_social_definitions WHERE '.$this->scope()." AND kind='content_type' AND name=".$this->store->q($name),1)[0]??null;
```

### SQL01562 · Geniuspace\Studio::saveDefinition

`components/com_joomcck/site/library/php/geniuspace/Studio.php:44`

```php
$this->store->rows('SELECT id FROM #__users WHERE id='.$this->user.$lock,1);
```

### SQL01563 · Geniuspace\Studio::saveDefinition

`components/com_joomcck/site/library/php/geniuspace/Studio.php:45`

```php
$r=$this->store->rows('SELECT id,revision FROM #__gp_social_definitions WHERE '.$this->scope().' AND kind='.$this->store->q($kind).' AND name='.$this->store->q($name).$lock,1)[0]??null;
```

### SQL01564 · Geniuspace\Studio::saveDefinition

`components/com_joomcck/site/library/php/geniuspace/Studio.php:48`

```php
$this->store->run('UPDATE #__gp_social_definitions SET data='.$this->store->q(Seo::json($data)).',revision='.$revision.' WHERE '.$this->scope().' AND id='.$id);
```

### SQL01565 · Geniuspace\Studio::content

`components/com_joomcck/site/library/php/geniuspace/Studio.php:60`

```php
$r=$this->store->rows('SELECT * FROM #__gp_social_content WHERE '.$this->scope().' AND id='.$id,1)[0]??null;
```

### SQL01566 · Geniuspace\Studio::saveContent

`components/com_joomcck/site/library/php/geniuspace/Studio.php:76`

```php
$this->store->rows('SELECT id FROM #__users WHERE id='.$this->user.$lock,1);
```

### SQL01567 · Geniuspace\Studio::saveContent

`components/com_joomcck/site/library/php/geniuspace/Studio.php:77`

```php
$r=$id?$this->store->rows('SELECT * FROM #__gp_social_content WHERE '.$this->scope().' AND id='.$id.$lock,1)[0]??null:null;
```

### SQL01568 · Geniuspace\Studio::saveContent

`components/com_joomcck/site/library/php/geniuspace/Studio.php:81`

```php
if($r)$this->store->run('UPDATE #__gp_social_content SET title='.$this->store->q($title).',data='.$this->store->q(Seo::json($values)).',mtime='.$this->store->q($now).',revision='.$revision.($this->admin?'':',published=0').' WHERE '.$this->scope().' AND id='.$id);
```

### SQL01569 · Geniuspace\Studio::moderate

`components/com_joomcck/site/library/php/geniuspace/Studio.php:89`

```php
$this->store->run('UPDATE #__gp_social_content SET published='.(int)$published.',revision=revision+1 WHERE '.$this->scope().' AND id='.$id);
```

### SQL01570 · Geniuspace\Studio::lockContent

`components/com_joomcck/site/library/php/geniuspace/Studio.php:93`

```php
$this->store->rows('SELECT id FROM #__gp_social_content WHERE '.$this->scope().' AND id='.$id.$lock,1);
```

### SQL01571 · Geniuspace\Studio::deleteContent

`components/com_joomcck/site/library/php/geniuspace/Studio.php:98`

```php
// Preserve the historical content; DELETE removes public visibility and API listing.
        $this->store->run('UPDATE #__gp_social_content SET published=0,access=0,revision=revision+1 WHERE '.$this->scope().' AND id='.$id.' AND revision='.$expected);
```

### SQL01572 · Geniuspace\Studio::collection

`components/com_joomcck/site/library/php/geniuspace/Studio.php:105`

```php
$this->store->rows('SELECT id FROM #__users WHERE id='.$this->user.$lock,1);
```

### SQL01573 · Geniuspace\Studio::collection

`components/com_joomcck/site/library/php/geniuspace/Studio.php:105`

```php
$this->store->run('DELETE FROM #__gp_social_collections WHERE '.$where.' AND record_id='.$record);
```

### SQL01574 · Geniuspace\Studio::collection

`components/com_joomcck/site/library/php/geniuspace/Studio.php:106`

```php
foreach($this->store->rows('SELECT record_id FROM #__gp_social_collections WHERE '.$where.' ORDER BY ctime DESC',1000) as $r)if($item=$this->repository->record($this->company,(int)$r['record_id']))$out[]=['id'=>$item['id'],'title'=>$item['title'],'url'=>$item['url']];
```

### SQL01575 · Geniuspace\StudioRouter::handle

`components/com_joomcck/site/library/php/geniuspace/StudioRouter.php:27`

```php
$s->store->run('DELETE FROM #__gp_social_definitions WHERE scope='.$s->store->q($s->company['slug'])." AND kind='api_key' AND id=".(int)$m[1]);
```

### SQL01631 · Geniuspace\DesignActions::destinations

`components/com_joomcck/site/library/php/geniuspace/DesignActions.php:10`

```php
foreach(ProductAccess::store()->rows('SELECT id FROM #__js_res_sections ORDER BY id',1000)as$row){$section=\ItemsStore::getSection((int)$row['id']);
```

### SQL01632 · Geniuspace\DesignPermissions::category

`components/com_joomcck/site/library/php/geniuspace/DesignPermissions.php:19`

```php
$c=$s->rows('SELECT c.id,c.asset_id,a.name FROM #__js_res_categories c LEFT JOIN #__assets a ON a.id=c.asset_id WHERE c.id='.$category.' AND c.section_id='.$section,1)[0]??null;
```

### SQL01633 · Geniuspace\DesignPermissions::record

`components/com_joomcck/site/library/php/geniuspace/DesignPermissions.php:27`

```php
// All actual placements must be authorized. A cross-universe parent/child relation grants no permission.
        $categories=ProductAccess::store()->rows('SELECT DISTINCT catid FROM #__js_res_record_category WHERE record_id='.(int)$record['id'],1000);
```

### SQL01634 · Geniuspace\DesignPermissions::delegation

`components/com_joomcck/site/library/php/geniuspace/DesignPermissions.php:34`

```php
$c=$s->rows('SELECT c.asset_id,a.name,a.rules FROM #__js_res_categories c JOIN #__assets a ON a.id=c.asset_id WHERE c.id='.$category.' AND c.section_id='.$section,1)[0]??null;
```

### SQL01635 · Geniuspace\DesignPermissions::delegation

`components/com_joomcck/site/library/php/geniuspace/DesignPermissions.php:36`

```php
return ['groups'=>$s->rows('SELECT id,title FROM #__usergroups ORDER BY lft',1000),'rules'=>(json_decode($c['rules'],true)?:[])[self::ACTION]??[],'asset'=>(int)$c['asset_id']];
```

### SQL01636 · Geniuspace\DesignPermissions::delegate

`components/com_joomcck/site/library/php/geniuspace/DesignPermissions.php:44`

```php
$row=$s->rows('SELECT rules FROM #__assets WHERE id='.$before['asset'].' FOR UPDATE',1)[0];
```

### SQL01637 · Geniuspace\DesignPermissions::delegate

`components/com_joomcck/site/library/php/geniuspace/DesignPermissions.php:46`

```php
$s->run('UPDATE #__assets SET rules='.$s->q(Seo::json($rules)).' WHERE id='.$before['asset']);
```

### SQL01638 · Geniuspace\DesignData::category

`components/com_joomcck/site/library/php/geniuspace/DesignData.php:44`

```php
return (int)(ProductAccess::store()->rows('SELECT catid FROM #__js_res_record_category WHERE record_id='.(int)($ctx['record']??$ctx['target']).' ORDER BY catid',1)[0]['catid']??0);
```

### SQL01660 · Geniuspace\DesignForms::fields

`components/com_joomcck/site/library/php/geniuspace/DesignForms.php:20`

```php
return self::$fieldCache[$type]??=ProductAccess::store()->rows('SELECT id,label,field_type,params FROM #__js_res_fields WHERE type_id='.$type.' AND published=1 ORDER BY ordering,id',2000);
```

### SQL01661 · Geniuspace\DesignForms::createRepeat

`components/com_joomcck/site/library/php/geniuspace/DesignForms.php:60`

```php
if((int)$s->db->setQuery('SELECT GET_LOCK('.$s->q($lock).',2)')->loadResult()!==1)throw new \DomainException('Création déjà en cours.',409);
```

### SQL01662 · Geniuspace\DesignForms::createRepeat

`components/com_joomcck/site/library/php/geniuspace/DesignForms.php:61`

```php
$existing=$s->rows('SELECT id,params FROM #__js_res_fields WHERE type_id='.$type.' AND alias='.$s->q($alias),1)[0]??null;
```

### SQL01663 · Geniuspace\DesignForms::createRepeat

`components/com_joomcck/site/library/php/geniuspace/DesignForms.php:67`

```php
$ordering=(int)$s->rows('SELECT COALESCE(MAX(ordering),0)+1 n FROM #__js_res_fields WHERE type_id='.$type,1)[0]['n'];
```

### SQL01664 · Geniuspace\DesignForms::createRepeat

`components/com_joomcck/site/library/php/geniuspace/DesignForms.php:71`

```php
$s->db->setQuery('SELECT RELEASE_LOCK('.$s->q($lock).')')->loadResult();
```

### SQL01668 · Geniuspace\DesignLibrary::all

`components/com_joomcck/site/library/php/geniuspace/DesignLibrary.php:20`

```php
$types=[
            'mission-board'=>['Missions & dossiers collaboratifs','Parcours & travail','route',['label'=>$p('Libellé','text','Ouvrir mes missions'),'record'=>['label'=>'Fiche source native','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0],'field'=>['label'=>'Champ parcours natif (facultatif)','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0]]],
            'professional-work'=>['Tableau de travail professionnel','Parcours & travail','briefcase',['label'=>$p('Libellé','text','Mon tableau professionnel')]],
            'ai-progress'=>['IA · sources et progrès mesurés','Parcours & travail','brain',['label'=>$p('Libellé','text','Sources et progrès de l’IA')]],
            'native'=>['Région native conservée','Système','lock',['slot'=>['label'=>'Région','type'=>'select','options'=>['community','directory','sidebar','discovery','company','record','form',...array_keys(DesignInline::parts())],'default'=>'community'],'contentTitle'=>$p('Titre du module'),'intro'=>$p('Texte de présentation'),'image'=>$p('Illustration','url'),'alt'=>$p('Texte alternatif'),'buttonLabel'=>$p('Texte du bouton'),'buttonUrl'=>$p('Destination du bouton','url')]],
            'section'=>['Section / grille imbriquée','Structure','table-cells',[]],
            'heading'=>['Titre éditorial','Éditorial','heading',['title'=>$p('Titre'),'level'=>['label'=>'Niveau','type'=>'select','options'=>['h2','h3','h4'],'default'=>'h2']]],
            'text'=>['Texte et sources','Éditorial','align-left',['text'=>$p('Texte')]],
            'button'=>['Bouton avec icône','Navigation','arrow-right',['label'=>$p('Libellé','text','Découvrir'),'url'=>$p('Lien','url'),'icon'=>$p('Icône','icon','arrow-right'),'variant'=>['label'=>'Style','type'=>'select','options'=>['solid','outline','soft','link'],'default'=>'solid'],'shape'=>['label'=>'Forme','type'=>'select','options'=>['rounded','pill','square'],'default'=>'rounded'],'target'=>['label'=>'Ouverture','type'=>'select','options'=>['same','blank'],'default'=>'same']]],
            'hero'=>['Bannière immersive','Éditorial','image',$common+['layout'=>['label'=>'Disposition','type'=>'select','options'=>['cover','split'],'default'=>'cover']]],
            'image'=>['Image avec légende','Médias','image',['image'=>$p('Image','url'),'alt'=>$p('Texte alternatif'),'text'=>$p('Légende'),'url'=>$p('Lien','url')]],
            'gallery'=>['Galerie & lightbox','Médias','images',$common],
            'slider'=>['Studio de scènes à calques','Scènes & animations','sliders',$common+['height'=>['label'=>'Hauteur','type'=>'number','min'=>160,'max'=>1000,'default'=>400],'interval'=>['label'=>'Intervalle (secondes)','type'=>'number','min'=>3,'max'=>60,'default'=>7],'autoplay'=>$p('Défilement automatique','boolean',false),'transition'=>['label'=>'Transition','type'=>'select','options'=>DesignDocument::EFFECTS,'default'=>'fade']]],
            'carousel'=>['Carrousel de cartes','Scènes & animations','layer-group',$common+['autoplay'=>$p('Défilement automatique','boolean',false),'interval'=>['label'=>'Intervalle (secondes)','type'=>'number','min'=>3,'max'=>60,'default'=>7]]],
            'newsticker'=>['Fil d’actualité animé','Scènes & animations','bolt',$common+['speed'=>['label'=>'Durée de traversée (secondes)','type'=>'number','min'=>15,'max'=>180,'default'=>40],'direction'=>['label'=>'Sens','type'=>'select','options'=>['left','right'],'default'=>'left'],'source'=>['label'=>'Source','type'=>'select','options'=>['manual','universe','company'],'default'=>'manual']]],
            'video'=>['Lecteur vidéo & chapitres','Médias','video',['title'=>$p('Titre'),'url'=>$p('Vidéo','url'),'poster'=>$p('Affiche','url'),'text'=>$p('Description'),'transcript'=>['label'=>'Transcription','type'=>'text','max'=>24000,'default'=>''],'duration'=>$p('Durée ISO 8601'),'date'=>$p('Date de publication ISO'),'chapters'=>['label'=>'Chapitres','type'=>'chapters','default'=>[]],'record'=>['label'=>'Fiche liée (commentaires et avis)','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0]]],
            'audio'=>['Lecteur audio & transcription','Médias','microphone',['title'=>$p('Titre'),'url'=>$p('Audio','url'),'text'=>$p('Description'),'transcript'=>['label'=>'Transcription','type'=>'text','max'=>24000,'default'=>''],'chapters'=>['label'=>'Chapitres','type'=>'chapters','default'=>[]],'record'=>['label'=>'Fiche liée','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0]]],
            'joomla-module'=>['Modules Joomla · position native','Contenus natifs','cubes',['module'=>['label'=>'Instance native (0 = position)','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0],'position'=>['label'=>'Position native de modules','type'=>'text','default'=>''],'showTitle'=>['label'=>'Afficher le titre natif','type'=>'boolean','default'=>true]]],
            'form-step'=>['Étape du formulaire','Formulaires','list-ol',['intro'=>$p('Introduction')]],
            'form-field'=>['Champ du formulaire natif','Formulaires','pen',['field'=>['label'=>'Champ natif','type'=>'number','min'=>1,'max'=>2147483647,'default'=>1],'audience'=>['label'=>'Affichage selon le format','type'=>'select','options'=>['profile','always'],'default'=>'profile']]],
            'comments'=>['Échanges & commentaires natifs','Participation','comments',['record'=>['label'=>'Fiche (0 = courante)','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0],'limit'=>['label'=>'Extraits','type'=>'number','min'=>1,'max'=>6,'default'=>3]]],
            'reply-zone'=>['Répondre · zone contextuelle','Participation','reply',['record'=>['label'=>'Fiche (0 = courante)','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0],'label'=>$p('Invitation','text','Rejoindre la conversation')]],
            'ad-slot'=>['Partenaire & publicité identifiée','Monétisation','bullhorn',['position'=>$p('Emplacement des publicités payées (vide = création manuelle)','text','',64),'title'=>$p('Titre'),'text'=>$p('Présentation'),'url'=>$p('Destination','url'),'image'=>$p('Image','url'),'alt'=>$p('Texte alternatif'),'label'=>$p('Mention','text','Partenaire · contenu sponsorisé'),'icon'=>$p('Icône','icon','bullhorn')]],
            'native-player'=>['Lecteur média natif · cinéma & audio','Médias','circle-play',['record'=>['label'=>'Fiche source (0 = page courante)','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0],'field'=>['label'=>'Champ vidéo ou audio','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0]]],
            'universe-tools'=>['Outils interactifs de l’univers','Contenus natifs','screwdriver-wrench',[]],
            'mega-menu'=>['Méga-menu de cet univers','Navigation','table-cells',['title'=>$p('Nom du menu'),'items'=>$common['items']]],
            'menu'=>['Menu à icônes','Navigation','bars',['title'=>$p('Nom du menu'),'items'=>$common['items']]],
            'record-grid'=>['Publications de l’univers','Contenus natifs','newspaper',['title'=>$p('Titre'),'limit'=>['label'=>'Nombre de fiches','type'=>'number','min'=>1,'max'=>24,'default'=>6],'format'=>['label'=>'Présentation','type'=>'select','options'=>['cards','list','carousel'],'default'=>'cards']]],
            'related'=>['Relations parent / enfant','Contenus natifs','diagram-project',['title'=>$p('Titre'),'record'=>['label'=>'Fiche source (0 = page courante)','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0]]],
            'field'=>['Champ natif au choix','Contenus natifs','puzzle-piece',['record'=>['label'=>'Fiche source (0 = page courante)','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0],'field'=>['label'=>'Champ','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0]]],
            'faq'=>['Questions fréquentes','Éditorial','circle-question',['title'=>$p('Titre'),'items'=>$common['items']]],
            'accordion'=>['Accordéon','Structure','list',['title'=>$p('Titre'),'items'=>$common['items']]],
            'tabs'=>['Onglets','Structure','folder',['title'=>$p('Titre'),'items'=>$common['items']]],
            'separator'=>['Séparateur','Structure','minus',[]],
            'spacer'=>['Espace réglable','Structure','arrows-up-down',['height'=>['label'=>'Hauteur','type'=>'number','min'=>0,'max'=>240,'default'=>24]]],
            'source-list'=>['Bibliographie & sources','Éditorial','book',['title'=>$p('Titre'),'items'=>$common['items']]],
            'search'=>['Recherche contextuelle','Navigation','magnifying-glass',['label'=>$p('Libellé','text','Rechercher dans cet univers')]],
            'review'=>['Avis & notes de la fiche','Contenus natifs','star',['record'=>['label'=>'Fiche source','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0],'field'=>['label'=>'Champ de notes','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0]]],
        ];
```

### SQL01669 · Geniuspace\DesignLibrary::all

`components/com_joomcck/site/library/php/geniuspace/DesignLibrary.php:64`

```php
$extras=[
            'share'=>['Partage & lien permanent','Navigation','share-nodes',['label'=>$p('Libellé','text','Partager cette page')]],
            'publication'=>['Publier · formulaires natifs','Contenus natifs','pen',['label'=>$p('Libellé','text','Partager une publication'),'section'=>['label'=>'Section (0 = univers courant)','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0],'type'=>['label'=>'Type (0 = tous les formats de cette section)','type'=>'number','min'=>0,'max'=>2147483647,'default'=>0]]],
            'icon'=>['Icône & libellé','Éditorial','icons',['icon'=>$p('Icône','icon','star'),'text'=>$p('Libellé')]],
            'code'=>['Bloc de code','Éditorial','code',['text'=>['label'=>'Code affiché, jamais exécuté','type'=>'text','max'=>24000,'default'=>''],'language'=>$p('Langage','text','text')]],
            'alert'=>['Information & alerte','Éditorial','circle-info',['title'=>$p('Titre'),'text'=>$p('Texte'),'tone'=>['label'=>'Ton','type'=>'select','options'=>['info','success','warning','danger'],'default'=>'info']]],
            'quote'=>['Citation & attribution','Éditorial','quote-left',['text'=>$p('Citation'),'name'=>$p('Auteur'),'url'=>$p('Source','url')]],
            'list'=>['Liste à icônes','Éditorial','list-check',['items'=>$common['items']]],
            'description-list'=>['Liste de définitions','Éditorial','list',['items'=>$common['items']]],
            'popover'=>['Encart dépliable','Structure','circle-plus',['title'=>$p('Libellé','text','En savoir plus'),'text'=>$p('Contenu')]],
            'back-top'=>['Retour en haut','Navigation','arrow-up',['label'=>$p('Libellé','text','Retour en haut de cette page'),'url'=>$p('Ancre','url','#forum7-top')]],
            'overlay'=>['Carte illustrée en superposition','Éditorial','layer-group',$common],
            'social'=>['Liens sociaux','Navigation','share-nodes',['items'=>$common['items']]],
        ];
```

### SQL01670 · Geniuspace\DesignLibrary::all

`components/com_joomcck/site/library/php/geniuspace/DesignLibrary.php:80`

```php
if(SchemaHealth::has('design_libraries'))foreach(ProductAccess::store()->rows('SELECT manifest FROM #__gp_social_design_libraries WHERE enabled=1 ORDER BY library_key',100)as$row){try{$manifest=json_decode($row['manifest'],true,32,JSON_THROW_ON_ERROR);
```

### SQL01671 · Geniuspace\DesignLibrary::import

`components/com_joomcck/site/library/php/geniuspace/DesignLibrary.php:101`

```php
$s->run('INSERT INTO #__gp_social_design_libraries (library_key,manifest,enabled,actor_id,mtime) VALUES ('.$s->q($key).','.$s->q(Seo::json($clean)).',1,'.(int)ProductAccess::user()->id.','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE manifest=VALUES(manifest),enabled=1,actor_id=VALUES(actor_id),mtime=VALUES(mtime)');
```

### SQL01672 · Geniuspace\DesignApi::media

`components/com_joomcck/site/library/php/geniuspace/DesignApi.php:57`

```php
foreach(ProductAccess::store()->rows("SELECT id,record_id,field_id,filename FROM #__js_res_files WHERE saved=1 AND ext IN ('jpg','jpeg','png','webp','avif') ORDER BY id DESC",120)as$r){
            $public=$gate->record((int)$r['record_id']);
```

### SQL01713 · Geniuspace\DesignStudio::page

`components/com_joomcck/site/library/php/geniuspace/DesignStudio.php:13`

```php
$style=ProductAccess::store()->rows("SELECT params FROM #__template_styles WHERE client_id=0 AND template='geniuspace' ORDER BY home DESC,id",1)[0]??null;
```

### SQL01758 · Geniuspace\DesignDocument::clean

`components/com_joomcck/site/library/php/geniuspace/DesignDocument.php:60`

```php
if(!isset($def['properties'][$key])||!in_array($def['properties'][$key]['type'],['text','url','items','number','boolean','color','icon','select'],true)||!is_array($binding))throw new \InvalidArgumentException('Propriété non raccordable.');
```

### SQL01759 · Geniuspace\DesignDocument::settings

`components/com_joomcck/site/library/php/geniuspace/DesignDocument.php:97`

```php
'text'=>self::text($value,(int)($p['max']??4000)),'url'=>self::url($value),'icon'=>self::icon($value),'color'=>self::color($value),'number'=>self::number($value,$p['min']??0,$p['max']??100000),'boolean'=>is_bool($value)?$value:throw new \InvalidArgumentException('Booléen requis.'),'items'=>self::items($value,(int)($p['max']??60)),'chapters'=>self::chapters($value),'textlist'=>self::textList($value),'chart'=>VisualChart::parse((array)$value),'select'=>in_array($value,$p['options'],true)?$value:throw new \InvalidArgumentException('Choix invalide.'),default=>throw new \InvalidArgumentException('Propriété inconnue.')};
```

### SQL01760 · Geniuspace\DesignLayouts::authorize

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:20`

```php
$tp=json_decode(ProductAccess::store()->rows('SELECT params FROM #__js_res_types WHERE id='.(int)$r['type_id'],1)[0]['params']??'{}',true)?:[];
```

### SQL01761 · Geniuspace\DesignLayouts::contexts

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:38`

```php
foreach(ProductAccess::store()->rows('SELECT id FROM #__js_res_record ORDER BY id DESC',100)as$row){try{$c=self::authorize('record',0,(int)$row['id']);
```

### SQL01762 · Geniuspace\DesignLayouts::read

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:44`

```php
$row=$s->rows('SELECT * FROM #__gp_social_design_layouts WHERE layout_key='.$s->q($c['key']),1)[0]??[];
```

### SQL01763 · Geniuspace\DesignLayouts::read

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:46`

```php
$history=$s->rows('SELECT revision,actor_id,state,ctime,checksum FROM #__gp_social_design_revisions WHERE layout_key='.$s->q($c['key']).' ORDER BY revision DESC',40);
```

### SQL01764 · Geniuspace\DesignLayouts::fields

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:52`

```php
foreach(ProductAccess::store()->rows('SELECT id,label,field_type FROM #__js_res_fields WHERE type_id='.(int)$r['type_id'].' AND published=1 ORDER BY ordering,id',1000)as$f)if(ExtendedFields::publicField((object)$r,(int)$f['id']))$out[]=$f;
```

### SQL01765 · Geniuspace\DesignLayouts::write

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:61`

```php
$s->run('INSERT IGNORE INTO #__gp_social_design_layouts (layout_key,scope,target_id,section_id,revision,published_revision,draft,published,actor_id,mtime) VALUES ('.$key.','.$s->q($scope).','.$c['target'].','.$c['section'].',0,0,'.$default.",'',".$actor.','.$now.')');
```

### SQL01766 · Geniuspace\DesignLayouts::write

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:62`

```php
$r=$s->rows('SELECT * FROM #__gp_social_design_layouts WHERE layout_key='.$key.' FOR UPDATE',1)[0];
```

### SQL01767 · Geniuspace\DesignLayouts::write

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:64`

```php
$old=$s->rows('SELECT payload FROM #__gp_social_design_revisions WHERE layout_key='.$key.' AND revision='.$rev,1)[0]??null;
```

### SQL01768 · Geniuspace\DesignLayouts::write

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:66`

```php
$s->run('UPDATE #__gp_social_design_layouts SET revision='.$revision.',published_revision='.$pub.',draft='.$s->q($json).',published='.$s->q($published).',actor_id='.$actor.',mtime='.$now.' WHERE layout_key='.$key);
```

### SQL01769 · Geniuspace\DesignLayouts::write

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:67`

```php
$s->run('INSERT INTO #__gp_social_design_revisions (layout_key,revision,actor_id,state,payload,checksum,ctime) VALUES ('.$key.','.$revision.','.$actor.','.$s->q($action).','.$s->q($json).','.$s->q(hash('sha256',$json)).','.$now.')');
```

### SQL01770 · Geniuspace\DesignLayouts::published

`components/com_joomcck/site/library/php/geniuspace/DesignLayouts.php:75`

```php
$r=$s->rows('SELECT published FROM #__gp_social_design_layouts WHERE layout_key='.$s->q($key)." AND (published_revision>0 OR published='__native__')",1)[0]??null;
```
