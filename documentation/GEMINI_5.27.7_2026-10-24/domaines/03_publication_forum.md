# Publication et communauté

Publication courte, formulaires polymorphes, échanges, réactions, présence et modération.

Version 5.27.7. Présence dans le code ; ne prouve pas la configuration ou l’utilisation en production.

29 classes ; 171 fonctions/méthodes nommées ; 114 expressions SQL repérées dans ce domaine du noyau Geniuspace.

## Geniuspace\AuthorAssist

`components/com_joomcck/site/library/php/geniuspace/AuthorAssist.php:6`
- L8–69 · public · `function handle(array $data): array`

## Geniuspace\AuthorWorkspace

`components/com_joomcck/site/library/php/geniuspace/AuthorWorkspace.php:4`
- L6–14 · public · `function items(): array`
- L15–19 · public · `function matching(): array`

## Geniuspace\CommentLocator

`components/com_joomcck/site/library/php/geniuspace/CommentLocator.php:6`
- L8–11 · public · `function url(object $record,int $comment): string`
- L12–15 · public · `function link(string $base,int $comment): string`
- L16–33 · public · `function focus(object $model,object $query,int $limit): void`

## Geniuspace\CommentMedia

`components/com_joomcck/site/library/php/geniuspace/CommentMedia.php:6`
- L8–23 · public · `function prepare(mixed $files,int $record,int $comment,object $type): ?string`
- L24–36 · public · `function readable(int $id,int $comment=0): array`
- L37–43 · public · `function image(int $file,int $comment): never`
- L44–48 · public · `function path(array|object $file): string`

## Geniuspace\ExtendedComments

`components/com_joomcck/site/library/php/geniuspace/ExtendedComments.php:4`
- L6–15 · public · `function render(string $provider,object $type,object $item): string`

## Geniuspace\FieldCorrection

`components/com_joomcck/site/library/php/geniuspace/FieldCorrection.php:6`
- L8–22 · public · `function propose(array $data): int`
- L23–37 · public · `function decide(int $id,bool $apply): void`
- L38–46 · public · `function render(int $record): string`

## Geniuspace\ForumKnowledge

`components/com_joomcck/site/library/php/geniuspace/ForumKnowledge.php:6`
- L9–20 · public · `function state(int $record): array`
- L21–35 · public · `function change(array $data): void`
- L36–41 · public · `function reactions(int $record): array`
- L42–50 · public · `function react(array $data): void`

## Geniuspace\ForumPresence

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:6`
- L8–14 · public · `function count(): ?int`
- L16–23 · public · `function write(array $data): void`
- L24–31 · public · `function typing(int $record): array`
- L32–36 · public · `function controls(int $record): string`
- L37–46 · public · `function visit(array $data): array`
- L47–53 · public · `function readers(int $record): array`
- L54–58 · public · `function readerControls(int $record): string`
- L59–63 · public · `function badge(int $record): string`

## Geniuspace\ForumReviews

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:6`
- L8–21 · public · `function configuration(int $record, int $field=0): ?array`
- L22–26 · private · `function publicWhere(int $record,int $field): string`
- L27–40 · public · `function statistics(int $record,int $field): array`
- L41–48 · public · `function ballot(array $data,array $settings): array`
- L49–53 · public · `function persist(int $record,int $field,int $user,int $comment,array $ballot): void`
- L55–63 · public · `function nativeBallot(object $comment): ?array`
- L64–87 · public · `function submit(array $data): array`
- L88–92 · public · `function medal(float $score,string $origin): string`
- L93–96 · private · `function positives(array $pros,array $cons): string`
- L97–98 · private · `function stars(float $score): string`
- L99–107 · public · `function controls(array $data,int $field,string $prefix='nexus_review',bool $native=true): string`
- L108–112 · public · `function nativeControls(object $record): string`
- L113–123 · public · `function commentDetails(object $comment): string`
- L124–135 · public · `function render(array $data,array $record,int $field): string`
- L136–145 · private · `function schema(array $data,array $record,int $field,array $stats,string $url): void`
- L146–149 · private · `function notes(array &$review,array $pros,array $cons): void`

## Geniuspace\GamingTeam

`components/com_joomcck/site/library/php/geniuspace/GamingTeam.php:4`
- L6–16 · public · `function join(array $input): void`
- L17–27 · public · `function render(array $data,array $record,int $field): string`

## Geniuspace\ModerationBot

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:6`
- L15–42 · public · `function validate(array $input): array`
- L43–44 · private · `function flag(mixed $value): bool`
- L45–53 · public · `function config(): array`
- L54–55 · public · `function reset(): void`
- L57–74 · public · `function inspect(string $content,array $configuration): array`
- L75–76 · private · `function fold(string $s): string`
- L77–82 · private · `function domain(string $domain): string`
- L83–89 · private · `function normalizedUrl(string $url): string`
- L90–96 · private · `function urls(string $content): array`
- L97–104 · private · `function content(array $record): string`
- L105–108 · private · `function writable(): void`
- L109–130 · private · `function scoped(int $section,array $config): bool`
- L131–145 · public · `function beforeSave(array &$record): void`
- L146–150 · private · `function reject(array $decision): void`
- L151–158 · public · `function finalPublication(array &$data): void`
- L159–164 · public · `function saved(int $id): void`
- L165–172 · public · `function comment(object $table): void`
- L173–176 · public · `function finalCommentPublication(object $table): void`
- L177–181 · public · `function commentSaved(int $id): void`
- L182–183 · private · `function snapshot(array $record,int $comment=0): string`
- L184–188 · private · `function insert(array $row): int`
- L189–196 · private · `function audit(int $record,int $comment,int $owner,array $pending,array $saved): void`
- L197–200 · private · `function administrator(): void`
- L201–219 · public · `function handle(array $data): array`
- L220–226 · private · `function configure(array $data): array`
- L227–232 · public · `function notices(int $record): string`
- L233–245 · public · `function admin(): string`

## NexusAuthorForms

`components/com_joomcck/site/library/php/geniuspace/NexusAuthorForms.php:4`
- L6–20 · public · `function definitions($params=null): array`
- L21–27 · public · `function profile(int $section,string $slug): array`
- L28–43 · public · `function selected(object $view): ?array`
- L44–48 · public · `function remember(object $record,int $section): void`
- L49–53 · private · `function matches(object $field,array $requested): bool`
- L54–58 · public · `function hasValue(mixed $value): bool`
- L60–64 · private · `function optional(object $field,string $html,mixed $stored=null): string`
- L65–114 · public · `function render(object $view): string`

## NexusComposer

`components/com_joomcck/site/library/php/geniuspace/NexusComposer.php:4`
- L6–23 · public · `function destinations(string $submit,$params=null): array`

## NexusConversation

`components/com_joomcck/site/library/php/geniuspace/NexusConversation.php:7`
- L9–27 · public · `function targets(object $item, object $params, string $slot, int $limit = 6): array`
- L29–42 · public · `function comments(int $recordId, int $limit = 3): array`
- L44–55 · public · `function excerpt(object $record, int $length = 200): string`
- L57–70 · public · `function links(object $item, object $params, string $slot): string`
- L72–100 · public · `function questions(object $item, object $params, string $ask, string $commentBase=''): string`

## NexusEditorial

`components/com_joomcck/site/library/php/geniuspace/NexusEditorial.php:5`
- L7–13 · public · `function assets(): void`
- L14–17 · public · `function text($p,string $key,string $fr,string $en): string`
- L18–23 · public · `function tags($i,$p): string`
- L24–27 · public · `function minutes(string $html): int`
- L28–38 · public · `function card($i,$p,bool $featured=false): string`

## NexusParticipation

`components/com_joomcck/site/library/php/geniuspace/NexusParticipation.php:6`
- L18–31 · public · `function style(mixed $value, bool $strict = false): array`
- L33–34 · public · `function recordStyle(array|object $record): array`
- L36–37 · public · `function commentStyle(array|object $comment): array`
- L39–45 · private · `function storedStyle(array|object $row): array`
- L48–57 · public · `function beforeComment(array &$data, object $record, object $type, object $user): void`
- L60–69 · public · `function afterComment(int $commentId): void`
- L72–79 · public · `function quickTicket(string $key, int $section, int $type): array`
- L82–98 · public · `function lockTicket(string $key, int $section, int $type): void`
- L100–101 · public · `function ticketResult(): ?array`
- L103–104 · public · `function finishTicket(array $result): void`
- L106–110 · public · `function beginSave(): void`
- L112–113 · public · `function cancelSave(): void`
- L115–119 · public · `function releaseTicket(): void`
- L121–126 · private · `function writeTicket(): void`
- L129–142 · public · `function imageDestination(array|object $field, int $section, int $type): ?array`
- L144–154 · private · `function imageField(int $field, int $section, int $type): array`
- L157–170 · private · `function checkedImage(string $path, string $extension, array $meta): array`
- L173–178 · public · `function protectedGallery(mixed $value, int $field): bool`
- L180–219 · public · `function upload(): void`
- L222–246 · public · `function prepareQuick(array &$data, string $key): array`
- L248–249 · public · `function afterQuick(int $recordId, array $style): void`
- L252–265 · private · `function mergeStyle(string $table, int $id, array $style): void`
- L267–268 · private · `function plain(string $value, int $length): string`
- L270–275 · private · `function output(array $result, int $status): void`

## NexusParticipationUI

`components/com_joomcck/site/library/php/geniuspace/NexusParticipationUI.php:5`
- L11–17 · public · `function assets(): void`
- L18–21 · public · `function normalize(array $style=[]): array`
- L22–25 · public · `function classes(array $style=[]): string`
- L26–32 · public · `function badge(array $style=[]): string`
- L33–43 · public · `function controls(string $kind,array $style=[]): string`
- L44–52 · public · `function composer(): string`

## NexusQuickPublish

`components/com_joomcck/site/library/php/geniuspace/NexusQuickPublish.php:4`
- L6–14 · public · `function ticket(int $section,int $type): string`
- L15–56 · public · `function run(object $controller,callable $save,callable $saved): void`
- L57–60 · private · `function output(array $result,int $status): void`

## Geniuspace\OpenProjects

`components/com_joomcck/site/library/php/geniuspace/OpenProjects.php:6`
- L8–16 · public · `function submit(array $d): int`
- L17–22 · public · `function submissions(int $record,int $field): array`
- L23–31 · public · `function feedback(array $d): void`

## Geniuspace\RecordCommunity

`components/com_joomcck/site/library/php/geniuspace/RecordCommunity.php:5`
- L7–7 · private · `function store(): Store`
- L8–15 · public · `function catalogue(string $raw): array`
- L16–21 · private · `function definition(int $record,int $field): array`
- L22–36 · public · `function action(array $data): void`
- L37–52 · public · `function render(object $record,object $field,bool $full): string`

## Geniuspace\RecordVersions

`components/com_joomcck/site/library/php/geniuspace/RecordVersions.php:6`
- L8–12 · public · `function saved(int $record): void`
- L13–18 · public · `function history(int $record): array`
- L19–23 · public · `function changes(int $record): array`
- L24–30 · public · `function review(array $d): void`
- L31–38 · public · `function reviews(int $record,int $field): array`

## Geniuspace\RichText

`components/com_joomcck/site/library/php/geniuspace/RichText.php:5`
- L7–8 · public · `function render(string $text): string`

## Geniuspace\SpoilerShield

`components/com_joomcck/site/library/php/geniuspace/SpoilerShield.php:6`
- L8–16 · public · `function definition(int $record): ?array`
- L17–24 · public · `function pending(int $record): bool`
- L25–28 · public · `function label(int $record): string`
- L29–33 · public · `function hit(array $hit): array`
- L34–39 · public · `function card(int $record,string $html): string`

## Geniuspace\StructuredEditor

`components/com_joomcck/site/library/php/geniuspace/StructuredEditor.php:6`
- L8–12 · public · `function definitions(): array`
- L13–20 · private · `function get(array $data, string $key, mixed $default = ''): mixed`
- L21–26 · private · `function set(array &$data, string $key, mixed $value): void`
- L27–28 · private · `function name(string $prefix, string $key): string`
- L29–35 · public · `function duration(mixed $value): int`
- L36–83 · private · `function controls(array $specs, array $data, string $prefix, array $defaults, int $field): string`
- L84–112 · public · `function render(object $field, string $kind, string $value, int $record): string`
- L113–141 · private · `function normalize(array $specs, array $input, array $old, array $defaults,string $timezone='UTC'): array`
- L142–156 · public · `function submitted(object $field, string $kind, mixed $value): string`

## Geniuspace\WriterDrafts

`components/com_joomcck/site/library/php/geniuspace/WriterDrafts.php:5`
- L7–12 · public · `function save(array $d): array`
- L13–16 · public · `function read(string $token): array`

## Geniuspace\ContextQuestions

`components/com_joomcck/site/library/php/geniuspace/ContextQuestions.php:6`
- L8–8 · private · `function plain(string $text): string`
- L9–18 · public · `function prepare(object $comment): void`
- L19–28 · public · `function resolve(array|object $comment): ?array`
- L29–33 · public · `function render(object $comment): string`

## Geniuspace\LegacyMembers

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:6`
- L9–10 · private · `function admin(): void`
- L11–33 · public · `function parse(string $path): array`
- L34–39 · private · `function directory(): string`
- L40–44 · public · `function prepare(string $path,bool $realAccounts=false): array`
- L45–49 · private · `function write(string$id,array$job): void`
- L50–53 · private · `function native(string $name,array$data): object`
- L54–57 · private · `function defaults(string$file,string$xpath='./fields'): array`
- L58–74 · private · `function schema(): array`
- L75–111 · public · `function batch(string$id): array`

## Geniuspace\PublicationExperience

`components/com_joomcck/site/library/php/geniuspace/PublicationExperience.php:6`
- L8–21 · public · `function catalogue(int $hub,object $params): array`
- L23–28 · public · `function modal(int $hub,object $params): string`
- L31–42 · public · `function receipt(int $id,string $task): void`
- L45–64 · public · `function companyDefaults(array $record): array`

## Geniuspace\NativeAuthoring

`components/com_joomcck/site/library/php/geniuspace/NativeAuthoring.php:6`
- L8–20 · public · `function profile(int $section,?string $slug=''): ?array`

## SQL et données

Les expressions suivantes sont du PHP source ; les variables ne sont pas évaluées. Pour un EXPLAIN réel, reconstruire une requête paramétrée sur une copie de test.

### SQL00687 · Geniuspace\AuthorAssist::handle

`components/com_joomcck/site/library/php/geniuspace/AuthorAssist.php:15`

```php
$f=$store->rows('SELECT id,type_id,field_type,params,access FROM #__js_res_fields WHERE id='.$field.' AND published=1',1)[0]??null;
```

### SQL00688 · Geniuspace\AuthorAssist::handle

`components/com_joomcck/site/library/php/geniuspace/AuthorAssist.php:19`

```php
$r=$id?$store->rows('SELECT * FROM #__js_res_record WHERE id='.$id,1)[0]??null:null;
```

### SQL00689 · Geniuspace\AuthorAssist::handle

`components/com_joomcck/site/library/php/geniuspace/AuthorAssist.php:24`

```php
$record->categories=array_column($store->rows('SELECT catid FROM #__js_res_record_category WHERE record_id='.$id,100),'catid');
```

### SQL00690 · Geniuspace\AuthorAssist::handle

`components/com_joomcck/site/library/php/geniuspace/AuthorAssist.php:55`

```php
$r=$store->rows('SELECT id,user_id,type_id,section_id FROM #__js_res_record WHERE id='.$id,1)[0]??null;
```

### SQL00691 · Geniuspace\AuthorAssist::handle

`components/com_joomcck/site/library/php/geniuspace/AuthorAssist.php:57`

```php
$f=$store->rows('SELECT field_type,params,access FROM #__js_res_fields WHERE id='.$field.' AND type_id='.(int)$r['type_id'].' AND published=1',1)[0]??null;
```

### SQL00692 · Geniuspace\AuthorWorkspace::items

`components/com_joomcck/site/library/php/geniuspace/AuthorWorkspace.php:9`

```php
foreach($s->rows('SELECT * FROM #__js_res_record WHERE user_id='.$u.' ORDER BY mtime',40)as$r){
            try{ProductAccess::visible((int)$r['id']);
```

### SQL00693 · Geniuspace\AuthorWorkspace::items

`components/com_joomcck/site/library/php/geniuspace/AuthorWorkspace.php:11`

```php
$q=$s->rows('SELECT user_id FROM #__js_res_comments WHERE id='.(int)$c['id'],1)[0]??[];
```

### SQL00694 · Geniuspace\AuthorWorkspace::matching

`components/com_joomcck/site/library/php/geniuspace/AuthorWorkspace.php:17`

```php
$goal=$s->rows('SELECT skills FROM #__gp_social_experience_goals WHERE user_id='.$u,1)[0]['skills']??'[]';
```

### SQL00709 · Geniuspace\CommentLocator::focus

`components/com_joomcck/site/library/php/geniuspace/CommentLocator.php:21`

```php
$c=$s->rows('SELECT * FROM #__js_res_comments WHERE id='.$target.' AND record_id='.$record,1)[0]??null;
```

### SQL00710 · Geniuspace\CommentLocator::focus

`components/com_joomcck/site/library/php/geniuspace/CommentLocator.php:27`

```php
$root=$s->rows('SELECT id FROM #__js_res_comments WHERE record_id='.$record.' AND parent_id=1 AND lft<='.(int)$c['lft'].' AND rgt>='.(int)$c['rgt'].' ORDER BY lft DESC',1)[0]??null;
```

### SQL00711 · Geniuspace\CommentLocator::focus

`components/com_joomcck/site/library/php/geniuspace/CommentLocator.php:31`

```php
$before->clear('select')->clear('order')->select('COUNT(*)')->where('('.$column.$compare.$value.' OR ('.$column.'='.$value.' AND c.id<'.(int)$root['id'].'))');
```

### SQL00712 · Geniuspace\CommentMedia::prepare

`components/com_joomcck/site/library/php/geniuspace/CommentMedia.php:11`

```php
$old=$store->rows('SELECT attachment FROM #__js_res_comments WHERE id='.$comment.' AND record_id='.$record,1)[0]??[];
```

### SQL00713 · Geniuspace\CommentMedia::prepare

`components/com_joomcck/site/library/php/geniuspace/CommentMedia.php:13`

```php
$file=$store->rows('SELECT * FROM #__js_res_files WHERE filename='.$store->q($name).' AND saved<>2',1)[0]??null;
```

### SQL00714 · Geniuspace\CommentMedia::readable

`components/com_joomcck/site/library/php/geniuspace/CommentMedia.php:26`

```php
$file=$s->rows('SELECT * FROM #__js_res_files WHERE id='.$id.' AND saved<>2',1)[0]??null;
```

### SQL00715 · Geniuspace\CommentMedia::readable

`components/com_joomcck/site/library/php/geniuspace/CommentMedia.php:27`

```php
$rows=$comment?$s->rows('SELECT * FROM #__js_res_comments WHERE id='.$comment,1):$s->rows('SELECT * FROM #__js_res_comments WHERE record_id='.(int)$file['record_id'].' AND attachment LIKE '.$s->q('%'.$s->db->escape($file['filename'],true).'%'),100);
```

### SQL00910 · Geniuspace\FieldCorrection::propose

`components/com_joomcck/site/library/php/geniuspace/FieldCorrection.php:13`

```php
if(!$public||!$meta||!in_array($meta['field_type'],['text','textarea','html','select','digits'],true))throw new \DomainException('Un field public compatible est requis.',404);
```

### SQL00911 · Geniuspace\FieldCorrection::propose

`components/com_joomcck/site/library/php/geniuspace/FieldCorrection.php:17`

```php
if(count($s->rows("SELECT id FROM #__gp_social_field_corrections WHERE author_id=".$user." AND state='pending'",31))>=30)throw new \DomainException('Traitez vos propositions en attente avant d’en ajouter.',429);
```

### SQL00912 · Geniuspace\FieldCorrection::decide

`components/com_joomcck/site/library/php/geniuspace/FieldCorrection.php:25`

```php
$row=$s->rows('SELECT * FROM #__gp_social_field_corrections WHERE id='.$id,1)[0]??null;
```

### SQL00913 · Geniuspace\FieldCorrection::decide

`components/com_joomcck/site/library/php/geniuspace/FieldCorrection.php:27`

```php
$fresh=$s->rows('SELECT state FROM #__gp_social_field_corrections WHERE id='.$id.' FOR UPDATE',1)[0]??null;
```

### SQL00914 · Geniuspace\FieldCorrection::decide

`components/com_joomcck/site/library/php/geniuspace/FieldCorrection.php:30`

```php
$field=ProductAccess::field((int)$row['record_id'],(int)$row['field_id'],['text','textarea','html','select','digits'],true);
```

### SQL00915 · Geniuspace\FieldCorrection::decide

`components/com_joomcck/site/library/php/geniuspace/FieldCorrection.php:31`

```php
if($field['field']['field_type']==='select')$value=[$value];
```

### SQL00916 · Geniuspace\FieldCorrection::decide

`components/com_joomcck/site/library/php/geniuspace/FieldCorrection.php:34`

```php
$s->run('UPDATE #__gp_social_field_corrections SET state='.$s->q($apply?'applied':'rejected').',reviewer_id='.(int)ProductAccess::user()->id.',mtime='.$s->q(gmdate('Y-m-d H:i:s')).' WHERE id='.$id);
```

### SQL00917 · Geniuspace\FieldCorrection::render

`components/com_joomcck/site/library/php/geniuspace/FieldCorrection.php:41`

```php
foreach($s->rows("SELECT * FROM #__gp_social_field_corrections WHERE record_id=".$record." AND state='pending' ORDER BY id DESC",30)as$c){
            $out.='<section class="gp-product-widget"><h3>Correction proposée</h3><p>'.Text::escape($c['reason']).'</p><blockquote>'.Text::escape($c['proposed']).'</blockquote>';
```

### SQL00932 · Geniuspace\ForumKnowledge::state

`components/com_joomcck/site/library/php/geniuspace/ForumKnowledge.php:12`

```php
$state=$s->rows('SELECT * FROM #__gp_social_forum_states WHERE record_id='.$record,1)[0]??[
            'state'=>'open','accepted_comment'=>0,'summary_record'=>0,'revision'=>0,'actor_id'=>0,'mtime'=>''];
```

### SQL00933 · Geniuspace\ForumKnowledge::state

`components/com_joomcck/site/library/php/geniuspace/ForumKnowledge.php:16`

```php
if(!$s->rows('SELECT id FROM #__js_res_comments WHERE id='.(int)$state['accepted_comment'].' AND record_id='.$record.' AND published=1 AND private=0 AND access IN ('.implode(',',$levels).')',1))$state['state']='stale';
```

### SQL00934 · Geniuspace\ForumKnowledge::change

`components/com_joomcck/site/library/php/geniuspace/ForumKnowledge.php:28`

```php
$row=$s->rows('SELECT id FROM #__js_res_comments WHERE id='.$comment.' AND record_id='.$record.' AND published=1 AND private=0 AND access IN ('.implode(',',$levels).')',1);
```

### SQL00935 · Geniuspace\ForumKnowledge::change

`components/com_joomcck/site/library/php/geniuspace/ForumKnowledge.php:33`

```php
$s->run('INSERT INTO #__gp_social_forum_states (record_id,state,accepted_comment,summary_record,actor_id,revision,mtime) VALUES ('.$record.','.$s->q($state).','.$comment.','.$summary.','.(int)ProductAccess::user()->id.',1,'.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE state=VALUES(state),accepted_comment=VALUES(accepted_comment),summary_record=VALUES(summary_record),actor_id=VALUES(actor_id),revision=revision+1,mtime=VALUES(mtime)');
```

### SQL00936 · Geniuspace\ForumKnowledge::reactions

`components/com_joomcck/site/library/php/geniuspace/ForumKnowledge.php:39`

```php
foreach($s->rows('SELECT kind,COUNT(*) AS n FROM #__gp_social_forum_reactions WHERE record_id='.$record.' GROUP BY kind',10)as$r)if(isset($counts[$r['kind']]))$counts[$r['kind']]=(int)$r['n'];
```

### SQL00937 · Geniuspace\ForumKnowledge::react

`components/com_joomcck/site/library/php/geniuspace/ForumKnowledge.php:46`

```php
$s->rows('SELECT id FROM #__js_res_record WHERE id='.$record.' FOR UPDATE',1);
```

### SQL00938 · Geniuspace\ForumKnowledge::react

`components/com_joomcck/site/library/php/geniuspace/ForumKnowledge.php:48`

```php
if($s->rows('SELECT kind FROM #__gp_social_forum_reactions WHERE '.$where,1))$s->run('DELETE FROM #__gp_social_forum_reactions WHERE '.$where);
```

### SQL00939 · Geniuspace\ForumPresence::count

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:13`

```php
return (int)$db->setQuery('SELECT COUNT(DISTINCT s.userid) FROM #__session AS s INNER JOIN #__users AS u ON u.id=s.userid WHERE s.client_id=0 AND s.guest=0 AND s.userid>0 AND u.block=0 AND s.time>'.(time()-300))->loadResult();
```

### SQL00940 · Geniuspace\ForumPresence::write

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:20`

```php
$s->run('DELETE FROM #__gp_social_forum_presence WHERE expires_at<'.time());
```

### SQL00941 · Geniuspace\ForumPresence::write

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:21`

```php
$s->run('DELETE FROM #__gp_social_forum_presence WHERE record_id='.$record.' AND user_id='.$user);
```

### SQL00942 · Geniuspace\ForumPresence::write

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:22`

```php
$s->run('INSERT INTO #__gp_social_forum_presence(record_id,user_id,typing,expires_at) VALUES('.$record.','.$user.',1,'.(time()+20).') ON DUPLICATE KEY UPDATE typing=1,expires_at=VALUES(expires_at)');
```

### SQL00943 · Geniuspace\ForumPresence::typing

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:29`

```php
$count=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_forum_presence p INNER JOIN #__users u ON u.id=p.user_id WHERE '.$where,1)[0]['n']??0);
```

### SQL00944 · Geniuspace\ForumPresence::typing

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:30`

```php
$rows=$s->rows('SELECT u.name FROM #__gp_social_forum_presence p INNER JOIN #__users u ON u.id=p.user_id WHERE '.$where,3);
```

### SQL00945 · Geniuspace\ForumPresence::visit

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:40`

```php
$s->run('DELETE FROM #__gp_social_forum_readers WHERE record_id='.$record.' AND user_id='.$user);
```

### SQL00946 · Geniuspace\ForumPresence::visit

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:43`

```php
$s->run('DELETE FROM #__gp_social_forum_readers WHERE expires_at<'.time());
```

### SQL00947 · Geniuspace\ForumPresence::visit

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:44`

```php
$s->run('INSERT INTO #__gp_social_forum_readers(record_id,user_id,role,expires_at) VALUES('.$record.','.$user.','.$s->q($role).','.(time()+90).') ON DUPLICATE KEY UPDATE role=VALUES(role),expires_at=VALUES(expires_at)');
```

### SQL00948 · Geniuspace\ForumPresence::readers

`components/com_joomcck/site/library/php/geniuspace/ForumPresence.php:51`

```php
foreach($s->rows('SELECT p.role,COUNT(*) AS n FROM #__gp_social_forum_readers p INNER JOIN #__users u ON u.id=p.user_id AND u.block=0 WHERE p.record_id='.$record.' AND p.expires_at>'.time().' GROUP BY p.role',3)as$row)if(array_key_exists($row['role'],$counts))$counts[$row['role']]=(int)$row['n'];
```

### SQL00988 · Geniuspace\ForumReviews::configuration

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:11`

```php
$fields=$s->rows('SELECT * FROM #__js_res_fields WHERE type_id='.(int)$r['type_id'].' AND published=1',500);
```

### SQL00989 · Geniuspace\ForumReviews::statistics

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:33`

```php
$total=$s->rows('SELECT COUNT(*) AS n,AVG('.$expression.') AS average'.$join,1)[0]??[];
```

### SQL00990 · Geniuspace\ForumReviews::statistics

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:34`

```php
foreach($s->rows('SELECT ROUND('.$expression.') AS bucket,COUNT(*) AS n'.$join.' GROUP BY ROUND('.$expression.')',5)as$row)$distribution[(int)$row['bucket']]=(int)$row['n'];
```

### SQL00991 · Geniuspace\ForumReviews::statistics

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:37`

```php
$row=$s->rows('SELECT AVG(CAST('.$v.' AS DECIMAL(3,2))) AS average,COUNT('.$v.') AS n'.$join,1)[0]??[];
```

### SQL00992 · Geniuspace\ForumReviews::statistics

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:38`

```php
$rows=$s->rows('SELECT '.$expression.' AS score,v.scores,v.comment_id,c.comment,c.name,c.ctime,d.pros,d.cons'.$join.' ORDER BY c.ctime DESC,c.id DESC',20);
```

### SQL00993 · Geniuspace\ForumReviews::persist

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:51`

```php
$s->run('INSERT INTO #__gp_social_forum_reviews (record_id,field_id,user_id,comment_id,score,scores,mtime) VALUES ('.$record.','.$field.','.$user.','.$comment.','.$ballot['score'].','.$s->q(Seo::json($ballot['scores'])).','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE comment_id=VALUES(comment_id),score=VALUES(score),scores=VALUES(scores),mtime=VALUES(mtime)');
```

### SQL00994 · Geniuspace\ForumReviews::persist

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:52`

```php
$s->run('INSERT INTO #__gp_social_forum_review_details (comment_id,pros,cons) VALUES ('.$comment.','.$s->q(Seo::json($ballot['pros'])).','.$s->q(Seo::json($ballot['cons'])).') ON DUPLICATE KEY UPDATE pros=VALUES(pros),cons=VALUES(cons)');
```

### SQL00995 · Geniuspace\ForumReviews::submit

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:76`

```php
$s->rows('SELECT id FROM #__js_res_record WHERE id='.$record.' FOR UPDATE',1);
```

### SQL00996 · Geniuspace\ForumReviews::submit

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:77`

```php
$existing=$s->rows('SELECT c.* FROM #__gp_social_forum_reviews v INNER JOIN #__js_res_comments c ON c.id=v.comment_id AND c.record_id=v.record_id AND c.user_id=v.user_id WHERE v.record_id='.$record.' AND v.field_id='.$field.' AND v.user_id='.$user,1)[0]??null;
```

### SQL00997 · Geniuspace\ForumReviews::commentDetails

`components/com_joomcck/site/library/php/geniuspace/ForumReviews.php:116`

```php
$row=$s->rows('SELECT v.*,d.pros,d.cons FROM #__gp_social_forum_reviews v LEFT JOIN #__gp_social_forum_review_details d ON d.comment_id=v.comment_id WHERE v.comment_id='.(int)$comment->id.' AND v.record_id='.(int)$comment->record_id,1)[0]??null;
```

### SQL01011 · Geniuspace\GamingTeam::join

`components/com_joomcck/site/library/php/geniuspace/GamingTeam.php:10`

```php
$s->rows('SELECT id FROM #__js_res_record WHERE id='.$record.' FOR UPDATE',1);
```

### SQL01012 · Geniuspace\GamingTeam::join

`components/com_joomcck/site/library/php/geniuspace/GamingTeam.php:11`

```php
$s->run('DELETE FROM #__gp_social_record_followers WHERE '.$where.' AND user_id='.$user);
```

### SQL01013 · Geniuspace\GamingTeam::join

`components/com_joomcck/site/library/php/geniuspace/GamingTeam.php:12`

```php
if($s->rows('SELECT user_id FROM #__gp_social_record_followers WHERE '.$where.' AND user_id='.$user,1))return;
```

### SQL01014 · Geniuspace\GamingTeam::join

`components/com_joomcck/site/library/php/geniuspace/GamingTeam.php:13`

```php
$count=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_record_followers WHERE user_id IN (SELECT id FROM #__users WHERE block=0) AND '.$where,1)[0]['n']??0);
```

### SQL01015 · Geniuspace\GamingTeam::join

`components/com_joomcck/site/library/php/geniuspace/GamingTeam.php:14`

```php
$s->run('INSERT INTO #__gp_social_record_followers (record_id,field_id,user_id,ctime) VALUES ('.$record.','.$field.','.$user.','.$s->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL01016 · Geniuspace\GamingTeam::render

`components/com_joomcck/site/library/php/geniuspace/GamingTeam.php:19`

```php
$members=$s->rows('SELECT u.id,u.name FROM #__gp_social_record_followers AS m INNER JOIN #__users AS u ON u.id=m.user_id WHERE m.record_id='.$id.' AND m.field_id='.$field.' AND u.block=0 ORDER BY m.ctime',64);
```

### SQL01060 · Geniuspace\ModerationBot::scoped

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:114`

```php
$row=$s->rows('SELECT published,params FROM #__js_res_sections WHERE id='.$section,1)[0]??[];
```

### SQL01061 · Geniuspace\ModerationBot::scoped

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:122`

```php
foreach($s->rows("SELECT params FROM #__js_res_sections WHERE published=1 AND params LIKE '%nexus_forum7%'",1000)as$hub){
            $hp=new \Joomla\Registry\Registry($hub['params']??'{}');
```

### SQL01062 · Geniuspace\ModerationBot::comment

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:168`

```php
$prior=$id?ProductAccess::store()->rows('SELECT * FROM #__js_res_comments WHERE id='.$id,1)[0]??null:null;
```

### SQL01063 · Geniuspace\ModerationBot::commentSaved

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:179`

```php
$r=ProductAccess::store()->rows('SELECT * FROM #__js_res_comments WHERE id='.$id,1)[0]??[];
```

### SQL01064 · Geniuspace\ModerationBot::insert

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:187`

```php
$s->run('INSERT INTO #__gp_social_moderation_events ('.$cols.') VALUES ('.$values.')');
```

### SQL01065 · Geniuspace\ModerationBot::audit

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:192`

```php
$existing=$s->rows('SELECT id FROM #__gp_social_moderation_events WHERE record_id='.$record.' AND comment_id='.$comment.' AND snapshot_hash='.$s->q($hash).' AND action='.$s->q($decision['action'])." AND status='active'",1);
```

### SQL01066 · Geniuspace\ModerationBot::handle

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:208`

```php
$event=$s->rows('SELECT * FROM #__gp_social_moderation_events WHERE id='.$id.' FOR UPDATE',1)[0]??null;
```

### SQL01067 · Geniuspace\ModerationBot::handle

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:210`

```php
$current=$comment?($s->rows('SELECT * FROM #__js_res_comments WHERE id='.$comment.' AND record_id='.$record.' FOR UPDATE',1)[0]??null):($s->rows('SELECT * FROM #__js_res_record WHERE id='.$record.' FOR UPDATE',1)[0]??null);
```

### SQL01068 · Geniuspace\ModerationBot::handle

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:216`

```php
$s->run('UPDATE #__gp_social_moderation_events SET status='.$s->q($status).',decision_by='.(int)ProductAccess::user()->id.',decision_at='.$s->q($now).' WHERE id='.$id);
```

### SQL01069 · Geniuspace\ModerationBot::configure

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:224`

```php
$r=$s->rows("SELECT extension_id,params FROM #__extensions WHERE element='com_joomcck' AND type='component' FOR UPDATE",1)[0]??null;
```

### SQL01070 · Geniuspace\ModerationBot::configure

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:224`

```php
$s->run('UPDATE #__extensions SET params='.$s->q(Seo::json($p)).' WHERE extension_id='.(int)$r['extension_id']);
```

### SQL01071 · Geniuspace\ModerationBot::notices

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:230`

```php
foreach(ProductAccess::store()->rows('SELECT action,rules,comment_id FROM #__gp_social_moderation_events WHERE record_id='.$record." AND status='active'".($admin?'':' AND owner_id='.(int)$u->id).' ORDER BY id DESC',20)as$e){$labels=array_column(json_decode($e['rules'],true)?:[],'label');
```

### SQL01072 · Geniuspace\ModerationBot::admin

`components/com_joomcck/site/library/php/geniuspace/ModerationBot.php:241`

```php
$rows=ProductAccess::store()->rows('SELECT * FROM #__gp_social_moderation_events ORDER BY id DESC',100);
```

### SQL01182 · NexusComposer::destinations

`components/com_joomcck/site/library/php/geniuspace/NexusComposer.php:13`

```php
foreach($store->rows('SELECT id,`key`,label,alias,field_type,params,access FROM #__js_res_fields WHERE published=1 AND type_id='.$type.' ORDER BY ordering,id',500)as$f){
            $p=new \Joomla\Registry\Registry($f['params']);
```

### SQL01183 · NexusConversation::comments

`components/com_joomcck/site/library/php/geniuspace/NexusConversation.php:39`

```php
$total = (int)$db->setQuery('SELECT COUNT(*) FROM #__js_res_comments WHERE '.$where)->loadResult();
```

### SQL01184 · NexusConversation::comments

`components/com_joomcck/site/library/php/geniuspace/NexusConversation.php:40`

```php
$items = $db->setQuery('SELECT id,name,comment,ctime,parent_id,published,hide,private,access FROM #__js_res_comments WHERE '.$where.' ORDER BY ctime DESC,id DESC', 0, max(1, min(6, $limit)))->loadObjectList();
```

### SQL01185 · NexusConversation::excerpt

`components/com_joomcck/site/library/php/geniuspace/NexusConversation.php:47`

```php
$ids = $db->setQuery("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$record->type_id." AND published=1 AND field_type IN ('text','textarea','html') ORDER BY ordering,id")->loadColumn();
```

### SQL01218 · NexusParticipation::afterComment

`components/com_joomcck/site/library/php/geniuspace/NexusParticipation.php:66`

```php
$row = $db->setQuery('SELECT id,record_id,type_id,user_id FROM #__js_res_comments WHERE id='.$commentId)->loadObject();
```

### SQL01219 · NexusParticipation::imageField

`components/com_joomcck/site/library/php/geniuspace/NexusParticipation.php:147`

```php
$row = $db->setQuery('SELECT * FROM #__js_res_fields WHERE id='.$field.' AND type_id='.$type.' AND published=1')->loadObject();
```

### SQL01220 · NexusParticipation::prepareQuick

`components/com_joomcck/site/library/php/geniuspace/NexusParticipation.php:233`

```php
// Quick requests cannot smuggle unverified filenames through another upload field.
        $uploadFields = $db->setQuery('SELECT id FROM #__js_res_fields WHERE type_id='.$type.' AND field_type IN ('.$db->quote('gallery').','.$db->quote('uploads').')')->loadColumn();
```

### SQL01221 · NexusParticipation::prepareQuick

`components/com_joomcck/site/library/php/geniuspace/NexusParticipation.php:237`

```php
$file = $db->setQuery('SELECT * FROM #__js_res_files WHERE id='.$id)->loadObject();
```

### SQL01222 · NexusParticipation::mergeStyle

`components/com_joomcck/site/library/php/geniuspace/NexusParticipation.php:257`

```php
$row = $db->setQuery('SELECT params FROM '.$table.' WHERE id='.$id)->loadObject();
```

### SQL01223 · NexusParticipation::mergeStyle

`components/com_joomcck/site/library/php/geniuspace/NexusParticipation.php:261`

```php
$db->setQuery('UPDATE '.$table.' SET params='.$db->quote($next).' WHERE id='.$id.' AND '.($row->params === null ? 'params IS NULL' : 'params='.$db->quote($row->params)))->execute();
```

### SQL01225 · NexusQuickPublish::run

`components/com_joomcck/site/library/php/geniuspace/NexusQuickPublish.php:29`

```php
$category=$db->setQuery('SELECT * FROM #__js_res_categories WHERE id='.$id.' AND section_id='.(int)$section->id.' AND published=1')->loadObject();
```

### SQL01226 · NexusQuickPublish::run

`components/com_joomcck/site/library/php/geniuspace/NexusQuickPublish.php:46`

```php
$row=$db->setQuery('SELECT * FROM #__js_res_record WHERE id='.$id.' AND user_id='.(int)$user->id)->loadObject();
```

### SQL01343 · Geniuspace\OpenProjects::submit

`components/com_joomcck/site/library/php/geniuspace/OpenProjects.php:14`

```php
$n=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_open_project_submissions WHERE user_id='.$u.' AND ctime>='.$s->q(gmdate('Y-m-d H:i:s',time()-86400)),1)[0]['n']??0);
```

### SQL01344 · Geniuspace\OpenProjects::submissions

`components/com_joomcck/site/library/php/geniuspace/OpenProjects.php:21`

```php
return ProductAccess::store()->rows('SELECT id,user_id,response,proof_record,status,feedback,source_hash,ctime FROM #__gp_social_open_project_submissions WHERE '.$where.' ORDER BY id DESC',100);
```

### SQL01345 · Geniuspace\OpenProjects::feedback

`components/com_joomcck/site/library/php/geniuspace/OpenProjects.php:25`

```php
$row=$s->rows('SELECT * FROM #__gp_social_open_project_submissions WHERE id='.$id,1)[0]??null;
```

### SQL01346 · Geniuspace\OpenProjects::feedback

`components/com_joomcck/site/library/php/geniuspace/OpenProjects.php:30`

```php
$s->run('UPDATE #__gp_social_open_project_submissions SET status='.$s->q($state).',reviewer_id='.$u.',feedback='.$s->q($text).',mtime='.$s->q(gmdate('Y-m-d H:i:s')).' WHERE id='.$id);
```

### SQL01445 · Geniuspace\RecordCommunity::action

`components/com_joomcck/site/library/php/geniuspace/RecordCommunity.php:28`

```php
$store->run('INSERT IGNORE INTO #__gp_social_record_followers (record_id,field_id,user_id,ctime) VALUES ('.$record.','.$field.','.$actor.','.$store->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL01446 · Geniuspace\RecordCommunity::action

`components/com_joomcck/site/library/php/geniuspace/RecordCommunity.php:29`

```php
elseif($action==='unfollow')$store->run('DELETE FROM #__gp_social_record_followers WHERE '.$where);
```

### SQL01447 · Geniuspace\RecordCommunity::action

`components/com_joomcck/site/library/php/geniuspace/RecordCommunity.php:33`

```php
// A recognition is free and unique per user/catalogue item. No monetary or credit transfer.
                $store->run('INSERT IGNORE INTO #__gp_social_record_gifts (record_id,field_id,user_id,gift,ctime) VALUES ('.$record.','.$field.','.$actor.','.$store->q($gift).','.$store->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL01448 · Geniuspace\RecordCommunity::render

`components/com_joomcck/site/library/php/geniuspace/RecordCommunity.php:41`

```php
$total=(int)($store->rows('SELECT COUNT(*) AS n FROM #__gp_social_record_followers WHERE '.$where,1)[0]['n']??0);
```

### SQL01449 · Geniuspace\RecordCommunity::render

`components/com_joomcck/site/library/php/geniuspace/RecordCommunity.php:42`

```php
$gifts=$store->rows('SELECT gift,COUNT(*) AS n FROM #__gp_social_record_gifts WHERE '.$where.' GROUP BY gift',40);
```

### SQL01450 · Geniuspace\RecordCommunity::render

`components/com_joomcck/site/library/php/geniuspace/RecordCommunity.php:46`

```php
$following=(bool)$store->rows('SELECT user_id FROM #__gp_social_record_followers WHERE '.$where.' AND user_id='.(int)$user->id,1);
```

### SQL01451 · Geniuspace\RecordVersions::saved

`components/com_joomcck/site/library/php/geniuspace/RecordVersions.php:11`

```php
$s->run('INSERT IGNORE INTO #__gp_social_record_versions (record_id,source_hash,public_hash,payload,actor_id,ctime) VALUES ('.$record.','.$s->q(ProductAccess::revision($r)).','.$s->q($m['hash']??'').','.$s->q(Seo::json($payload)).','.(int)ProductAccess::user()->id.','.$s->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL01452 · Geniuspace\RecordVersions::history

`components/com_joomcck/site/library/php/geniuspace/RecordVersions.php:16`

```php
foreach(ProductAccess::store()->rows('SELECT id,payload,ctime FROM #__gp_social_record_versions WHERE record_id='.$record.' ORDER BY id DESC',30)as$row){$p=json_decode($row['payload'],true)?:[];
```

### SQL01453 · Geniuspace\RecordVersions::review

`components/com_joomcck/site/library/php/geniuspace/RecordVersions.php:29`

```php
$s->run('INSERT INTO #__gp_social_editorial_reviews (record_id,field_id,reviewer_id,source_hash,status,note,ctime) VALUES ('.(int)$r['id'].','.$field.','.$u.','.$s->q(ProductAccess::valueHash($p['value'])).','.$s->q($state).','.$s->q($note).','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE source_hash=VALUES(source_hash),status=VALUES(status),note=VALUES(note),ctime=VALUES(ctime)');
```

### SQL01454 · Geniuspace\RecordVersions::reviews

`components/com_joomcck/site/library/php/geniuspace/RecordVersions.php:34`

```php
foreach(ProductAccess::store()->rows('SELECT reviewer_id,source_hash,status,note,ctime FROM #__gp_social_editorial_reviews WHERE record_id='.$record.' AND field_id='.$field,30)as$v){$actor=\Joomla\CMS\Factory::getContainer()->get(\Joomla\CMS\User\UserFactoryInterface::class)->loadUserById((int)$v['reviewer_id']);
```

### SQL01553 · Geniuspace\SpoilerShield::pending

`components/com_joomcck/site/library/php/geniuspace/SpoilerShield.php:22`

```php
$p=ProductAccess::store()->rows('SELECT season,episode FROM #__gp_social_path_positions WHERE user_id='.(int)$u->id.' AND record_id='.$work,1)[0]??[];
```

### SQL01556 · Geniuspace\StructuredEditor::controls

`components/com_joomcck/site/library/php/geniuspace/StructuredEditor.php:54`

```php
if ($type === 'select') {
                    $html .= '<select' . $attrs . '>';
```

### SQL01557 · Geniuspace\StructuredEditor::normalize

`components/com_joomcck/site/library/php/geniuspace/StructuredEditor.php:123`

```php
if($child['type']==='select'&&$v===($child['options'][0]??''))continue;
```

### SQL01602 · Geniuspace\WriterDrafts::save

`components/com_joomcck/site/library/php/geniuspace/WriterDrafts.php:11`

```php
$s->run('DELETE FROM #__gp_social_writer_drafts WHERE user_id='.$u);
```

### SQL01603 · Geniuspace\WriterDrafts::read

`components/com_joomcck/site/library/php/geniuspace/WriterDrafts.php:15`

```php
$row=$s->rows('SELECT record_id,title,fields,expires_at FROM #__gp_social_writer_drafts WHERE user_id='.$u.' AND token='.$s->q($token).' AND expires_at>'.$s->q(gmdate('Y-m-d H:i:s')),1)[0]??null;
```

### SQL01648 · Geniuspace\LegacyMembers::schema

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:60`

```php
$row=$s->rows('SELECT profile_value FROM #__user_profiles WHERE user_id=0 AND profile_key='.$s->q($key),1)[0]??null;
```

### SQL01649 · Geniuspace\LegacyMembers::schema

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:61`

```php
if(!$s->rows('SELECT id FROM #__js_res_types WHERE id='.(int)$map['type'],1)||!$s->rows('SELECT id FROM #__js_res_sections WHERE id='.(int)$map['section'],1))throw new \RuntimeException('Configuration de migration supprimée. Restaurez-la avant de reprendre.');
```

### SQL01650 · Geniuspace\LegacyMembers::schema

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:63`

```php
$type=$s->rows("SELECT id FROM #__js_res_types WHERE JSON_VALUE(params,'$.geniuspace_legacy_schema')=1",1)[0]??null;
```

### SQL01651 · Geniuspace\LegacyMembers::schema

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:66`

```php
$section=$s->rows("SELECT id FROM #__js_res_sections WHERE JSON_VALUE(params,'$.geniuspace_legacy_schema')=1",1)[0]??null;
```

### SQL01652 · Geniuspace\LegacyMembers::schema

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:70`

```php
$field=$s->rows('SELECT id FROM #__js_res_fields WHERE type_id='.(int)$type->id.' AND `key`='.$s->q($fieldKey),1)[0]??null;
```

### SQL01653 · Geniuspace\LegacyMembers::batch

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:78`

```php
if((int)$db->setQuery('SELECT GET_LOCK('.$s->q($lock).',0)')->loadResult()!==1)throw new \DomainException('Migration en cours. Réessayez ce lot.',409);
```

### SQL01654 · Geniuspace\LegacyMembers::batch

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:84`

```php
// Only Registered, without inheriting author, editor or administrator privileges.
            $group=(int)$db->setQuery('SELECT id FROM #__usergroups WHERE id=2 AND parent_id=1')->loadResult();
```

### SQL01655 · Geniuspace\LegacyMembers::batch

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:87`

```php
$known=$s->rows('SELECT user_id,profile_value FROM #__user_profiles WHERE profile_key='.$s->q($key),1)[0]??null;
```

### SQL01656 · Geniuspace\LegacyMembers::batch

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:89`

```php
if($s->rows('SELECT id FROM #__users WHERE username='.$s->q($row['username']).' OR email='.$s->q($row['email']),1)){$job['counts']['conflicts']++;
```

### SQL01657 · Geniuspace\LegacyMembers::batch

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:103`

```php
$db->setQuery('DELETE FROM #__js_res_record_values WHERE record_id='.(int)$record->id)->execute();
```

### SQL01658 · Geniuspace\LegacyMembers::batch

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:104`

```php
$db->setQuery('DELETE FROM #__user_profiles WHERE user_id='.(int)$user->id)->execute();
```

### SQL01659 · Geniuspace\LegacyMembers::batch

`components/com_joomcck/site/library/php/geniuspace/LegacyMembers.php:110`

```php
$db->setQuery('SELECT RELEASE_LOCK('.$s->q($lock).')')->loadResult();
```

### SQL01756 · Geniuspace\PublicationExperience::companyDefaults

`components/com_joomcck/site/library/php/geniuspace/PublicationExperience.php:54`

```php
foreach($store->rows("SELECT id,alias,field_type,params,type_id FROM #__js_res_fields WHERE published=1 AND type_id=".(int)$record['type_id']." AND field_type IN ('parent','child')",100)as$row){
            if(!in_array(str_replace('_','-',(string)$row['alias']),['company','entreprise','employer','company-blog'],true))continue;
```

### SQL01757 · Geniuspace\PublicationExperience::companyDefaults

`components/com_joomcck/site/library/php/geniuspace/PublicationExperience.php:58`

```php
$type=(int)($store->rows('SELECT type_id FROM #__js_res_fields WHERE id='.(int)$params->get('params.child_field'),1)[0]['type_id']??0);
```
