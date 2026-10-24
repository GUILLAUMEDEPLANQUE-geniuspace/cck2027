# Emploi et entreprises

Offres, candidatures, identité, équipes, rémunération et tableau de travail.

Version 5.27.7. Présence dans le code ; ne prouve pas la configuration ou l’utilisation en production.

16 classes ; 112 fonctions/méthodes nommées ; 104 expressions SQL repérées dans ce domaine du noyau Geniuspace.

## Geniuspace\AccountIdentity

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:6`
- L10–15 · public · `function rememberIntent(string $value): string`
- L17–22 · public · `function intent(): string`
- L24–27 · private · `function profileValue(int $user,string $key): string`
- L29–34 · private · `function saveProfileValue(int $user,string $key,string $value): void`
- L37–49 · public · `function afterNativeUserSave(array $user,bool $isNew,bool $success): void`
- L51–52 · public · `function emailHash(string $email): string`
- L54–59 · public · `function verifiedEmail(int $user): bool`
- L61–66 · public · `function validEmailChallenge(array $challenge,string $token,string $email,int $now): bool`
- L69–82 · public · `function requestEmailVerification(): void`
- L85–90 · public · `function confirmEmailVerification(string $token): void`
- L92–97 · private · `function currentEmail(int $id): string`
- L100–113 · public · `function companies(int $user): array`
- L115–123 · private · `function templateParams(array $company): \Joomla\Registry\Registry`
- L125–131 · private · `function mappedFields(array $company,\Joomla\Registry\Registry $params,string $slot): array`
- L133–150 · private · `function logo(array $company,\Joomla\Registry\Registry $params): string`
- L152–158 · public · `function imageUrl(string $value): string`
- L160–191 · public · `function card(int $userId): array`
- L193–194 · public · `function associatedWith(int $user,int $company): bool`
- L196–203 · public · `function render(int $userId): string`
- L206–228 · public · `function syncBusinessEmail(int $companyId,int $fieldId): void`
- L230–253 · public · `function onboarding(): string`

## Geniuspace\CompanyTeam

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:6`
- L9–15 · public · `function company(int $id): array`
- L16–24 · public · `function companyOf(array $r): int`
- L25–36 · public · `function allows(array $r,string $permission,int $user=0): bool`
- L37–38 · public · `function delegated(array $r,string $permission): bool`
- L39–55 · public · `function action(array $data): void`
- L56–69 · public · `function render(array $r,int $field): string`

## Geniuspace\CreatorRevenue

`components/com_joomcck/site/library/php/geniuspace/CreatorRevenue.php:6`
- L8–8 · private · `function store(): Store`
- L9–14 · public · `function parse(string $raw): array`
- L15–29 · public · `function hired(array $application,Quiz $quiz): void`
- L30–37 · public · `function settle(int $application,int $creator,string $reference): void`
- L38–50 · public · `function render(object $record,?object $field=null,bool $ledger=false): string`

## Geniuspace\Hiring

`components/com_joomcck/site/library/php/geniuspace/Hiring.php:5`
- L7–7 · private · `function store(): Store`
- L8–16 · private · `function application(int $id): array`
- L17–22 · public · `function saved(int $id): void`
- L23–40 · public · `function change(int $id,string $state): void`
- L41–48 · public · `function render(object $job): string`

## Geniuspace\JobActions

`components/com_joomcck/site/library/php/geniuspace/JobActions.php:4`
- L6–14 · public · `function render(object $r,string $apply,string $ask,array $quiz,bool $expired,string $salary,string $city): string`

## NexusCompensation

`components/com_joomcck/site/library/php/geniuspace/NexusCompensation.php:4`
- L6–13 · public · `function parse(string $value): array`
- L14–20 · public · `function render(array $data,int $field,int $record): string`

## NexusJobPreview

`components/com_joomcck/site/library/php/geniuspace/NexusJobPreview.php:6`
- L8–13 · public · `function selectionUrl(int $id): string`
- L15–41 · public · `function render(object $item): string`

## Geniuspace\OfferVault

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:6`
- L8–8 · private · `function store(): Store`
- L9–17 · private · `function definition(int $record,int $field): array`
- L18–24 · public · `function declaration(array $d): array`
- L25–40 · public · `function upload(int $record,int $field,array $data,string $filename,string $bytes): int`
- L41–46 · public · `function review(int $id,string $state): void`
- L47–52 · public · `function revoke(int $id): void`
- L54–60 · public · `function summaryPdf(array $d,string $company,string $checksum): string`
- L61–67 · public · `function download(int $id,bool $original=false): Response`
- L68–79 · public · `function render(object $record,object $field): string`

## Geniuspace\Passport

`components/com_joomcck/site/library/php/geniuspace/Passport.php:6`
- L8–13 · public · `function canRead(array $r,int $user=0): bool`
- L14–24 · public · `function grant(array $data): void`
- L25–58 · public · `function evaluate(array $d,array $r): array`
- L59–65 · private · `function reviewReadable(array $evidence,array $review): bool`
- L66–72 · public · `function owned(int $user): ?array`
- L73–85 · public · `function render(array $d,array $r,int $field): string`
- L86–95 · public · `function review(array $data): void`
- L96–103 · public · `function reviewControls(object $record,int $field): string`

## Geniuspace\TalentMarket

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:5`
- L8–8 · public · `function lockForSave(array $record):void`
- L9–9 · private · `function lock(int $id):void`
- L10–10 · public · `function release():void`
- L11–11 · private · `function store():Store`
- L12–18 · public · `function parse(string $raw,string $mode):array`
- L19–23 · private · `function definition(int $record,int $field):array`
- L24–28 · private · `function company(int $id,array $d,int $user):array`
- L29–52 · public · `function action(array $data):void`
- L53–56 · private · `function number($v,float $min,float $max):float`
- L57–68 · public · `function validateSave(object $field,$value,$record):void`
- L69–86 · public · `function render(object $record,object $field):string`

## Geniuspace\Workstyle

`components/com_joomcck/site/library/php/geniuspace/Workstyle.php:5`
- L7–15 · public · `function parse(string $raw): array`
- L16–20 · private · `function vector($d): array`
- L21–27 · public · `function compare(array $definition,array $answers): array`
- L28–34 · public · `function submit(int $record,int $field,array $answers): void`
- L35–44 · public · `function render(object $record,object $field): string`

## Geniuspace\EmploymentRoutes

`components/com_joomcck/site/library/php/geniuspace/EmploymentRoutes.php:6`
- L8–15 · public · `function category(int $hub): int`
- L16–16 · public · `function hubUrl(int $hub): string`
- L17–21 · public · `function eligible(array $r): ?array`
- L22–26 · public · `function slug(array $r): string`
- L27–31 · public · `function recordUrl(array|object $record): ?string`
- L32–35 · public · `function submissionUrl(int $section,int $type): ?string`
- L36–48 · public · `function parse(array $segments): ?array`

## Geniuspace\EmploymentExperience

`components/com_joomcck/site/library/php/geniuspace/EmploymentExperience.php:6`
- L8–8 · private · `function e(mixed $v): string`
- L9–13 · public · `function assets(): void`
- L14–18 · private · `function mappings(array $p): array`
- L19–23 · public · `function value(array $p,array $aliases,string $fallback=''): string`
- L24–30 · public · `function photo(array $p): string`
- L32–36 · public · `function sector(array $p): string`
- L37–48 · public · `function summary(array $p): array`
- L49–55 · public · `function jobs(int $hub): array`
- L56–62 · public · `function barometer(array $jobs): string`
- L63–66 · public · `function submission(int $hub): string`
- L67–73 · public · `function filtersUrl(int $hub): string`
- L74–92 · public · `function index(array $c,array $items,object $params): string`
- L93–97 · private · `function salaryComparison(array $jobs,int $hub,object $params): string`
- L98–102 · public · `function preview(array $p): string`
- L103–104 · public · `function field(object $item,array $aliases): ?object`
- L105–105 · public · `function native(object $item,array $aliases): string`
- L106–119 · public · `function recordHead(object $item,object $params,array $data): string`
- L120–125 · public · `function related(object $item): string`
- L126–131 · public · `function extraParams(object $item,object $params): object`
- L132–136 · public · `function quote(object $item): string`
- L137–140 · private · `function number(object $item,string $alias): ?float`
- L141–149 · public · `function sales(object $item): string`

## Geniuspace\WorkQueue

`components/com_joomcck/site/library/php/geniuspace/WorkQueue.php:6`
- L8–37 · public · `function read(): array`

## Geniuspace\EmploymentFilters

`components/com_joomcck/site/library/php/geniuspace/EmploymentFilters.php:6`
- L8–8 · private · `function e(mixed $v): string`
- L9–16 · public · `function publicField(object $f): bool`
- L17–75 · public · `function search(int $hub): array`
- L76–77 · private · `function url(string $base,string $term,array $filters,int $before,int $rank=-1): string`

## Geniuspace\EmploymentFields

`components/com_joomcck/site/library/php/geniuspace/EmploymentFields.php:6`
- L8–11 · public · `function definitions(): array`
- L12–15 · private · `function defaults(string $file,string $path): array`
- L16–31 · public · `function ensure(): array`

## SQL et données

Les expressions suivantes sont du PHP source ; les variables ne sont pas évaluées. Pour un EXPLAIN réel, reconstruire une requête paramétrée sur une copie de test.

### SQL00637 · Geniuspace\AccountIdentity::profileValue

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:26`

```php
return (string)($s->rows('SELECT profile_value FROM #__user_profiles WHERE user_id='.$user.' AND profile_key='.$s->q('geniuspace.'.$key),1)[0]['profile_value']??'');
```

### SQL00638 · Geniuspace\AccountIdentity::saveProfileValue

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:32`

```php
$s->run('DELETE FROM #__user_profiles WHERE '.$where);
```

### SQL00639 · Geniuspace\AccountIdentity::saveProfileValue

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:33`

```php
$s->run('INSERT INTO #__user_profiles (user_id,profile_key,profile_value,ordering) VALUES ('.$user.','.$s->q('geniuspace.'.$key).','.$s->q($value).',0)');
```

### SQL00640 · Geniuspace\AccountIdentity::verifiedEmail

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:56`

```php
$r=ProductAccess::store()->rows('SELECT email,block,activation FROM #__users WHERE id='.max(0,$user),1)[0]??null;
```

### SQL00641 · Geniuspace\AccountIdentity::currentEmail

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:94`

```php
$row=ProductAccess::store()->rows('SELECT email,block,activation FROM #__users WHERE id='.$id,1)[0]??null;
```

### SQL00642 · Geniuspace\AccountIdentity::companies

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:103`

```php
if(!$s->rows('SELECT id FROM #__users WHERE id='.$user.' AND block=0',1))return [];
```

### SQL00643 · Geniuspace\AccountIdentity::companies

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:107`

```php
foreach($s->rows('SELECT r.*,t.params AS type_params FROM #__js_res_record r INNER JOIN #__js_res_types t ON t.id=r.type_id WHERE ('.$clause.') ORDER BY (r.user_id='.$user.') DESC,r.id',40)as$r){
            $tp=json_decode($r['type_params']??'{}',true)?:[];
```

### SQL00644 · Geniuspace\AccountIdentity::mappedFields

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:128`

```php
foreach($s->rows('SELECT * FROM #__js_res_fields WHERE type_id='.(int)$company['type_id'].' AND published=1',300)as$f)
            if(in_array((string)$f['id'],$keys,true)||in_array($f['key'],$keys,true))$out[]=$f;
```

### SQL00645 · Geniuspace\AccountIdentity::logo

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:141`

```php
$files=$s->rows('SELECT id,filename FROM #__js_res_files WHERE record_id='.(int)$company['id'].' AND field_id='.(int)$f['id']." AND saved=1 AND ext IN ('jpg','jpeg','png','webp','avif','gif') ORDER BY id",10);
```

### SQL00646 · Geniuspace\AccountIdentity::card

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:162`

```php
$user=$s->rows('SELECT id,name,block FROM #__users WHERE id='.max(0,$userId),1)[0]??null;
```

### SQL00647 · Geniuspace\AccountIdentity::syncBusinessEmail

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:212`

```php
$u=$s->rows('SELECT email FROM #__users WHERE id='.$actor,1)[0]??[];
```

### SQL00648 · Geniuspace\AccountIdentity::syncBusinessEmail

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:219`

```php
$email=(string)($s->rows('SELECT email FROM #__users WHERE id='.$actor,1)[0]['email']??'');
```

### SQL00649 · Geniuspace\AccountIdentity::syncBusinessEmail

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:221`

```php
$s->run('UPDATE #__js_res_record SET fields='.$s->q(Seo::json($values)).' WHERE id='.$companyId.' AND user_id='.$actor);
```

### SQL00650 · Geniuspace\AccountIdentity::syncBusinessEmail

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:222`

```php
$s->run('DELETE FROM #__js_res_record_values WHERE record_id='.$companyId.' AND field_id='.$fieldId);
```

### SQL00651 · Geniuspace\AccountIdentity::syncBusinessEmail

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:223`

```php
$s->run('INSERT INTO #__js_res_record_values (field_id,field_key,field_type,field_label,field_value,record_id,user_id,type_id,section_id,params,ip,ctime,value_index,value_num) VALUES ('.$fieldId.','.$s->q($field['key']).",'email',".$s->q($field['label']).','.$s->q($email).','.$companyId.','.$actor.','.(int)$r['type_id'].','.(int)$r['section_id'].",NULL,'',".$s->q(gmdate('Y-m-d H:i:s')).",'0',0)");
```

### SQL00652 · Geniuspace\AccountIdentity::onboarding

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:238`

```php
foreach(ProductAccess::store()->rows("SELECT id,label FROM #__js_res_fields WHERE type_id=".(int)$r['type_id']." AND published=1 AND field_type='email'",20)as$f){try{ProductAccess::field((int)$r['id'],(int)$f['id'],'email',true);
```

### SQL00653 · Geniuspace\AccountIdentity::onboarding

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:240`

```php
$sections=$s->rows('SELECT id,params,access FROM #__js_res_sections WHERE published=1 ORDER BY id',100);
```

### SQL00654 · Geniuspace\AccountIdentity::onboarding

`components/com_joomcck/site/library/php/geniuspace/AccountIdentity.php:243`

```php
$t=$s->rows('SELECT id,name,params FROM #__js_res_types WHERE id='.$typeId.' AND published=1',1)[0]??null;
```

### SQL00744 · Geniuspace\CompanyTeam::company

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:12`

```php
foreach($s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$r['type_id']." AND field_type='gpteam' AND published=1",10)as$f)$found=true;
```

### SQL00745 · Geniuspace\CompanyTeam::companyOf

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:21`

```php
if($s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$r['type_id']." AND field_type='gpteam' AND published=1",1))return (int)$r['id'];
```

### SQL00746 · Geniuspace\CompanyTeam::companyOf

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:22`

```php
foreach($s->rows("SELECT DISTINCT v.field_value AS parent,f.params FROM #__js_res_record_values v INNER JOIN #__js_res_fields f ON f.id=v.field_id WHERE v.record_id=".(int)$r['id']." AND f.field_type='child' AND f.published=1",40)as$v){$id=(int)$v['parent'];
```

### SQL00747 · Geniuspace\CompanyTeam::allows

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:32`

```php
$row=$s->rows("SELECT t.role FROM #__gp_social_company_team t INNER JOIN #__users u ON u.id=t.user_id AND u.block=0 WHERE company_id=".$company.' AND user_id='.$user." AND state='active'",1)[0]??null;
```

### SQL00748 · Geniuspace\CompanyTeam::allows

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:33`

```php
$type=$s->rows('SELECT params FROM #__js_res_types WHERE id='.(int)$r['type_id'],1)[0]??[];
```

### SQL00749 · Geniuspace\CompanyTeam::action

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:43`

```php
$s->run("UPDATE #__gp_social_company_team SET state='active',mtime=".$s->q(gmdate('Y-m-d H:i:s')).' WHERE company_id='.$id.' AND user_id='.$actor." AND state='invited'");
```

### SQL00750 · Geniuspace\CompanyTeam::action

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:47`

```php
if($user<1||$user===(int)$company['user_id']||!$s->rows('SELECT id FROM #__users WHERE id='.$user.' AND block=0',1))throw new \InvalidArgumentException('Compte Joomla actif requis.');
```

### SQL00751 · Geniuspace\CompanyTeam::action

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:48`

```php
$s->run('DELETE FROM #__gp_social_company_team WHERE company_id='.$id.' AND user_id='.$user);
```

### SQL00752 · Geniuspace\CompanyTeam::action

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:51`

```php
$s->run('INSERT INTO #__gp_social_company_team (company_id,user_id,role,state,inviter_id,mtime) VALUES ('.$id.','.$user.','.$s->q($role).",'invited',".$actor.','.$s->q(gmdate('Y-m-d H:i:s')).") ON DUPLICATE KEY UPDATE role=VALUES(role),state='invited',inviter_id=VALUES(inviter_id),mtime=VALUES(mtime)");
```

### SQL00753 · Geniuspace\CompanyTeam::render

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:61`

```php
foreach($s->rows('SELECT t.user_id,t.role,t.state,u.name FROM #__gp_social_company_team t INNER JOIN #__users u ON u.id=t.user_id WHERE company_id='.$id,100)as$m){
                $out.='<p>'.Text::escape($m['name']).' · '.Text::escape($m['role']).' · '.Text::escape($m['state']).'</p>'.ProductAccess::form('team',$id,['company'=>$id,'operation'=>'revoke','user'=>$m['user_id']]).'<button>Retirer ce rôle</button></form>';
```

### SQL00754 · Geniuspace\CompanyTeam::render

`components/com_joomcck/site/library/php/geniuspace/CompanyTeam.php:66`

```php
elseif($s->rows("SELECT user_id FROM #__gp_social_company_team WHERE company_id=".$id.' AND user_id='.(int)$u->id." AND state='invited'",1))
            $out=ProductAccess::form('team',$id,['company'=>$id,'operation'=>'accept']).'<button>Accepter mon rôle dans cette équipe</button></form>';
```

### SQL00762 · Geniuspace\CreatorRevenue::hired

`components/com_joomcck/site/library/php/geniuspace/CreatorRevenue.php:18`

```php
foreach($s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$application['job']['type_id']." AND field_type='gpbounty' AND published=1 ORDER BY ordering,id",1000)as$f)if(!empty($values[$f['id']])){$reward=self::parse((string)$values[$f['id']]);
```

### SQL00763 · Geniuspace\CreatorRevenue::hired

`components/com_joomcck/site/library/php/geniuspace/CreatorRevenue.php:21`

```php
foreach($s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$course['raw']['type_id']." AND field_type='gppath' AND published=1",1000)as$f){try{$state=(new LearningPath($quiz))->state((int)$id,(int)$f['id']);
```

### SQL00764 · Geniuspace\CreatorRevenue::hired

`components/com_joomcck/site/library/php/geniuspace/CreatorRevenue.php:22`

```php
if($creator>0&&$creator!==(int)$application['record']['user_id']&&$s->rows('SELECT id FROM #__users WHERE id='.$creator.' AND block=0',1))$creators[$creator]=(int)$id;
```

### SQL00765 · Geniuspace\CreatorRevenue::hired

`components/com_joomcck/site/library/php/geniuspace/CreatorRevenue.php:27`

```php
$s->run('INSERT IGNORE INTO #__gp_social_creator_revenue (application_id,job_id,creator_id,course_id,amount_minor,currency,state,actor_id,reference,ctime,mtime) VALUES ('.(int)$application['record']['id'].','.$job.','.$creator.','.$course.','.$amount.','.$s->q($reward['currency']).",'pending',0,'',".$s->q(gmdate('Y-m-d H:i:s')).','.$s->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL00766 · Geniuspace\CreatorRevenue::settle

`components/com_joomcck/site/library/php/geniuspace/CreatorRevenue.php:35`

```php
if(!$s->rows('SELECT application_id FROM #__gp_social_creator_revenue WHERE application_id='.$application.' AND creator_id='.$creator,1))throw new \DomainException('Écriture introuvable.',404);
```

### SQL00767 · Geniuspace\CreatorRevenue::settle

`components/com_joomcck/site/library/php/geniuspace/CreatorRevenue.php:36`

```php
$s->run("UPDATE #__gp_social_creator_revenue SET state='recorded',actor_id=".(int)$u->id.',reference='.$s->q($reference).',mtime='.$s->q(gmdate('Y-m-d H:i:s')).' WHERE application_id='.$application.' AND creator_id='.$creator." AND state='pending'");
```

### SQL00768 · Geniuspace\CreatorRevenue::render

`components/com_joomcck/site/library/php/geniuspace/CreatorRevenue.php:45`

```php
$rows=$s->rows('SELECT * FROM #__gp_social_creator_revenue WHERE '.$where.' ORDER BY ctime DESC',100);
```

### SQL01017 · Geniuspace\Hiring::application

`components/com_joomcck/site/library/php/geniuspace/Hiring.php:10`

```php
$record=$store->rows('SELECT * FROM #__js_res_record WHERE id='.$id,1)[0]??null;
```

### SQL01018 · Geniuspace\Hiring::application

`components/com_joomcck/site/library/php/geniuspace/Hiring.php:13`

```php
$job=$store->rows('SELECT * FROM #__js_res_record WHERE id='.(int)$record['parent_id'],1)[0]??null;
```

### SQL01019 · Geniuspace\Hiring::saved

`components/com_joomcck/site/library/php/geniuspace/Hiring.php:21`

```php
$s->run('INSERT IGNORE INTO #__gp_social_hiring_states (application_id,job_id,state,actor_id,mtime) VALUES ('.$id.','.(int)$a['job']['id'].",'applied',".(int)$a['record']['user_id'].','.$s->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL01020 · Geniuspace\Hiring::change

`components/com_joomcck/site/library/php/geniuspace/Hiring.php:27`

```php
$s->rows('SELECT id FROM #__js_res_record WHERE id='.$id.' FOR UPDATE',1);
```

### SQL01021 · Geniuspace\Hiring::change

`components/com_joomcck/site/library/php/geniuspace/Hiring.php:29`

```php
$prior=$s->rows('SELECT state FROM #__gp_social_hiring_states WHERE application_id='.$id.' FOR UPDATE',1)[0]['state']??'applied';
```

### SQL01022 · Geniuspace\Hiring::change

`components/com_joomcck/site/library/php/geniuspace/Hiring.php:36`

```php
$s->run('UPDATE #__gp_social_hiring_states SET state='.$s->q($state).',actor_id='.(int)$identity->id.',mtime='.$s->q(gmdate('Y-m-d H:i:s')).' WHERE application_id='.$id);
```

### SQL01023 · Geniuspace\Hiring::render

`components/com_joomcck/site/library/php/geniuspace/Hiring.php:45`

```php
foreach($s->rows('SELECT r.id,r.title,r.type_id,r.section_id,h.state FROM #__js_res_record r LEFT JOIN #__gp_social_hiring_states h ON h.application_id=r.id WHERE r.parent='.$s->q('com_joomcck').' AND r.parent_id='.(int)$job->id.' ORDER BY r.id DESC',100)as$r){try{self::application((int)$r['id']);
```

### SQL01232 · Geniuspace\OfferVault::definition

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:12`

```php
$f=self::store()->rows("SELECT params FROM #__js_res_fields WHERE id=$field AND type_id=".(int)$r['raw']['type_id']." AND field_type='gpvault' AND published=1 AND access=1",1)[0]??null;
```

### SQL01233 · Geniuspace\OfferVault::upload

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:34`

```php
$s->rows('SELECT id FROM #__users WHERE id='.(int)$user->id.' FOR UPDATE',1);
```

### SQL01234 · Geniuspace\OfferVault::upload

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:35`

```php
$used=$s->rows('SELECT COUNT(*) AS n,COALESCE(SUM(bytes),0) AS bytes FROM #__gp_social_verified_offers WHERE user_id='.(int)$user->id,1)[0];
```

### SQL01235 · Geniuspace\OfferVault::upload

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:36`

```php
$total=(int)($s->rows('SELECT COALESCE(SUM(bytes),0) AS n FROM #__gp_social_verified_offers',1)[0]['n']??0);
```

### SQL01236 · Geniuspace\OfferVault::review

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:44`

```php
$r=$s->rows('SELECT record_id,field_id FROM #__gp_social_verified_offers WHERE id='.$id,1)[0]??null;
```

### SQL01237 · Geniuspace\OfferVault::review

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:45`

```php
$s->run('UPDATE #__gp_social_verified_offers SET state='.$s->q($state).',reviewer_id='.(int)$u->id.',mtime='.$s->q(gmdate('Y-m-d H:i:s')).' WHERE id='.$id." AND state='pending'");
```

### SQL01238 · Geniuspace\OfferVault::revoke

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:49`

```php
$r=$s->rows('SELECT user_id FROM #__gp_social_verified_offers WHERE id='.$id,1)[0]??null;
```

### SQL01239 · Geniuspace\OfferVault::revoke

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:51`

```php
$s->run("UPDATE #__gp_social_verified_offers SET state='revoked',payload='',bytes=0,mtime=".$s->q(gmdate('Y-m-d H:i:s')).' WHERE id='.$id);
```

### SQL01240 · Geniuspace\OfferVault::download

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:63`

```php
$r=$s->rows('SELECT * FROM #__gp_social_verified_offers WHERE id='.$id,1)[0]??null;
```

### SQL01241 · Geniuspace\OfferVault::render

`components/com_joomcck/site/library/php/geniuspace/OfferVault.php:73`

```php
foreach($s->rows('SELECT id,user_id,declaration,state,analysis FROM #__gp_social_verified_offers WHERE '.$where.' ORDER BY id DESC',100)as$r){$d=json_decode($r['declaration'],true);
```

### SQL01353 · Geniuspace\Passport::canRead

`components/com_joomcck/site/library/php/geniuspace/Passport.php:12`

```php
return (bool)ProductAccess::store()->rows('SELECT user_id FROM #__gp_social_passport_grants WHERE record_id='.(int)$r['id'].' AND owner_id='.(int)$r['user_id'].' AND user_id='.$user.' AND expires_at>'.ProductAccess::store()->q(gmdate('Y-m-d H:i:s')),1);
```

### SQL01354 · Geniuspace\Passport::grant

`components/com_joomcck/site/library/php/geniuspace/Passport.php:18`

```php
$has=$s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$r['type_id']." AND field_type='gppassport' AND published=1",1);
```

### SQL01355 · Geniuspace\Passport::grant

`components/com_joomcck/site/library/php/geniuspace/Passport.php:20`

```php
if(!$user||$user===$actor||!$s->rows('SELECT id FROM #__users WHERE id='.$user.' AND block=0',1))throw new \InvalidArgumentException('Destinataire actif requis.');
```

### SQL01356 · Geniuspace\Passport::grant

`components/com_joomcck/site/library/php/geniuspace/Passport.php:21`

```php
if(!empty($data['revoke']))$s->run('DELETE FROM #__gp_social_passport_grants WHERE record_id='.$record.' AND user_id='.$user);
```

### SQL01357 · Geniuspace\Passport::grant

`components/com_joomcck/site/library/php/geniuspace/Passport.php:22`

```php
$s->run('INSERT INTO #__gp_social_passport_grants (record_id,user_id,owner_id,expires_at,ctime) VALUES ('.$record.','.$user.','.$actor.','.$s->q(gmdate('Y-m-d H:i:s',time()+$days*86400)).','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE owner_id=VALUES(owner_id),expires_at=VALUES(expires_at),ctime=VALUES(ctime)');
```

### SQL01358 · Geniuspace\Passport::evaluate

`components/com_joomcck/site/library/php/geniuspace/Passport.php:33`

```php
foreach($s->rows('SELECT * FROM #__gp_social_proof_reviews WHERE record_id='.$id.' AND skill_code='.$s->q($skill['code']).' AND source_hash='.$s->q($hash).' AND expires_at>'.$s->q(gmdate('Y-m-d H:i:s')),30)as$review){
                    $reviewer=$s->rows('SELECT id FROM #__users WHERE id='.(int)$review['reviewer_id'].' AND block=0',1);
```

### SQL01359 · Geniuspace\Passport::evaluate

`components/com_joomcck/site/library/php/geniuspace/Passport.php:34`

```php
$reviewer=$s->rows('SELECT id FROM #__users WHERE id='.(int)$review['reviewer_id'].' AND block=0',1);
```

### SQL01360 · Geniuspace\Passport::evaluate

`components/com_joomcck/site/library/php/geniuspace/Passport.php:41`

```php
foreach($s->rows('SELECT a.* FROM #__gp_social_quiz_attempts a WHERE a.record_id='.$id.' AND a.user_id='.$owner.' AND a.passed=1 AND a.valid_until>'.$s->q(gmdate('Y-m-d H:i:s')).' ORDER BY a.id DESC',30)as$attempt){
                    try{$q=QuizBridge::service((int)$evidence['section_id']);
```

### SQL01361 · Geniuspace\Passport::evaluate

`components/com_joomcck/site/library/php/geniuspace/Passport.php:49`

```php
foreach($s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$evidence['type_id']." AND field_type='gpskills' AND published=1",20)as$f)
                        try{foreach(\NexusSkills::parse((string)($values[$f['id']]??''))['skills']as$v)if($v['code']===$skill['code'])$requested=max($requested,$v['level']);
```

### SQL01362 · Geniuspace\Passport::reviewReadable

`components/com_joomcck/site/library/php/geniuspace/Passport.php:62`

```php
$f=$s->rows("SELECT * FROM #__js_res_fields WHERE id=".(int)$review['field_id']." AND field_type='gpproof' AND published=1 AND type_id=".(int)$evidence['type_id'],1)[0]??null;
```

### SQL01363 · Geniuspace\Passport::owned

`components/com_joomcck/site/library/php/geniuspace/Passport.php:68`

```php
foreach($s->rows("SELECT DISTINCT r.* FROM #__js_res_record r INNER JOIN #__js_res_fields f ON f.type_id=r.type_id WHERE r.user_id=".$user." AND f.field_type='gppassport' AND f.published=1 AND r.hidden=0 AND r.archive=0 ORDER BY r.id DESC",30)as$r){
            $values=json_decode($r['fields'],true)?:[];
```

### SQL01364 · Geniuspace\Passport::owned

`components/com_joomcck/site/library/php/geniuspace/Passport.php:69`

```php
foreach($s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$r['type_id']." AND field_type='gppassport' AND published=1",20)as$f)
                try{return ['record'=>$r,'field'=>(int)$f['id'],'data'=>ProductData::parse('passport',(string)($values[$f['id']]??''))];
```

### SQL01365 · Geniuspace\Passport::render

`components/com_joomcck/site/library/php/geniuspace/Passport.php:82`

```php
foreach($s->rows('SELECT g.user_id,g.expires_at,u.name FROM #__gp_social_passport_grants g INNER JOIN #__users u ON u.id=g.user_id WHERE record_id='.(int)$r['id'].' AND owner_id='.(int)$r['user_id'],100)as$g)
                $out.='<p>'.Text::escape($g['name'].' · '.$g['expires_at']).'</p>'.ProductAccess::form('passport.grant',(int)$r['id'],['user'=>$g['user_id'],'revoke'=>1]).'<button>Retirer cet accès</button></form>';
```

### SQL01366 · Geniuspace\Passport::review

`components/com_joomcck/site/library/php/geniuspace/Passport.php:93`

```php
$s->run('INSERT INTO #__gp_social_proof_reviews (record_id,field_id,reviewer_id,source_hash,skill_code,level,method,note,expires_at,ctime) VALUES ('.$record.','.$field.','.$user.','.$s->q(ProductAccess::revision($r)).','.$s->q($code).','.$level.",'expert',".$s->q($note).','.$s->q(gmdate('Y-m-d H:i:s',time()+$days*86400)).','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE source_hash=VALUES(source_hash),level=VALUES(level),note=VALUES(note),expires_at=VALUES(expires_at),ctime=VALUES(ctime)');
```

### SQL01576 · Geniuspace\TalentMarket::lockForSave

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:8`

```php
if($s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$record['type_id']." AND field_type='gptalentmarket' AND published=1",1))self::lock((int)$record['id']);
```

### SQL01577 · Geniuspace\TalentMarket::lock

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:9`

```php
$s->db->setQuery('SELECT GET_LOCK('.$s->q($name).',5)');
```

### SQL01578 · Geniuspace\TalentMarket::release

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:10`

```php
$s->db->setQuery('SELECT RELEASE_LOCK('.$s->q($name).')');
```

### SQL01579 · Geniuspace\TalentMarket::action

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:32`

```php
$s->rows('SELECT id FROM #__js_res_record WHERE id='.$id.' FOR UPDATE',1);
```

### SQL01580 · Geniuspace\TalentMarket::action

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:36`

```php
$top=$s->rows('SELECT company_id FROM #__gp_social_talent_bids WHERE '.$where.' ORDER BY salary DESC,bonus DESC,ctime ASC',3);
```

### SQL01581 · Geniuspace\TalentMarket::action

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:38`

```php
$s->run('UPDATE #__gp_social_talent_bids SET accepted=1 WHERE '.$where.' AND company_id='.$company);
```

### SQL01582 · Geniuspace\TalentMarket::action

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:44`

```php
$s->run('INSERT INTO #__gp_social_talent_bids (record_id,field_id,company_id,user_id,salary,bonus,remote_days,accepted,ctime) VALUES ('.$id.','.$fid.','.$company.','.$actor.','.$salary.','.$bonus.','.$remote.',0,'.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE salary=VALUES(salary),bonus=VALUES(bonus),remote_days=VALUES(remote_days),ctime=VALUES(ctime)');
```

### SQL01583 · Geniuspace\TalentMarket::action

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:46`

```php
$s->run('DELETE FROM #__gp_social_fractional_contracts WHERE '.$where.' AND company_id='.$company.' AND user_id='.$actor);
```

### SQL01584 · Geniuspace\TalentMarket::action

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:48`

```php
$rows=$s->rows('SELECT company_id,days FROM #__gp_social_fractional_contracts WHERE '.$where.' FOR UPDATE',1000);
```

### SQL01585 · Geniuspace\TalentMarket::action

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:49`

```php
$s->run('INSERT INTO #__gp_social_fractional_contracts (record_id,field_id,company_id,user_id,days,ctime) VALUES ('.$id.','.$fid.','.$company.','.$actor.','.$days.','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE days=VALUES(days),ctime=VALUES(ctime)');
```

### SQL01586 · Geniuspace\TalentMarket::validateSave

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:60`

```php
$used=$s->rows('SELECT record_id FROM #__gp_social_talent_bids WHERE '.$where,1)||$s->rows('SELECT record_id FROM #__gp_social_fractional_contracts WHERE '.$where,1);
```

### SQL01587 · Geniuspace\TalentMarket::validateSave

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:60`

```php
$old=json_decode($s->rows('SELECT fields FROM #__js_res_record WHERE id='.$id,1)[0]['fields'],true);
```

### SQL01588 · Geniuspace\TalentMarket::validateSave

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:62`

```php
$type=self::store()->rows('SELECT params FROM #__js_res_types WHERE id='.(int)($r['type_id']??0),1)[0]??[];
```

### SQL01589 · Geniuspace\TalentMarket::validateSave

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:63`

```php
$section=self::store()->rows('SELECT params FROM #__js_res_sections WHERE id='.(int)($r['section_id']??0),1)[0]??[];
```

### SQL01590 · Geniuspace\TalentMarket::validateSave

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:67`

```php
$used=(float)(self::store()->rows('SELECT SUM(days) AS n FROM #__gp_social_fractional_contracts WHERE record_id='.$id.' AND field_id='.(int)$field->id,1)[0]['n']??0);
```

### SQL01591 · Geniuspace\TalentMarket::render

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:73`

```php
$used=(float)($s->rows('SELECT SUM(days) AS n FROM #__gp_social_fractional_contracts WHERE '.$where,1)[0]['n']??0);
```

### SQL01592 · Geniuspace\TalentMarket::render

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:77`

```php
if($d['mode']==='auction')foreach($s->rows('SELECT * FROM #__gp_social_talent_bids WHERE '.$where.($owner?'':' AND user_id='.(int)$user->id).' ORDER BY salary DESC,bonus DESC,ctime ASC',1000)as$b){if(!$owner)try{self::company((int)$b['company_id'],$d,(int)$user->id);
```

### SQL01593 · Geniuspace\TalentMarket::render

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:79`

```php
$talent=$s->rows('SELECT name,email FROM #__users WHERE id='.(int)$d['record']['raw']['user_id'].' AND block=0',1)[0]??[];
```

### SQL01594 · Geniuspace\TalentMarket::render

`components/com_joomcck/site/library/php/geniuspace/TalentMarket.php:84`

```php
if($d['mode']==='fractional')foreach($s->rows('SELECT company_id,days FROM #__gp_social_fractional_contracts WHERE '.$where.' AND user_id='.(int)$user->id,100)as$r)$out.='<form method="post" action="'.Text::escape(\Joomla\CMS\Uri\Uri::root().'index.php').'">'.$hidden.'<input type="hidden" name="action" value="cancel"><input type="hidden" name="company" value="'.(int)$r['company_id'].'"><button class="nx-connect-button">Annuler ma réservation de '.Text::escape($r['days']).' jours</button></form>';
```

### SQL01600 · Geniuspace\Workstyle::submit

`components/com_joomcck/site/library/php/geniuspace/Workstyle.php:33`

```php
$s->run('INSERT INTO #__gp_social_workstyle (record_id,field_id,user_id,revision,result,ctime) VALUES ('.$record.','.$field.','.(int)$user->id.','.$s->q($revision).','.$s->q(Seo::json($result)).','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE revision=VALUES(revision),result=VALUES(result),ctime=VALUES(ctime)');
```

### SQL01601 · Geniuspace\Workstyle::render

`components/com_joomcck/site/library/php/geniuspace/Workstyle.php:39`

```php
$row=$s->rows('SELECT revision,result FROM #__gp_social_workstyle WHERE record_id='.$id.' AND field_id='.$fid.' AND user_id='.(int)$user->id,1)[0]??[];
```

### SQL01688 · Geniuspace\EmploymentRoutes::recordUrl

`components/com_joomcck/site/library/php/geniuspace/EmploymentRoutes.php:29`

```php
if(empty($r['title'])&&!empty($r['id']))$r=array_replace($r,ProductAccess::store()->rows('SELECT title FROM #__js_res_record WHERE id='.(int)$r['id'],1)[0]??[]);
```

### SQL01689 · Geniuspace\EmploymentRoutes::parse

`components/com_joomcck/site/library/php/geniuspace/EmploymentRoutes.php:39`

```php
if(!in_array($type,array_map('intval',(array)$native->params->get('general.type',[])),true)||!ProductAccess::store()->rows('SELECT id FROM #__js_res_types WHERE id='.$type.' AND published=1',1))throw new \RuntimeException('Formulaire introuvable.',404);
```

### SQL01690 · Geniuspace\EmploymentRoutes::parse

`components/com_joomcck/site/library/php/geniuspace/EmploymentRoutes.php:44`

```php
$r=ProductAccess::store()->rows('SELECT id,title,type_id,section_id FROM #__js_res_record WHERE id='.(int)$m[1],1)[0]??null;
```

### SQL01691 · Geniuspace\EmploymentExperience::jobs

`components/com_joomcck/site/library/php/geniuspace/EmploymentExperience.php:52`

```php
foreach(ProductAccess::store()->rows('SELECT id FROM #__js_res_record WHERE section_id IN('.implode(',',array_map('intval',$sections)).') AND published=1 AND hidden=0 ORDER BY mtime DESC,id DESC',200)as$row){
            if(!($p=$gate->record((int)$row['id'])))continue;
```

### SQL01692 · Geniuspace\EmploymentExperience::filtersUrl

`components/com_joomcck/site/library/php/geniuspace/EmploymentExperience.php:70`

```php
foreach(ProductAccess::store()->rows("SELECT id,link FROM #__menu WHERE client_id=0 AND published=1 AND type='component' AND access IN (".implode(',',ProductAccess::user()->getAuthorisedViewLevels()).") ORDER BY id",1000)as$menu){$args=[];
```

### SQL01748 · Geniuspace\WorkQueue::read

`components/com_joomcck/site/library/php/geniuspace/WorkQueue.php:14`

```php
foreach($s->rows('SELECT r.* FROM #__js_res_record r WHERE ('.$where.') ORDER BY r.mtime DESC,r.id DESC',200)as$r){
            try{ProductAccess::visible((int)$r['id']);
```

### SQL01749 · Geniuspace\WorkQueue::read

`components/com_joomcck/site/library/php/geniuspace/WorkQueue.php:18`

```php
$n=(int)($s->rows('SELECT COUNT(*) AS n FROM #__js_res_comments c WHERE c.record_id='.$id.' AND c.published=1 AND c.hide=0 AND c.private=0 AND c.user_id<>'.$u.' AND c.access IN ('.implode(',',$levels?:[0]).') AND NOT EXISTS(SELECT 1 FROM #__js_res_comments reply WHERE reply.parent_id=c.id AND reply.user_id='.$u.' AND reply.published=1 AND reply.hide=0)',1)[0]['n']??0);
```

### SQL01750 · Geniuspace\WorkQueue::read

`components/com_joomcck/site/library/php/geniuspace/WorkQueue.php:21`

```php
$n=(int)($s->rows("SELECT COUNT(*) AS n FROM #__gp_social_hiring_states h INNER JOIN #__js_res_record a ON a.id=h.application_id AND a.parent='com_joomcck' AND a.parent_id=h.job_id WHERE h.job_id=".$id." AND h.state IN ('applied','review')",1)[0]['n']??0);
```

### SQL01751 · Geniuspace\WorkQueue::read

`components/com_joomcck/site/library/php/geniuspace/WorkQueue.php:25`

```php
$n=(int)($s->rows("SELECT COUNT(*) AS n FROM #__gp_social_hub_proposals p INNER JOIN #__js_res_fields f ON f.id=p.field_id AND f.type_id=".(int)$r['type_id']." AND f.published=1 WHERE p.record_id=".$id." AND p.state='pending'",1)[0]['n']??0);
```

### SQL01752 · Geniuspace\WorkQueue::read

`components/com_joomcck/site/library/php/geniuspace/WorkQueue.php:30`

```php
$n=(int)($s->rows('SELECT COUNT(*) AS n FROM #__gp_social_'.$table.' WHERE record_id='.$id.' AND '.$column." IN ('submitted','pending')",1)[0]['n']??0);
```

### SQL01755 · Geniuspace\EmploymentFilters::search

`components/com_joomcck/site/library/php/geniuspace/EmploymentFilters.php:47`

```php
$defs=$types?$db->setQuery('SELECT * FROM #__js_res_fields WHERE published=1 AND type_id IN ('.implode(',',$types).')')->loadObjectList():[];
```

### SQL01778 · Geniuspace\EmploymentFields::ensure

`components/com_joomcck/site/library/php/geniuspace/EmploymentFields.php:19`

```php
$p=new \Joomla\Registry\Registry($db->setQuery('SELECT params FROM #__js_res_sections WHERE id='.$section)->loadResult()?:'{}');
```

### SQL01779 · Geniuspace\EmploymentFields::ensure

`components/com_joomcck/site/library/php/geniuspace/EmploymentFields.php:19`

```php
foreach($db->setQuery('SELECT DISTINCT type_id FROM #__js_res_record WHERE section_id='.$section)->loadColumn()as$type)$types[(int)$type]=true;
```

### SQL01780 · Geniuspace\EmploymentFields::ensure

`components/com_joomcck/site/library/php/geniuspace/EmploymentFields.php:20`

```php
foreach($db->setQuery('SELECT id,params FROM #__js_res_types WHERE published=1 AND id IN('.implode(',',array_keys($types)).')')->loadAssocList()as$type){$p=new \Joomla\Registry\Registry($type['params']);
```

### SQL01781 · Geniuspace\EmploymentFields::ensure

`components/com_joomcck/site/library/php/geniuspace/EmploymentFields.php:21`

```php
if($db->setQuery('SELECT id FROM #__js_res_fields WHERE type_id='.$id.' AND alias='.$db->quote($alias))->loadResult())continue;
```

### SQL01782 · Geniuspace\EmploymentFields::ensure

`components/com_joomcck/site/library/php/geniuspace/EmploymentFields.php:23`

```php
$ordering=min(127,(int)$db->setQuery('SELECT COALESCE(MAX(ordering),0)+1 FROM #__js_res_fields WHERE type_id='.$id)->loadResult());
```
