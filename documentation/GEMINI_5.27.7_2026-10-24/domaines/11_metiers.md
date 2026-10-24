# Fonctions métiers et outils

Projets, réservations, outils de données, règles métier et services de champs.

Version 5.27.7. Présence dans le code ; ne prouve pas la configuration ou l’utilisation en production.

37 classes ; 272 fonctions/méthodes nommées ; 188 expressions SQL repérées dans ce domaine du noyau Geniuspace.

## Geniuspace\Booking

`components/com_joomcck/site/library/php/geniuspace/Booking.php:5`
- L7–7 · public · `function __construct(private Studio $s)`
- L8–9 · public · `function validate(array $d): array`
- L10–11 · private · `function definition(string $key,bool $lock=false): array`
- L12–12 · private · `function where(string $key): string`
- L13–14 · public · `function available(string $key): array`
- L15–16 · public · `function reserve(string $key,string $slot,int $quantity,int $expected): array`
- L17–18 · public · `function cancel(string $key,int $id,int $expected): void`
- L19–19 · public · `function mine(string $key): array`

## Geniuspace\Bridge

`components/com_joomcck/site/library/php/geniuspace/Bridge.php:6`
- L8–30 · public · `function context(int $section = 0, int $user = 0): ?Social`
- L31–36 · public · `function avatar(int $user): ?string`
- L37–40 · public · `function profileUrl(int $user, int $section): ?string`
- L41–48 · public · `function emailContact(object $record, int $field): ?string`
- L49–61 · public · `function documents(object $record, int $field): string`
- L62–77 · public · `function targets(object $record, array $ids): array`

## Geniuspace\Chart

`components/com_joomcck/site/library/php/geniuspace/Chart.php:6`
- L8–51 · public · `function parse(string $text): ?array`
- L53–95 · public · `function render(string $text, string $title, string $mode = 'bar', string $unit = ''): string`
- L97–100 · private · `function number(float $value): string`

## Geniuspace\DataStory

`components/com_joomcck/site/library/php/geniuspace/DataStory.php:6`
- L11–82 · public · `function parse(string $raw, array $options = []): array`
- L83–83 · private · `function bad(string $message): never`
- L84–85 · private · `function text(mixed $value,int $max,bool $empty=false): string`
- L86–87 · private · `function key(mixed $value): string`
- L88–89 · private · `function items(mixed $value,int $min,int $max): void`
- L90–91 · private · `function number(mixed $value): void`
- L92–97 · public · `function ratio(array $values,array $series): ?float`
- L98–106 · public · `function summary(array $d,array $series,int $precision=2): string`
- L107–107 · private · `function format(float $v,int $precision=2): string`
- L108–140 · public · `function render(array $data,string $label,string $fieldId='0'): string`
- L141–142 · public · `function chartLabel(string $kind): string`
- L145–200 · public · `function svg(array $d): string`
- L201–213 · public · `function schemas(array $data,string $url,string $fieldId): array`

## Geniuspace\DemoInstaller

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:6`
- L14–21 · private · `function __construct(string $prefix,string $edition='classic')`
- L22–26 · public · `function preview(string $edition='classic'): array`
- L27–31 · public · `function manifests(): array`
- L32–33 · private · `function read(string $name,string $edition='classic'): array`
- L34–38 · private · `function defaults(string $path,string $xpath='./fields'): array`
- L39–43 · private · `function store(string $name,array $data): object`
- L44–44 · private · `function update(string $table,array $data): void`
- L45–56 · private · `function resolve(mixed $v): mixed`
- L57–63 · private · `function config(string $view,string $name,string $selector,array $slots): void`
- L64–67 · public · `function install(string $prefix='nexusdemo',string $edition='classic'): array`
- L69–80 · private · `function cleanup(): void`
- L81–172 · private · `function apply(): array`

## Geniuspace\ExtendedUi

`components/com_joomcck/site/library/php/geniuspace/ExtendedUi.php:6`
- L8–22 · public · `function geoInput(object $f): string`
- L23–40 · public · `function geo(object $f,object $record,string $client): string`
- L41–47 · public · `function image(object $r,object $f): string`
- L48–53 · public · `function imageUrl(string $path): string`
- L54–64 · public · `function twitter(object $f,object $record): string`

## Geniuspace\Facebook

`components/com_joomcck/site/library/php/geniuspace/Facebook.php:4`
- L6–7 · public · `function url(string $url): string`
- L8–9 · public · `function render(string $url,string $title,array $params=[]): string`

## Geniuspace\FieldEngine

`components/com_joomcck/site/library/php/geniuspace/FieldEngine.php:6`
- L10–136 · public · `function parse(string $kind, string $value, ?array $params = null): array`
- L138–138 · private · `function invalid(): never`
- L139–142 · private · `function label(mixed $value, bool $empty = false, int $max = 120): void`
- L147–150 · private · `function number(mixed $value): void`
- L152–245 · public · `function render(string $kind, array $d, string $title, array $targets = [], ?int $now = null): string`
- L247–260 · public · `function schema(string $kind, array $d, string $title, string $url): ?array`
- L261–266 · private · `function csvCell(string $value): string`

## Geniuspace\FieldHealth

`components/com_joomcck/site/library/php/geniuspace/FieldHealth.php:6`
- L8–18 · public · `function sourceSaved(Store $store,int $source): void`
- L19–27 · public · `function panel(object $view): void`

## Geniuspace\FieldOptions

`components/com_joomcck/site/library/php/geniuspace/FieldOptions.php:6`
- L10–15 · public · `function params(mixed $params): array`
- L18–45 · public · `function validateDefinition(string $type, mixed $params): void`
- L48–83 · public · `function apply(string $kind, array $d, array $p): array`
- L85–101 · public · `function parse(string $kind, string $value, array $p): array`
- L103–112 · public · `function listing(array $p): array`
- L114–120 · public · `function initial(mixed $value, array $p): string`
- L122–126 · public · `function encode(array $data): string`

## Geniuspace\FieldPage

`components/com_joomcck/site/library/php/geniuspace/FieldPage.php:5`
- L7–18 · public · `function render(Quiz $service,string $kind,int $record,int $field,string $title,string $body): string`

## Geniuspace\Formula

`components/com_joomcck/site/library/php/geniuspace/Formula.php:6`
- L14–17 · public · `function validate(string $expression, array $variables): void`
- L19–22 · public · `function calculate(string $expression, array $variables): float`
- L24–40 · private · `function parse(string $expression, array $variables, bool $syntaxOnly): float`
- L42–50 · private · `function sum(): float`
- L51–60 · private · `function product(): float`
- L61–77 · private · `function unary(): float`
- L78–91 · private · `function atom(): float`
- L92–92 · private · `function peek(): string`

## Geniuspace\Geo

`components/com_joomcck/site/library/php/geniuspace/Geo.php:6`
- L8–15 · public · `function gpx(string $xml): array`
- L16–27 · public · `function parse(string $json): array`
- L28–33 · public · `function statistics(array $d): array`
- L34–45 · public · `function render(array $d,string $title): string`

## Geniuspace\HubOpportunity

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:6`
- L9–15 · private · `function context(array $input,bool $write=false): array`
- L16–20 · public · `function count(int $record,int $field): int`
- L21–33 · public · `function join(array $input): array`
- L34–43 · public · `function propose(array $input): array`
- L44–51 · public · `function decide(array $input): array`
- L52–82 · public · `function render(array $data,array $record,int $field): string`
- L83–90 · private · `function schema(array $data,array $record,int $field): void`

## Geniuspace\Listing

`components/com_joomcck/site/library/php/geniuspace/Listing.php:6`
- L9–24 · public · `function parse(array $d): array`
- L25–44 · public · `function render(array $settings,array $rows,string $title,?Studio $studio=null): string`
- L45–46 · private · `function link(array $r): string`

## Geniuspace\MultiverseMechanisms

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:6`
- L10–10 · private · `function s(): Store`
- L11–11 · private · `function now(): string`
- L12–13 · private · `function id(array $d,string $key): int`
- L14–15 · private · `function text(array $d,string $key,int $max,int $min=0): string`
- L16–21 · private · `function insert(string $table,array $data,bool $ignore=false): int`
- L22–22 · private · `function event(int $record,string $kind,array $data): void`
- L23–24 · private · `function publicRecord(int $record): array`
- L25–31 · private · `function comment(int $record,int $comment): array`
- L32–37 · private · `function url(array $d,string $key): string`
- L38–39 · private · `function lock(int $record,callable $call): mixed`
- L40–45 · private · `function csrf(): void`
- L46–69 · public · `function handle(array $data): array`
- L70–71 · public · `function paymentStatus(): array`
- L72–84 · private · `function crystalPropose(int $record,array $d): array`
- L85–96 · private · `function crystalConsent(int $record,array $d): array`
- L97–116 · private · `function crystalApply(int $record,array $d): array`
- L117–121 · public · `function seal(array $prediction): string`
- L122–133 · private · `function predictionSeal(int $record,array $d): array`
- L134–135 · private · `function prediction(int $record,int $id): array`
- L136–143 · private · `function predictionVote(int $record,array $d): array`
- L144–153 · private · `function predictionResolve(int $record,array $d): array`
- L154–161 · private · `function intent(int $record,array $d): array`
- L163–168 · public · `function radar(int $record): array`
- L169–174 · private · `function contactPreferences(int $record,array $d): array`
- L175–186 · private · `function contactRequest(int $record,array $d): array`
- L187–200 · private · `function contactDecide(int $record,array $d): array`
- L201–210 · private · `function spawnTarget(int $record,int $field): array`
- L211–226 · private · `function spawn(int $record,array $d): array`
- L227–231 · private · `function token(): string`
- L232–237 · private · `function pending(string $token,bool $allowSaved=false): array`
- L239–245 · public · `function prepareForm(object $item,array $fields): void`
- L246–247 · public · `function spawnInput(): string`
- L248–249 · public · `function spawnQuery(): string`
- L251–256 · private · `function spawnLock(int $id): void`
- L257–258 · public · `function releaseSpawnLocks(): void`
- L260–276 · public · `function beforeSave(array $record): void`
- L278–291 · public · `function afterSave(int $id): void`
- L292–300 · private · `function projectJoin(int $record,array $d): array`
- L301–306 · private · `function milestoneVote(int $record,array $d): array`
- L307–308 · private · `function opportunityJoin(array $d): array`
- L309–313 · public · `function opportunityChanged(array $d): void`
- L314–325 · public · `function read(int $record): array`
- L326–330 · private · `function milestoneState(array $p): array`
- L331–336 · public · `function score(int $author): array`
- L338–344 · public · `function inbox(): array`
- L345–349 · public · `function contactCandidates(): array`
- L351–359 · public · `function ticker(array $recordIds=[]): array`
- L360–364 · public · `function crystallized(int $record): string`
- L365–370 · public · `function compact(int $record): string`
- L371–380 · public · `function sidebar(array $ids): string`
- L381–382 · private · `function form(string $action,int $record,array $extra=[]): string`
- L383–411 · public · `function render(int $record): string`
- L412–424 · private · `function renderContact(int $record,array $d): string`
- L425–441 · private · `function renderProjects(int $record,array $d,array $native): string`

## Geniuspace\OpeningHours

`components/com_joomcck/site/library/php/geniuspace/OpeningHours.php:6`
- L8–37 · public · `function parse(string $json): array`
- L39–43 · private · `function minutes(mixed $hour): int`
- L45–52 · public · `function status(array $d, ?\DateTimeImmutable $instant=null): array`
- L54–66 · public · `function render(array $d,string $title,?\DateTimeImmutable $instant=null): string`

## Geniuspace\Outbox

`components/com_joomcck/site/library/php/geniuspace/Outbox.php:6`
- L8–8 · public · `function __construct(private Store $store,private array $hooks,private $transport=null,private $deliveryFilter=null)`
- L9–16 · public · `function enqueue(string $scope,string $event,string $key,array $publicPayload): void`
- L17–24 · public · `function work(int $limit=20): array`

## Geniuspace\Poll

`components/com_joomcck/site/library/php/geniuspace/Poll.php:4`
- L6–6 · public · `function __construct(private Studio $studio)`
- L7–14 · public · `function parse(string $json): array`
- L15–18 · private · `function definition(int $record,int $field): array`
- L19–23 · public · `function vote(int $record,int $field,string $choice): void`
- L24–27 · public · `function result(int $record,int $field): array`
- L28–32 · public · `function page(int $record,int $field,string $csrf): string`

## Geniuspace\PollRouter

`components/com_joomcck/site/library/php/geniuspace/PollRouter.php:4`
- L6–6 · public · `function __construct(private Studio $studio,private string $csrf,private bool $tokenValid)`
- L7–15 · public · `function handle(string $path,string $method,array $data=[]): Response`

## Geniuspace\ProductActions

`components/com_joomcck/site/library/php/geniuspace/ProductActions.php:6`
- L8–17 · public · `function normalize(array $data): array`
- L18–52 · public · `function handle(array $data): array`
- L53–58 · private · `function hub(array $data): void`
- L59–65 · private · `function assist(array $data): array`

## Geniuspace\ProductData

`components/com_joomcck/site/library/php/geniuspace/ProductData.php:6`
- L9–14 · public · `function text(mixed $v,int $max=2000,string $fallback=''): string`
- L15–19 · public · `function number(mixed $v,float $min,float $max): float`
- L20–21 · public · `function integer(mixed $v,int $min,int $max): int`
- L22–25 · public · `function id(mixed $v): int`
- L30–33 · public · `function icon(mixed $v): string`
- L34–37 · public · `function color(mixed $v): string`
- L38–41 · public · `function date(mixed $v): string`
- L42–48 · public · `function url(mixed $v,bool $local=false): string`
- L49–62 · public · `function parse(string $kind,string $raw): array`
- L63–77 · public · `function hasContent(string $kind,array $d): bool`
- L78–90 · private · `function review(array $d): array`
- L91–98 · private · `function timedmedia(array $d): array`
- L99–102 · private · `function teamspace(array $d): array`
- L103–109 · private · `function opportunity(array $d): array`
- L110–116 · private · `function hub(array $d): array`
- L117–134 · private · `function market(array $d): array`
- L135–141 · private · `function audio(array $d): array`
- L142–147 · private · `function code(array $d): array`
- L148–156 · private · `function simulation(array $d): array`
- L157–164 · private · `function skillterm(array $d): array`
- L165–174 · private · `function passport(array $d): array`
- L175–181 · private · `function room(array $d): array`

## JFormFieldCProduct

`components/com_joomcck/site/library/php/geniuspace/ProductField.php:7`
- L11–15 · public · `function getInput()`
- L16–22 · public · `function validateField($value,$record,$type,$section)`
- L23–24 · public · `function onPrepareSave($value,$record,$type,$section)`
- L25–31 · public · `function onStoreValues($data,$record)`
- L32–39 · public · `function onPrepareFullTextSearch($value,$record,$type,$section)`
- L40–47 · public · `function onRenderFull($record,$type,$section)`
- L48–55 · public · `function onRenderList($record,$type,$section)`
- L56–57 · public · `function onRenderFilter($section,$module=false)`
- L58–63 · public · `function onFilterWhere($section,&$query)`
- L64–65 · public · `function onFilterWornLabel($section)`
- L66–67 · public · `function onImport($value,$params,$record=null)`

## Geniuspace\ProductFields

`components/com_joomcck/site/library/php/geniuspace/ProductFields.php:6`
- L8–17 · public · `function assets(): void`
- L18–29 · public · `function editor(object $f,string $value,int $record): string`
- L30–49 · public · `function render(object $f,object $record,bool $full): string`
- L50–58 · public · `function hub(array $d,array $r,int $field): string`
- L59–71 · public · `function market(array $d,object $f): string`
- L72–73 · public · `function format(float $value): string`
- L74–79 · public · `function code(array $d): string`
- L80–85 · public · `function term(array $d): string`

## Geniuspace\ProductFlow

`components/com_joomcck/site/library/php/geniuspace/ProductFlow.php:6`
- L8–31 · public · `function diagnostic(object $job): string`

## Geniuspace\ProductLifecycle

`components/com_joomcck/site/library/php/geniuspace/ProductLifecycle.php:6`
- L10–17 · public · `function lock(int $record): void`
- L18–21 · public · `function release(): void`
- L22–27 · public · `function saved(int $record): void`

## Geniuspace\ProductNotifications

`components/com_joomcck/site/library/php/geniuspace/ProductNotifications.php:6`
- L8–12 · public · `function invite(int $user,int $company,int $actor): void`
- L13–22 · public · `function items(int $user): array`

## Geniuspace\ProductRead

`components/com_joomcck/site/library/php/geniuspace/ProductRead.php:6`
- L8–28 · public · `function handle(string $kind,string $query,int $record=0): array`
- L29–37 · private · `function recordChoices(string $query): array`
- L38–42 · private · `function forumActivity(int $id): array`

## Geniuspace\RemoteData

`components/com_joomcck/site/library/php/geniuspace/RemoteData.php:6`
- L8–8 · public · `function __construct(private array $sources,private ?Store $store=null,private $transport=null)`
- L9–14 · private · `function source(string $key): array`
- L15–27 · public · `function items(string $key): array`
- L28–44 · public · `function request(string $url,array $headers=[],?string $body=null): string`

## Geniuspace\Response

`components/com_joomcck/site/library/php/geniuspace/Response.php:5`
- L11–22 · public · `function __construct(string $body, string $type = 'text/html; charset=utf-8', int $status = 200, array $headers = [])`
- L24–27 · public · `function redirect(string $url, int $status = 301): self`

## Geniuspace\Signature

`components/com_joomcck/site/library/php/geniuspace/Signature.php:5`
- L7–13 · public · `function parse(string $json): array`
- L14–15 · public · `function render(array $d,string $title): string`

## Geniuspace\Social

`components/com_joomcck/site/library/php/geniuspace/Social.php:6`
- L9–14 · public · `function __construct(public Store $store, public Config $config, public Repository $publicRepo, public Repository $memberRepo, public array $company, public int $user = 0, public array $groups = [], public bool $moderator = false)`
- L15–15 · private · `function where(): string`
- L16–21 · public · `function member(): bool`
- L22–25 · private · `function requireMember(): void`
- L26–30 · public · `function prefs(int $user): array`
- L31–35 · public · `function blocked(int $other): bool`
- L36–39 · public · `function friends(int $other): bool`
- L40–64 · public · `function profile(int $user): ?array`
- L65–72 · public · `function directory(int $after = 0): array`
- L73–78 · public · `function group(int $id): ?array`
- L79–84 · public · `function joined(int $group, ?int $user = null): bool`
- L85–85 · private · `function owner(int $group): int`
- L86–100 · public · `function canView(array $post): bool`
- L101–105 · public · `function post(int $id): ?array`
- L106–127 · public · `function feed(int $before = 0, int $profile = 0, int $group = 0, bool $following = false, int $parent = 0): array`
- L128–134 · private · `function text(array $data, string $key, int $max, int $min = 1): string`
- L135–140 · public · `function id(array $data, string $key): int`
- L141–144 · private · `function notice(int $user, string $kind, int $target): void`
- L145–250 · public · `function action(string $action, array $data): int`
- L251–257 · public · `function inbox(int $before = 0): array`
- L258–261 · public · `function notifications(): array`
- L262–265 · public · `function connections(): array`
- L266–271 · public · `function moderation(): array`
- L272–308 · public · `function sitemap(int $page = 0): Response`

## Geniuspace\SocialRouter

`components/com_joomcck/site/library/php/geniuspace/SocialRouter.php:6`
- L9–12 · public · `function __construct(private Social $social, private string $csrf = '', private bool $tokenValid = false)`
- L13–13 · private · `function e(mixed $v): string`
- L14–18 · private · `function form(string $action, int $target = 0, string $fields = '', string $label = 'Valider', string $return = ''): string`
- L19–35 · private · `function page(string $title, string $body, bool $public = false, array $graph = [], string $path = ''): Response`
- L36–40 · private · `function avatar(?array $profile): string`
- L41–44 · private · `function profileCard(array $p): string`
- L45–55 · private · `function composer(int $parent = 0, int $group = 0): string`
- L56–77 · private · `function posts(array $feed, string $path): string`
- L78–218 · public · `function handle(string $path, array $query, string $method, array $data = [], array $files = []): Response`
- L219–240 · private · `function documents(string $path, int $before, int $record, int $field): Response`

## Geniuspace\VisualChart

`components/com_joomcck/site/library/php/geniuspace/VisualChart.php:6`
- L9–25 · public · `function parse(array $data): array`
- L26–26 · private · `function number(mixed $v): void`
- L27–33 · public · `function render(array $d,string $title): string`

## Geniuspace\RwaInfrastructure

`components/com_joomcck/site/library/php/geniuspace/RwaInfrastructure.php:6`
- L8–11 · private · `function https(string $url): string`
- L12–19 · public · `function config(): array`
- L20–23 · public · `function button(string $class=''): string`
- L24–27 · public · `function block(): string`
- L28–33 · public · `function dialog(): string`

## Geniuspace\ProjectBoards

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:6`
- L8–8 · private · `function ready(): int`
- L9–9 · private · `function now(): string`
- L10–10 · private · `function id(mixed $id): int`
- L11–19 · private · `function board(int $id,bool $write=false,bool $lock=false): array`
- L20–23 · private · `function native(int $record): ?array`
- L24–32 · private · `function steps(mixed $raw): array`
- L33–36 · private · `function cleanSnapshot(array $p): array`
- L37–40 · private · `function event(array $b,string $kind): void`
- L41–72 · public · `function action(string $action,array $d): array`
- L73–83 · public · `function read(int $selected=0): array`

## Geniuspace\ProjectWorkspace

`components/com_joomcck/site/library/php/geniuspace/ProjectWorkspace.php:5`
- L7–13 · public · `function render(): string`

## SQL et données

Les expressions suivantes sont du PHP source ; les variables ne sont pas évaluées. Pour un EXPLAIN réel, reconstruire une requête paramétrée sur une copie de test.

### SQL00695 · Geniuspace\Booking::definition

`components/com_joomcck/site/library/php/geniuspace/Booking.php:11`

```php
$r=$s->store->rows('SELECT id,data,revision FROM #__gp_social_definitions WHERE scope='.$s->store->q($s->company['slug'])." AND kind='booking' AND name=".$s->store->q($key).($lock&&$s->store->db instanceof \Joomla\Database\DatabaseDriver?' FOR UPDATE':''),1)[0]??null;
```

### SQL00696 · Geniuspace\Booking::available

`components/com_joomcck/site/library/php/geniuspace/Booking.php:14`

```php
$used=(int)($this->s->store->rows('SELECT SUM(quantity) AS total FROM #__gp_social_reservations WHERE '.$this->where($key).' AND slot_key='.$this->s->store->q($hash)." AND state='confirmed'",1)[0]['total']??0);
```

### SQL00697 · Geniuspace\Booking::reserve

`components/com_joomcck/site/library/php/geniuspace/Booking.php:16`

```php
if($s->store->rows('SELECT id FROM #__gp_social_reservations WHERE '.$this->where($key).' AND user_id='.$s->user.' AND slot_key='.$s->store->q($slot)." AND state='confirmed'",1))throw new \DomainException('Créneau déjà réservé par ce compte.',409);
```

### SQL00698 · Geniuspace\Booking::cancel

`components/com_joomcck/site/library/php/geniuspace/Booking.php:18`

```php
$r=$s->store->rows('SELECT * FROM #__gp_social_reservations WHERE '.$this->where($key).' AND id='.$id.$lock,1)[0]??null;
```

### SQL00699 · Geniuspace\Booking::cancel

`components/com_joomcck/site/library/php/geniuspace/Booking.php:18`

```php
$s->store->run("UPDATE #__gp_social_reservations SET state='cancelled',revision=revision+1 WHERE id=".$id.' AND '.$this->where($key));
```

### SQL00700 · Geniuspace\Booking::mine

`components/com_joomcck/site/library/php/geniuspace/Booking.php:19`

```php
return $this->s->store->rows('SELECT id,starts_at,ends_at,quantity,state,revision FROM #__gp_social_reservations WHERE '.$this->where($key).' AND user_id='.$this->s->user.' ORDER BY id DESC',100);
```

### SQL00769 · Geniuspace\DemoInstaller::manifests

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:30`

```php
if(in_array($store->db->getPrefix().'gp_social_demo_manifests',$store->db->getTableList(),true))foreach($store->rows('SELECT prefix,payload FROM #__gp_social_demo_manifests',100)as$row)$all[$row['prefix']]=json_decode($row['payload'],true);
```

### SQL00770 · Geniuspace\DemoInstaller::cleanup

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:72`

```php
$db->setQuery('DELETE FROM #__modules_menu WHERE moduleid='.$id)->execute();
```

### SQL00771 · Geniuspace\DemoInstaller::cleanup

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:72`

```php
$db->setQuery('DELETE FROM #__modules WHERE id='.$id)->execute();
```

### SQL00772 · Geniuspace\DemoInstaller::cleanup

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:73`

```php
foreach(array_reverse($this->map['menus']??[])as$id)if($db->setQuery('SELECT id FROM #__menu WHERE id='.(int)$id)->loadResult())\Joomla\CMS\Table\Table::getInstance('Menu','Joomla\\CMS\\Table\\')->delete((int)$id);
```

### SQL00773 · Geniuspace\DemoInstaller::cleanup

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:74`

```php
$db->setQuery('DELETE FROM #__menu_types WHERE menutype='.$db->quote($this->prefix))->execute();
```

### SQL00774 · Geniuspace\DemoInstaller::cleanup

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:76`

```php
foreach(['record_category','record_values','comments']as$t)$db->setQuery('DELETE FROM #__js_res_'.$t.' WHERE record_id IN('.$in.')')->execute();
```

### SQL00775 · Geniuspace\DemoInstaller::cleanup

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:76`

```php
$db->setQuery('DELETE FROM #__js_res_record WHERE id IN('.$in.')')->execute();
```

### SQL00776 · Geniuspace\DemoInstaller::cleanup

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:77`

```php
foreach(array_reverse($this->map['categories']??[])as$cats)foreach(array_reverse($cats)as$id)if($db->setQuery('SELECT id FROM #__js_res_categories WHERE id='.(int)$id)->loadResult()){$native=\Joomla\CMS\Table\Table::getInstance('CobCategory','JoomcckTable');
```

### SQL00777 · Geniuspace\DemoInstaller::cleanup

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:78`

```php
foreach($this->map['fields']??[]as$fields)foreach($fields as$f)$db->setQuery('DELETE FROM #__js_res_fields WHERE id='.(int)$f['id'])->execute();
```

### SQL00778 · Geniuspace\DemoInstaller::cleanup

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:79`

```php
if($ids)$db->setQuery('DELETE FROM #__js_res_'.$t.' WHERE id IN('.implode(',',$ids).')')->execute();
```

### SQL00779 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:84`

```php
if((int)$db->setQuery('SELECT GET_LOCK('.$db->quote($lock).',0)')->loadResult()!==1)throw new \DomainException('Une installation est déjà en cours.',409);
```

### SQL00780 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:87`

```php
// Read fresh configuration under the lock, including manifests from concurrent installs.
            $params=json_decode($db->setQuery("SELECT params FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult(),true,64,JSON_THROW_ON_ERROR);
```

### SQL00781 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:89`

```php
$store->run('INSERT IGNORE INTO #__gp_social_demo_manifests (prefix,payload,ctime) VALUES ('.$store->q((string)$legacyPrefix).','.$store->q(Seo::json($payload)).','.$store->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL00782 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:95`

```php
foreach(['types','sections']as$t)if($db->setQuery('SELECT id FROM #__js_res_'.$t.' WHERE name='.$db->quote($name))->loadResult())throw new \DomainException('Préfixe déjà utilisé : '.$name,409);
```

### SQL00783 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:101`

```php
if($db->setQuery('SELECT id FROM #__menu_types WHERE menutype='.$db->quote($prefix))->loadResult())throw new \DomainException('Menu déjà utilisé.',409);
```

### SQL00784 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:125`

```php
$raw=$db->setQuery('SELECT params FROM #__js_res_fields WHERE id='.$id)->loadResult();
```

### SQL00785 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:133`

```php
$fp=json_decode($db->setQuery('SELECT params FROM #__js_res_fields WHERE id='.$id)->loadResult(),true);
```

### SQL00786 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:147`

```php
$r=$db->setQuery('SELECT type_id,section_id FROM #__js_res_record WHERE id='.$rid)->loadAssoc();
```

### SQL00787 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:147`

```php
$db->setQuery('UPDATE #__js_res_record SET comments=comments+1 WHERE id='.$rid)->execute();
```

### SQL00788 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:150`

```php
$component=(int)$db->setQuery("SELECT extension_id FROM #__extensions WHERE element='com_joomcck' AND type='component'")->loadResult();
```

### SQL00789 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:150`

```php
$style=(int)$db->setQuery("SELECT id FROM #__template_styles WHERE client_id=0 AND template='geniuspace' ORDER BY id ASC")->loadResult();
```

### SQL00790 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:169`

```php
$db->setQuery("UPDATE #__extensions SET params=".$db->quote(Seo::json($params))." WHERE element='com_joomcck' AND type='component'")->execute();
```

### SQL00791 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:170`

```php
if($this->edition!=='classic')$db->setQuery('DELETE FROM #__gp_social_demo_manifests WHERE prefix='.$db->quote($prefix))->execute();
```

### SQL00792 · Geniuspace\DemoInstaller::apply

`components/com_joomcck/site/library/php/geniuspace/DemoInstaller.php:171`

```php
$db->setQuery('SELECT RELEASE_LOCK('.$db->quote($lock).')')->loadResult();
```

### SQL00918 · Geniuspace\FieldHealth::sourceSaved

`components/com_joomcck/site/library/php/geniuspace/FieldHealth.php:10`

```php
$row=$store->rows('SELECT type_id,fields FROM #__js_res_record WHERE id='.$source,1)[0]??null;
```

### SQL00919 · Geniuspace\FieldHealth::sourceSaved

`components/com_joomcck/site/library/php/geniuspace/FieldHealth.php:12`

```php
foreach($store->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$row['type_id']." AND field_type IN ('gpproof','gpvalidity') AND published=1",1000)as$f)$data[$f['id']]=$values[$f['id']]??'';
```

### SQL00920 · Geniuspace\FieldHealth::sourceSaved

`components/com_joomcck/site/library/php/geniuspace/FieldHealth.php:14`

```php
foreach($store->rows("SELECT DISTINCT source_id,field_id FROM #__gp_social_links WHERE target_id=".$source." AND kind='proof'",1000)as$link){
            $fingerprint=hash('sha256',$source.':'.$link['source_id'].':'.$link['field_id'].':'.$digest);
```

### SQL00921 · Geniuspace\FieldHealth::sourceSaved

`components/com_joomcck/site/library/php/geniuspace/FieldHealth.php:16`

```php
if(!$store->rows('SELECT fingerprint FROM #__gp_social_field_alerts WHERE fingerprint='.$store->q($fingerprint),1))$store->insert('field_alerts',['fingerprint'=>$fingerprint,'record_id'=>(int)$link['source_id'],'source_id'=>$source,'field_id'=>(int)$link['field_id'],'state'=>'review','ctime'=>gmdate('Y-m-d H:i:s')]);
```

### SQL00922 · Geniuspace\FieldHealth::panel

`components/com_joomcck/site/library/php/geniuspace/FieldHealth.php:23`

```php
$rows=$store->rows("SELECT source_id,ctime FROM #__gp_social_field_alerts WHERE record_id=".$id." AND state='review' ORDER BY ctime DESC",20);
```

### SQL00923 · Geniuspace\FieldPage::render

`components/com_joomcck/site/library/php/geniuspace/FieldPage.php:10`

```php
$meta=$service->store->rows('SELECT params FROM #__js_res_fields WHERE id='.$field.' AND field_type='.$service->store->q($kind).' AND published=1',1)[0]??null;
```

### SQL01024 · Geniuspace\HubOpportunity::count

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:19`

```php
return(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_hub_participations p INNER JOIN #__users u ON u.id=p.user_id AND u.block=0 WHERE p.record_id='.$record.' AND p.field_id='.$field,1)[0]['n']??0);
```

### SQL01025 · Geniuspace\HubOpportunity::join

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:26`

```php
$s->rows('SELECT id FROM #__js_res_record WHERE id='.$record.' FOR UPDATE',1);
```

### SQL01026 · Geniuspace\HubOpportunity::join

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:27`

```php
$s->run('DELETE FROM #__gp_social_hub_participations WHERE '.$where);
```

### SQL01027 · Geniuspace\HubOpportunity::join

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:28`

```php
if($s->rows('SELECT user_id FROM #__gp_social_hub_participations WHERE '.$where,1))return;
```

### SQL01028 · Geniuspace\HubOpportunity::propose

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:41`

```php
$s->run('INSERT INTO #__gp_social_hub_proposals(record_id,field_id,user_id,body,amount,currency,state,ctime,mtime) VALUES('.$record.','.$field.','.$user.','.$s->q($body).','.$s->q((string)$amount).','.$s->q($d['currency']).",'pending',".$s->q($time).','.$s->q($time).") ON DUPLICATE KEY UPDATE body=VALUES(body),amount=VALUES(amount),currency=VALUES(currency),state='pending',mtime=VALUES(mtime)");
```

### SQL01029 · Geniuspace\HubOpportunity::decide

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:48`

```php
if(!$s->rows('SELECT id FROM #__gp_social_hub_proposals WHERE '.$where,1))throw new \DomainException('Proposition introuvable.',404);
```

### SQL01030 · Geniuspace\HubOpportunity::decide

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:49`

```php
$s->run('UPDATE #__gp_social_hub_proposals SET state='.$s->q($state).',mtime='.$s->q(gmdate('Y-m-d H:i:s')).' WHERE '.$where);
```

### SQL01031 · Geniuspace\HubOpportunity::render

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:55`

```php
$joined=$user&&(bool)$s->rows('SELECT user_id FROM #__gp_social_hub_participations WHERE '.$where.' AND user_id='.$user,1);
```

### SQL01032 · Geniuspace\HubOpportunity::render

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:73`

```php
$existing=$s->rows('SELECT body,amount,state FROM #__gp_social_hub_proposals WHERE '.$where.' AND user_id='.$user,1)[0]??null;
```

### SQL01033 · Geniuspace\HubOpportunity::render

`components/com_joomcck/site/library/php/geniuspace/HubOpportunity.php:77`

```php
$proposals=$s->rows('SELECT p.*,u.name FROM #__gp_social_hub_proposals p INNER JOIN #__users u ON u.id=p.user_id AND u.block=0 WHERE '.$where.' ORDER BY p.mtime DESC',50);
```

### SQL01073 · Geniuspace\MultiverseMechanisms::comment

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:29`

```php
$row=self::s()->rows('SELECT c.*,u.name AS contributor_name FROM #__js_res_comments c INNER JOIN #__users u ON u.id=c.user_id AND u.block=0 WHERE c.id='.max(2,$comment).' AND c.id='.$comment.' AND c.record_id='.$record.' AND c.published=1 AND c.hide=0 AND c.private=0 AND c.access IN ('.implode(',',array_map('intval',$levels?:[0])).')',1)[0]??null;
```

### SQL01074 · Geniuspace\MultiverseMechanisms::crystalPropose

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:77`

```php
$old=$s->rows('SELECT * FROM #__gp_social_multiverse_crystals WHERE record_id='.$record.' AND comment_id='.(int)$comment['id'],1)[0]??null;
```

### SQL01075 · Geniuspace\MultiverseMechanisms::crystalPropose

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:79`

```php
$sum=(int)($s->rows("SELECT COALESCE(SUM(share_bps),0) AS n FROM #__gp_social_multiverse_crystals WHERE record_id=".$record." AND state IN ('proposed','consented','applied')",1)[0]['n']??0);
```

### SQL01076 · Geniuspace\MultiverseMechanisms::crystalConsent

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:89`

```php
$r=$s->rows('SELECT * FROM #__gp_social_multiverse_crystals WHERE id='.$id.' AND record_id='.$record.' FOR UPDATE',1)[0]??null;
```

### SQL01077 · Geniuspace\MultiverseMechanisms::crystalConsent

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:93`

```php
$s->run('UPDATE #__gp_social_multiverse_crystals SET state='.$s->q($state).',mtime='.$s->q(self::now()).' WHERE id='.$id);
```

### SQL01078 · Geniuspace\MultiverseMechanisms::crystalApply

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:103`

```php
$r=$s->rows('SELECT * FROM #__gp_social_multiverse_crystals WHERE id='.$id.' AND record_id='.$record,1)[0]??null;
```

### SQL01079 · Geniuspace\MultiverseMechanisms::crystalApply

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:113`

```php
$s->run("UPDATE #__gp_social_multiverse_crystals SET state='applied',mtime=".$s->q(self::now()).' WHERE id='.$id." AND state='consented'");
```

### SQL01080 · Geniuspace\MultiverseMechanisms::predictionSeal

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:130`

```php
$existing=$s->rows('SELECT id FROM #__gp_social_multiverse_predictions WHERE comment_id='.$row['comment_id'],1)[0]??null;
```

### SQL01081 · Geniuspace\MultiverseMechanisms::predictionSeal

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:131`

```php
if((int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_multiverse_predictions WHERE author_id='.$row['author_id'].' AND ctime>='.$s->q(gmdate('Y-m-d H:i:s',time()-86400)),1)[0]['n']??0)>=10)throw new \DomainException('Dix prédictions par jour au maximum.',429);
```

### SQL01082 · Geniuspace\MultiverseMechanisms::prediction

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:135`

```php
$r=self::s()->rows('SELECT * FROM #__gp_social_multiverse_predictions WHERE id='.$id.' AND record_id='.$record,1)[0]??null;
```

### SQL01083 · Geniuspace\MultiverseMechanisms::predictionVote

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:141`

```php
if($r['resolve_at']<=self::now()||$s->rows('SELECT prediction_id FROM #__gp_social_multiverse_prediction_outcomes WHERE prediction_id='.$id,1))throw new \DomainException('Le vote est clos.',409);
```

### SQL01084 · Geniuspace\MultiverseMechanisms::predictionResolve

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:151`

```php
if($s->rows('SELECT prediction_id FROM #__gp_social_multiverse_prediction_outcomes WHERE prediction_id='.$id,1))throw new \DomainException('Un résultat est déjà enregistré et ne peut pas être réécrit.',409);
```

### SQL01085 · Geniuspace\MultiverseMechanisms::intent

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:157`

```php
$s->run('DELETE FROM #__gp_social_multiverse_intents WHERE record_id='.$record.' AND user_id='.$actor);
```

### SQL01086 · Geniuspace\MultiverseMechanisms::intent

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:159`

```php
$s->run('INSERT INTO #__gp_social_multiverse_intents(record_id,user_id,topic,horizon,ctime,expires_at) VALUES('.$record.','.$actor.','.$s->q($topic).','.$s->q($horizon).','.$s->q(self::now()).','.$s->q(gmdate('Y-m-d H:i:s',time()+90*86400)).') ON DUPLICATE KEY UPDATE topic=VALUES(topic),horizon=VALUES(horizon),expires_at=VALUES(expires_at)');
```

### SQL01087 · Geniuspace\MultiverseMechanisms::radar

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:166`

```php
foreach($s->rows('SELECT topic,COUNT(DISTINCT i.user_id) AS n FROM #__gp_social_multiverse_intents i INNER JOIN #__users u ON u.id=i.user_id AND u.block=0 WHERE record_id='.$record.' AND expires_at>'.$s->q(self::now()).' GROUP BY topic',10)as$r)if((int)$r['n']>=10)$out[]=['topic'=>$r['topic'],'label'=>self::TOPICS[$r['topic']]??'','members_at_least'=>(int)(floor((int)$r['n']/5)*5)];
```

### SQL01088 · Geniuspace\MultiverseMechanisms::contactPreferences

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:172`

```php
$s->run('INSERT INTO #__gp_social_multiverse_contact_preferences(user_id,enabled,amount_minor,currency,mtime) VALUES('.$actor.','.($enabled?1:0).','.$amount.", 'EUR',".$s->q(self::now()).') ON DUPLICATE KEY UPDATE enabled=VALUES(enabled),amount_minor=VALUES(amount_minor),mtime=VALUES(mtime)');
```

### SQL01089 · Geniuspace\MultiverseMechanisms::contactRequest

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:180`

```php
$old=$s->rows('SELECT id,payload_hash FROM #__gp_social_multiverse_contact_requests WHERE sender_id='.$actor.' AND request_key='.$s->q($key),1)[0]??null;
```

### SQL01090 · Geniuspace\MultiverseMechanisms::contactRequest

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:182`

```php
$pref=$s->rows('SELECT * FROM #__gp_social_multiverse_contact_preferences p INNER JOIN #__users u ON u.id=p.user_id AND u.block=0 WHERE p.user_id='.$recipient.' AND p.enabled=1 FOR UPDATE',1)[0]??null;
```

### SQL01091 · Geniuspace\MultiverseMechanisms::contactRequest

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:183`

```php
if((int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_multiverse_contact_requests WHERE sender_id='.$actor.' AND ctime>='.$s->q(gmdate('Y-m-d H:i:s',time()-86400)),1)[0]['n']??0)>=10)throw new \DomainException('Dix demandes par jour au maximum.',429);
```

### SQL01092 · Geniuspace\MultiverseMechanisms::contactDecide

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:190`

```php
$r=$s->rows('SELECT * FROM #__gp_social_multiverse_contact_requests WHERE id='.$id.' AND record_id='.$record.' FOR UPDATE',1)[0]??null;
```

### SQL01093 · Geniuspace\MultiverseMechanisms::contactDecide

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:199`

```php
$s->run('UPDATE #__gp_social_multiverse_contact_requests SET state='.$s->q($next).',response='.$s->q($next==='responded_unfunded'?$response:'').',mtime='.$s->q(self::now()).' WHERE id='.$id);
```

### SQL01094 · Geniuspace\MultiverseMechanisms::spawnTarget

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:204`

```php
$f=$s->rows("SELECT * FROM #__js_res_fields WHERE id=".$child." AND field_type='child' AND published=1",1)[0]??null;
```

### SQL01095 · Geniuspace\MultiverseMechanisms::spawn

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:216`

```php
$project=$s->rows("SELECT id,user_id FROM #__gp_social_multiverse_spawns WHERE result_id=".$record." AND kind='project' AND state='spawned'",1)[0]??null;
```

### SQL01096 · Geniuspace\MultiverseMechanisms::spawn

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:216`

```php
$electorate=array_map('intval',array_column($s->rows("SELECT user_id FROM #__gp_social_multiverse_members WHERE project_record=".$record." AND state='active'",1000),'user_id'));
```

### SQL01097 · Geniuspace\MultiverseMechanisms::spawn

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:217`

```php
$old=$s->rows('SELECT * FROM #__gp_social_multiverse_spawns WHERE user_id='.$actor.' AND token_hash='.$s->q($tokenHash),1)[0]??null;
```

### SQL01098 · Geniuspace\MultiverseMechanisms::spawn

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:220`

```php
if((int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_multiverse_spawns WHERE user_id='.$actor.' AND ctime>='.$s->q(gmdate('Y-m-d H:i:s',time()-86400)),1)[0]['n']??0)>=20)throw new \DomainException('Vingt préparations natives par jour au maximum.',429);
```

### SQL01099 · Geniuspace\MultiverseMechanisms::pending

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:234`

```php
$r=$s->rows('SELECT * FROM #__gp_social_multiverse_spawns WHERE user_id='.$actor.' AND token_hash='.$s->q(hash('sha256',$token)),1)[0]??null;
```

### SQL01100 · Geniuspace\MultiverseMechanisms::spawnLock

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:254`

```php
if((int)($s->rows('SELECT GET_LOCK('.$s->q($name).',3) AS n',1)[0]['n']??0)!==1)throw new \DomainException('Cette création est déjà en cours.',409);
```

### SQL01101 · Geniuspace\MultiverseMechanisms::releaseSpawnLocks

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:258`

```php
foreach(self::$spawnLocks as$name)$s->rows('SELECT RELEASE_LOCK('.$s->q($name).') AS n',1);
```

### SQL01102 · Geniuspace\MultiverseMechanisms::beforeSave

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:271`

```php
foreach($s->rows('SELECT id,fields FROM #__js_res_record WHERE user_id='.$actor.' AND type_id='.(int)$r['type_id'].' AND section_id='.(int)$r['section_id'].' AND title='.$s->q($r['save_title']).' AND ctime>='.$s->q($r['save_started']).' ORDER BY id DESC',100)as$candidate){$values=json_decode((string)$candidate['fields'],true)?:[];
```

### SQL01103 · Geniuspace\MultiverseMechanisms::beforeSave

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:275`

```php
self::s()->run("UPDATE #__gp_social_multiverse_spawns SET state='saving',save_started=".self::s()->q(self::now()).',save_title='.self::s()->q((string)($record['title']??'')).' WHERE id='.(int)$r['id'].' AND result_id=0');
```

### SQL01104 · Geniuspace\MultiverseMechanisms::afterSave

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:285`

```php
if($ids!==[(int)$r['source_record']]||!$s->rows("SELECT record_id FROM #__js_res_record_values WHERE record_id=".$id.' AND field_id='.(int)$r['child_field']." AND field_type='child' AND field_value=".$s->q((string)$r['source_record']),1))throw new \DomainException('La relation native créée doit être vérifiée.',409);
```

### SQL01105 · Geniuspace\MultiverseMechanisms::afterSave

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:286`

```php
$s->run("UPDATE #__gp_social_multiverse_spawns SET state='spawned',result_id=".$id.' WHERE id='.(int)$r['id'].' AND result_id=0');
```

### SQL01106 · Geniuspace\MultiverseMechanisms::projectJoin

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:294`

```php
$p=$s->rows("SELECT user_id FROM #__gp_social_multiverse_spawns WHERE result_id=".$record." AND kind='project' AND state='spawned'",1)[0]??null;
```

### SQL01107 · Geniuspace\MultiverseMechanisms::projectJoin

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:297`

```php
$s->run("UPDATE #__gp_social_multiverse_members SET state='active' WHERE project_record=".$record.' AND user_id='.$member." AND state='requested'");
```

### SQL01108 · Geniuspace\MultiverseMechanisms::milestoneVote

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:304`

```php
$p=$s->rows("SELECT * FROM #__gp_social_multiverse_spawns WHERE result_id=".$record." AND kind='milestone' AND state='spawned'",1)[0]??null;
```

### SQL01109 · Geniuspace\MultiverseMechanisms::opportunityChanged

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:312`

```php
if($s->rows('SELECT record_id FROM #__gp_social_multiverse_thresholds WHERE record_id='.$record.' AND field_id='.$field.' AND threshold_count=100',1))return;
```

### SQL01110 · Geniuspace\MultiverseMechanisms::read

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:317`

```php
foreach($s->rows('SELECT c.*,u.name AS contributor_name FROM #__gp_social_multiverse_crystals c INNER JOIN #__users u ON u.id=c.contributor_id AND u.block=0 WHERE record_id='.$record.' ORDER BY id DESC',100)as$r){if($r['state']!=='applied'&&!$editor&&(int)$r['contributor_id']!==$actor)continue;
```

### SQL01111 · Geniuspace\MultiverseMechanisms::read

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:318`

```php
foreach($s->rows('SELECT p.*,u.name AS author_name,o.outcome,o.source_url,o.note,o.ctime AS resolved_at FROM #__gp_social_multiverse_predictions p INNER JOIN #__users u ON u.id=p.author_id AND u.block=0 LEFT JOIN #__gp_social_multiverse_prediction_outcomes o ON o.prediction_id=p.id WHERE p.record_id='.$record.' ORDER BY p.id DESC',30)as$r){try{self::prediction($record,(int)$r['id']);
```

### SQL01112 · Geniuspace\MultiverseMechanisms::read

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:318`

```php
$votes=$s->rows('SELECT side,COUNT(*) AS n FROM #__gp_social_multiverse_prediction_votes v INNER JOIN #__users u ON u.id=v.user_id AND u.block=0 WHERE prediction_id='.(int)$r['id'].' GROUP BY side',2);
```

### SQL01113 · Geniuspace\MultiverseMechanisms::read

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:318`

```php
$r['my_vote']=$actor?($s->rows('SELECT side FROM #__gp_social_multiverse_prediction_votes WHERE prediction_id='.(int)$r['id'].' AND user_id='.$actor,1)[0]['side']??''):'';
```

### SQL01114 · Geniuspace\MultiverseMechanisms::read

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:319`

```php
$requests=$actor?$s->rows('SELECT q.*,c.title AS company_title FROM #__gp_social_multiverse_contact_requests q INNER JOIN #__js_res_record c ON c.id=q.company_id WHERE q.record_id='.$record.' AND (q.sender_id='.$actor.' OR q.recipient_id='.$actor.') ORDER BY q.id DESC',50):[];
```

### SQL01115 · Geniuspace\MultiverseMechanisms::read

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:320`

```php
$pref=$actor?($s->rows('SELECT enabled,amount_minor,currency FROM #__gp_social_multiverse_contact_preferences WHERE user_id='.$actor,1)[0]??['enabled'=>0,'amount_minor'=>1500,'currency'=>'EUR']):null;
```

### SQL01116 · Geniuspace\MultiverseMechanisms::read

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:321`

```php
$intent=$actor?($s->rows('SELECT topic,horizon FROM #__gp_social_multiverse_intents WHERE record_id='.$record.' AND user_id='.$actor.' AND expires_at>'.$s->q(self::now()),1)[0]??null):null;
```

### SQL01117 · Geniuspace\MultiverseMechanisms::read

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:322`

```php
foreach($s->rows("SELECT id,kind,result_id,roles,electorate,user_id FROM #__gp_social_multiverse_spawns WHERE source_record=".$record." AND state='spawned' ORDER BY id DESC",30)as$p){try{$native=ProductAccess::visible((int)$p['result_id']);
```

### SQL01118 · Geniuspace\MultiverseMechanisms::read

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:323`

```php
$nativeProject=$s->rows("SELECT * FROM #__gp_social_multiverse_spawns WHERE result_id=".$record." AND state='spawned'",1)[0]??null;
```

### SQL01119 · Geniuspace\MultiverseMechanisms::milestoneState

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:328`

```php
$votes=self::s()->rows('SELECT side,COUNT(*) AS n FROM #__gp_social_multiverse_milestone_votes WHERE milestone_record='.(int)$p['result_id'].' GROUP BY side',2);
```

### SQL01120 · Geniuspace\MultiverseMechanisms::score

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:334`

```php
foreach(self::s()->rows("SELECT p.*,o.outcome FROM #__gp_social_multiverse_predictions p INNER JOIN #__gp_social_multiverse_prediction_outcomes o ON o.prediction_id=p.id WHERE author_id=".max(0,$author)." AND o.outcome IN ('true','false') ORDER BY p.id DESC",1000)as$r){if(!$access->record((int)$r['record_id'])||!hash_equals($r['seal_hash'],self::seal($r)))continue;
```

### SQL01121 · Geniuspace\MultiverseMechanisms::inbox

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:342`

```php
foreach($s->rows('SELECT q.id,q.record_id,q.company_id,q.subject,q.amount_minor,q.recipient_minor,q.currency,q.state,q.expires_at,c.title AS company_title FROM #__gp_social_multiverse_contact_requests q INNER JOIN #__js_res_record c ON c.id=q.company_id WHERE q.recipient_id='.(int)$u->id." AND q.state IN ('requested_unfunded','accepted_unfunded') AND q.expires_at>".$s->q(self::now()).' ORDER BY q.id DESC',30)as$r){try{$native=ProductAccess::visible((int)$r['record_id']);
```

### SQL01122 · Geniuspace\MultiverseMechanisms::contactCandidates

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:348`

```php
foreach(self::s()->rows('SELECT r.id,r.user_id,u.name,p.amount_minor,p.currency FROM #__js_res_record r INNER JOIN #__gp_social_multiverse_contact_preferences p ON p.user_id=r.user_id AND p.enabled=1 INNER JOIN #__users u ON u.id=r.user_id AND u.block=0 WHERE r.user_id<>'.$actor.' ORDER BY r.id DESC',300)as$r){$user=(int)$r['user_id'];
```

### SQL01123 · Geniuspace\MultiverseMechanisms::ticker

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:354`

```php
foreach($s->rows("SELECT record_id,kind,payload,ctime FROM #__gp_social_record_events WHERE kind IN ('multiverse.coalition.threshold','multiverse.prediction.resolved','multiverse.crystal.applied','multiverse.spawn.completed')".$filter.' ORDER BY id DESC',30)as$r){$native=$access->record((int)$r['record_id']);
```

### SQL01124 · Geniuspace\MultiverseMechanisms::compact

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:368`

```php
foreach($s->rows('SELECT p.id,p.author_id,p.statement,p.seal_hash,p.comment_id,p.record_id,p.criteria,p.resolve_at,p.ctime,o.outcome FROM #__gp_social_multiverse_predictions p LEFT JOIN #__gp_social_multiverse_prediction_outcomes o ON o.prediction_id=p.id WHERE p.record_id='.$record.' ORDER BY p.id DESC',1)as$p){try{self::prediction($record,(int)$p['id']);
```

### SQL01125 · Geniuspace\MultiverseMechanisms::sidebar

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:376`

```php
foreach(self::s()->rows('SELECT DISTINCT author_id FROM #__gp_social_multiverse_predictions WHERE record_id='.$id,20)as$p){$author=(int)$p['author_id'];
```

### SQL01126 · Geniuspace\MultiverseMechanisms::sidebar

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:376`

```php
$name=self::s()->rows('SELECT name FROM #__users WHERE id='.$author.' AND block=0',1)[0]['name']??'';
```

### SQL01127 · Geniuspace\MultiverseMechanisms::render

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:394`

```php
if($actor)foreach($s->rows('SELECT id,comment FROM #__js_res_comments WHERE record_id='.$record.' AND user_id='.$actor.' AND id>1 AND published=1 AND hide=0 AND private=0 ORDER BY id DESC',30)as$c){try{self::comment($record,(int)$c['id']);
```

### SQL01128 · Geniuspace\MultiverseMechanisms::render

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:402`

```php
$comments=$s->rows('SELECT id,comment FROM #__js_res_comments WHERE record_id='.$record.' AND id>1 AND published=1 AND hide=0 AND private=0 ORDER BY id DESC',30);
```

### SQL01129 · Geniuspace\MultiverseMechanisms::renderContact

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:419`

```php
foreach(self::s()->rows("SELECT DISTINCT r.id,r.title FROM #__js_res_record r INNER JOIN #__js_res_fields f ON f.type_id=r.type_id AND f.field_type='gpteam' AND f.published=1 WHERE r.user_id=".$actor.' ORDER BY r.id DESC',30)as$c)try{ProductAccess::editable((int)$c['id']);
```

### SQL01130 · Geniuspace\MultiverseMechanisms::renderProjects

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:430`

```php
$membership=$s->rows('SELECT state FROM #__gp_social_multiverse_members WHERE project_record='.$record.' AND user_id='.$actor,1)[0]['state']??'';
```

### SQL01131 · Geniuspace\MultiverseMechanisms::renderProjects

`components/com_joomcck/site/library/php/geniuspace/MultiverseMechanisms.php:432`

```php
if($project['owner']===$actor)foreach($s->rows("SELECT m.user_id,u.name FROM #__gp_social_multiverse_members m INNER JOIN #__users u ON u.id=m.user_id AND u.block=0 WHERE project_record=".$record." AND m.state='requested'",100)as$m)$out.=self::form('project.join',$record,['operation'=>'accept','member'=>(int)$m['user_id']]).'<p>'.$e($m['name']).'</p><button>Valider ce membre</button></form>';
```

### SQL01347 · Geniuspace\Outbox::enqueue

`components/com_joomcck/site/library/php/geniuspace/Outbox.php:13`

```php
if($this->store->rows('SELECT id FROM #__gp_social_outbox WHERE '.$where,1))continue;
```

### SQL01348 · Geniuspace\Outbox::enqueue

`components/com_joomcck/site/library/php/geniuspace/Outbox.php:14`

```php
if(!$this->store->rows('SELECT id FROM #__gp_social_outbox WHERE '.$where,1))throw $e;
```

### SQL01349 · Geniuspace\Outbox::work

`components/com_joomcck/site/library/php/geniuspace/Outbox.php:19`

```php
$ids=$this->store->rows("SELECT id FROM #__gp_social_outbox WHERE state IN ('pending','sending') AND available_at<=".$this->store->q(gmdate('Y-m-d H:i:s')).' ORDER BY id',min(100,max(1,$limit)));
```

### SQL01350 · Geniuspace\Outbox::work

`components/com_joomcck/site/library/php/geniuspace/Outbox.php:20`

```php
$r=$this->store->rows('SELECT * FROM #__gp_social_outbox WHERE id='.(int)$candidate['id'].$lock,1)[0]??null;
```

### SQL01351 · Geniuspace\Outbox::work

`components/com_joomcck/site/library/php/geniuspace/Outbox.php:20`

```php
$this->store->run("UPDATE #__gp_social_outbox SET state='sending',lease=".$this->store->q($r['lease']).',attempts=attempts+1,available_at='.$this->store->q(gmdate('Y-m-d H:i:s',time()+60)).' WHERE id='.(int)$r['id']);
```

### SQL01352 · Geniuspace\Outbox::work

`components/com_joomcck/site/library/php/geniuspace/Outbox.php:22`

```php
$this->store->run('UPDATE #__gp_social_outbox SET state='.$this->store->q($state).',lease=\'\',available_at='.$this->store->q(gmdate('Y-m-d H:i:s',time()+min(3600,30*2**(int)$row['attempts']))).' WHERE id='.(int)$row['id'].' AND lease='.$this->store->q($row['lease']));
```

### SQL01398 · Geniuspace\Poll::definition

`components/com_joomcck/site/library/php/geniuspace/Poll.php:17`

```php
$f=$s->store->rows('SELECT field_type,params FROM #__js_res_fields WHERE id='.$field,1)[0]??null;
```

### SQL01399 · Geniuspace\Poll::vote

`components/com_joomcck/site/library/php/geniuspace/Poll.php:22`

```php
$s->store->rows('SELECT id FROM #__users WHERE id='.$s->user.$lock,1);
```

### SQL01400 · Geniuspace\Poll::vote

`components/com_joomcck/site/library/php/geniuspace/Poll.php:22`

```php
if($s->store->rows('SELECT user_id FROM #__gp_social_poll_votes WHERE '.$where,1))throw new \DomainException('Vous avez déjà participé à cette version.',409);
```

### SQL01401 · Geniuspace\Poll::result

`components/com_joomcck/site/library/php/geniuspace/Poll.php:26`

```php
foreach($s->store->rows('SELECT choice_key,COUNT(*) AS n FROM #__gp_social_poll_votes WHERE scope='.$s->store->q($s->company['slug']).' AND record_id='.$record.' AND field_id='.$field.' AND revision='.$s->store->q($d['revision']).' GROUP BY choice_key',20) as $r)$counts[$r['choice_key']]=(int)$r['n'];
```

### SQL01405 · Geniuspace\ProductActions::hub

`components/com_joomcck/site/library/php/geniuspace/ProductActions.php:56`

```php
if(!empty($data['join']))$s->run('INSERT IGNORE INTO #__gp_social_record_followers (record_id,field_id,user_id,ctime) VALUES ('.$record.','.$field.','.$user.','.$s->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL01406 · Geniuspace\ProductActions::hub

`components/com_joomcck/site/library/php/geniuspace/ProductActions.php:57`

```php
else $s->run('DELETE FROM #__gp_social_record_followers WHERE record_id='.$record.' AND field_id='.$field.' AND user_id='.$user);
```

### SQL01407 · JFormFieldCProduct::onFilterWhere

`components/com_joomcck/site/library/php/geniuspace/ProductField.php:62`

```php
return $this->getIds('SELECT DISTINCT record_id FROM #__js_res_record_values WHERE section_id='.(int)$section->id.' AND field_key='.$db->quote($this->key).' AND LOCATE('.$db->quote(mb_strtolower($term,'UTF-8')).',LOWER(field_value))>0');
```

### SQL01408 · Geniuspace\ProductFields::editor

`components/com_joomcck/site/library/php/geniuspace/ProductFields.php:26`

```php
foreach(ProductAccess::store()->rows('SELECT id,label,params FROM #__js_res_fields WHERE published=1 AND type_id='.$type.' AND access IN ('.implode(',',$levels?:[0]).') ORDER BY ordering',500)as$row){$params=json_decode($row['params']??'{}',true)?:[];
```

### SQL01409 · Geniuspace\ProductFields::hub

`components/com_joomcck/site/library/php/geniuspace/ProductFields.php:52`

```php
$total=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_record_followers WHERE record_id='.$id.' AND field_id='.$field,1)[0]['n']??0);
```

### SQL01410 · Geniuspace\ProductFields::hub

`components/com_joomcck/site/library/php/geniuspace/ProductFields.php:54`

```php
$following=$s->rows('SELECT user_id FROM #__gp_social_record_followers WHERE record_id='.$id.' AND field_id='.$field.' AND user_id='.(int)ProductAccess::user()->id,1);
```

### SQL01411 · Geniuspace\ProductFlow::diagnostic

`components/com_joomcck/site/library/php/geniuspace/ProductFlow.php:13`

```php
foreach($s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$job->type_id." AND field_type='gpskills' AND published=1",20)as$f){
            if(!ExtendedFields::publicField($job,(int)$f['id']))continue;
```

### SQL01412 · Geniuspace\ProductFlow::diagnostic

`components/com_joomcck/site/library/php/geniuspace/ProductFlow.php:20`

```php
foreach($s->rows("SELECT DISTINCT r.id,f.id AS field_id FROM #__js_res_record r INNER JOIN #__js_res_fields f ON f.type_id=r.type_id WHERE f.field_type='gpskills' AND f.published=1 ORDER BY r.id DESC",200)as$row){
                $public=(new NativeAccess())->record((int)$row['id']);
```

### SQL01413 · Geniuspace\ProductLifecycle::lock

`components/com_joomcck/site/library/php/geniuspace/ProductLifecycle.php:14`

```php
if((int)($s->rows('SELECT GET_LOCK('.$s->q($name).',3) AS locked',1)[0]['locked']??0)!==1)
            throw new \DomainException('Cette fiche est en cours de sauvegarde. Réessayez.',409);
```

### SQL01414 · Geniuspace\ProductLifecycle::release

`components/com_joomcck/site/library/php/geniuspace/ProductLifecycle.php:20`

```php
foreach(self::$locks as$name)$s->rows('SELECT RELEASE_LOCK('.$s->q($name).') AS released',1);
```

### SQL01415 · Geniuspace\ProductNotifications::invite

`components/com_joomcck/site/library/php/geniuspace/ProductNotifications.php:10`

```php
$s->run("UPDATE #__gp_social_notifications SET seen=1 WHERE scope='multivers' AND kind='team_invite' AND user_id=".$user.' AND target_id='.$company);
```

### SQL01416 · Geniuspace\ProductNotifications::items

`components/com_joomcck/site/library/php/geniuspace/ProductNotifications.php:17`

```php
foreach($s->rows("SELECT * FROM #__gp_social_notifications WHERE scope='multivers' AND user_id=".$user." AND seen=0 ORDER BY id DESC",20)as$n){
            try{$r=ProductAccess::visible((int)$n['target_id']);
```

### SQL01417 · Geniuspace\ProductNotifications::items

`components/com_joomcck/site/library/php/geniuspace/ProductNotifications.php:19`

```php
if($n['kind']==='team_invite'&&!$s->rows('SELECT user_id FROM #__gp_social_company_team WHERE company_id='.(int)$n['target_id'].' AND user_id='.$user." AND state='invited'",1))continue;
```

### SQL01418 · Geniuspace\ProductRead::recordChoices

`components/com_joomcck/site/library/php/geniuspace/ProductRead.php:32`

```php
foreach($s->rows('SELECT id,title FROM #__js_res_record WHERE published=1 AND hidden=0 AND LOCATE('.$s->q(mb_strtolower($query)).',LOWER(title))>0 ORDER BY mtime DESC,id DESC',100)as$row){
            if(!($material=PublicMaterial::record((int)$row['id'],false)))continue;
```

### SQL01471 · Geniuspace\RemoteData::items

`components/com_joomcck/site/library/php/geniuspace/RemoteData.php:18`

```php
$r=$this->store->rows('SELECT payload FROM #__gp_social_cache WHERE cache_key='.$this->store->q($cache).' AND expires_at>'.$this->store->q(gmdate('Y-m-d H:i:s')),1)[0]??null;
```

### SQL01472 · Geniuspace\RemoteData::items

`components/com_joomcck/site/library/php/geniuspace/RemoteData.php:25`

```php
$this->store->run('DELETE FROM #__gp_social_cache WHERE cache_key='.$this->store->q($cache));
```

### SQL01514 · Geniuspace\Social::member

`components/com_joomcck/site/library/php/geniuspace/Social.php:19`

```php
return $this->user > 0 && (bool) array_intersect($this->groups, $this->company['social']['member_groups'])
            && $this->store->rows('SELECT id FROM #__users WHERE id=' . $this->user . ' AND block=0', 1) !== []
            && $this->memberRepo->actorProfile($this->company, $this->user) !== null;
```

### SQL01515 · Geniuspace\Social::prefs

`components/com_joomcck/site/library/php/geniuspace/Social.php:28`

```php
return ($this->store->rows('SELECT * FROM #__gp_social_prefs WHERE ' . $this->where() . ' AND user_id=' . $user, 1)[0] ?? [])
            + ['visibility' => 'members', 'avatar_url' => '', 'allow_messages' => 0, 'contact' => 0];
```

### SQL01516 · Geniuspace\Social::blocked

`components/com_joomcck/site/library/php/geniuspace/Social.php:34`

```php
return $this->store->rows('SELECT actor FROM #__gp_social_edges WHERE ' . $this->where() . " AND kind='block' AND ((actor=" . $this->user . ' AND target=' . $other . ') OR (actor=' . $other . ' AND target=' . $this->user . '))', 1) !== [];
```

### SQL01517 · Geniuspace\Social::friends

`components/com_joomcck/site/library/php/geniuspace/Social.php:38`

```php
return $this->store->rows('SELECT actor FROM #__gp_social_edges WHERE ' . $this->where() . " AND kind='friend' AND state='accepted' AND ((actor=" . $this->user . ' AND target=' . $other . ') OR (actor=' . $other . ' AND target=' . $this->user . '))', 1) !== [];
```

### SQL01518 · Geniuspace\Social::profile

`components/com_joomcck/site/library/php/geniuspace/Social.php:47`

```php
$active = $this->store->rows('SELECT id FROM #__users WHERE id=' . $user . ' AND block=0', 1);
```

### SQL01519 · Geniuspace\Social::profile

`components/com_joomcck/site/library/php/geniuspace/Social.php:56`

```php
// Dedicated public URL field, or an enterprise image delivered by this network.
            $rows = $this->store->rows('SELECT r.fields FROM #__js_res_record r INNER JOIN #__js_res_fields f ON f.type_id=r.type_id'
                . ' WHERE r.id=' . $record['id'] . ' AND f.id=' . $fid . " AND f.published=1 AND f.access=1 AND f.field_type NOT IN ('passwd','uploads','paytodownload')", 1);
```

### SQL01520 · Geniuspace\Social::directory

`components/com_joomcck/site/library/php/geniuspace/Social.php:69`

```php
$rows = $this->store->rows('SELECT DISTINCT user_id FROM #__js_res_record WHERE type_id=' . $id . ' AND section_id IN (' . $ids . ') AND user_id>' . $after . ' ORDER BY user_id', 101);
```

### SQL01521 · Geniuspace\Social::joined

`components/com_joomcck/site/library/php/geniuspace/Social.php:83`

```php
return $this->store->rows('SELECT user_id FROM #__gp_social_members WHERE ' . $this->where() . ' AND group_id=' . $group . ' AND user_id=' . $user . " AND state='accepted'", 1) !== [];
```

### SQL01522 · Geniuspace\Social::canView

`components/com_joomcck/site/library/php/geniuspace/Social.php:91`

```php
$parent = $this->store->rows('SELECT * FROM #__gp_social_posts WHERE ' . $this->where() . ' AND id=' . (int) $post['parent_id'], 1)[0] ?? null;
```

### SQL01523 · Geniuspace\Social::post

`components/com_joomcck/site/library/php/geniuspace/Social.php:103`

```php
$post = $this->store->rows('SELECT * FROM #__gp_social_posts WHERE ' . $this->where() . ' AND id=' . $id, 1)[0] ?? null;
```

### SQL01524 · Geniuspace\Social::feed

`components/com_joomcck/site/library/php/geniuspace/Social.php:108`

```php
$sql = 'SELECT * FROM #__gp_social_posts WHERE ' . $this->where() . ' AND parent_id=' . $parent;
```

### SQL01525 · Geniuspace\Social::feed

`components/com_joomcck/site/library/php/geniuspace/Social.php:119`

```php
$post['likes'] = (int) ($this->store->rows('SELECT COUNT(*) AS total FROM #__gp_social_reactions WHERE ' . $this->where() . ' AND post_id=' . $post['id'], 1)[0]['total'] ?? 0);
```

### SQL01526 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:150`

```php
// Row lock serializes an actor's writes and prevents concurrent rate-limit bypass.
            $prefs = $this->store->rows('SELECT user_id FROM #__gp_social_prefs WHERE ' . $this->where() . ' AND user_id=' . $this->user, 1);
```

### SQL01527 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:152`

```php
$this->store->run('UPDATE #__gp_social_prefs SET user_id=user_id WHERE ' . $this->where() . ' AND user_id=' . $this->user);
```

### SQL01528 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:153`

```php
$count = (int) ($this->store->rows('SELECT COUNT(*) AS total FROM #__gp_social_audit WHERE ' . $this->where() . ' AND actor=' . $this->user . ' AND ctime>' . $this->store->q(gmdate('Y-m-d H:i:s', time() - 3600)), 1)[0]['total'] ?? 0);
```

### SQL01529 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:175`

```php
$this->store->run('UPDATE #__gp_social_posts SET ' . $set . ',mtime=' . $this->store->q(gmdate('Y-m-d H:i:s')) . ' WHERE ' . $this->where() . ' AND id=' . $target);
```

### SQL01530 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:178`

```php
$this->store->run('DELETE FROM #__gp_social_reactions WHERE ' . $this->where() . ' AND post_id=' . $target . ' AND user_id=' . $this->user);
```

### SQL01531 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:186`

```php
$this->store->run('UPDATE #__gp_social_edges SET state=' . $this->store->q('accepted') . ' WHERE ' . $this->where() . ' AND actor=' . $target . ' AND target=' . $this->user . " AND kind='friend' AND state='pending'");
```

### SQL01532 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:190`

```php
$this->store->run('DELETE FROM #__gp_social_edges WHERE ' . $this->where() . ' AND actor=' . $this->user . ' AND target=' . $target . ' AND kind=' . $this->store->q($kind));
```

### SQL01533 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:191`

```php
$this->store->run('DELETE FROM #__gp_social_edges WHERE ' . $this->where() . ' AND ((actor=' . $this->user . ' AND target=' . $target . ') OR (actor=' . $target . ' AND target=' . $this->user . ")) AND kind IN ('friend','follow')");
```

### SQL01534 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:194`

```php
// A second friend request cannot silently convert a pending relation to acceptance.
                        if ($action === 'friend' && $this->store->rows('SELECT actor FROM #__gp_social_edges WHERE ' . $this->where() . ' AND actor=' . $target . ' AND target=' . $this->user . " AND kind='friend'", 1)) { throw new \DomainException('Une demande existe déjà : acceptez-la explicitement.', 409);
```

### SQL01535 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:203`

```php
$this->store->run("UPDATE #__gp_social_members SET state='accepted' WHERE " . $this->where() . ' AND group_id=' . $target . ' AND user_id=' . $uid);
```

### SQL01536 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:205`

```php
$this->store->run('DELETE FROM #__gp_social_members WHERE ' . $this->where() . ' AND group_id=' . $target . ' AND user_id=' . $uid);
```

### SQL01537 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:214`

```php
case 'delete_message': case 'read_message':
                    $row = $this->store->rows('SELECT * FROM #__gp_social_messages WHERE ' . $this->where() . ' AND id=' . $target . ' AND (sender=' . $this->user . ' OR recipient=' . $this->user . ')', 1)[0] ?? null;
```

### SQL01538 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:217`

```php
$this->store->run('UPDATE #__gp_social_messages SET ' . $set . ' WHERE ' . $this->where() . ' AND id=' . $target);
```

### SQL01539 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:222`

```php
$this->store->run('UPDATE #__gp_social_prefs SET visibility=' . $this->store->q($visibility) . ',avatar_url=' . $this->store->q($avatar)
                        . ',allow_messages=' . (empty($data['allow_messages']) ? 0 : 1) . ',contact=' . (empty($data['contact']) ? 0 : 1) . ' WHERE ' . $this->where() . ' AND user_id=' . $this->user);
```

### SQL01540 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:229`

```php
'post' => $this->post($target), 'profile' => $this->profile($target),
                        'message' => $this->store->rows('SELECT id FROM #__gp_social_messages WHERE ' . $this->where() . ' AND id=' . $target . ' AND (sender=' . $this->user . ' OR recipient=' . $this->user . ')', 1),
                        'document' => (new Documents($this))->metadata($target),
                    };
```

### SQL01541 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:237`

```php
$this->store->run("UPDATE #__gp_social_reports SET state='resolved' WHERE " . $this->where() . ' AND id=' . $target);
```

### SQL01542 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:241`

```php
$this->store->run('UPDATE #__gp_social_posts SET state=' . $this->store->q($state) . ' WHERE ' . $this->where() . ' AND id=' . $target);
```

### SQL01543 · Geniuspace\Social::action

`components/com_joomcck/site/library/php/geniuspace/Social.php:244`

```php
case 'read_notifications':
                    $this->store->run('UPDATE #__gp_social_notifications SET seen=1 WHERE ' . $this->where() . ' AND user_id=' . $this->user);
```

### SQL01544 · Geniuspace\Social::inbox

`components/com_joomcck/site/library/php/geniuspace/Social.php:254`

```php
$rows = $this->store->rows('SELECT * FROM #__gp_social_messages WHERE ' . $this->where() . ' AND ((recipient=' . $this->user . ' AND deleted_recipient=0) OR (sender=' . $this->user . ' AND deleted_sender=0))'
            . ($before ? ' AND id<' . $before : '') . ' ORDER BY id DESC', 51);
```

### SQL01545 · Geniuspace\Social::notifications

`components/com_joomcck/site/library/php/geniuspace/Social.php:260`

```php
return $this->store->rows('SELECT * FROM #__gp_social_notifications WHERE ' . $this->where() . ' AND user_id=' . $this->user . ' ORDER BY id DESC', 50);
```

### SQL01546 · Geniuspace\Social::connections

`components/com_joomcck/site/library/php/geniuspace/Social.php:264`

```php
return $this->store->rows('SELECT * FROM #__gp_social_edges WHERE ' . $this->where() . ' AND (actor=' . $this->user . ' OR target=' . $this->user . ') ORDER BY ctime DESC', 100);
```

### SQL01547 · Geniuspace\Social::moderation

`components/com_joomcck/site/library/php/geniuspace/Social.php:269`

```php
return ['posts' => $this->store->rows('SELECT * FROM #__gp_social_posts WHERE ' . $this->where() . " AND state='pending' ORDER BY id", 100),
            'reports' => $this->store->rows('SELECT * FROM #__gp_social_reports WHERE ' . $this->where() . " AND state='open' ORDER BY id", 100)];
```

### SQL01548 · Geniuspace\Social::sitemap

`components/com_joomcck/site/library/php/geniuspace/Social.php:279`

```php
$profiles = 'SELECT r.user_id AS id FROM #__js_res_record r INNER JOIN #__gp_social_prefs p ON p.user_id=r.user_id AND p.scope=' . $this->scope
            . ' INNER JOIN #__users u ON u.id=r.user_id AND u.block=0 WHERE r.type_id=' . $this->company['social']['profile_type_id']
            . ' AND r.section_id IN (' . implode(',', $this->company['section_ids']) . ") AND r.published=1 AND p.visibility='public'";
```

### SQL01549 · Geniuspace\Social::sitemap

`components/com_joomcck/site/library/php/geniuspace/Social.php:282`

```php
$posts = 'SELECT id FROM #__gp_social_posts WHERE ' . $this->where() . " AND state='published' AND visibility='public' AND group_id=0 AND parent_id=0";
```

### SQL01550 · Geniuspace\Social::sitemap

`components/com_joomcck/site/library/php/geniuspace/Social.php:283`

```php
$countProfiles = $this->company['social']['public_profiles'] ? (int) ($this->store->rows(str_replace('SELECT r.user_id AS id', 'SELECT COUNT(*) AS total', $profiles), 1)[0]['total'] ?? 0) : 0;
```

### SQL01551 · Geniuspace\Social::sitemap

`components/com_joomcck/site/library/php/geniuspace/Social.php:284`

```php
$countPosts = (int) ($this->store->rows(str_replace('SELECT id', 'SELECT COUNT(*) AS total', $posts), 1)[0]['total'] ?? 0);
```

### SQL01552 · Geniuspace\SocialRouter::handle

`components/com_joomcck/site/library/php/geniuspace/SocialRouter.php:159`

```php
$rows = $s->store->rows('SELECT user_id FROM #__gp_social_members WHERE scope=' . $s->scope . ' AND group_id=' . $id . " AND state='pending'", 100);
```

### SQL01606 · Geniuspace\ProjectBoards::board

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:13`

```php
$b=$s->rows('SELECT * FROM #__gp_social_project_boards WHERE id='.$id.($lock?' FOR UPDATE':''),1)[0]??null;
```

### SQL01607 · Geniuspace\ProjectBoards::board

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:16`

```php
$role=(int)$b['owner_id']===$u?'owner':($s->rows("SELECT role FROM #__gp_social_project_members WHERE board_id=".$id.' AND user_id='.$u." AND state='active'",1)[0]['role']??'');
```

### SQL01608 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:47`

```php
// Serialize idempotency and quota by the native user row, not a process-local flag.
                $s->rows('SELECT id FROM #__users WHERE id='.$u.' FOR UPDATE',1);
```

### SQL01609 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:48`

```php
if($existing=$s->rows('SELECT id FROM #__gp_social_project_boards WHERE owner_id='.$u.' AND request_key='.$s->q($request),1))return ['id'=>(int)$existing[0]['id'],'message'=>'Dossier déjà créé.'];
```

### SQL01610 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:49`

```php
if((int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_project_boards WHERE owner_id='.$u,1)[0]['n']??0)>=100)throw new \DomainException('Cent dossiers actifs sont déjà présents.',429);
```

### SQL01611 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:55`

```php
$s->rows('SELECT id FROM #__gp_social_project_boards WHERE id='.$id.' FOR UPDATE',1);
```

### SQL01612 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:56`

```php
if(!$s->rows("SELECT m.board_id FROM #__gp_social_project_members m INNER JOIN #__gp_social_project_boards b ON b.id=m.board_id INNER JOIN #__users owner ON owner.id=b.owner_id AND owner.block=0 WHERE m.board_id=".$id.' AND m.user_id='.$u." AND m.state='invited'",1))throw new \DomainException('Invitation indisponible.',404);
```

### SQL01613 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:57`

```php
$s->run("UPDATE #__gp_social_project_members SET state='active' WHERE board_id=".$id.' AND user_id='.$u." AND state='invited'");
```

### SQL01614 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:63`

```php
$target=$s->rows('SELECT id FROM #__users WHERE username='.$s->q($username).' AND block=0',1)[0]??null;
```

### SQL01615 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:64`

```php
if($action==='revoke')$s->run('DELETE FROM #__gp_social_project_members WHERE board_id='.$id.' AND user_id='.$member);
```

### SQL01616 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:65`

```php
$s->run('INSERT INTO #__gp_social_project_members(board_id,user_id,role,state,inviter_id,ctime)VALUES('.$id.','.$member.','.$s->q($role).",'invited',".$u.','.$s->q(self::now()).") ON DUPLICATE KEY UPDATE role=VALUES(role),state='invited',inviter_id=VALUES(inviter_id)");
```

### SQL01617 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:66`

```php
elseif($action==='update'){
                $title=ProductData::text($d['title']??$b['title'],180);
```

### SQL01618 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:68`

```php
$s->run('UPDATE #__gp_social_project_boards SET title='.$s->q($title).',goal='.$s->q($goal).',steps='.$s->q($b['steps']).' WHERE id='.$id);
```

### SQL01619 · Geniuspace\ProjectBoards::action

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:70`

```php
$s->run('UPDATE #__gp_social_project_boards SET revision='.(int)$b['revision'].',mtime='.$s->q(self::now()).' WHERE id='.$id);
```

### SQL01620 · Geniuspace\ProjectBoards::read

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:76`

```php
foreach($s->rows('SELECT DISTINCT b.id FROM #__gp_social_project_boards b LEFT JOIN #__gp_social_project_members m ON m.board_id=b.id AND m.user_id='.$u." AND m.state='active' WHERE b.owner_id=".$u.' OR m.user_id='.$u.' ORDER BY b.mtime DESC,b.id DESC',100)as$row){try{$b=self::board((int)$row['id']);
```

### SQL01621 · Geniuspace\ProjectBoards::read

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:78`

```php
foreach($s->rows('SELECT revision,kind,payload,ctime FROM #__gp_social_project_events WHERE board_id='.$selected.' ORDER BY id DESC',30)as$event){$detail['history'][]=['revision'=>(int)$event['revision'],'kind'=>$event['kind'],'date'=>$event['ctime'],'snapshot'=>self::cleanSnapshot(json_decode($event['payload'],true)?:[])];
```

### SQL01622 · Geniuspace\ProjectBoards::read

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:79`

```php
$detail['members']=$s->rows('SELECT m.role,m.state,u.name'.($b['role']==='owner'?',u.username':'').' FROM #__gp_social_project_members m INNER JOIN #__users u ON u.id=m.user_id AND u.block=0 WHERE board_id='.$selected,100);
```

### SQL01623 · Geniuspace\ProjectBoards::read

`components/com_joomcck/site/library/php/geniuspace/ProjectBoards.php:81`

```php
$invites=$s->rows('SELECT b.id,b.title FROM #__gp_social_project_members m INNER JOIN #__gp_social_project_boards b ON b.id=m.board_id INNER JOIN #__users u ON u.id=b.owner_id AND u.block=0 WHERE m.user_id='.$u." AND m.state='invited' ORDER BY b.id DESC",40);
```
