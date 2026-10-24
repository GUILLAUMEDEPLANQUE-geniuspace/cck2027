# Académie et parcours

Cours, compétences, exercices, preuves, quiz, progression et missions.

Version 5.27.7. Présence dans le code ; ne prouve pas la configuration ou l’utilisation en production.

16 classes ; 104 fonctions/méthodes nommées ; 91 expressions SQL repérées dans ce domaine du noyau Geniuspace.

## Geniuspace\Cohort

`components/com_joomcck/site/library/php/geniuspace/Cohort.php:5`
- L7–7 · private · `function store():Store`
- L8–12 · public · `function parse(string $raw):array`
- L13–20 · private · `function definition(int $record,int $field):array`
- L21–25 · public · `function membership(int $record,int $field,bool $join):void`
- L26–40 · public · `function aggregate(int $record,int $field):array`
- L41–49 · public · `function render(object $record,object $field):string`

## Geniuspace\Experience

`components/com_joomcck/site/library/php/geniuspace/Experience.php:6`
- L8–12 · public · `function preferences(int $user=0): array`
- L13–20 · public · `function configure(array $d): void`
- L21–25 · public · `function goal(array $d): void`
- L26–33 · public · `function resume(int $record,int $position=0,string $kind='reading'): void`
- L34–43 · public · `function workspace(): array`
- L44–51 · public · `function watch(array $d): void`
- L52–63 · public · `function notifications(): array`
- L64–65 · public · `function seen(int $id): void`
- L66–74 · public · `function metric(int $record,string $kind,string $campaign=''): void`
- L75–89 · public · `function aggregate(string $metric,int $days=90,int $minimum=20,array $records=[]): array`

## Geniuspace\ExperienceActions

`components/com_joomcck/site/library/php/geniuspace/ExperienceActions.php:4`
- L6–23 · public · `function handle(string $action,array $d): array`

## Geniuspace\Expertise

`components/com_joomcck/site/library/php/geniuspace/Expertise.php:5`
- L7–13 · public · `function contributions(array $ids): array`

## Geniuspace\JourneyCatalogue

`components/com_joomcck/site/library/php/geniuspace/JourneyCatalogue.php:6`
- L8–11 · public · `function data(): array`
- L12–12 · public · `function count(): int`
- L13–20 · public · `function render(): string`
- L21–27 · public · `function modal(): string`
- L28–37 · public · `function widget(string $context='',bool $compact=false): string`

## Geniuspace\LearningPath

`components/com_joomcck/site/library/php/geniuspace/LearningPath.php:6`
- L8–8 · public · `function __construct(public Quiz $quiz, private ?int $clock = null)`
- L9–9 · private · `function now(): int`
- L10–18 · public · `function definition(int $record, int $field): array`
- L19–22 · private · `function where(int $record, int $field, string $revision): string`
- L23–36 · public · `function state(int $record, int $field): array`
- L37–49 · public · `function complete(int $record, int $field, string $key): void`
- L50–58 · public · `function resource(int $record, int $field, string $key): string`

## NexusAcademy

`components/com_joomcck/site/library/php/geniuspace/NexusAcademy.php:6`
- L8–18 · public · `function assessments($params): array`
- L20–32 · public · `function filters(object $view,$params): string`

## NexusSkills

`components/com_joomcck/site/library/php/geniuspace/NexusSkills.php:4`
- L6–18 · public · `function parse(string $raw,int $limit=100): array`
- L19–19 · public · `function index(array $d): array`
- L20–26 · public · `function filter(array $value,$db,string $key,int $section): ?string`

## Geniuspace\PathPresentation

`components/com_joomcck/site/library/php/geniuspace/PathPresentation.php:6`
- L8–12 · private · `function nativeHelpers(): void`
- L13–19 · public · `function assets(): void`
- L20–27 · public · `function launcher(): string`
- L28–35 · public · `function welcome(int $hub): string`
- L36–36 · public · `function natureLabel(string $nature): string`
- L37–43 · public · `function definition(array $d): array`
- L44–61 · public · `function field(array $d,array $r,int $field,bool $full): string`
- L62–66 · public · `function firstLesson(object $item,object $params): ?array`
- L67–76 · public · `function preparation(object $item,object $params): string`
- L77–81 · public · `function expanded(string $query): string`
- L82–88 · public · `function suggestions(string $query): array`
- L90–104 · public · `function utility(string $body,string $title): string`
- L106–118 · public · `function homepage(string $body,object $params): void`

## Geniuspace\PathRouter

`components/com_joomcck/site/library/php/geniuspace/PathRouter.php:5`
- L7–7 · public · `function __construct(private LearningPath $path, private string $token, private bool $csrf)`
- L8–44 · public · `function handle(string $route, string $method, array $post = []): Response`

## Geniuspace\PersonalPaths

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:6`
- L9–9 · public · `function ready(): bool`
- L10–10 · private · `function owner(): int`
- L11–11 · private · `function now(): string`
- L12–12 · private · `function number(mixed $v,int $max=2147483647): int`
- L13–17 · private · `function book(int $id,int $user,bool $lock=false): array`
- L18–19 · private · `function theme(mixed $v): string`
- L20–24 · private · `function steps(mixed $value): array`
- L26–81 · public · `function action(string $action,array $d): array`
- L82–99 · public · `function read(int $selected=0): array`
- L100–117 · private · `function professionalTasks(int $u): array`
- L118–129 · private · `function axes(int $u,array $workspace,array $books): array`

## Geniuspace\Quiz

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:6`
- L8–8 · public · `function __construct(public Store $store, public Config $config, public Repository $repository, public array $company, public int $user, public array $levels, private ?int $clock = null)`
- L9–9 · private · `function now(): int`
- L10–10 · private · `function date(int $time): string`
- L11–11 · private · `function q(string $value): string`
- L12–12 · private · `function lock(): string`
- L13–13 · private · `function where(int $record, int $field): string`
- L14–17 · public · `function authenticated(bool $lock = false): void`
- L18–48 · public · `function parse(string $value): array`
- L49–65 · public · `function settings(array $params): array`
- L67–80 · public · `function definition(int $record, int $field): array`
- L81–88 · private · `function quota(array $d): void`
- L89–102 · public · `function start(int $record, int $field): string`
- L103–109 · private · `function session(int $record, int $field, string $token): array`
- L110–121 · public · `function questions(int $record, int $field, string $token): array`
- L122–139 · public · `function grade(array $quiz, array $answers, int $threshold): array`
- L140–149 · public · `function finish(int $record, int $field, string $token, array $answers): int`
- L150–154 · public · `function eligible(int $record, int $field): bool`
- L155–158 · public · `function requirePass(int $record, int $field): void`
- L159–165 · public · `function history(int $record, int $field, int $candidate = 0): array`
- L166–174 · public · `function feedback(int $record,int $field,int $candidate=0): array`
- L175–180 · public · `function participants(int $record, int $field): array`

## Geniuspace\QuizBridge

`components/com_joomcck/site/library/php/geniuspace/QuizBridge.php:6`
- L8–11 · public · `function configuration(): Config`
- L12–21 · public · `function service(int $section): Quiz`
- L22–26 · public · `function link(int $section, int $record, int $field): string`
- L27–34 · public · `function card(object $record, int $field): string`
- L36–46 · public · `function emailGate(object $record, object $params): ?string`
- L47–52 · public · `function guardEmail(object $record, object $params): void`
- L53–66 · public · `function target(array $gate, array $record): int`
- L67–80 · public · `function guardRecord(Quiz $q, array $gate, array $record): void`
- L81–98 · public · `function guardApplication(array $record): void`
- L99–106 · public · `function applicationUrl(Quiz $q, int $record, int $field): ?string`

## Geniuspace\QuizRouter

`components/com_joomcck/site/library/php/geniuspace/QuizRouter.php:6`
- L11–14 · public · `function __construct(private Quiz $quiz, private string $csrf, private bool $tokenValid)`
- L15–20 · private · `function page(string $title, string $body): Response`
- L21–21 · private · `function token(): string`
- L22–32 · public · `function medal(array $result): string`
- L33–56 · private · `function results(int $record, int $field, int $candidate = 0): string`
- L57–104 · public · `function handle(string $path, array $query, string $method, array $data = []): Response`

## Geniuspace\Simulation

`components/com_joomcck/site/library/php/geniuspace/Simulation.php:6`
- L8–18 · public · `function submit(array $data): int`
- L19–30 · public · `function feedback(array $data): void`
- L31–46 · public · `function render(array $d,array $r,int $field,bool $full): string`

## Geniuspace\SkillCatalogue

`components/com_joomcck/site/library/php/geniuspace/SkillCatalogue.php:6`
- L8–14 · public · `function guard(array $d,array $record): void`
- L15–24 · public · `function search(string $query,int $limit=15): array`
- L25–30 · public · `function definition(int $record): ?array`

## SQL et données

Les expressions suivantes sont du PHP source ; les variables ne sont pas évaluées. Pour un EXPLAIN réel, reconstruire une requête paramétrée sur une copie de test.

### SQL00701 · Geniuspace\Cohort::definition

`components/com_joomcck/site/library/php/geniuspace/Cohort.php:16`

```php
$f=self::store()->rows('SELECT id,params FROM #__js_res_fields WHERE id='.$field.' AND type_id='.(int)$r['raw']['type_id']." AND field_type='gpcohort' AND published=1 AND access=1",1)[0]??null;
```

### SQL00702 · Geniuspace\Cohort::membership

`components/com_joomcck/site/library/php/geniuspace/Cohort.php:24`

```php
if($join)$s->run('INSERT IGNORE INTO #__gp_social_cohort_members (record_id,field_id,user_id,ctime) VALUES ('.$record.','.$field.','.(int)$user->id.','.$s->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL00703 · Geniuspace\Cohort::membership

`components/com_joomcck/site/library/php/geniuspace/Cohort.php:24`

```php
else $s->run('DELETE FROM #__gp_social_cohort_members WHERE '.$where);
```

### SQL00704 · Geniuspace\Cohort::aggregate

`components/com_joomcck/site/library/php/geniuspace/Cohort.php:30`

```php
$members=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_cohort_members m INNER JOIN #__users u ON u.id=m.user_id AND u.block=0 WHERE m.record_id='.$record.' AND m.field_id='.$field,1)[0]['n']??0);
```

### SQL00705 · Geniuspace\Cohort::aggregate

`components/com_joomcck/site/library/php/geniuspace/Cohort.php:33`

```php
$queries[]='SELECT a.user_id,a.ctime FROM #__gp_social_quiz_attempts a'.$memberJoin.' WHERE a.record_id='.$a['record_id'].' AND a.field_id='.$a['field_id'].' AND a.revision='.$s->q($definition['revision']).' AND a.passed=1 AND a.valid_until>'.$s->q(gmdate('Y-m-d H:i:s'));
```

### SQL00706 · Geniuspace\Cohort::aggregate

`components/com_joomcck/site/library/php/geniuspace/Cohort.php:36`

```php
// SQL aggregates count every consented member, without a pagination-dependent total.
        $counts=$queries?$s->rows('SELECT COUNT(DISTINCT user_id) AS passed,COUNT(DISTINCT CASE WHEN ctime>='.$s->q(gmdate('Y-m-01 00:00:00')).' THEN user_id END) AS monthly FROM ('.implode(' UNION ALL ',$queries).') valid_attempts',1)[0]:['passed'=>0,'monthly'=>0];
```

### SQL00707 · Geniuspace\Cohort::aggregate

`components/com_joomcck/site/library/php/geniuspace/Cohort.php:38`

```php
$interviews=(int)($s->rows("SELECT COUNT(DISTINCT a.user_id) AS n FROM #__js_res_record a".$memberJoin." INNER JOIN #__gp_social_hiring_states h ON h.application_id=a.id WHERE h.state IN ('interview','hired') AND h.mtime>=".$s->q(gmdate('Y-m-01 00:00:00')).' AND h.job_id IN ('.implode(',',$jobs).')',1)[0]['n']??0);
```

### SQL00708 · Geniuspace\Cohort::render

`components/com_joomcck/site/library/php/geniuspace/Cohort.php:47`

```php
$joined=(bool)$s->rows('SELECT user_id FROM #__gp_social_cohort_members WHERE record_id='.$id.' AND field_id='.$fid.' AND user_id='.(int)$user->id,1);
```

### SQL00856 · Geniuspace\Experience::preferences

`components/com_joomcck/site/library/php/geniuspace/Experience.php:11`

```php
return ProductAccess::store()->rows('SELECT metrics,frequency,mtime FROM #__gp_social_experience_preferences WHERE user_id='.$id,1)[0]??['metrics'=>0,'frequency'=>'weekly','mtime'=>''];
```

### SQL00857 · Geniuspace\Experience::configure

`components/com_joomcck/site/library/php/geniuspace/Experience.php:17`

```php
$s->run('INSERT INTO #__gp_social_experience_preferences (user_id,metrics,frequency,mtime) VALUES ('.$u.','.$metrics.','.$s->q($frequency).','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE metrics=VALUES(metrics),frequency=VALUES(frequency),mtime=VALUES(mtime)');
```

### SQL00858 · Geniuspace\Experience::configure

`components/com_joomcck/site/library/php/geniuspace/Experience.php:18`

```php
$s->run('DELETE FROM #__gp_social_experience_metrics WHERE user_id='.$u);
```

### SQL00859 · Geniuspace\Experience::configure

`components/com_joomcck/site/library/php/geniuspace/Experience.php:19`

```php
if($frequency==='off')$s->run('UPDATE #__gp_social_experience_notifications SET seen=1 WHERE user_id='.$u);
```

### SQL00860 · Geniuspace\Experience::goal

`components/com_joomcck/site/library/php/geniuspace/Experience.php:24`

```php
$s->run('INSERT INTO #__gp_social_experience_goals (user_id,goal,skills,mtime) VALUES ('.$u.','.$s->q($goal).','.$s->q(Seo::json($skills)).','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE goal=VALUES(goal),skills=VALUES(skills),mtime=VALUES(mtime)');
```

### SQL00861 · Geniuspace\Experience::resume

`components/com_joomcck/site/library/php/geniuspace/Experience.php:30`

```php
$s->run('INSERT INTO #__gp_social_resume_items (user_id,record_id,kind,position,revision,mtime) VALUES ('.$u.','.$record.','.$s->q($kind).','.$position.','.$s->q(ProductAccess::revision($r)).','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE kind=VALUES(kind),position=VALUES(position),revision=VALUES(revision),mtime=VALUES(mtime)');
```

### SQL00862 · Geniuspace\Experience::resume

`components/com_joomcck/site/library/php/geniuspace/Experience.php:31`

```php
$count=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_resume_items WHERE user_id='.$u,1)[0]['n']??0);
```

### SQL00863 · Geniuspace\Experience::resume

`components/com_joomcck/site/library/php/geniuspace/Experience.php:32`

```php
$old=$s->rows('SELECT record_id FROM #__gp_social_resume_items WHERE user_id='.$u.' ORDER BY mtime,record_id',min(100,$count-200));
```

### SQL00864 · Geniuspace\Experience::resume

`components/com_joomcck/site/library/php/geniuspace/Experience.php:32`

```php
if($old)$s->run('DELETE FROM #__gp_social_resume_items WHERE user_id='.$u.' AND record_id IN ('.implode(',',array_map('intval',array_column($old,'record_id'))).')');
```

### SQL00865 · Geniuspace\Experience::workspace

`components/com_joomcck/site/library/php/geniuspace/Experience.php:37`

```php
foreach($s->rows('SELECT * FROM #__gp_social_resume_items WHERE user_id='.$u.' ORDER BY mtime DESC',50)as$row){
            try{$r=ProductAccess::visible((int)$row['record_id']);
```

### SQL00866 · Geniuspace\Experience::workspace

`components/com_joomcck/site/library/php/geniuspace/Experience.php:41`

```php
$goal=$s->rows('SELECT goal,skills FROM #__gp_social_experience_goals WHERE user_id='.$u,1)[0]??['goal'=>'','skills'=>'[]'];
```

### SQL00867 · Geniuspace\Experience::watch

`components/com_joomcck/site/library/php/geniuspace/Experience.php:47`

```php
$s->run('DELETE FROM #__gp_social_record_watches WHERE user_id='.$u.' AND record_id='.$id);
```

### SQL00868 · Geniuspace\Experience::watch

`components/com_joomcck/site/library/php/geniuspace/Experience.php:47`

```php
$s->run('UPDATE #__gp_social_experience_notifications SET seen=1 WHERE user_id='.$u.' AND record_id='.$id);
```

### SQL00869 · Geniuspace\Experience::watch

`components/com_joomcck/site/library/php/geniuspace/Experience.php:49`

```php
$n=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_record_watches WHERE user_id='.$u,1)[0]['n']??0);
```

### SQL00870 · Geniuspace\Experience::watch

`components/com_joomcck/site/library/php/geniuspace/Experience.php:49`

```php
if($n>=100&&!$s->rows('SELECT record_id FROM #__gp_social_record_watches WHERE user_id='.$u.' AND record_id='.$id,1))throw new \DomainException('Limite de cent contenus suivis.',429);
```

### SQL00871 · Geniuspace\Experience::watch

`components/com_joomcck/site/library/php/geniuspace/Experience.php:50`

```php
$s->run('INSERT INTO #__gp_social_record_watches (user_id,record_id,last_hash,active,ctime) VALUES ('.$u.','.$id.','.$s->q($material['hash']).',1,'.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE last_hash=VALUES(last_hash),active=1');
```

### SQL00872 · Geniuspace\Experience::notifications

`components/com_joomcck/site/library/php/geniuspace/Experience.php:56`

```php
// Recheck current public material on read: even direct ACL changes never expose stale private titles.
        foreach($s->rows('SELECT record_id,last_hash FROM #__gp_social_record_watches WHERE user_id='.$u.' AND active=1',100)as$w){
            $m=PublicMaterial::record((int)$w['record_id'],false);
```

### SQL00873 · Geniuspace\Experience::notifications

`components/com_joomcck/site/library/php/geniuspace/Experience.php:58`

```php
$s->run('INSERT IGNORE INTO #__gp_social_experience_notifications (user_id,record_id,kind,source_hash,seen,ctime) VALUES ('.$u.','.(int)$w['record_id'].",'updated',".$s->q($m['hash']).',0,'.$s->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL00874 · Geniuspace\Experience::notifications

`components/com_joomcck/site/library/php/geniuspace/Experience.php:59`

```php
$s->run('UPDATE #__gp_social_record_watches SET last_hash='.$s->q($m['hash']).' WHERE user_id='.$u.' AND record_id='.(int)$w['record_id']);
```

### SQL00875 · Geniuspace\Experience::notifications

`components/com_joomcck/site/library/php/geniuspace/Experience.php:61`

```php
foreach($s->rows('SELECT * FROM #__gp_social_experience_notifications WHERE user_id='.$u.' AND seen=0 ORDER BY id DESC',100)as$n){$m=PublicMaterial::record((int)$n['record_id'],false);
```

### SQL00876 · Geniuspace\Experience::seen

`components/com_joomcck/site/library/php/geniuspace/Experience.php:65`

```php
ProductAccess::store()->run('UPDATE #__gp_social_experience_notifications SET seen=1 WHERE id='.max(0,$id).' AND user_id='.$u);
```

### SQL00877 · Geniuspace\Experience::metric

`components/com_joomcck/site/library/php/geniuspace/Experience.php:69`

```php
$type=json_decode($s->rows('SELECT params FROM #__js_res_types WHERE id='.(int)$raw['type_id'],1)[0]['params']??'{}',true)?:[];
```

### SQL00878 · Geniuspace\Experience::metric

`components/com_joomcck/site/library/php/geniuspace/Experience.php:69`

```php
$section=json_decode($s->rows('SELECT params FROM #__js_res_sections WHERE id='.(int)$raw['section_id'],1)[0]['params']??'{}',true)?:[];
```

### SQL00879 · Geniuspace\Experience::metric

`components/com_joomcck/site/library/php/geniuspace/Experience.php:72`

```php
$s->run('INSERT IGNORE INTO #__gp_social_experience_metrics (user_id,record_id,kind,campaign,day,ctime) VALUES ('.(int)$u->id.','.$record.','.$s->q($kind).','.$s->q($campaign).','.$s->q(gmdate('Y-m-d')).','.$s->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL00880 · Geniuspace\Experience::metric

`components/com_joomcck/site/library/php/geniuspace/Experience.php:73`

```php
$s->run('DELETE FROM #__gp_social_experience_metrics WHERE ctime<'.$s->q(gmdate('Y-m-d H:i:s',time()-365*86400)));
```

### SQL00881 · Geniuspace\Experience::aggregate

`components/com_joomcck/site/library/php/geniuspace/Experience.php:81`

```php
$n=(int)($s->rows('SELECT COUNT(DISTINCT m.user_id) AS n FROM #__gp_social_experience_metrics m INNER JOIN #__gp_social_experience_preferences p ON p.user_id=m.user_id AND p.metrics=1 INNER JOIN #__users active_user ON active_user.id=m.user_id AND active_user.block=0 WHERE '.$where,1)[0]['n']??0);
```

### SQL00882 · Geniuspace\Experience::aggregate

`components/com_joomcck/site/library/php/geniuspace/Experience.php:84`

```php
$cohort='SELECT m.user_id,MIN(m.ctime) AS first_day FROM #__gp_social_experience_metrics m INNER JOIN #__gp_social_experience_preferences p ON p.user_id=m.user_id AND p.metrics=1 INNER JOIN #__users active_user ON active_user.id=m.user_id AND active_user.block=0 WHERE '.$where.' GROUP BY m.user_id HAVING MIN(m.ctime)<='.$s->q(gmdate('Y-m-d H:i:s',time()-($offset+7)*86400));
```

### SQL00883 · Geniuspace\Experience::aggregate

`components/com_joomcck/site/library/php/geniuspace/Experience.php:85`

```php
$summary=$s->rows('SELECT COUNT(*) AS eligible,SUM(EXISTS(SELECT 1 FROM #__gp_social_experience_metrics ret WHERE ret.user_id=c.user_id AND ret.ctime>=DATE_ADD(c.first_day,INTERVAL '.$offset.' DAY) AND ret.ctime<DATE_ADD(c.first_day,INTERVAL '.($offset+7).' DAY))) AS returned FROM ('.$cohort.') c',1)[0]??[];
```

### SQL01044 · Geniuspace\LearningPath::state

`components/com_joomcck/site/library/php/geniuspace/LearningPath.php:25`

```php
$rows = $this->quiz->store->rows('SELECT step_key,ctime FROM #__gp_social_progress WHERE ' . $this->where($record, $field, $d['revision']), 100);
```

### SQL01174 · NexusAcademy::assessments

`components/com_joomcck/site/library/php/geniuspace/NexusAcademy.php:12`

```php
foreach($store->rows('SELECT r.id,f.id AS field_id FROM #__js_res_record r INNER JOIN #__js_res_fields f ON f.type_id=r.type_id WHERE r.section_id='.$section." AND r.published=1 AND f.published=1 AND f.field_type='gpquiz' ORDER BY r.id DESC",48)as$row){
            if(!$public->record((int)$row['id']))continue;
```

### SQL01229 · NexusSkills::filter

`components/com_joomcck/site/library/php/geniuspace/NexusSkills.php:25`

```php
return 'SELECT DISTINCT record_id FROM #__js_res_record_values WHERE section_id = '.$section.' AND field_key = '.$db->quote($key).' AND field_value IN ('.implode(',',$values).')';
```

### SQL01367 · Geniuspace\PathPresentation::preparation

`components/com_joomcck/site/library/php/geniuspace/PathPresentation.php:71`

```php
$type=ProductAccess::store()->rows('SELECT params FROM #__js_res_types WHERE id='.(int)$target->type_id,1)[0]??[];
```

### SQL01368 · Geniuspace\PathRouter::handle

`components/com_joomcck/site/library/php/geniuspace/PathRouter.php:25`

```php
$name = $q->store->rows('SELECT name FROM #__users WHERE id=' . $q->user, 1)[0]['name'];
```

### SQL01369 · Geniuspace\PersonalPaths::book

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:15`

```php
$row=ProductAccess::store()->rows('SELECT * FROM #__gp_social_path_notebooks WHERE id='.$id.' AND user_id='.$user.($lock?' FOR UPDATE':''),1)[0]??null;
```

### SQL01370 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:30`

```php
$s->run('INSERT IGNORE INTO #__gp_social_path_preferences (user_id,theme,intent,mtime) VALUES ('.$u.", 'explore', '', ".$s->q(self::now()).')');
```

### SQL01371 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:31`

```php
$s->rows('SELECT user_id FROM #__gp_social_path_preferences WHERE user_id='.$u.' FOR UPDATE',1);
```

### SQL01372 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:34`

```php
$s->run('UPDATE #__gp_social_path_preferences SET theme='.$s->q($theme).',intent='.$s->q($intent).',mtime='.$s->q(self::now()).' WHERE user_id='.$u);
```

### SQL01373 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:40`

```php
$s->run('INSERT INTO #__gp_social_path_positions (user_id,record_id,season,episode,seconds,label,mtime) VALUES ('.$u.','.$record.','.$season.','.$episode.','.$seconds.','.$s->q($label).','.$s->q(self::now()).') ON DUPLICATE KEY UPDATE season=VALUES(season),episode=VALUES(episode),seconds=VALUES(seconds),label=VALUES(label),mtime=VALUES(mtime)');
```

### SQL01374 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:41`

```php
$old=$s->rows('SELECT record_id FROM #__gp_social_path_positions WHERE user_id='.$u.' ORDER BY mtime DESC,record_id DESC',1000,200);
```

### SQL01375 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:42`

```php
if($old)$s->run('DELETE FROM #__gp_social_path_positions WHERE user_id='.$u.' AND record_id IN ('.implode(',',array_map('intval',array_column($old,'record_id'))).')');
```

### SQL01376 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:44`

```php
// An episode marker must never downgrade a course validation or an application.
                if(!$s->rows('SELECT record_id FROM #__gp_social_resume_items WHERE user_id='.$u.' AND record_id='.$record,1))Experience::resume($record,0,'reading');
```

### SQL01377 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:49`

```php
$existing=$s->rows('SELECT id FROM #__gp_social_path_notebooks WHERE user_id='.$u.' AND request_key='.$s->q($key),1);
```

### SQL01378 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:51`

```php
$count=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_path_notebooks WHERE user_id='.$u,1)[0]['n']??0);
```

### SQL01379 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:53`

```php
$s->run('INSERT INTO #__gp_social_path_notebooks (user_id,request_key,title,theme,goal,notes,steps,budget,currency,due_at,revision,ctime,mtime) VALUES ('.$u.','.$s->q($key).','.$s->q($title).','.$s->q($theme).", '', '', '[]', '', 'EUR', '', 1, ".$s->q(self::now()).','.$s->q(self::now()).')');
```

### SQL01380 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:59`

```php
$s->run('DELETE FROM #__gp_social_path_entries WHERE notebook_id='.$id.' AND user_id='.$u);
```

### SQL01381 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:59`

```php
$s->run('DELETE FROM #__gp_social_path_notebooks WHERE id='.$id.' AND user_id='.$u);
```

### SQL01382 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:61`

```php
if($action==='update'){
                $title=ProductData::text($d['title']??$b['title'],180);
```

### SQL01383 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:67`

```php
$s->run('UPDATE #__gp_social_path_notebooks SET title='.$s->q($title).',goal='.$s->q($goal).',notes='.$s->q($notes).',steps='.$s->q(Seo::json($steps)).',budget='.$s->q($budget).',currency='.$s->q($currency).',due_at='.$s->q($due).' WHERE id='.$id.' AND user_id='.$u);
```

### SQL01384 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:70`

```php
if($action==='unpin')$s->run('DELETE FROM #__gp_social_path_entries WHERE notebook_id='.$id.' AND user_id='.$u.' AND record_id='.$record);
```

### SQL01385 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:73`

```php
$count=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_path_entries WHERE notebook_id='.$id,1)[0]['n']??0);
```

### SQL01386 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:74`

```php
if($count>=100&&!$s->rows('SELECT record_id FROM #__gp_social_path_entries WHERE notebook_id='.$id.' AND record_id='.$record,1))throw new \DomainException('Limite de cent ressources par carnet.',429);
```

### SQL01387 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:75`

```php
$s->run('INSERT INTO #__gp_social_path_entries (notebook_id,user_id,record_id,note,seconds,ctime) VALUES ('.$id.','.$u.','.$record.','.$s->q($note).','.$seconds.','.$s->q(self::now()).') ON DUPLICATE KEY UPDATE note=VALUES(note),seconds=VALUES(seconds)');
```

### SQL01388 · Geniuspace\PersonalPaths::action

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:78`

```php
$s->run('UPDATE #__gp_social_path_notebooks SET revision=revision+1,mtime='.$s->q(self::now()).' WHERE id='.$id.' AND user_id='.$u);
```

### SQL01389 · Geniuspace\PersonalPaths::read

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:84`

```php
foreach($s->rows('SELECT notebook_id,COUNT(*) AS n FROM #__gp_social_path_entries WHERE user_id='.$u.' GROUP BY notebook_id',40)as$count)$counts[(int)$count['notebook_id']]=(int)$count['n'];
```

### SQL01390 · Geniuspace\PersonalPaths::read

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:85`

```php
foreach($s->rows('SELECT * FROM #__gp_social_path_notebooks WHERE user_id='.$u.' ORDER BY mtime DESC,id DESC',40)as$b){
            unset($b['user_id'],$b['request_key']);
```

### SQL01391 · Geniuspace\PersonalPaths::read

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:87`

```php
foreach(($b['detail']?$s->rows('SELECT record_id,note,seconds,ctime FROM #__gp_social_path_entries WHERE notebook_id='.(int)$b['id'].' AND user_id='.$u.' ORDER BY ctime DESC',100):[])as$entry){
                try{$r=ProductAccess::visible((int)$entry['record_id']);
```

### SQL01392 · Geniuspace\PersonalPaths::read

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:92`

```php
foreach($s->rows('SELECT record_id,season,episode,seconds,label,mtime FROM #__gp_social_path_positions WHERE user_id='.$u.' ORDER BY mtime DESC',100)as$p){try{$r=ProductAccess::visible((int)$p['record_id']);
```

### SQL01393 · Geniuspace\PersonalPaths::read

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:98`

```php
return ['preferences'=>$s->rows('SELECT theme,intent FROM #__gp_social_path_preferences WHERE user_id='.$u,1)[0]??['theme'=>'explore','intent'=>''],'notebooks'=>$books,'positions'=>$positions,'next'=>array_slice($next,0,30),'workspace'=>$workspace,'axes'=>self::axes($u,$workspace,$books)];
```

### SQL01394 · Geniuspace\PersonalPaths::professionalTasks

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:103`

```php
foreach($s->rows('SELECT id FROM #__js_res_record WHERE user_id='.$u.' AND published=1 ORDER BY mtime DESC',40)as$row){
            try{$r=ProductAccess::visible((int)$row['id']);
```

### SQL01395 · Geniuspace\PersonalPaths::professionalTasks

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:106`

```php
$n=(int)($s->rows('SELECT COUNT(*) AS n FROM #__js_res_comments c WHERE c.record_id='.(int)$r['id'].' AND c.id>1 AND c.published=1 AND c.hide=0 AND c.private=0 AND c.user_id<>'.$u.' AND c.access IN ('.implode(',',$levels?:[0]).') AND NOT EXISTS (SELECT 1 FROM #__js_res_comments reply WHERE reply.parent_id=c.id AND reply.user_id='.$u.' AND reply.published=1 AND reply.hide=0)',1)[0]['n']??0);
```

### SQL01396 · Geniuspace\PersonalPaths::professionalTasks

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:109`

```php
$n=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_hiring_states WHERE job_id='.(int)$r['id']." AND state IN ('applied','review')",1)[0]['n']??0);
```

### SQL01397 · Geniuspace\PersonalPaths::axes

`components/com_joomcck/site/library/php/geniuspace/PersonalPaths.php:125`

```php
// These are activity counters, never expertise ratings or access gates.
        return [
            ['key'=>'explorer','label'=>'Explorer','count'=>count($workspace['items']),'criteria'=>'Contenus sauvegardés ou repris par votre compte.'],
            ['key'=>'apprendre','label'=>'Apprendre','count'=>count(array_filter($workspace['items'],static fn($i)=>$i['kind']==='learning'&&(int)$i['position']===100&&!$i['changed'])),'criteria'=>'Parcours complétés par les évaluations serveur ; chaque validation garde sa source et sa version.'],
            ['key'=>'contribuer','label'=>'Contribuer','count'=>(SchemaHealth::has('multiverse_crystals')?$count('SELECT COUNT(*) AS n FROM #__gp_social_multiverse_crystals WHERE contributor_id='.$u." AND state='applied'"):0)+(SchemaHealth::has('field_corrections')?$count('SELECT COUNT(*) AS n FROM #__gp_social_field_corrections WHERE author_id='.$u." AND state='applied'"):0),'criteria'=>'Vos corrections ou contributions intégrées avec consentement, selon les données natives. Le clic de validation d’un modérateur ne lui attribue pas votre contribution.'],
            ['key'=>'creer','label'=>'Créer','count'=>count($books),'criteria'=>'Carnets personnels créés ; aucune attestation d’expertise.'],
            ['key'=>'cooperer','label'=>'Coopérer','count'=>SchemaHealth::has('record_followers')?$count('SELECT COUNT(DISTINCT record_id) AS n FROM #__gp_social_record_followers WHERE user_id='.$u):0,'criteria'=>'Espaces suivis volontairement. Les droits restent propres à chaque espace.'],
        ];
```

### SQL01430 · Geniuspace\Quiz::authenticated

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:16`

```php
if ($this->user < 1 || !$this->store->rows('SELECT id FROM #__users WHERE id=' . $this->user . ' AND block=0' . ($lock ? $this->lock() : ''), 1)) throw new \DomainException('Connectez-vous avec un compte Joomla actif.', 403);
```

### SQL01431 · Geniuspace\Quiz::definition

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:71`

```php
$f = $this->store->rows('SELECT id,params FROM #__js_res_fields WHERE id=' . $field . ' AND type_id=' . $r['type_id'] . " AND field_type='gpquiz' AND published=1 AND access IN (" . implode(',', $this->levels ?: [0]) . ')', 1)[0] ?? null;
```

### SQL01432 · Geniuspace\Quiz::definition

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:75`

```php
$raw = $this->store->rows('SELECT fields FROM #__js_res_record WHERE id=' . $record, 1)[0]['fields'] ?? '{}';
```

### SQL01433 · Geniuspace\Quiz::quota

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:83`

```php
$rows = $this->store->rows('SELECT ctime FROM #__gp_social_quiz_attempts WHERE ' . $this->where($d['record']['id'], $d['field_id']) . ' AND revision=' . $this->q($d['revision']) . ' ORDER BY id DESC', 106);
```

### SQL01434 · Geniuspace\Quiz::quota

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:85`

```php
foreach($this->store->rows("SELECT f.id FROM #__js_res_fields f INNER JOIN #__js_res_record r ON r.type_id=f.type_id WHERE r.id=".(int)$course." AND f.field_type='gppath' AND f.published=1",20)as$f){try{if((new LearningPath($this))->state((int)$course,(int)$f['id'])['complete']){$earned++;
```

### SQL01435 · Geniuspace\Quiz::start

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:93`

```php
$existing = $this->store->rows('SELECT token FROM #__gp_social_quiz_sessions WHERE ' . $this->where($record, $field) . ' AND revision=' . $this->q($d['revision']) . ' AND consumed=0 AND expires_at>' . $this->q($this->date($this->now())) . ' ORDER BY ctime DESC', 1);
```

### SQL01436 · Geniuspace\Quiz::session

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:106`

```php
$s = $this->store->rows('SELECT * FROM #__gp_social_quiz_sessions WHERE token=' . $this->q($token) . ' AND ' . $this->where($record, $field) . $this->lock(), 1)[0] ?? null;
```

### SQL01437 · Geniuspace\Quiz::finish

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:146`

```php
$this->store->run('UPDATE #__gp_social_quiz_sessions SET consumed=1 WHERE token=' . $this->q($token));
```

### SQL01438 · Geniuspace\Quiz::eligible

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:153`

```php
return (bool) $this->store->rows('SELECT id FROM #__gp_social_quiz_attempts WHERE ' . $this->where($record, $field) . ' AND revision=' . $this->q($d['revision']) . ' AND passed=1 AND valid_until>' . $this->q($this->date($this->now())) . ' ORDER BY id DESC', 1);
```

### SQL01439 · Geniuspace\Quiz::history

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:164`

```php
return $this->store->rows('SELECT id,correct,total,threshold,passed,topics,ctime,valid_until,revision FROM #__gp_social_quiz_attempts WHERE ' . $where . ' ORDER BY id DESC', 100);
```

### SQL01440 · Geniuspace\Quiz::feedback

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:169`

```php
$row=$this->store->rows('SELECT answers FROM #__gp_social_quiz_attempts WHERE id='.(int)$rows[0]['id'],1)[0];
```

### SQL01441 · Geniuspace\Quiz::participants

`components/com_joomcck/site/library/php/geniuspace/Quiz.php:179`

```php
return $this->store->rows('SELECT a.user_id,u.name,MAX(a.id) AS last_id FROM #__gp_social_quiz_attempts a INNER JOIN #__users u ON u.id=a.user_id WHERE a.scope=' . $this->q($this->company['slug']) . ' AND a.record_id=' . $record . ' AND a.field_id=' . $field . ' GROUP BY a.user_id,u.name ORDER BY last_id DESC', 100);
```

### SQL01442 · Geniuspace\QuizBridge::guardRecord

`components/com_joomcck/site/library/php/geniuspace/QuizBridge.php:73`

```php
$field=$q->store->rows('SELECT id FROM #__js_res_fields WHERE id='.(int)$gate['close_field_id'].' AND type_id='.(int)$definition['record']['type_id'].' AND published=1',1)[0]??null;
```

### SQL01443 · Geniuspace\QuizBridge::guardRecord

`components/com_joomcck/site/library/php/geniuspace/QuizBridge.php:74`

```php
$row=$q->store->rows('SELECT fields FROM #__js_res_record WHERE id='.$target,1)[0]??null;
```

### SQL01444 · Geniuspace\QuizBridge::guardApplication

`components/com_joomcck/site/library/php/geniuspace/QuizBridge.php:88`

```php
if (!empty($record['id'])) $existing = $store->rows('SELECT type_id,section_id FROM #__js_res_record WHERE id=' . max(0, (int) $record['id']), 1)[0] ?? null;
```

### SQL01505 · Geniuspace\Simulation::submit

`components/com_joomcck/site/library/php/geniuspace/Simulation.php:14`

```php
if(count($s->rows('SELECT id FROM #__gp_social_simulation_submissions WHERE record_id='.$record.' AND field_id='.$field.' AND user_id='.$user.' AND ctime>'.$s->q(gmdate('Y-m-d H:i:s',time()-86400)),11))>=10)throw new \DomainException('Dix envois maximum par jour pour cet exercice.',429);
```

### SQL01506 · Geniuspace\Simulation::feedback

`components/com_joomcck/site/library/php/geniuspace/Simulation.php:21`

```php
$row=$s->rows('SELECT * FROM #__gp_social_simulation_submissions WHERE id='.$id,1)[0]??null;
```

### SQL01507 · Geniuspace\Simulation::feedback

`components/com_joomcck/site/library/php/geniuspace/Simulation.php:28`

```php
$s->run("UPDATE #__gp_social_simulation_submissions SET state='reviewed',reviewer_id=".$actor.',feedback='.$s->q($feedback).',mtime='.$s->q(gmdate('Y-m-d H:i:s')).' WHERE id='.$id);
```

### SQL01508 · Geniuspace\Simulation::render

`components/com_joomcck/site/library/php/geniuspace/Simulation.php:40`

```php
foreach($s->rows('SELECT * FROM #__gp_social_simulation_submissions WHERE record_id='.$id.' AND field_id='.$field.($reviewer?'':' AND user_id='.$user).' ORDER BY id DESC',50)as$a){
            $out.='<section class="gp-simulation-submission"><p>'.nl2br(Text::escape($a['response'])).'</p><small>'.Text::escape($a['ctime']).'</small>';
```

### SQL01512 · Geniuspace\SkillCatalogue::guard

`components/com_joomcck/site/library/php/geniuspace/SkillCatalogue.php:12`

```php
$same=$s->rows("SELECT DISTINCT r.id FROM #__js_res_record_values v INNER JOIN #__js_res_record r ON r.id=v.record_id INNER JOIN #__js_res_fields f ON f.id=v.field_id WHERE f.field_type='gpskillterm' AND v.section_id=".$section.' AND v.field_value='.$s->q($d['code']).' AND v.value_index=0 AND r.id<>'.(int)($record['id']??0),1);
```

### SQL01513 · Geniuspace\SkillCatalogue::search

`components/com_joomcck/site/library/php/geniuspace/SkillCatalogue.php:19`

```php
$sql="SELECT DISTINCT r.id,f.id AS field_id FROM #__js_res_record r INNER JOIN #__js_res_fields f ON f.type_id=r.type_id LEFT JOIN #__js_res_record_values v ON v.record_id=r.id AND v.field_id=f.id WHERE f.field_type='gpskillterm' AND f.published=1 AND (r.title LIKE ".$like." ESCAPE '^' OR v.field_value LIKE ".$like." ESCAPE '^') ORDER BY r.id";
```
