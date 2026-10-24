# Shell, univers et ergonomie

Vues forum/blog, navigation, toolbar, univers, lecture, responsive et progression.

Version 5.27.7. Présence dans le code ; ne prouve pas la configuration ou l’utilisation en production.

35 classes ; 312 fonctions/méthodes nommées ; 112 expressions SQL repérées dans ce domaine du noyau Geniuspace.

## Geniuspace\AppDock

`components/com_joomcck/site/library/php/geniuspace/AppDock.php:6`
- L8–14 · public · `function assets(): void`
- L16–54 · public · `function render(int $hub,object $params): string`

## Geniuspace\ForumCategories

`components/com_joomcck/site/library/php/geniuspace/ForumCategories.php:6`
- L16–17 · public · `function title(array|object $category): string`
- L18–19 · public · `function description(array|object $category): string`
- L20–21 · public · `function params(array|object $c): \Joomla\Registry\Registry`
- L22–33 · public · `function image(array|object $category,int $width=64): string`
- L34–35 · public · `function alt(array|object $category): string`
- L36–41 · public · `function dimensions(string $url,int $fallback=64): array`
- L42–49 · public · `function corpus(array $sectionIds=[]): array`

## Geniuspace\ForumProvisioner

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:6`
- L10–14 · private · `function __construct()`
- L15–16 · public · `function categories(): array`
- L17–18 · public · `function preview(): array`
- L19–20 · public · `function manifest(): ?array`
- L21–25 · private · `function defaults(string $file,string $xpath='./fields'): array`
- L26–27 · private · `function table(string $name,array $data): object`
- L28–40 · private · `function field(int $type,string $alias,string $label,string $kind,array $options=[],bool $filter=false): array`
- L41–48 · private · `function menu(string $title,string $alias,string $role,int $section,int $parent=1,int $cat=0): int`
- L49–54 · private · `function config(string $view,string $name,array $slots): void`
- L55–62 · private · `function cleanup(): void`
- L63–64 · public · `function install(array $options=[]): array`
- L66–83 · private · `function mediaFields(array $map): array`
- L85–88 · public · `function completeFormats(): ?array`
- L89–148 · private · `function formatFields(array $map): array`
- L149–202 · private · `function apply(array $options): array`

## Geniuspace\ForumRoutes

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:6`
- L8–17 · public · `function section(int $id): ?array`
- L18–31 · public · `function menu(int $section,string $role,int $category=0): int`
- L32–37 · private · `function categoryChain(int $section,int $category): array`
- L38–45 · private · `function categoryMenu(int $section,int $category): int`
- L46–55 · public · `function preprocess(array &$q): bool`
- L56–72 · public · `function build(array &$q): ?array`
- L73–100 · public · `function parse(array $segments): ?array`
- L101–106 · public · `function slug(array $r): string`
- L107–111 · private · `function categorySlug(array $c): string`
- L112–113 · private · `function routeRecord(int $id): ?array`
- L114–118 · public · `function recordUrl(array|object $record): ?string`
- L119–123 · public · `function categoryUrl(int $section,int $category=0): string`
- L124–127 · public · `function searchUrl(int $section): string`

## Geniuspace\MultiBindings

`components/com_joomcck/site/library/php/geniuspace/MultiBindings.php:4`
- L6–10 · public · `function keys(object $p,string $slot): array`

## NexusAbsolu

`components/com_joomcck/site/library/php/geniuspace/NexusAbsolu.php:4`
- L6–11 · public · `function assets(): void`
- L13–22 · public · `function material(int $section): array`
- L23–32 · public · `function value(array $projection,$params,string $slot): mixed`
- L33–34 · private · `function text(mixed $value): string`
- L35–47 · public · `function ticker(int $section,$params,array $items=[]): string`
- L48–60 · public · `function slider(int $section,$params,array $items=[]): string`
- L61–64 · private · `function publicCategories(int $section): array`
- L66–69 · public · `function regions(array $items,$params,string $position,string $slot=''): string`
- L71–77 · public · `function paramsFor(object $item,$params): \Joomla\Registry\Registry`
- L79–89 · public · `function additional(object $item,$params): string`
- L91–100 · public · `function publications(int $section): string`
- L102–117 · public · `function article(string $body,object $item,$params): array`
- L118–121 · public · `function widget(object $item,$params,string $slot,array $skip=[]): string`
- L122–126 · public · `function profileLabel(object $item): string`
- L128–132 · public · `function radarPreview(int $section): string`
- L133–143 · public · `function radar(int $section): string`

## NexusAurora

`components/com_joomcck/site/library/php/geniuspace/NexusAurora.php:8`
- L11–11 · public · `function e($v): string`
- L12–12 · public · `function txt($v): string`
- L13–13 · public · `function cfg($p, string $name, string $fallback=''): string`
- L14–21 · public · `function field($item,$p,string $slot): string`
- L22–22 · public · `function value($item,$p,string $slot): string`
- L23–23 · public · `function html($item,$p,string $slot): string`
- L24–31 · public · `function assets(): void`
- L32–38 · public · `function href($item): string`
- L39–46 · public · `function safeImage(string $rendered): string`
- L47–47 · public · `function cover($item,$p,string $slot): string`
- L48–55 · public · `function tags($item,$p,string $slot): array`
- L56–60 · public · `function color(string $tag): string`
- L61–64 · public · `function date($v): string`
- L65–69 · public · `function ld(array $data): void`
- L70–73 · public · `function canonical($item): string`
- L74–81 · public · `function formUrl(int $section,int $type,int $parent=0,array $extra=[]): string`
- L82–121 · public · `function companyLinks(string $html, string $approvedJson, string $self=''): string`

## NexusConnect

`components/com_joomcck/site/library/php/geniuspace/NexusConnect.php:6`
- L8–15 · public · `function assets(): void`
- L16–23 · public · `function icon(string $name): string`
- L24–34 · public · `function field($item,string $key): ?object`
- L35–49 · public · `function groups($item,$params): array`
- L50–63 · public · `function block(array $group): string`
- L64–68 · public · `function region($item,$params,string $position): string`
- L69–73 · public · `function slot($item,$params,string $key,string $title,string $layout='stack'): string`
- L74–79 · public · `function nav($params): string`
- L80–85 · public · `function fieldLink($item,$params,string $slot): string`

## Geniuspace\NexusDiscovery

`components/com_joomcck/site/library/php/geniuspace/NexusDiscovery.php:5`
- L7–27 · public · `function catalogue(int $section,int $after,int $limit): array`
- L28–80 · public · `function openapi(): array`

## NexusDisplay

`components/com_joomcck/site/library/php/geniuspace/NexusDisplay.php:7`
- L9–12 · public · `function enabled($p, string $key, bool $default = true): bool`
- L13–16 · public · `function label($p, string $key, string $default): string`
- L17–31 · public · `function extras($item, $p, string $region): string`
- L32–46 · public · `function outline(string $html, int $record): array`

## NexusFilters

`components/com_joomcck/site/library/php/geniuspace/NexusFilters.php:4`
- L6–10 · public · `function filled($value): bool`
- L11–15 · public · `function control($field, $section, bool $module=false): string`
- L16–20 · public · `function condition($field, $section, &$query)`
- L22–42 · public · `function values($field,int $section,string $term='',int $candidateLimit=0): \Generator`
- L43–48 · public · `function suggestions($field,int $section,string $term=''): array`
- L49–59 · public · `function genericControl($field): string`
- L61–83 · public · `function genericCondition($field,$section): ?array`
- L84–98 · public · `function strict(array $value,$db,string $key,int $section): ?string`
- L99–106 · public · `function range(array $value,$db,string $key,int $section): ?string`

## NexusForumApp

`components/com_joomcck/site/library/php/geniuspace/NexusForumApp.php:6`
- L10–17 · private · `function head(array $head): array`
- L19–37 · public · `function social(string $url,string $type,string $image='',string $alt=''): void`
- L38–48 · public · `function listParams(int $section): \Joomla\Registry\Registry`
- L49–72 · public · `function isArticle(object $r,$p=null): bool`
- L73–81 · public · `function allowed(object $r,int $hub,?\Geniuspace\NativeAccess $access=null): bool`
- L82–93 · public · `function article(int $hub,$p,array $items=[]): ?object`
- L94–99 · public · `function articleUrl(object $r,int $hub): string`
- L101–136 · private · `function native(string $kind,int $hub,?object $record=null): string`
- L137–156 · private · `function fragment(string $html,bool $active,array &$used,string $prefix): string`
- L157–168 · private · `function index(object $view,int $hub,object $params): string`
- L169–204 · public · `function render(object $view,string $body,string $kind): string`

## NexusForumEight

`components/com_joomcck/site/library/php/geniuspace/NexusForumEight.php:4`
- L6–11 · public · `function author(object $item,$p): string`
- L12–19 · public · `function appearance(object $item,$p): array`
- L20–25 · public · `function metrics(object $item): string`
- L26–29 · public · `function format(object $item,$p): string`
- L30–37 · public · `function extra(object $item,$p,array $skip=[]): string`
- L38–45 · public · `function card(object $item,$p,string $html): string`
- L47–65 · public · `function reading(string $html,int $record,string $partner=''): string`

## NexusForumIndex

`components/com_joomcck/site/library/php/geniuspace/NexusForumIndex.php:5`
- L7–14 · public · `function categories($view,$p): array`
- L16–29 · public · `function activity(int $section): array`
- L30–37 · public · `function summary($category,array $activity): array`
- L38–48 · public · `function row($category,$p,array $activity,int $depth=0): string`

## NexusForumSeven

`components/com_joomcck/site/library/php/geniuspace/NexusForumSeven.php:7`
- L9–16 · public · `function assets(): void`
- L18–22 · public · `function categories(int $section): array`
- L23–26 · private · `function cloneCategories(array $roots): array`
- L27–35 · private · `function readCategories(int $section): array`
- L36–37 · public · `function flat(array $roots): array`
- L38–41 · public · `function image(object $c,int $width=64): string`
- L42–48 · public · `function imageHtml(object $c,int $width=64,string $class='squircle',bool $eager=false): string`
- L49–70 · public · `function metadata(int $section,array $categories,?object $category,array $items): void`
- L71–72 · public · `function focused(): bool`
- L74–79 · public · `function focusUrl(string $url,bool $enabled): string`
- L80–83 · public · `function modeUrl(string $url,string $mode): string`
- L84–93 · public · `function header($p,int $section,string $home,string $focus='',string $mode='forum'): string`
- L94–100 · private · `function inbox(): string`
- L101–111 · public · `function rail(array $roots,$p,array $items,string $home,int $active=0): string`
- L112–121 · public · `function directory(array $roots,int $active=0,string $id='forum7-directory'): string`
- L122–127 · public · `function ticker(array $items,$p): string`
- L128–129 · public · `function contentType(object $i,$p): string`
- L130–142 · public · `function sidebar(array $items,$p,int $section): string`
- L144–145 · public · `function narration(): string`

## NexusHub

`components/com_joomcck/site/library/php/geniuspace/NexusHub.php:6`
- L8–15 · public · `function comments(array $items): array`
- L16–33 · public · `function card($i,$p,array $comments): string`
- L34–39 · public · `function categories(array $categories,int $depth=0): string`

## NexusMagazine

`components/com_joomcck/site/library/php/geniuspace/NexusMagazine.php:5`
- L7–13 · public · `function assets(): void`
- L14–19 · public · `function image($item,$p): string`
- L20–24 · public · `function tags($item,$p): string`
- L25–29 · public · `function extra($item,$p): string`
- L30–34 · public · `function edit($item,$p): string`
- L35–47 · public · `function card($item,$p,bool $featured=false): string`

## NexusMultivers

`components/com_joomcck/site/library/php/geniuspace/NexusMultivers.php:9`
- L11–18 · public · `function assets(): void`
- L19–23 · public · `function avatar(string $name,string $color='#4f46e5',int $size=40): string`
- L24–25 · public · `function field($item,$p,string $slot): ?object`
- L26–30 · public · `function data($item,$p,string $slot,string $kind): ?array`
- L31–35 · public · `function widget($item,$p,string $slot,bool $rich=true): string`
- L36–40 · public · `function categories($view,$p): array`
- L41–50 · public · `function appearance($category,$p): array`
- L51–57 · public · `function tags(array $categories,$p,string $home,int $active=0): string`
- L58–63 · public · `function regionFields(array $items,$p,string $position,string $slot=''): array`
- L64–74 · public · `function ticker(array $items,$p): string`
- L75–93 · public · `function header($p,int $section,string $home): string`
- L94–107 · public · `function rail(array $categories,$p,array $items,string $home): string`
- L108–117 · public · `function links($item,$p,string $slot,string $caption): string`
- L118–148 · public · `function card($i,$p,array $comments): string`
- L149–155 · public · `function results(string $query): string`
- L156–161 · public · `function promoted(array $items,$p): string`
- L162–182 · public · `function composer($p,string $submit): string`
- L184–197 · public · `function sidebar(array $items,$p): string`
- L198–216 · public · `function controls($item,$p): string`

## NexusOutline

`components/com_joomcck/site/library/php/geniuspace/NexusOutline.php:6`
- L8–43 · public · `function decorate(string $html,int $record,$params,string $kind='record'): string`

## NexusPlatform

`components/com_joomcck/site/library/php/geniuspace/NexusPlatform.php:6`
- L8–8 · public · `function e($v): string`
- L9–9 · public · `function config($p, string $key, string $default=''): string`
- L10–10 · public · `function field($i,$p,string $slot): string`
- L11–11 · public · `function value($i,$p,string $slot): string`
- L12–21 · public · `function raw($i,$p,string $slot): string`
- L23–23 · public · `function widget($i,$p,string $slot): string`
- L24–24 · public · `function html($i,$p,string $slot): string`
- L25–36 · public · `function t(string $key): string`
- L37–43 · public · `function assets(): void`
- L44–44 · public · `function publicRecord($i): bool`
- L45–45 · public · `function indexableRecord($i): bool`
- L46–53 · public · `function expiry($i,$p): ?int`
- L54–54 · public · `function activeJob($i,$p): bool`
- L55–61 · public · `function money(string $v,string $currency): string`
- L62–66 · public · `function sameSite(string $url): string`
- L67–67 · public · `function recordUrl($i): string`
- L68–68 · public · `function ld(array $data): void`
- L69–73 · public · `function itemList(array $items): void`
- L74–109 · public · `function metadata($i,$p,string $kind,string $body,array $comments=[]): void`
- L110–123 · public · `function quiz($i,$p): array`

## NexusShell

`components/com_joomcck/site/library/php/geniuspace/NexusShell.php:7`
- L9–13 · public · `function scope(object $view): ?array`
- L14–33 · public · `function record(object $view,string $body,array $scope): string`
- L34–45 · public · `function collection(object $view,string $body,array $scope): string`

## NexusSite

`components/com_joomcck/site/library/php/geniuspace/NexusSite.php:4`
- L8–15 · public · `function active(): bool`
- L16–26 · public · `function context(string $selection, string $kind=''): void`
- L27–27 · public · `function region(string $position): string`
- L28–34 · public · `function begin(string $mode, string $selection, string $kind=''): string`
- L35–42 · public · `function end(string $mode): string`
- L43–47 · public · `function record(string $region): string`

## NexusSuite

`components/com_joomcck/site/library/php/geniuspace/NexusSuite.php:10`
- L14–17 · public · `function e($value): string`
- L19–22 · public · `function plain($html): string`
- L24–33 · public · `function safeHtml($html): string`
- L35–52 · public · `function commentHtml($html): string`
- L54–68 · public · `function url(string $url, bool $route = false): string`
- L70–73 · public · `function href(string $url): string`
- L75–82 · public · `function locale(): string`
- L84–95 · public · `function t(string $key): string`
- L97–106 · public · `function assets(): void`
- L108–113 · public · `function iso($date): string`
- L116–121 · public · `function readableRecord($record): bool`
- L123–130 · public · `function publicListRecord($record): bool`
- L132–139 · public · `function publicComment($comment): bool`
- L141–163 · public · `function publicCommentNode($comment, string $canonical): ?array`
- L165–204 · public · `function threadTree(array $roots): array`
- L206–229 · public · `function commentGraph(array $comments, string $canonical): array`
- L231–234 · public · `function jsonLd(array $node): string`
- L236–246 · public · `function localizedAlternates(string $input): array`
- L248–332 · public · `function u(string $phrase): string`

## Geniuspace\ShellBindings

`components/com_joomcck/site/library/php/geniuspace/ShellBindings.php:6`
- L9–15 · public · `function config(): array`
- L16–20 · public · `function scope(int $section): ?array`
- L21–25 · public · `function sections(int $hub,string $role=''): array`
- L26–33 · public · `function specialized(object $item): ?array`
- L34–44 · public · `function save(array $data): array`
- L45–49 · public · `function recent(int $hub,int $limit=12): array`
- L50–58 · public · `function panel(int $hub): string`

## Geniuspace\Ergonomics

`components/com_joomcck/site/library/php/geniuspace/Ergonomics.php:6`
- L8–15 · public · `function card(int $id): string`
- L16–22 · public · `function assets(): void`
- L23–44 · public · `function universe(int $hub,int $category,string $title,string $discovery,string $community,string $highlights): string`

## Geniuspace\ReadingHighlights

`components/com_joomcck/site/library/php/geniuspace/ReadingHighlights.php:6`
- L8–28 · public · `function render(object $item,string $summary): string`

## Geniuspace\UniverseDock

`components/com_joomcck/site/library/php/geniuspace/UniverseDock.php:6`
- L8–31 · public · `function wrap(string $legacy,int $hub,object $params): string`

## Geniuspace\UniverseWidgets

`components/com_joomcck/site/library/php/geniuspace/UniverseWidgets.php:6`
- L21–21 · public · `function kinds(): array`
- L22–31 · public · `function cards(string $key,int $section,object $params,string $instance='main'): string`
- L32–45 · public · `function body(string $kind,int $section,object $params): string`
- L46–51 · public · `function destination(string $format,int $section,object $p,string $label): string`
- L52–55 · public · `function spoiler(): string`
- L56–75 · public · `function definitions(): array`
- L76–80 · public · `function label(string $kind): string`
- L81–85 · public · `function fieldText(string $value): string`
- L86–97 · public · `function calculator(string $kind,array $data=[]): string`

## Geniuspace\UniverseDiscovery

`components/com_joomcck/site/library/php/geniuspace/UniverseDiscovery.php:6`
- L8–8 · private · `function e(mixed $v): string`
- L9–13 · private · `function photo(array $rows,int $n,string $fallback,string $alt,string $classes): string`
- L14–17 · private · `function title(array $rows,int $n,string $fallback): string`
- L18–19 · private · `function action(string $tool,string $label,string $color='bg-slate-900 text-white'): string`
- L20–30 · public · `function render(array $c,array $rows): string`
- L31–34 · private · `function herbarium(array $r,string $img): string`
- L35–38 · private · `function manga(array $r,string $img): string`
- L39–42 · private · `function kitchen(array $r,string $img): string`
- L43–46 · private · `function sports(array $r,string $img): string`
- L47–50 · private · `function science(array $r,string $img): string`

## Geniuspace\UniverseSetup

`components/com_joomcck/site/library/php/geniuspace/UniverseSetup.php:6`
- L9–17 · private · `function alias(string $alias): string`
- L18–19 · private · `function siblings(int $parent): array`
- L20–29 · private · `function categoryBinding(array $menu,int $section,int $component): int`
- L31–38 · private · `function existingCategory(array $rows,array $menus,int $section,int $component,string $alias): ?array`
- L39–49 · private · `function menu(int $section,int $category,int $parent,int $component,string $title,string $alias,array $siblings): int`
- L50–88 · public · `function install(?array $forum=null): array`

## Geniuspace\UniverseExperience

`components/com_joomcck/site/library/php/geniuspace/UniverseExperience.php:6`
- L9–9 · private · `function e(mixed $v): string`
- L12–29 · public · `function rows(array $c,bool $root=false): array`
- L31–31 · private · `function title(?array $p,string $fallback): string`
- L32–32 · private · `function field(?array $p,array $keys,string $fallback=''): string`
- L33–33 · private · `function photo(?array $p,string $fallback): string`
- L34–35 · private · `function link(?array $p,string $text): string`
- L36–37 · private · `function copy(?array $p,string $fallback=''): string`
- L39–52 · public · `function featured(array $c): string`
- L54–98 · public · `function stage(array $c,array $items,object $params): string`
- L100–101 · private · `function salary(float $value,string $currency,bool $centile=false): string`
- L103–111 · public · `function sidebar(int $section,int $category,object $params): string`
- L114–118 · private · `function publication(int $hub,string $role,string $format,object $params,string $label): string`
- L119–120 · public · `function creatorButton(string $class=''): string`
- L122–128 · public · `function creatorPortal(int $hub,object $params): string`

## Geniuspace\UniverseBlueprint

`components/com_joomcck/site/library/php/geniuspace/UniverseBlueprint.php:6`
- L9–16 · public · `function select(int $section,?object $record=null): int`
- L17–18 · public · `function selected(int $section): int`
- L19–22 · public · `function catalogue(): array`
- L23–27 · public · `function assets(): void`
- L28–32 · public · `function icon(string $name): string`
- L33–40 · public · `function rootKey(object $category,array $flat): ?string`
- L41–48 · public · `function context(int $section,int $category=0): array`
- L49–50 · public · `function link(int $section,object $category,string $mode='forum'): string`
- L51–52 · public · `function categoryIcon(object $category): string`
- L53–59 · public · `function navigation(int $section,int $category): string`
- L60–64 · public · `function label(object $category): string`
- L65–65 · public · `function hero(array $c): string`
- L66–66 · public · `function stage(array $c,array $items,object $params): string`
- L67–67 · public · `function sidebar(int $section,int $category,object $params): string`
- L68–72 · private · `function feature(array $items,object $p): string`
- L73–76 · private · `function links(array $items): string`
- L77–80 · private · `function nativeRegion(array $items,object $p,string $key): string`

## Geniuspace\UniverseComposition

`components/com_joomcck/site/library/php/geniuspace/UniverseComposition.php:6`
- L8–12 · public · `function contract(string $key): array`
- L13–13 · private · `function esc(mixed $value): string`
- L14–18 · public · `function asset(string $url): string`
- L19–25 · public · `function image(string $url,string $alt,string $classes='',bool $priority=false): string`
- L26–37 · public · `function hero(array $c): string`
- L38–44 · public · `function projections(array $c,array $items): array`
- L45–51 · public · `function value(?array $p,array $aliases,string $fallback='À renseigner'): string`
- L52–56 · public · `function cover(?array $p,string $fallback): string`
- L57–97 · public · `function stage(array $c,array $items,object $params): string`
- L98–103 · public · `function compensation(?array $p): ?array`
- L104–108 · public · `function editorial(?array $p): string`
- L109–112 · public · `function rating(?array $p): string`
- L113–113 · public · `function comments(?array $p): string`
- L114–117 · private · `function stageImages(string $key): array`
- L118–121 · private · `function discovery(array $c,array $rows,object $p): string`
- L122–128 · public · `function sidebar(int $section,int $category,object $p): string`

## Geniuspace\UniverseRatings

`components/com_joomcck/site/library/php/geniuspace/UniverseRatings.php:6`
- L8–16 · public · `function profile(int $record): array`
- L17–17 · public · `function scale(int $record): int`
- L18–18 · public · `function convert(float $score,int $record): float`
- L19–20 · public · `function format(float $score,int $record): string`
- L23–41 · public · `function metrics(?array $projection,string $universe): string`
- L42–46 · public · `function weighted(array $scores,array $weights,float $fallback): float`
- L48–53 · public · `function expression(array $criteria,array $weights,Store $s): string`

## Geniuspace\UniverseAnnouncements

`components/com_joomcck/site/library/php/geniuspace/UniverseAnnouncements.php:6`
- L8–13 · public · `function canManage(int $section): bool`
- L14–28 · public · `function action(array $data): array`
- L29–34 · public · `function items(int $section,int $category): array`
- L35–40 · public · `function tickerItems(int $section): array`
- L41–44 · public · `function ticker(int $section): string`
- L45–49 · public · `function live(int $category,string $section): array`
- L50–56 · public · `function choices(int $category,string $query): array`
- L57–60 · public · `function render(int $section,int $category): string`

## SQL et données

Les expressions suivantes sont du PHP source ; les variables ne sont pas évaluées. Pour un EXPLAIN réel, reconstruire une requête paramétrée sur une copie de test.

### SQL00928 · TOPLEVEL

`components/com_joomcck/site/library/php/geniuspace/ForumCategories.php:10`

```php
$section=$s->rows('SELECT published,access,params FROM #__js_res_sections WHERE id='.(int)$c['section_id'],1)[0]??null;
```

### SQL00929 · TOPLEVEL

`components/com_joomcck/site/library/php/geniuspace/ForumCategories.php:14`

```php
$c=$s->rows('SELECT * FROM #__js_res_categories WHERE id='.$parent,1)[0]??null;
```

### SQL00930 · Geniuspace\ForumCategories::image

`components/com_joomcck/site/library/php/geniuspace/ForumCategories.php:30`

```php
$c=$s->rows('SELECT * FROM #__js_res_categories WHERE id='.$parent,1)[0]??null;
```

### SQL00931 · Geniuspace\ForumCategories::corpus

`components/com_joomcck/site/library/php/geniuspace/ForumCategories.php:45`

```php
foreach($s->db->setQuery('SELECT * FROM #__js_res_categories WHERE published=1'.($sectionIds?' AND section_id IN('.implode(',',$sectionIds).')':'').' ORDER BY lft,id')->loadAssocList()as$c){
            if(!ForumRoutes::section((int)$c['section_id'])||!self::public($c))continue;
```

### SQL00949 · Geniuspace\ForumProvisioner::manifest

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:20`

```php
$p=json_decode($s->rows("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'",1)[0]['params']??'{}',true);
```

### SQL00950 · Geniuspace\ForumProvisioner::field

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:34`

```php
if($kind==='select'&&$filter)$p['params']['template_filter']='nexus_choices.php';
```

### SQL00951 · Geniuspace\ForumProvisioner::field

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:37`

```php
$ordering=(int)$this->db->setQuery('SELECT COALESCE(MAX(ordering),0)+1 FROM #__js_res_fields WHERE type_id='.$type)->loadResult();
```

### SQL00952 · Geniuspace\ForumProvisioner::menu

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:43`

```php
$component=(int)$this->db->setQuery("SELECT extension_id FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult();
```

### SQL00953 · Geniuspace\ForumProvisioner::menu

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:44`

```php
$style=(int)$this->db->setQuery("SELECT id FROM #__template_styles WHERE client_id=0 AND template='geniuspace' ORDER BY id")->loadResult();
```

### SQL00954 · Geniuspace\ForumProvisioner::cleanup

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:59`

```php
foreach(['fields','sections','types']as$table)if($this->created[$table])$this->db->setQuery('DELETE FROM #__js_res_'.$table.' WHERE id IN('.implode(',',$this->created[$table]).')')->execute();
```

### SQL00955 · Geniuspace\ForumProvisioner::cleanup

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:60`

```php
if(!empty($this->created['menu_type']))$this->db->setQuery("DELETE FROM #__menu_types WHERE menutype='nexusforum7'")->execute();
```

### SQL00956 · Geniuspace\ForumProvisioner::mediaFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:72`

```php
$f=$this->db->setQuery('SELECT id,`key` FROM #__js_res_fields WHERE type_id='.$type.' AND alias='.$this->db->quote(str_replace('_','-',$alias)).' ORDER BY id')->loadAssoc();
```

### SQL00957 · Geniuspace\ForumProvisioner::mediaFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:81`

```php
$params=json_decode($this->db->setQuery("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult(),true,64,JSON_THROW_ON_ERROR);
```

### SQL00958 · Geniuspace\ForumProvisioner::mediaFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:81`

```php
$this->db->setQuery("UPDATE #__extensions SET params=".$this->db->quote(Seo::json($params))." WHERE element='com_joomcck' AND type='component'")->execute();
```

### SQL00959 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:111`

```php
$definitions=[
            'character_name'=>['Nom du personnage','text',[]],
            'biography'=>['Histoire et biographie','textarea',[]],
            'abilities'=>['Capacités, limites et progression','textarea',[]],
            'city'=>['Ville ou quartier','text',[]],
            'country'=>['Pays du dossier','text',[]],
            'purchase'=>['Prix d’acquisition annoncé','digits',['decimals_num'=>2]],
            'works'=>['Budget de travaux estimé','digits',['decimals_num'=>2]],
            'fees'=>['Frais annexes estimés','digits',['decimals_num'=>2]],
            'aid'=>['Aides possibles et conditions à vérifier','textarea',[]],
            'mission'=>['Objectif et parcours à reprendre','gpparcours',[]],
            'review'=>['Avis, notes & verdicts','gpreview',[]],
            'timed_media'=>['Chapitres, durée & transcription','gptimedmedia',[]],
            'teamspace'=>['Équipe, joueurs & rendez-vous','gpteamspace',[]],
            'spoiler'=>['Avertissement de révélations','gpspoiler',[]],
            'series'=>['Évolution de vos chiffres','gpseries',[]],
            'base_salary'=>['Rémunération fixe','digits',['decimals_num'=>2]],
            'bonus_salary'=>['Part variable','digits',['decimals_num'=>2]],
            'equity_salary'=>['Actions & participation','digits',['decimals_num'=>2]],
            'currency'=>['Devise','select',['values'=>"EUR\nUSD\nUSDC\nGBP\nJPY\nCHF"]],
            'salary_period'=>['Période de rémunération','select',['values'=>"Annuel\nMensuel\nHoraire"]],
            'finance_proof'=>['Document justificatif privé','uploads',['file_formats'=>'pdf, png, jpg, jpeg, webp','nexus_upload_guard'=>1,'nexus_upload_limit_mb'=>10,'subfolder'=>'','max_size'=>10240,'max_count'=>5]],
            'coalition'=>['Coalition d’achat & offres privées','gpopportunity',['default_value'=>Seo::json(['kind'=>'buying-pool'])]],
            'opportunity'=>['Raid & playtest','gpopportunity',['default_value'=>Seo::json(['kind'=>'playtest'])]],
            'factcheck'=>['Enquête & prime documentée','gpopportunity',['default_value'=>Seo::json(['kind'=>'bounty','registration'=>false,'accept_proposals'=>true])]],
            'partner'=>['Partenaire du dossier','gpopportunity',['default_value'=>Seo::json(['kind'=>'partner'])]],
            'consultation'=>['Rendez-vous expert','gpopportunity',['default_value'=>Seo::json(['kind'=>'consultation'])]],
            'intent'=>['Offre inter-univers','gpopportunity',['default_value'=>Seo::json(['kind'=>'intent'])]],
            'sponsorship'=>['Sponsoring d’équipe','gpopportunity',['default_value'=>Seo::json(['kind'=>'sponsor','registration'=>false,'accept_proposals'=>true])]],
        ];
```

### SQL00960 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:123`

```php
$f=$this->db->setQuery('SELECT id,`key`,params FROM #__js_res_fields WHERE type_id='.$type.' AND alias='.$this->db->quote(str_replace('_','-',$alias)).' ORDER BY id')->loadAssoc();
```

### SQL00961 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:124`

```php
$p=json_decode($this->db->setQuery('SELECT params FROM #__js_res_fields WHERE id='.(int)$f['id'])->loadResult(),true);
```

### SQL00962 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:124`

```php
$this->db->setQuery('UPDATE #__js_res_fields SET params='.$this->db->quote(Seo::json($p)).' WHERE id='.(int)$f['id'])->execute();
```

### SQL00963 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:129`

```php
$vp=json_decode($this->db->setQuery('SELECT params FROM #__js_res_fields WHERE id='.$videoId)->loadResult(),true);
```

### SQL00964 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:129`

```php
$this->db->setQuery('UPDATE #__js_res_fields SET params='.$this->db->quote(Seo::json($vp)).' WHERE id='.$videoId)->execute();
```

### SQL00965 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:131`

```php
$p=json_decode($this->db->setQuery('SELECT params FROM #__js_res_fields WHERE id='.$field)->loadResult(),true);
```

### SQL00966 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:132`

```php
$this->db->setQuery('UPDATE #__js_res_fields SET params='.$this->db->quote(Seo::json($p)).' WHERE id='.$field)->execute();
```

### SQL00967 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:140`

```php
$existing=$this->db->setQuery('SELECT id FROM #__js_res_categories WHERE section_id='.(int)$map['section'].' AND alias='.$this->db->quote($alias))->loadResult();
```

### SQL00968 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:141`

```php
$imageSource=$this->db->setQuery('SELECT image,params FROM #__js_res_categories WHERE id='.(int)($map['categories'][$source]??0))->loadAssoc()?:[];
```

### SQL00969 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:145`

```php
$existing=$this->db->setQuery('SELECT id FROM #__menu WHERE client_id=0 AND parent_id='.(int)$map['menus']['hub']." AND alias='publier'")->loadResult();
```

### SQL00970 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:146`

```php
$this->db->setQuery('UPDATE #__menu SET link='.$this->db->quote($link).',params='.$this->db->quote(Seo::json($p)).' WHERE id='.$id)->execute();
```

### SQL00971 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:147`

```php
$p=json_decode($this->db->setQuery("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult(),true,64,JSON_THROW_ON_ERROR);
```

### SQL00972 · Geniuspace\ForumProvisioner::formatFields

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:147`

```php
$this->db->setQuery("UPDATE #__extensions SET params=".$this->db->quote(Seo::json($p))." WHERE element='com_joomcck' AND type='component'")->execute();
```

### SQL00973 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:154`

```php
if((int)$db->setQuery("SELECT GET_LOCK('nexus-forum7-production',0)")->loadResult()!==1)throw new \DomainException('Installation déjà en cours.',409);
```

### SQL00974 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:157`

```php
if(!$db->setQuery('SELECT id FROM #__js_res_sections WHERE id='.(int)$m['section'])->loadResult())throw new \DomainException('La section du forum installé a été supprimée. Consultez son manifeste avant de réparer.',409);
```

### SQL00975 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:160`

```php
foreach([$hub,$thread]as$alias)if($db->setQuery('SELECT id FROM #__menu WHERE parent_id=1 AND client_id=0 AND alias='.$db->quote($alias))->loadResult())throw new \DomainException('Le lien /'.$alias.' existe déjà. Choisissez un autre alias ou raccordez ce menu au forum.',409);
```

### SQL00976 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:161`

```php
if($db->setQuery("SELECT id FROM #__menu_types WHERE menutype='nexusforum7'")->loadResult())throw new \DomainException('Le menu nexusforum7 existe sans manifeste. Installation arrêtée pour préserver les données.',409);
```

### SQL00977 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:163`

```php
$target=$db->setQuery('SELECT id,published,params FROM #__js_res_sections WHERE id='.$section)->loadAssoc();
```

### SQL00978 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:163`

```php
$tp=$db->setQuery('SELECT id FROM #__js_res_types WHERE id='.$type.' AND published=1')->loadResult();
```

### SQL00979 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:175`

```php
$definitions=[['content_type','Nature du contenu','select',['values'=>"discussion\narticle"],true],['body','Contenu','html'],['excerpt','Introduction','textarea'],['author','Signature publique','text'],['author_bio','Auteur, expertise et méthode','textarea'],['cover','Couverture de l’article','html'],['cover_alt','Description de la couverture','text'],['topic','Thématique','text',[],true],['skills','Compétences','gpskills',[],true],['source','Sources et révision','gpproof'],['answer','Réponse directe','textarea'],['faq','Questions fréquentes','html'],['summary','Synthèse éditoriale','textarea'],['news','Alimenter le bandeau d’actualité','select',['values'=>"0\n1"],true],['promoted','Mise en avant éditoriale','text'],['bounty','Contribution ou prime documentée','html'],['widgets','Données contextuelles datées','gpmarket'],['ticker','Bandeau de données datées','gpmarket'],['audio','Atelier audio','gpaudio'],['code','Sandbox de code','gpcode'],['room','Salon audio','gproom'],['market','Données du réseau','gpmarket'],['guild','Guilde & réseau','gphub'],['media','Vidéo, fichier et transcription','gpmedia'],['feed_detail','Contenu structuré du flux','html'],['context','Repères de la discussion','html'],['sidebar','Bloc latéral libre','gpelement'],['design','Éléments de design supplémentaires','gpelement']];
```

### SQL00980 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:181`

```php
$fp=json_decode($db->setQuery('SELECT params FROM #__js_res_fields WHERE id='.$fields['related']['id'])->loadResult(),true);
```

### SQL00981 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:182`

```php
$fp=json_decode($db->setQuery('SELECT params FROM #__js_res_fields WHERE id='.$fields[$alias]['id'])->loadResult(),true);
```

### SQL00982 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:183`

```php
$covers=$db->setQuery('SELECT id FROM #__js_res_fields WHERE type_id='.$target['type'].' AND published=1 AND alias IN ('.$db->quote('logo').','.$db->quote('cover').','.$db->quote('image').') ORDER BY ordering')->loadColumn();
```

### SQL00983 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:183`

```php
$excerpts=$db->setQuery('SELECT id FROM #__js_res_fields WHERE type_id='.$target['type'].' AND published=1 AND alias IN ('.$db->quote('excerpt').','.$db->quote('intro').','.$db->quote('description').') ORDER BY ordering')->loadColumn();
```

### SQL00984 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:184`

```php
$fp=json_decode($db->setQuery('SELECT params FROM #__js_res_fields WHERE id='.$fields[$role]['id'])->loadResult(),true);
```

### SQL00985 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:199`

```php
$params=json_decode($db->setQuery("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult(),true,64,JSON_THROW_ON_ERROR);
```

### SQL00986 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:199`

```php
$db->setQuery("UPDATE #__extensions SET params=".$db->quote(Seo::json($params))." WHERE element='com_joomcck' AND type='component'")->execute();
```

### SQL00987 · Geniuspace\ForumProvisioner::apply

`components/com_joomcck/site/library/php/geniuspace/ForumProvisioner.php:201`

```php
$db->setQuery("SELECT RELEASE_LOCK('nexus-forum7-production')")->loadResult();
```

### SQL00998 · Geniuspace\ForumRoutes::section

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:12`

```php
$r=ProductAccess::store()->rows('SELECT id,published,access,params FROM #__js_res_sections WHERE id='.$id,1)[0]??null;
```

### SQL00999 · Geniuspace\ForumRoutes::menu

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:23`

```php
foreach(ProductAccess::store()->db->setQuery("SELECT id,params,link FROM #__menu WHERE published=1 AND client_id=0 AND type='component' AND access IN (".implode(',',$levels?:[0]).') ORDER BY id')->loadAssocList()as$m){
            $p=new \Joomla\Registry\Registry($m['params']);
```

### SQL01000 · Geniuspace\ForumRoutes::categoryChain

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:35`

```php
$rows=$s->rows('SELECT id,parent_id,alias,section_id FROM #__js_res_categories WHERE section_id='.$section,10001);
```

### SQL01001 · Geniuspace\ForumRoutes::categoryChain

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:36`

```php
$c=$index!==null?($index[$category]??null):$s->rows('SELECT id,parent_id,alias,section_id FROM #__js_res_categories WHERE id='.$category.' AND section_id='.$section,1)[0]??null;
```

### SQL01002 · Geniuspace\ForumRoutes::parse

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:85`

```php
$rows=$s->rows('SELECT id,alias,section_id FROM #__js_res_record WHERE section_id='.$section.' AND alias='.$s->q($slug),2);
```

### SQL01003 · Geniuspace\ForumRoutes::parse

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:86`

```php
$r=$s->rows('SELECT id,alias,section_id FROM #__js_res_record WHERE section_id='.$section.' AND id='.(int)$m[1],1)[0]??null;
```

### SQL01004 · Geniuspace\ForumRoutes::parse

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:92`

```php
$rows=$s->rows('SELECT id,alias,section_id FROM #__js_res_categories WHERE section_id='.$section.' AND parent_id='.$parent.' AND alias='.$s->q((string)$part).' AND published=1',2);
```

### SQL01005 · Geniuspace\ForumRoutes::parse

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:93`

```php
$row=$s->rows('SELECT id,alias,section_id FROM #__js_res_categories WHERE section_id='.$section.' AND parent_id='.$parent.' AND id='.(int)$match[1].' AND published=1',1)[0]??null;
```

### SQL01006 · Geniuspace\ForumRoutes::parse

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:98`

```php
$rows=$s->rows('SELECT id,alias,section_id FROM #__js_res_categories WHERE section_id='.$section.' AND alias='.$s->q($slug).' AND published=1',2);
```

### SQL01007 · Geniuspace\ForumRoutes::parse

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:98`

```php
$r=$s->rows('SELECT id,alias,section_id FROM #__js_res_categories WHERE section_id='.$section.' AND id='.(int)$m[1].' AND published=1',1)[0]??null;
```

### SQL01008 · Geniuspace\ForumRoutes::slug

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:104`

```php
$rows=ReadMemo::get('record-alias-count:'.(int)$r['section_id'].':'.$slug,static fn()=>$s->rows('SELECT id FROM #__js_res_record WHERE section_id='.(int)$r['section_id'].' AND alias='.$s->q($slug),2));
```

### SQL01009 · Geniuspace\ForumRoutes::categorySlug

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:109`

```php
$rows=$s->rows('SELECT id FROM #__js_res_categories WHERE section_id='.(int)$c['section_id'].' AND alias='.$s->q($alias),2);
```

### SQL01010 · Geniuspace\ForumRoutes::routeRecord

`components/com_joomcck/site/library/php/geniuspace/ForumRoutes.php:113`

```php
return ReadMemo::get('native-raw-record:'.$id,static fn()=>ProductAccess::store()->rows('SELECT * FROM #__js_res_record WHERE id='.$id,1)[0]??null);
```

### SQL01171 · NexusAbsolu::material

`components/com_joomcck/site/library/php/geniuspace/NexusAbsolu.php:17`

```php
foreach($s->rows('SELECT id FROM #__js_res_record WHERE published=1 AND hidden=0 AND section_id IN ('.implode(',',$sections).') ORDER BY mtime DESC,id DESC',120)as$row){
            $p=$access->record((int)$row['id']);
```

### SQL01172 · NexusAbsolu::publications

`components/com_joomcck/site/library/php/geniuspace/NexusAbsolu.php:95`

```php
$rows=\Geniuspace\ProductAccess::store()->rows('SELECT id,title,type_id,section_id,published,hidden,archive,access,pubtime,extime FROM #__js_res_record WHERE section_id IN ('.implode(',',$sections).') AND user_id='.(int)$user->id.' ORDER BY id DESC',12);
```

### SQL01173 · NexusAbsolu::radar

`components/com_joomcck/site/library/php/geniuspace/NexusAbsolu.php:136`

```php
foreach($store->rows('SELECT id,ctime,categories FROM #__js_res_record WHERE section_id='.$section.' AND published=1 AND hidden=0 AND ctime>='.$store->q($prior).' ORDER BY id DESC',500)as$r){if(!$access->record((int)$r['id']))continue;
```

### SQL01186 · Geniuspace\NexusDiscovery::catalogue

`components/com_joomcck/site/library/php/geniuspace/NexusDiscovery.php:11`

```php
$candidates=$store->rows('SELECT id FROM #__js_res_record WHERE published=1 AND hidden=0 AND archive=0 AND id>'.$after.$where.' ORDER BY id ASC',min(200,$limit*4));
```

### SQL01187 · Geniuspace\NexusDiscovery::catalogue

`components/com_joomcck/site/library/php/geniuspace/NexusDiscovery.php:24`

```php
$more=(bool)$store->rows('SELECT id FROM #__js_res_record WHERE published=1 AND hidden=0 AND archive=0 AND id>'.$cursor.$where.' ORDER BY id ASC',1);
```

### SQL01188 · NexusFilters::values

`components/com_joomcck/site/library/php/geniuspace/NexusFilters.php:27`

```php
$sql='SELECT v.record_id,v.field_id,v.field_value FROM #__js_res_record_values v INNER JOIN #__js_res_record r ON r.id=v.record_id WHERE v.section_id='.$section.' AND v.field_key='.$db->quote($field->key).' AND r.published=1 AND r.hidden=0 AND r.archive=0';
```

### SQL01189 · NexusFilters::genericCondition

`components/com_joomcck/site/library/php/geniuspace/NexusFilters.php:82`

```php
return $db->setQuery('SELECT id FROM #__js_res_record WHERE section_id='.(int)$section->id.' AND ('.implode(' OR ',$clauses).')')->loadColumn();
```

### SQL01190 · NexusFilters::strict

`components/com_joomcck/site/library/php/geniuspace/NexusFilters.php:97`

```php
return 'SELECT DISTINCT record_id FROM #__js_res_record_values WHERE section_id = '.$section.' AND field_key = '.$db->quote($key).' AND '.implode(' AND ',$conditions);
```

### SQL01191 · NexusFilters::range

`components/com_joomcck/site/library/php/geniuspace/NexusFilters.php:105`

```php
return 'SELECT DISTINCT record_id FROM #__js_res_record_values WHERE section_id = '.$section.' AND field_key = '.$db->quote($key)." AND field_value REGEXP '^-?[0-9]+([.][0-9]+)?$' AND ".implode(' AND ',$where);
```

### SQL01192 · NexusForumApp::listParams

`components/com_joomcck/site/library/php/geniuspace/NexusForumApp.php:42`

```php
$s=\Geniuspace\ProductAccess::store()->rows('SELECT params FROM #__js_res_sections WHERE id='.$section,1)[0]??[];
```

### SQL01193 · NexusForumApp::isArticle

`components/com_joomcck/site/library/php/geniuspace/NexusForumApp.php:53`

```php
$raw=$types[$id]??=\Geniuspace\ProductAccess::store()->rows('SELECT params FROM #__js_res_types WHERE id='.$id,1)[0]??[];
```

### SQL01194 · NexusForumApp::isArticle

`components/com_joomcck/site/library/php/geniuspace/NexusForumApp.php:59`

```php
$f=\Geniuspace\ReadMemo::get('content-nature-field:'.(int)$r->type_id.':'.$key,static fn()=>\Geniuspace\ProductAccess::store()->rows("SELECT id FROM #__js_res_fields WHERE published=1 AND type_id=".(int)$r->type_id." AND (`key`=".\Geniuspace\ProductAccess::store()->q($key)." OR alias IN ('content-type','content_type')) ORDER BY (`key`=".\Geniuspace\ProductAccess::store()->q($key).") DESC",1)[0]??[]);
```

### SQL01195 · NexusForumApp::isArticle

`components/com_joomcck/site/library/php/geniuspace/NexusForumApp.php:66`

```php
if($rp===null&&!empty($r->id))$rp=\Geniuspace\ProductAccess::store()->rows('SELECT params FROM #__js_res_record WHERE id='.(int)$r->id,1)[0]['params']??'{}';
```

### SQL01196 · NexusForumApp::article

`components/com_joomcck/site/library/php/geniuspace/NexusForumApp.php:90`

```php
// Explicit section connections retain their own native content types.
        foreach($s->rows('SELECT id,section_id,type_id,fields FROM #__js_res_record WHERE published=1 AND hidden=0'.$where.' ORDER BY ctime DESC,id DESC',200)as$r)
            if(self::allowed((object)$r,$hub))return(object)$r;
```

### SQL01197 · NexusForumEight::appearance

`components/com_joomcck/site/library/php/geniuspace/NexusForumEight.php:15`

```php
$rows=$s->rows('SELECT a.title,a.alias,a.params FROM #__js_res_categories c INNER JOIN #__js_res_categories a ON a.section_id=c.section_id AND a.lft<=c.lft AND a.rgt>=c.rgt WHERE c.id IN ('.implode(',',array_map('intval',$ids)).') ORDER BY a.level DESC,a.id',30);
```

### SQL01198 · NexusForumEight::metrics

`components/com_joomcck/site/library/php/geniuspace/NexusForumEight.php:23`

```php
if(\Geniuspace\SchemaHealth::has('resume_items'))$saved=(int)($s->rows('SELECT COUNT(DISTINCT user_id) AS n FROM #__gp_social_resume_items WHERE record_id='.(int)$item->id,1)[0]['n']??0);
```

### SQL01199 · NexusForumIndex::activity

`components/com_joomcck/site/library/php/geniuspace/NexusForumIndex.php:21`

```php
$raw=$store->rows('SELECT * FROM #__js_res_record WHERE section_id='.$section.' AND published=1 AND hidden=0 AND archive=0 ORDER BY mtime DESC,id DESC',100);
```

### SQL01200 · NexusForumIndex::activity

`components/com_joomcck/site/library/php/geniuspace/NexusForumIndex.php:25`

```php
foreach($store->rows('SELECT record_id,catid FROM #__js_res_record_category WHERE record_id IN ('.$ids.')',10000) as $r)$cats[(int)$r['catid']][(int)$r['record_id']]=$docs[(int)$r['record_id']];
```

### SQL01201 · NexusForumIndex::activity

`components/com_joomcck/site/library/php/geniuspace/NexusForumIndex.php:26`

```php
foreach($store->rows('SELECT record_id,COUNT(*) AS total FROM #__js_res_comments WHERE published=1 AND hide=0 AND private=0 AND access IN ('.implode(',',$levels).') AND record_id IN ('.$ids.') GROUP BY record_id',100) as $r)$replies[(int)$r['record_id']]=(int)$r['total'];
```

### SQL01202 · NexusForumSeven::readCategories

`components/com_joomcck/site/library/php/geniuspace/NexusForumSeven.php:30`

```php
$raw=$s->db->setQuery('SELECT * FROM #__js_res_categories WHERE section_id='.$section.' ORDER BY lft,id')->loadAssocList();
```

### SQL01203 · NexusForumSeven::ticker

`components/com_joomcck/site/library/php/geniuspace/NexusForumSeven.php:124`

```php
$f=$store->rows('SELECT id FROM #__js_res_fields WHERE `key`='.$store->q($key),1)[0]??null;
```

### SQL01204 · NexusForumSeven::ticker

`components/com_joomcck/site/library/php/geniuspace/NexusForumSeven.php:124`

```php
if($f)foreach($store->rows('SELECT id,fields FROM #__js_res_record WHERE published=1 AND hidden=0 AND section_id='.$section.' ORDER BY mtime DESC,id DESC',150)as$r){$v=json_decode($r['fields'],true)?:[];
```

### SQL01205 · NexusHub::comments

`components/com_joomcck/site/library/php/geniuspace/NexusHub.php:12`

```php
$rows=$db->setQuery('SELECT * FROM #__js_res_comments WHERE record_id IN ('.implode(',',$ids).') AND published=1 AND hide=0 AND private=0 AND access IN ('.implode(',',$levels).') ORDER BY ctime DESC,id DESC',0,300)->loadObjectList();
```

### SQL01217 · NexusMultivers::controls

`components/com_joomcck/site/library/php/geniuspace/NexusMultivers.php:202`

```php
foreach($public['fields']??[]as$fid=>$f)if(in_array($f['field_type'],['text','textarea','html','select','digits'],true))$choices.='<option value="'.(int)$fid.'">'.NexusSuite::e($f['label']).'</option>';
```

### SQL01224 · NexusPlatform::raw

`components/com_joomcck/site/library/php/geniuspace/NexusPlatform.php:18`

```php
if(!in_array(strtolower((string)$field->type),['text','digits','datetime','select'],true))return self::value($i,$p,$slot);
```

### SQL01230 · NexusSuite::t

`components/com_joomcck/site/library/php/geniuspace/NexusSuite.php:87`

```php
$map = [
            'fr'=>['knowledge'=>'Centre de connaissances','explore'=>'Explorer les sujets','discuss'=>'Discussions','article'=>'Article','guide'=>'Guide','category'=>'Catégories','read'=>'Lire la publication','replies'=>'Réponses','reply'=>'Répondre','edit'=>'Modifier','delete'=>'Supprimer','hide'=>'Masquer','show'=>'Afficher','share'=>'Copier le lien','search'=>'Filtrer les réponses','write'=>'Contribuer à la discussion','post'=>'Publier','related'=>'À découvrir','compare'=>'Comparer','back'=>'Retour','noresults'=>'Aucune publication','new'=>'Nouveau sujet','ago'=>'Publié','attachment'=>'Pièces jointes','private'=>'Privé','pending'=>'En modération','vote'=>'Évaluer','copy'=>'Lien vers cette réponse','all'=>'Toutes les contributions','editorial'=>'Éditorial','formtip'=>'Un titre précis, une réponse vérifiable et des liens utiles aident les lecteurs à trouver votre publication.','home'=>'Accueil','source'=>'Liens cités','cite'=>'Citer cette réponse','perspective'=>'Voir cet auteur','sort'=>'Trier les réponses','first'=>'Réponses les plus anciennes','last'=>'Réponses les plus récentes'],
            'en'=>['knowledge'=>'Knowledge hub','explore'=>'Explore topics','discuss'=>'Discussions','article'=>'Article','guide'=>'Guide','category'=>'Categories','read'=>'Read publication','replies'=>'Replies','reply'=>'Reply','edit'=>'Edit','delete'=>'Delete','hide'=>'Collapse','show'=>'Expand','share'=>'Copy link','search'=>'Filter replies','write'=>'Join the conversation','post'=>'Publish','related'=>'Explore further','compare'=>'Compare','back'=>'Back','noresults'=>'No posts found','new'=>'New topic','ago'=>'Published','attachment'=>'Attachments','private'=>'Private','pending'=>'Pending review','vote'=>'Vote','copy'=>'Copy reply link','all'=>'All contributions','editorial'=>'Editorial','formtip'=>'A precise title, verifiable answer and helpful links make your post easier to discover.','home'=>'Home','source'=>'Referenced links','cite'=>'Quote this reply','perspective'=>'Filter by author','sort'=>'Sort replies','first'=>'Oldest first','last'=>'Newest first'],
            'zh'=>['knowledge'=>'知识中心','explore'=>'探索主题','discuss'=>'讨论','article'=>'文章','guide'=>'指南','category'=>'分类','read'=>'阅读文章','replies'=>'回复','reply'=>'回复','edit'=>'编辑','delete'=>'删除','hide'=>'收起','show'=>'展开','share'=>'复制链接','search'=>'筛选回复','write'=>'参与讨论','post'=>'发布','related'=>'相关内容','compare'=>'比较','back'=>'返回','noresults'=>'暂无内容','new'=>'新主题','ago'=>'发布于','attachment'=>'附件','private'=>'私密','pending'=>'等待审核','vote'=>'投票','copy'=>'复制回复链接','all'=>'全部内容','editorial'=>'专栏','formtip'=>'准确的标题、可信的内容和有用的参考链接可以帮助读者找到您的文章。','home'=>'首页','source'=>'引用链接','cite'=>'引用此回复','perspective'=>'只看该作者','sort'=>'排序','first'=>'最早优先','last'=>'最新优先'],
            'es'=>['knowledge'=>'Centro de conocimiento','explore'=>'Explorar temas','discuss'=>'Debates','article'=>'Artículo','guide'=>'Guía','category'=>'Categorías','read'=>'Leer publicación','replies'=>'Respuestas','reply'=>'Responder','edit'=>'Editar','delete'=>'Eliminar','hide'=>'Ocultar','show'=>'Mostrar','share'=>'Copiar enlace','search'=>'Filtrar respuestas','write'=>'Participar','post'=>'Publicar','related'=>'Explorar más','compare'=>'Comparar','back'=>'Volver','noresults'=>'Sin publicaciones','new'=>'Nuevo tema','ago'=>'Publicado','attachment'=>'Adjuntos','private'=>'Privado','pending'=>'Pendiente','vote'=>'Votar','copy'=>'Copiar enlace','all'=>'Todos','editorial'=>'Editorial','formtip'=>'Un título preciso y referencias útiles facilitan encontrar tu publicación.','home'=>'Inicio','source'=>'Enlaces citados','cite'=>'Citar respuesta','perspective'=>'Ver autor','sort'=>'Ordenar','first'=>'Más antiguos','last'=>'Más recientes'],
            'de'=>['knowledge'=>'Wissenszentrum','explore'=>'Themen entdecken','discuss'=>'Diskussionen','article'=>'Artikel','guide'=>'Ratgeber','category'=>'Kategorien','read'=>'Artikel lesen','replies'=>'Antworten','reply'=>'Antworten','edit'=>'Bearbeiten','delete'=>'Löschen','hide'=>'Einklappen','show'=>'Ausklappen','share'=>'Link kopieren','search'=>'Antworten filtern','write'=>'Mitdiskutieren','post'=>'Veröffentlichen','related'=>'Weitere Themen','compare'=>'Vergleichen','back'=>'Zurück','noresults'=>'Keine Beiträge','new'=>'Neues Thema','ago'=>'Veröffentlicht','attachment'=>'Anhänge','private'=>'Privat','pending'=>'In Prüfung','vote'=>'Bewerten','copy'=>'Antwortlink kopieren','all'=>'Alle Beiträge','editorial'=>'Redaktion','formtip'=>'Präzise Titel und überprüfbare Quellen machen Beiträge auffindbar.','home'=>'Startseite','source'=>'Quellenlinks','cite'=>'Antwort zitieren','perspective'=>'Autor anzeigen','sort'=>'Sortieren','first'=>'Älteste zuerst','last'=>'Neueste zuerst'],
        ];
```

### SQL01231 · NexusSuite::u

`components/com_joomcck/site/library/php/geniuspace/NexusSuite.php:275`

```php
static $translations = [
            "Rechercher dans cette discussion" => ["Search this discussion", "搜索此讨论", "Buscar en este debate", "In dieser Diskussion suchen"],
            "Explorer" => ["Explore", "探索", "Explorar", "Entdecken"],
            "Changer de thème" => ["Change theme", "切换主题", "Cambiar tema", "Design wechseln"],
            "Thème" => ["Theme", "主题", "Tema", "Design"],
            "Fil d’Ariane" => ["Breadcrumb", "面包屑导航", "Ruta de navegación", "Brotkrumennavigation"],
            "À la une" => ["Featured", "精选", "Destacado", "Empfohlen"],
            "vues" => ["views", "次浏览", "visitas", "Aufrufe"],
            "commentaires" => ["comments", "条评论", "comentarios", "Kommentare"],
            "min de lecture" => ["min read", "分钟阅读", "min de lectura", "Min. Lesezeit"],
            "Garder pour plus tard" => ["Save for later", "稍后阅读", "Guardar para después", "Für später speichern"],
            "Copier le lien" => ["Copy link", "复制链接", "Copiar enlace", "Link kopieren"],
            "Explorer les connexions" => ["Explore connections", "探索关联", "Explorar conexiones", "Verbindungen erkunden"],
            "Lecture sans distraction" => ["Distraction-free reading", "专注阅读", "Lectura sin distracciones", "Ungestört lesen"],
            "⌘ K pour naviguer dans la page" => ["⌘ K to navigate this page", "按 ⌘ K 浏览页面", "⌘ K para navegar", "⌘ K zum Navigieren"],
            "Liens explorables sans JavaScript" => ["Links work without JavaScript", "链接无需 JavaScript 也可访问", "Enlaces accesibles sin JavaScript", "Links funktionieren ohne JavaScript"],
            "Illustration de " => ["Illustration of ", "插图：", "Ilustración de ", "Illustration zu "],
            "Navigation dans la discussion" => ["Discussion navigation", "讨论导航", "Navegación del debate", "Diskussionsnavigation"],
            "Sommaire intelligent" => ["Smart outline", "智能目录", "Índice inteligente", "Intelligente Übersicht"],
            "Introduction" => ["Introduction", "导言", "Introducción", "Einführung"],
            "La discussion est disponible dans son intégralité." => ["The complete discussion is available below.", "完整讨论如下。", "El debate completo está disponible abajo.", "Die vollständige Diskussion folgt unten."],
            "Votre progression" => ["Your progress", "阅读进度", "Tu progreso", "Dein Fortschritt"],
            "Progression de lecture" => ["Reading progress", "阅读进度", "Progreso de lectura", "Lesefortschritt"],
            "Lecture" => ["Reading", "阅读", "Lectura", "Lesen"],
            "Le contenu de cette discussion n’est pas encore disponible." => ["This discussion does not have content yet.", "此讨论暂时没有内容。", "Este debate todavía no tiene contenido.", "Diese Diskussion hat noch keinen Inhalt."],
            "Afficher toute la discussion" => ["Show full discussion", "展开完整讨论", "Mostrar debate completo", "Ganze Diskussion anzeigen"],
            "Réduire la discussion" => ["Collapse discussion", "收起讨论", "Contraer debate", "Diskussion einklappen"],
            "Copier un extrait sélectionné" => ["Copy selected excerpt", "复制所选摘录", "Copiar fragmento seleccionado", "Markierten Auszug kopieren"],
            "Boussole de connaissances" => ["Knowledge compass", "知识导航", "Brújula del conocimiento", "Wissenskompass"],
            "Naviguez entre les idées" => ["Connect the ideas", "连接知识观点", "Conecta las ideas", "Ideen verknüpfen"],
            "Parcours contextuels" => ["Contextual paths", "关联路径", "Rutas contextuales", "Kontextpfade"],
            "Les connexions entre discussions apparaîtront ici dès que les champs relationnels seront associés à cette vue." => ["Related content will appear once relationship fields are configured.", "配置关联字段后，这里将显示相关内容。", "El contenido relacionado aparecerá al configurar los campos de relaciones.", "Verknüpfte Inhalte erscheinen, wenn Beziehungsfelder konfiguriert sind."],
            "Bibliothèque du sujet" => ["Topic library", "主题资料库", "Biblioteca del tema", "Themenbibliothek"],
            "Ressources partagées" => ["Shared resources", "共享资源", "Recursos compartidos", "Geteilte Ressourcen"],
            "catégories" => ["categories", "个分类", "categorías", "Kategorien"],
            "Types de ressources" => ["Resource types", "资源类型", "Tipos de recursos", "Ressourcentypen"],
            "Synthèse de la communauté" => ["Community insights", "社区知识总结", "Síntesis comunitaria", "Community-Wissen"],
            "Questions fréquentes" => ["Frequently asked questions", "常见问题", "Preguntas frecuentes", "Häufige Fragen"],
            "Pistes complémentaires" => ["More to explore", "更多内容", "Más por explorar", "Weiterführende Themen"],
            "Autres publications de l’auteur" => ["More from this author", "作者的更多内容", "Más publicaciones del autor", "Weitere Beiträge des Autors"],
            "Contexte de la discussion" => ["Discussion context", "讨论背景", "Contexto del debate", "Diskussionskontext"],
            "Signal de conversation" => ["Conversation insights", "讨论数据", "Señales de conversación", "Diskussionsdaten"],
            "Lectures" => ["Reads", "阅读次数", "Lecturas", "Aufrufe"],
            "Statistiques disponibles pour cette discussion. Il ne s’agit pas d’un comptage en temps réel." => ["Available discussion statistics; these figures are not live.", "以下为讨论统计数据，并非实时数据。", "Estadísticas disponibles; los datos no son en tiempo real.", "Verfügbare Statistiken; keine Echtzeitdaten."],
            "Passer à l’action" => ["Take action", "参与互动", "Pasar a la acción", "Mitmachen"],
            "Enregistrez cette page sur votre appareil et partagez un passage précis avec sa source." => ["Save this page on your device and share an excerpt with its source.", "在设备上保存此页，并连同来源分享摘录。", "Guarda esta página y comparte un extracto con su fuente.", "Speichere diese Seite und teile einen Auszug mit Quellenangabe."],
            "Partager un passage" => ["Share an excerpt", "分享摘录", "Compartir un fragmento", "Auszug teilen"],
            "Raccourcis vers les idées" => ["Knowledge shortcuts", "知识快捷入口", "Accesos al conocimiento", "Wissens-Shortcuts"],
            "Forum indexable par conception." => ["Search-ready by design.", "为搜索引擎设计的论坛。", "Foro diseñado para buscadores.", "Suchmaschinenfreundlich gestaltet."],
            "Les textes, liens et relations restent accessibles sans dépendre de l’interface interactive." => ["Text, links and relationships are accessible without interactive scripts.", "文字、链接和关联内容无需交互脚本即可访问。", "Los textos, enlaces y relaciones son accesibles sin scripts interactivos.", "Texte, Links und Beziehungen bleiben ohne Skripte zugänglich."],
            "Revenir au début" => ["Back to top", "返回顶部", "Volver arriba", "Nach oben"],
            "Naviguer dans cette discussion" => ["Navigate this discussion", "浏览讨论", "Navegar por el debate", "Diskussion navigieren"],
            "Rechercher une section…" => ["Search sections…", "搜索章节…", "Buscar secciones…", "Abschnitte suchen…"],
            "Rechercher parmi les sections" => ["Search sections", "搜索章节", "Buscar secciones", "Abschnitte suchen"],
            "Introduction de la discussion" => ["Discussion introduction", "讨论导言", "Introducción al debate", "Diskussionseinführung"],
            "Connexions et parcours contextuels" => ["Related content and paths", "相关内容与关联路径", "Contenido y rutas relacionados", "Verwandte Inhalte und Pfade"],
            "Recherche locale parmi les sections visibles, sans service externe" => ["Local search of visible sections, no external service", "仅搜索可见章节，无外部服务", "Búsqueda local de secciones visibles", "Lokale Suche in sichtbaren Abschnitten"],
            "Fermer" => ["Close", "关闭", "Cerrar", "Schließen"],
            "Revenir au contexte" => ["Back to the context", "返回上下文", "Volver al contexto", "Zurück zum Kontext"],
            "Prolonger la discussion" => ["Continue exploring", "深入讨论", "Seguir explorando", "Weiter erkunden"],
            "Connexions pertinentes" => ["Relevant connections", "相关链接", "Conexiones relevantes", "Relevante Verbindungen"],
            "Pour aller plus loin" => ["Explore more", "深入探索", "Para saber más", "Mehr entdecken"],
            "Découvrir un autre angle" => ["Explore another perspective", "探索其他角度", "Explorar otra perspectiva", "Andere Perspektive entdecken"],
            "Fichiers" => ["Files", "文件", "Archivos", "Dateien"],
            "Documents" => ["Documents", "文档", "Documentos", "Dokumente"],
            "Liens" => ["Links", "链接", "Enlaces", "Links"],
            "Galerie" => ["Gallery", "图库", "Galería", "Galerie"],
            "Discussion introuvable." => ["Discussion not found.", "找不到讨论。", "Debate no encontrado.", "Diskussion nicht gefunden."],
            "Discussion et échanges de la communauté." => ["Community discussion and exchange.", "社区讨论与交流。", "Debate e intercambio comunitario.", "Diskussion und Austausch."],
            "Communauté" => ["Community", "社区", "Comunidad", "Community"],
            "Lien copié." => ["Link copied.", "链接已复制。", "Enlace copiado.", "Link kopiert."],
            "Impossible de copier automatiquement." => ["Automatic copying failed.", "自动复制失败。", "No se pudo copiar automáticamente.", "Automatisches Kopieren fehlgeschlagen."],
            "Sélectionnez un extrait du texte, puis réessayez." => ["Select an excerpt of text and try again.", "请选择文字后重试。", "Selecciona un fragmento e inténtalo de nuevo.", "Markiere zuerst einen Textauszug."],
            "Citation et source copiées." => ["Quote and source copied.", "摘录及来源已复制。", "Cita y fuente copiadas.", "Zitat und Quelle kopiert."],
            "La copie automatique a échoué." => ["Automatic copying failed.", "自动复制失败。", "Error al copiar automáticamente.", "Automatisches Kopieren fehlgeschlagen."],
            "Dans votre liste de lecture ✓" => ["Saved to your reading list ✓", "已加入稍后阅读 ✓", "Guardado en tu lista ✓", "Zur Leseliste hinzugefügt ✓"],
            "Ajouté sur cet appareil." => ["Saved on this device.", "已保存在此设备。", "Guardado en este dispositivo.", "Auf diesem Gerät gespeichert."],
            "Retiré de la liste locale." => ["Removed from this device.", "已从此设备移除。", "Eliminado de este dispositivo.", "Von diesem Gerät entfernt."],
        ];
```

### SQL01499 · Geniuspace\ShellBindings::config

`components/com_joomcck/site/library/php/geniuspace/ShellBindings.php:12`

```php
$row=ProductAccess::store()->rows("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'",1)[0]??[];
```

### SQL01500 · Geniuspace\ShellBindings::specialized

`components/com_joomcck/site/library/php/geniuspace/ShellBindings.php:30`

```php
$row=ProductAccess::store()->rows('SELECT params FROM #__js_res_types WHERE id='.(int)$item->type_id,1)[0]??[];
```

### SQL01501 · Geniuspace\ShellBindings::save

`components/com_joomcck/site/library/php/geniuspace/ShellBindings.php:39`

```php
$s=ProductAccess::store()->rows('SELECT id,published,params FROM #__js_res_sections WHERE id='.$section,1)[0]??null;
```

### SQL01502 · Geniuspace\ShellBindings::save

`components/com_joomcck/site/library/php/geniuspace/ShellBindings.php:43`

```php
$db->setQuery("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component' FOR UPDATE");
```

### SQL01503 · Geniuspace\ShellBindings::save

`components/com_joomcck/site/library/php/geniuspace/ShellBindings.php:43`

```php
$db->setQuery("UPDATE #__extensions SET params=".$db->quote(Seo::json($p))." WHERE element='com_joomcck' AND type='component'")->execute();
```

### SQL01504 · Geniuspace\ShellBindings::recent

`components/com_joomcck/site/library/php/geniuspace/ShellBindings.php:48`

```php
foreach($s->rows('SELECT id,section_id FROM #__js_res_record WHERE section_id IN ('.implode(',',$sections).') AND published=1 AND hidden=0 ORDER BY mtime DESC,id DESC',80)as$row){$p=$gate->record((int)$row['id']);
```

### SQL01639 · Geniuspace\UniverseSetup::siblings

`components/com_joomcck/site/library/php/geniuspace/UniverseSetup.php:19`

```php
return ProductAccess::store()->rows("SELECT id,alias,link,params,component_id,menutype,type FROM #__menu WHERE client_id=0 AND parent_id=".$parent." ORDER BY (published=1) DESC,(language='*') DESC,id",10000);
```

### SQL01640 · Geniuspace\UniverseSetup::install

`components/com_joomcck/site/library/php/geniuspace/UniverseSetup.php:54`

```php
$component=(int)$db->setQuery("SELECT extension_id FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult();
```

### SQL01641 · Geniuspace\UniverseSetup::install

`components/com_joomcck/site/library/php/geniuspace/UniverseSetup.php:56`

```php
if((int)$db->setQuery("SELECT GET_LOCK('nexus-universe-v21',0)")->loadResult()!==1)throw new \DomainException('Configuration des univers déjà en cours.',409);
```

### SQL01642 · Geniuspace\UniverseSetup::install

`components/com_joomcck/site/library/php/geniuspace/UniverseSetup.php:63`

```php
$existing=$s->rows('SELECT * FROM #__js_res_categories WHERE section_id='.$section.' AND alias IN ('.$aliases.') AND parent_id='.$parent.' ORDER BY id',10000);
```

### SQL01643 · Geniuspace\UniverseSetup::install

`components/com_joomcck/site/library/php/geniuspace/UniverseSetup.php:64`

```php
foreach($s->rows('SELECT * FROM #__js_res_categories WHERE section_id='.$section.' AND parent_id='.$parent.' AND title='.$s->q($title).' ORDER BY id',10000)as$row){$reserved=json_decode($row['params']??'{}',true)?:[];
```

### SQL01644 · Geniuspace\UniverseSetup::install

`components/com_joomcck/site/library/php/geniuspace/UniverseSetup.php:69`

```php
$db->setQuery('UPDATE #__js_res_categories SET params='.$s->q(Seo::json($p)).' WHERE id='.$id)->execute();
```

### SQL01645 · Geniuspace\UniverseSetup::install

`components/com_joomcck/site/library/php/geniuspace/UniverseSetup.php:85`

```php
$p=json_decode($s->rows("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'",1)[0]['params'],true)?:[];
```

### SQL01646 · Geniuspace\UniverseSetup::install

`components/com_joomcck/site/library/php/geniuspace/UniverseSetup.php:85`

```php
$db->setQuery('UPDATE #__extensions SET params='.$s->q(Seo::json($p))." WHERE element='com_joomcck' AND type='component'")->execute();
```

### SQL01647 · Geniuspace\UniverseSetup::install

`components/com_joomcck/site/library/php/geniuspace/UniverseSetup.php:87`

```php
$db->setQuery("SELECT RELEASE_LOCK('nexus-universe-v21')")->loadResult();
```

### SQL01665 · Geniuspace\UniverseExperience::rows

`components/com_joomcck/site/library/php/geniuspace/UniverseExperience.php:20`

```php
$query='SELECT DISTINCT r.id,r.mtime FROM #__js_res_record r JOIN #__js_res_record_category c ON c.record_id=r.id WHERE r.section_id='.(int)$c['section'].' AND r.published=1 AND r.hidden=0 AND c.catid IN('.implode(',',$ids).') ORDER BY r.mtime DESC,r.id DESC';
```

### SQL01666 · Geniuspace\UniverseExperience::rows

`components/com_joomcck/site/library/php/geniuspace/UniverseExperience.php:24`

```php
foreach($store->rows('SELECT id FROM #__js_res_record WHERE section_id IN('.implode(',',array_map('intval',$sections)).') AND published=1 AND hidden=0 ORDER BY mtime DESC,id DESC',40)as$r)if($p=$gate->record((int)$r['id'])){$jobs[]=$p;
```

### SQL01667 · Geniuspace\UniverseExperience::stage

`components/com_joomcck/site/library/php/geniuspace/UniverseExperience.php:90`

```php
foreach(ProductAccess::store()->rows("SELECT id,link FROM #__menu WHERE client_id=0 AND published=1 AND type='component' AND access IN (".implode(',',ProductAccess::user()->getAuthorisedViewLevels()).") ORDER BY id",1000)as$menu){$args=[];
```

### SQL01783 · Geniuspace\UniverseComposition::projections

`components/com_joomcck/site/library/php/geniuspace/UniverseComposition.php:41`

```php
foreach(ProductAccess::store()->rows('SELECT id FROM #__js_res_record WHERE published=1 AND hidden=0 AND section_id IN ('.implode(',',array_map('intval',$sections)).') ORDER BY mtime DESC,id DESC',20)as$row){if($p=$gate->record((int)$row['id']))$out[]=$p;
```

### SQL01784 · Geniuspace\UniverseRatings::profile

`components/com_joomcck/site/library/php/geniuspace/UniverseRatings.php:11`

```php
foreach($s->rows('SELECT c.section_id,c.id FROM #__js_res_record_category rc JOIN #__js_res_categories c ON c.id=rc.catid WHERE rc.record_id='.$record.' ORDER BY c.level DESC',10)as$c){$ctx=UniverseBlueprint::context((int)$c['section_id'],(int)$c['id']);
```

### SQL01785 · Geniuspace\UniverseRatings::profile

`components/com_joomcck/site/library/php/geniuspace/UniverseRatings.php:13`

```php
$config=json_decode($s->rows("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'",1)[0]['params']??'{}',true)?:[];
```

### SQL01786 · Geniuspace\UniverseAnnouncements::action

`components/com_joomcck/site/library/php/geniuspace/UniverseAnnouncements.php:20`

```php
$prior=$s->rows('SELECT record_id FROM #__gp_social_universe_announcements WHERE enabled=1 AND section_id='.$section.' AND category_id='.$scope.' FOR UPDATE',1)[0]??null;
```

### SQL01787 · Geniuspace\UniverseAnnouncements::action

`components/com_joomcck/site/library/php/geniuspace/UniverseAnnouncements.php:20`

```php
$s->run('UPDATE #__gp_social_universe_announcements SET enabled=0 WHERE section_id='.$section.' AND category_id='.$scope);
```

### SQL01788 · Geniuspace\UniverseAnnouncements::action

`components/com_joomcck/site/library/php/geniuspace/UniverseAnnouncements.php:24`

```php
if(!$s->rows('SELECT record_id FROM #__js_res_record_category WHERE record_id='.$record.' AND catid IN('.implode(',',$categoryIds).')',1))throw new \DomainException('Ce sujet ne fait pas partie de la rubrique ciblée.',422);
```

### SQL01789 · Geniuspace\UniverseAnnouncements::action

`components/com_joomcck/site/library/php/geniuspace/UniverseAnnouncements.php:26`

```php
$s->run('INSERT INTO #__gp_social_universe_announcements (section_id,category_id,record_id,actor_id,enabled,expires_at,ctime) VALUES ('.$section.','.$scope.','.$record.','.$user.',1,'.$s->q($expiry).','.$s->q($now).') ON DUPLICATE KEY UPDATE record_id=VALUES(record_id),actor_id=VALUES(actor_id),enabled=1,expires_at=VALUES(expires_at),ctime=VALUES(ctime)');
```

### SQL01790 · Geniuspace\UniverseAnnouncements::items

`components/com_joomcck/site/library/php/geniuspace/UniverseAnnouncements.php:32`

```php
foreach($s->rows('SELECT * FROM #__gp_social_universe_announcements WHERE enabled=1 AND section_id='.$section.' AND category_id IN ('.implode(',',$ids).') AND expires_at>'.$s->q(gmdate('Y-m-d H:i:s')).' ORDER BY ctime DESC',8)as$row){if(!($public=PublicMaterial::record((int)$row['record_id'],false)))continue;
```

### SQL01791 · Geniuspace\UniverseAnnouncements::tickerItems

`components/com_joomcck/site/library/php/geniuspace/UniverseAnnouncements.php:38`

```php
foreach($s->rows('SELECT a.record_id FROM #__gp_social_universe_announcements a JOIN #__js_res_categories c ON c.id=a.category_id AND c.parent_id=1 AND c.published=1 WHERE a.enabled=1 AND a.section_id='.$section.' AND a.expires_at>'.$s->q(gmdate('Y-m-d H:i:s')).' ORDER BY a.ctime DESC',12)as$row)if($p=PublicMaterial::record((int)$row['record_id'],false))$out[]=['id'=>(int)$row['record_id'],'title'=>$p['title'],'url'=>$p['url']];
```

### SQL01792 · Geniuspace\UniverseAnnouncements::choices

`components/com_joomcck/site/library/php/geniuspace/UniverseAnnouncements.php:52`

```php
$row=$s->rows('SELECT section_id FROM #__js_res_categories WHERE id='.$category,1)[0]??null;
```

### SQL01793 · Geniuspace\UniverseAnnouncements::choices

`components/com_joomcck/site/library/php/geniuspace/UniverseAnnouncements.php:54`

```php
foreach($s->rows('SELECT DISTINCT r.id,r.title FROM #__js_res_record r JOIN #__js_res_record_category c ON c.record_id=r.id WHERE c.catid IN ('.implode(',',$ids).') AND LOCATE('.$s->q(mb_strtolower($query)).',LOWER(r.title))>0 ORDER BY r.id DESC',40)as$r)if($p=PublicMaterial::record((int)$r['id'],false)){$items[]=['id'=>(int)$r['id'],'title'=>$p['title'],'url'=>$p['url']];
```
