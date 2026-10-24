# Médias et AllVideoShare

Fichiers, uploads, gros fichiers, lecteurs, chapitres, commentaires et métadonnées.

Version 5.27.7. Présence dans le code ; ne prouve pas la configuration ou l’utilisation en production.

13 classes ; 66 fonctions/méthodes nommées ; 60 expressions SQL repérées dans ce domaine du noyau Geniuspace.

## Geniuspace\AudioRoom

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:6`
- L8–9 · private · `function room(int $record,int $field): array`
- L10–13 · public · `function peers(int $record,int $field): array`
- L14–55 · public · `function handle(array $data): array`
- L56–57 · public · `function cleanup(): void`
- L58–65 · public · `function render(array $d,array $r,int $field): string`

## Geniuspace\AudioWorkshop

`components/com_joomcck/site/library/php/geniuspace/AudioWorkshop.php:6`
- L8–23 · public · `function upload(int $record,int $field,string $bytes,int $section=0): array`
- L24–25 · public · `function url(int $id): string`
- L26–37 · public · `function download(int $id): Response`
- L38–43 · public · `function guardAsset(int $asset,int $record,int $field): void`
- L44–48 · public · `function bindAsset(int $asset,int $record,int $field): void`
- L49–58 · public · `function feedback(array $data): void`
- L59–64 · public · `function summary(array $d,int $record,int $field): array`
- L65–78 · public · `function render(array $d,array $r,int $field,bool $full): string`

## Geniuspace\FileMetadata

`components/com_joomcck/site/library/php/geniuspace/FileMetadata.php:6`
- L8–19 · public · `function parse(array $d): array`
- L20–20 · private · `function store(): Store`
- L21–25 · public · `function read(int $record,int $field,int $file): array`
- L26–36 · public · `function save(int $record,int $field,int $file,array $data,int $expected): array`
- L37–38 · private · `function files(int $record,int $field): array`
- L39–50 · public · `function render(object $record,int $field,array $p): string`
- L51–59 · public · `function schemas(int $record,int $field,array $p,string $url): array`
- L60–67 · public · `function tools(object $record,int $field): string`
- L68–75 · private · `function editor(object $record,int $field): string`

## Geniuspace\NativeChunkStore

`components/com_joomcck/site/library/php/geniuspace/NativeChunkStore.php:6`
- L8–11 · private · `function prefix(object $config,object $request): string`
- L12–16 · private · `function state(string $prefix): ?array`
- L17–23 · public · `function has(object $config,object $request): bool`
- L25–47 · public · `function receive(string $destination,object $config,object $request): bool`

## Geniuspace\NativeCinema

`components/com_joomcck/site/library/php/geniuspace/NativeCinema.php:6`
- L9–13 · private · `function material(int $id,bool $indexable): ?array`
- L14–18 · public · `function handles(array $material): bool`
- L19–24 · public · `function metadata(?array $material): array`
- L25–31 · private · `function branding(object $field): array`
- L32–52 · public · `function render(array $display): string`
- L53–54 · public · `function instant(string $canonical,int $file,int $seconds): string`
- L55–56 · public · `function time(int $seconds): string`
- L57–66 · private · `function schema(?array $material,array $data,object $video,string $poster,object $field,string $canonical,string $anchor): void`

## Geniuspace\NativeMedia

`components/com_joomcck/site/library/php/geniuspace/NativeMedia.php:5`
- L7–8 · public · `function root(int $field): string`
- L9–14 · public · `function path(array|object $file): string`
- L15–16 · public · `function url(int $id,int $width=0): string`
- L17–18 · public · `function protectedFile(array|object $file,int $field=0): bool`
- L19–48 · public · `function stream(int $id): void`

## Geniuspace\SafeSvg

`components/com_joomcck/site/library/php/geniuspace/SafeSvg.php:5`
- L7–29 · public · `function clean(string $svg): string`

## Geniuspace\TimedMedia

`components/com_joomcck/site/library/php/geniuspace/TimedMedia.php:4`
- L6–16 · public · `function render(array $data,array $record,int $field): string`

## Geniuspace\VideoMoments

`components/com_joomcck/site/library/php/geniuspace/VideoMoments.php:6`
- L9–17 · public · `function prepare(object $comment): void`
- L18–25 · public · `function resolve(array|object $comment): ?array`
- L26–30 · public · `function render(object $comment): string`

## Geniuspace\Watermark

`components/com_joomcck/site/library/php/geniuspace/Watermark.php:4`
- L6–7 · public · `function parse(string $json): array`
- L8–11 · public · `function png(string $bytes,string $text): string`
- L12–16 · public · `function response(Repository $repo,Config $config,int $record,int $field,int $index,string $root): Response`

## Geniuspace\AllVideoMoments

`components/com_joomcck/site/library/php/geniuspace/AllVideoMoments.php:5`
- L7–10 · public · `function prepare(object $comment): void`
- L11–14 · public · `function resolve(array $comment): ?array`

## Geniuspace\AllVideoBridge

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:6`
- L8–9 · public · `function available(): bool`
- L10–11 · public · `function mapping(int $record,int $field): ?array`
- L12–19 · public · `function video(int $id,bool $public=false): ?array`
- L20–21 · public · `function catalogue(): array`
- L22–36 · public · `function syncRecord(int $record): void`
- L38–42 · public · `function filterManaged(array $items): array`
- L43–47 · public · `function currentVideo(): int`
- L48–52 · private · `function finderState(int $video,int $state): void`
- L53–56 · public · `function withdraw(int $record): void`
- L58–70 · public · `function guard(): void`

## Geniuspace\AllVideoField

`components/com_joomcck/site/library/php/geniuspace/AllVideoField.php:7`
- L10–15 · public · `function defaults(object $field): void`
- L16–22 · public · `function metadata(array $raw): array`
- L23–29 · public · `function input(object $field,array $value): string`
- L30–36 · public · `function source(object $field,object $record): ?array`
- L37–55 · public · `function render(object $field,object $record,bool $full): string`
- L56–57 · public · `function instant(string $url,int $field,int $seconds,string $anchor): string`
- L58–64 · private · `function schema(array $source,object $record,object $field,string $url,string $anchor): void`

## SQL et données

Les expressions suivantes sont du PHP source ; les variables ne sont pas évaluées. Pour un EXPLAIN réel, reconstruire une requête paramétrée sur une copie de test.

### SQL00658 · Geniuspace\AudioRoom::peers

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:12`

```php
return $s->rows('SELECT x.user_id,x.role,u.name FROM #__gp_social_room_sessions x INNER JOIN #__users u ON u.id=x.user_id AND u.block=0 WHERE x.record_id='.$record.' AND x.field_id='.$field.' AND x.expires_at>'.$s->q(gmdate('Y-m-d H:i:s')),20);
```

### SQL00659 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:23`

```php
$s->run('DELETE FROM #__gp_social_room_signals WHERE record_id='.$record.' AND field_id='.$field.' AND (sender_id='.$user.' OR recipient_id='.$user.')');
```

### SQL00660 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:24`

```php
$s->run('INSERT INTO #__gp_social_room_sessions (record_id,field_id,user_id,role,session_token,expires_at) VALUES ('.$record.','.$field.','.$user.','.$s->q($role).','.$s->q($token).','.$s->q(gmdate('Y-m-d H:i:s',time()+60)).') ON DUPLICATE KEY UPDATE role=VALUES(role),session_token=VALUES(session_token),expires_at=VALUES(expires_at)');
```

### SQL00661 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:27`

```php
$session=$s->rows('SELECT * FROM #__gp_social_room_sessions WHERE '.$where.' AND expires_at>'.$s->q($now),1)[0]??null;
```

### SQL00662 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:28`

```php
$s->run('DELETE FROM #__gp_social_room_sessions WHERE '.$where);
```

### SQL00663 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:30`

```php
$s->run('DELETE FROM #__gp_social_room_sessions WHERE '.$where);
```

### SQL00664 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:30`

```php
$s->run('DELETE FROM #__gp_social_room_signals WHERE record_id='.$record.' AND field_id='.$field.' AND (sender_id='.$user.' OR recipient_id='.$user.')');
```

### SQL00665 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:31`

```php
$s->run('UPDATE #__gp_social_room_sessions SET expires_at='.$s->q(gmdate('Y-m-d H:i:s',time()+60)).' WHERE '.$where);
```

### SQL00666 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:36`

```php
if(count($s->rows("SELECT id FROM #__gp_social_room_signals WHERE record_id=".$record.' AND field_id='.$field.' AND sender_id='.$user." AND kind='audio' AND ctime=".$s->q($now),5))>=4)throw new \DomainException('Débit audio limité.',429);
```

### SQL00667 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:38`

```php
$s->run("UPDATE #__gp_social_room_sessions SET role='requested' WHERE ".$where." AND role='listener'");
```

### SQL00668 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:41`

```php
$s->run("UPDATE #__gp_social_room_sessions SET role='speaker' WHERE record_id=".$record.' AND field_id='.$field.' AND user_id='.$target." AND role='requested' AND expires_at>".$s->q($now));
```

### SQL00669 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:43`

```php
$targetSession=$s->rows('SELECT session_token FROM #__gp_social_room_sessions WHERE record_id='.$record.' AND field_id='.$field.' AND user_id='.$target.' AND expires_at>'.$s->q($now),1)[0]??null;
```

### SQL00670 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:44`

```php
if($target===$user||!in_array($kind,['offer','answer','ice'],true)||!is_array($payload)||strlen(Seo::json($payload))>20000||!$s->rows('SELECT user_id FROM #__gp_social_room_sessions WHERE record_id='.$record.' AND field_id='.$field.' AND user_id='.$target.' AND expires_at>'.$s->q($now),1))throw new \InvalidArgumentException('Signal de salon invalide.');
```

### SQL00671 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:45`

```php
if(count($s->rows('SELECT id FROM #__gp_social_room_signals WHERE record_id='.$record.' AND field_id='.$field.' AND sender_id='.$user.' AND ctime>'.$s->q(gmdate('Y-m-d H:i:s',time()-60)),201))>=200)throw new \DomainException('Trop de signaux pour ce salon.',429);
```

### SQL00672 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:49`

```php
$signals=$s->rows('SELECT id,sender_id,kind,payload FROM #__gp_social_room_signals WHERE record_id='.$record.' AND field_id='.$field.' AND (recipient_id='.$user." OR (kind='audio' AND recipient_id=0 AND sender_id<>".$user.' AND ctime>'.$s->q(gmdate('Y-m-d H:i:s',time()-10)).')) AND id>'.$after.' ORDER BY id',100);
```

### SQL00673 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:50`

```php
$sender=$s->rows('SELECT session_token FROM #__gp_social_room_sessions WHERE record_id='.$record.' AND field_id='.$field.' AND user_id='.(int)$signal['sender_id'].' AND expires_at>'.$s->q($now),1)[0]??null;
```

### SQL00674 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:52`

```php
$s->run("DELETE FROM #__gp_social_room_signals WHERE kind='audio' AND ctime<".$s->q(gmdate('Y-m-d H:i:s',time()-10)));
```

### SQL00675 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:53`

```php
$s->run('DELETE FROM #__gp_social_room_signals WHERE record_id='.$record.' AND field_id='.$field.' AND ctime<'.$s->q(gmdate('Y-m-d H:i:s',time()-120)));
```

### SQL00676 · Geniuspace\AudioRoom::handle

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:54`

```php
return ['user'=>$user,'role'=>$s->rows('SELECT role FROM #__gp_social_room_sessions WHERE '.$where,1)[0]['role']??'listener','transport'=>$a['data']['transport'],'peers'=>self::peers($record,$field),'signals'=>$signals];
```

### SQL00677 · Geniuspace\AudioRoom::cleanup

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:57`

```php
$s->run("DELETE FROM #__gp_social_room_signals WHERE kind='audio' AND ctime<".$s->q(gmdate('Y-m-d H:i:s',time()-10)));
```

### SQL00678 · Geniuspace\AudioRoom::cleanup

`components/com_joomcck/site/library/php/geniuspace/AudioRoom.php:57`

```php
$s->run('DELETE FROM #__gp_social_room_sessions WHERE expires_at<'.$s->q(gmdate('Y-m-d H:i:s')));
```

### SQL00679 · Geniuspace\AudioWorkshop::upload

`components/com_joomcck/site/library/php/geniuspace/AudioWorkshop.php:12`

```php
$raw=ProductAccess::store()->rows('SELECT * FROM #__js_res_fields WHERE id='.$field.' AND field_type=\'gpaudio\'',1)[0]??null;
```

### SQL00680 · Geniuspace\AudioWorkshop::upload

`components/com_joomcck/site/library/php/geniuspace/AudioWorkshop.php:17`

```php
$s->run('DELETE FROM #__gp_social_audio_assets WHERE record_id=0 AND user_id='.$user.' AND ctime<'.$s->q(gmdate('Y-m-d H:i:s',time()-86400)));
```

### SQL00681 · Geniuspace\AudioWorkshop::upload

`components/com_joomcck/site/library/php/geniuspace/AudioWorkshop.php:18`

```php
$quota=(int)($s->rows('SELECT SUM(bytes) AS n FROM #__gp_social_audio_assets WHERE user_id='.$user.' AND ctime>'.$s->q(gmdate('Y-m-d H:i:s',time()-86400)),1)[0]['n']??0);
```

### SQL00682 · Geniuspace\AudioWorkshop::download

`components/com_joomcck/site/library/php/geniuspace/AudioWorkshop.php:28`

```php
$row=$s->rows('SELECT * FROM #__gp_social_audio_assets WHERE id='.max(0,$id),1)[0]??null;
```

### SQL00683 · Geniuspace\AudioWorkshop::guardAsset

`components/com_joomcck/site/library/php/geniuspace/AudioWorkshop.php:40`

```php
$r=ProductAccess::store()->rows('SELECT record_id,field_id,user_id,ctime FROM #__gp_social_audio_assets WHERE id='.$asset,1)[0]??null;
```

### SQL00684 · Geniuspace\AudioWorkshop::bindAsset

`components/com_joomcck/site/library/php/geniuspace/AudioWorkshop.php:47`

```php
$s->run('UPDATE #__gp_social_audio_assets SET record_id='.$record.' WHERE id='.$asset.' AND field_id='.$field.' AND record_id=0 AND user_id='.(int)ProductAccess::user()->id);
```

### SQL00685 · Geniuspace\AudioWorkshop::feedback

`components/com_joomcck/site/library/php/geniuspace/AudioWorkshop.php:57`

```php
$s->run('INSERT INTO #__gp_social_audio_feedback (record_id,field_id,user_id,source_hash,scores,feedback,ctime) VALUES ('.$record.','.$field.','.$user.','.$s->q(hash('sha256',Seo::json($d))).','.$s->q(Seo::json($clean)).','.$s->q($comment).','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE source_hash=VALUES(source_hash),scores=VALUES(scores),feedback=VALUES(feedback),ctime=VALUES(ctime)');
```

### SQL00686 · Geniuspace\AudioWorkshop::summary

`components/com_joomcck/site/library/php/geniuspace/AudioWorkshop.php:61`

```php
$rows=ProductAccess::store()->rows('SELECT scores FROM #__gp_social_audio_feedback WHERE record_id='.$record.' AND field_id='.$field.' AND source_hash='.ProductAccess::store()->q(hash('sha256',Seo::json($d))),1000);
```

### SQL00924 · Geniuspace\FileMetadata::read

`components/com_joomcck/site/library/php/geniuspace/FileMetadata.php:23`

```php
$row=self::store()->rows('SELECT revision,data FROM #__gp_social_file_metadata WHERE record_id='.$record.' AND field_id='.$field.' AND file_id='.$file,1)[0]??[];
```

### SQL00925 · Geniuspace\FileMetadata::save

`components/com_joomcck/site/library/php/geniuspace/FileMetadata.php:29`

```php
$store->db->setQuery('SELECT id FROM #__js_res_files WHERE record_id='.$record.' AND field_id='.$field.' AND id='.$file.' AND saved=1 FOR UPDATE');
```

### SQL00926 · Geniuspace\FileMetadata::save

`components/com_joomcck/site/library/php/geniuspace/FileMetadata.php:32`

```php
if($prior['revision'])$store->run('UPDATE #__gp_social_file_metadata SET data='.$store->q(Seo::json($clean)).',revision='.($expected+1).',mtime='.$store->q(gmdate('Y-m-d H:i:s')).' WHERE '.$where);
```

### SQL00927 · Geniuspace\FileMetadata::files

`components/com_joomcck/site/library/php/geniuspace/FileMetadata.php:38`

```php
return self::store()->rows('SELECT id,realname FROM #__js_res_files WHERE record_id='.$record.' AND field_id='.$field.' AND saved=1 ORDER BY id',40);
```

### SQL01148 · Geniuspace\NativeMedia::path

`components/com_joomcck/site/library/php/geniuspace/NativeMedia.php:11`

```php
if(empty($f['field_id']))$f=ProductAccess::store()->rows('SELECT * FROM #__js_res_files WHERE id='.(int)($f['id']??0),1)[0]??[];
```

### SQL01149 · Geniuspace\NativeMedia::stream

`components/com_joomcck/site/library/php/geniuspace/NativeMedia.php:22`

```php
$file=$s->rows('SELECT * FROM #__js_res_files WHERE id='.max(0,$id),1)[0]??null;
```

### SQL01150 · Geniuspace\NativeMedia::stream

`components/com_joomcck/site/library/php/geniuspace/NativeMedia.php:23`

```php
$field=$s->rows('SELECT * FROM #__js_res_fields WHERE id='.(int)$file['field_id'].' AND published=1',1)[0]??null;
```

### SQL01596 · Geniuspace\VideoMoments::prepare

`components/com_joomcck/site/library/php/geniuspace/VideoMoments.php:13`

```php
$row=ProductAccess::store()->rows('SELECT * FROM #__js_res_files WHERE id='.$file.' AND record_id='.(int)$comment->record_id.' AND saved=1',1)[0]??null;
```

### SQL01597 · Geniuspace\VideoMoments::resolve

`components/com_joomcck/site/library/php/geniuspace/VideoMoments.php:22`

```php
$row=ProductAccess::store()->rows('SELECT filename,title,realname FROM #__js_res_files WHERE id='.(int)$moment['file'].' AND record_id='.$record.' AND field_id='.$field.' AND saved=1',1)[0]??null;
```

### SQL01598 · Geniuspace\Watermark::response

`components/com_joomcck/site/library/php/geniuspace/Watermark.php:14`

```php
$row=$store->rows('SELECT section_id FROM #__js_res_record WHERE id='.$record,1)[0]??null;
```

### SQL01599 · Geniuspace\Watermark::response

`components/com_joomcck/site/library/php/geniuspace/Watermark.php:15`

```php
$meta=$store->rows('SELECT field_type,params FROM #__js_res_fields WHERE id='.$field,1)[0]??null;
```

### SQL01695 · Geniuspace\AllVideoBridge::mapping

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:11`

```php
return SchemaHealth::has('video_links')?(ProductAccess::store()->rows('SELECT * FROM #__gp_social_video_links WHERE record_id='.$record.' AND field_id='.$field,1)[0]??null):null;
```

### SQL01696 · Geniuspace\AllVideoBridge::video

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:14`

```php
$v=$s->rows('SELECT * FROM #__allvideoshare_videos WHERE id='.$id.' AND state=1',1)[0]??null;
```

### SQL01697 · Geniuspace\AllVideoBridge::video

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:16`

```php
$c=$s->rows('SELECT id,parent,access,state FROM #__allvideoshare_categories WHERE id='.$cat,1)[0]??null;
```

### SQL01698 · Geniuspace\AllVideoBridge::video

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:17`

```php
$link=$s->rows('SELECT record_id,field_id FROM #__gp_social_video_links WHERE video_id='.$id,1)[0]??null;
```

### SQL01699 · Geniuspace\AllVideoBridge::catalogue

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:21`

```php
foreach(ProductAccess::store()->rows('SELECT id FROM #__allvideoshare_videos WHERE state=1 ORDER BY id DESC',200)as$r)if($v=self::video((int)$r['id']))$out[]=['id'=>(int)$v['id'],'title'=>$v['title']];
```

### SQL01700 · Geniuspace\AllVideoBridge::syncRecord

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:24`

```php
$r=$s->rows('SELECT id,type_id,title,fields,published,access,ctime FROM #__js_res_record WHERE id='.$record,1)[0]??null;
```

### SQL01701 · Geniuspace\AllVideoBridge::syncRecord

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:25`

```php
$fields=$s->rows("SELECT id FROM #__js_res_fields WHERE type_id=".(int)$r['type_id']." AND field_type='gpavsvideo' AND published=1",100);
```

### SQL01702 · Geniuspace\AllVideoBridge::syncRecord

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:27`

```php
$s->run('UPDATE #__allvideoshare_videos SET state=0 WHERE id='.(int)$old['video_id']);
```

### SQL01703 · Geniuspace\AllVideoBridge::syncRecord

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:28`

```php
$file=$s->rows('SELECT id,filename FROM #__js_res_files WHERE record_id='.$record.' AND field_id='.$field.' AND saved=1 AND filename='.$s->q($name),1)[0]??null;
```

### SQL01704 · Geniuspace\AllVideoBridge::syncRecord

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:30`

```php
$s->run('UPDATE #__allvideoshare_videos SET state=0 WHERE id='.(int)$old['video_id']);
```

### SQL01705 · Geniuspace\AllVideoBridge::syncRecord

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:31`

```php
$category=(int)($s->rows("SELECT id FROM #__allvideoshare_categories WHERE slug='geniuspace-videos'",1)[0]['id']??0);
```

### SQL01706 · Geniuspace\AllVideoBridge::syncRecord

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:34`

```php
$curated=$s->rows('SELECT catid,catids,access FROM #__allvideoshare_videos WHERE id='.$row->id,1)[0]??[];
```

### SQL01707 · Geniuspace\AllVideoBridge::syncRecord

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:34`

```php
$s->run('INSERT INTO #__gp_social_video_links(record_id,field_id,file_id,video_id,mtime) VALUES('.$record.','.$field.','.(int)$file['id'].','.$id.','.$s->q(gmdate('Y-m-d H:i:s')).') ON DUPLICATE KEY UPDATE file_id=VALUES(file_id),video_id=VALUES(video_id),mtime=VALUES(mtime)');
```

### SQL01708 · Geniuspace\AllVideoBridge::filterManaged

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:40`

```php
$mapped=ProductAccess::store()->rows('SELECT video_id FROM #__gp_social_video_links WHERE video_id IN ('.implode(',',$ids).')',count($ids));
```

### SQL01709 · Geniuspace\AllVideoBridge::withdraw

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:55`

```php
$ids=$s->rows('SELECT video_id FROM #__gp_social_video_links WHERE record_id='.$record,1000);
```

### SQL01710 · Geniuspace\AllVideoBridge::withdraw

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:55`

```php
$s->run('UPDATE #__allvideoshare_videos SET state=0 WHERE id IN (SELECT video_id FROM #__gp_social_video_links WHERE record_id='.$record.')');
```

### SQL01711 · Geniuspace\AllVideoBridge::guard

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:66`

```php
if(!$id&&$slug!=='')$id=(int)(ProductAccess::store()->rows('SELECT id FROM #__allvideoshare_videos WHERE slug='.ProductAccess::store()->q($slug),1)[0]['id']??0);
```

### SQL01712 · Geniuspace\AllVideoBridge::guard

`components/com_joomcck/site/library/php/geniuspace/AllVideoBridge.php:69`

```php
$link=ProductAccess::store()->rows('SELECT record_id FROM #__gp_social_video_links WHERE video_id='.$id,1)[0]??null;
```

### SQL01753 · Geniuspace\AllVideoField::source

`components/com_joomcck/site/library/php/geniuspace/AllVideoField.php:34`

```php
$f=ProductAccess::store()->rows('SELECT * FROM #__js_res_files WHERE field_id='.(int)$field->id.' AND record_id='.(int)$record->id.' AND saved=1 AND filename='.ProductAccess::store()->q($name),1)[0]??null;
```

### SQL01754 · Geniuspace\AllVideoField::schema

`components/com_joomcck/site/library/php/geniuspace/AllVideoField.php:63`

```php
$count=(int)(ProductAccess::store()->rows('SELECT COUNT(*) AS n FROM #__js_res_comments WHERE record_id='.(int)$record->id.' AND published=1 AND private=0 AND hide=0 AND access IN ('.implode(',',$levels?:[0]).')',1)[0]['n']??0);
```
