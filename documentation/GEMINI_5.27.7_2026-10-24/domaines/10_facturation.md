# Abonnements et facturation

Plans, accès payants, prestataires, notifications de paiement, factures et promotions.

Version 5.27.7. Présence dans le code ; ne prouve pas la configuration ou l’utilisation en production.

13 classes ; 125 fonctions/méthodes nommées ; 115 expressions SQL repérées dans ce domaine du noyau Geniuspace.

## Geniuspace\Commerce

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:6`
- L9–10 · public · `function __construct(public Store $store, public Config $config, public Repository $repository, public array $company, public int $user, public array $levels, public Stripe $stripe, array $settings, private ?int $clock = null)`
- L11–11 · private · `function now(): int`
- L12–12 · private · `function date(int $t): string`
- L13–13 · private · `function q(string $s): string`
- L14–14 · private · `function lock(): string`
- L15–30 · public · `function settings(array $d): array`
- L31–37 · public · `function cents(mixed $price): int`
- L38–43 · public · `function authenticated(bool $lock = false): array`
- L44–60 · public · `function offers(): array`
- L61–64 · private · `function owned(int $record): void`
- L65–75 · private · `function buyer(array $d): array`
- L76–81 · private · `function nativeInsert(array $data): int`
- L82–100 · public · `function create(string $offerKey, int $record, array $buyer): string`
- L101–108 · public · `function order(string $token, bool $lock = false): array`
- L109–124 · public · `function checkout(string $token): string`
- L126–179 · public · `function webhook(string $body, string $signature): void`
- L180–191 · private · `function adjustment(array $object, string $kind): array`
- L192–204 · private · `function applyAdjustment(array $o, array $a): void`
- L205–212 · private · `function invoice(array $o, string $kind, int $amount): void`
- L213–216 · public · `function history(): array`
- L217–217 · public · `function invoices(string $token): array`
- L218–226 · public · `function invoiceData(int $id): array`
- L227–230 · public · `function featured(Store $store, string $scope, int $record, ?int $now = null): bool`

## Geniuspace\CommerceRouter

`components/com_joomcck/site/library/php/geniuspace/CommerceRouter.php:5`
- L7–7 · public · `function __construct(private Commerce $commerce, private string $token, private bool $csrf)`
- L8–8 · private · `function base(): string`
- L9–9 · private · `function hidden(): string`
- L10–13 · private · `function response(string $html, string $title): Response`
- L14–14 · private · `function money(int $amount, string $currency): string`
- L15–67 · public · `function handle(string $path, array $query, string $method, array $post = [], string $body = '', string $signature = ''): Response`

## Geniuspace\ContentSubscription

`components/com_joomcck/site/library/php/geniuspace/ContentSubscription.php:5`
- L7–7 · public · `function __construct(private Studio $s)`
- L8–8 · private · `function where(int $record): string`
- L9–9 · public · `function state(int $record): bool`
- L10–10 · public · `function set(int $record,bool $enabled): array`
- L11–11 · public · `function render(int $record,string $title): string`

## Geniuspace\ExtendedCommerce

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:6`
- L8–12 · public · `function stripe(): Stripe`
- L13–19 · public · `function input(object $f): string`
- L20–26 · public · `function button(object $f): string`
- L27–41 · private · `function field(int $record,int $field): array`
- L43–47 · public · `function remaining(int $record,int $field,string $inventory): array`
- L48–52 · private · `function locked(string $name,callable $callback): mixed`
- L53–73 · public · `function checkout(int $record,int $field,string $nonce,?Stripe $stripe=null): string`
- L74–103 · public · `function event(string $body,string $signature,?Stripe $stripe=null): void`

## Geniuspace\Stripe

`components/com_joomcck/site/library/php/geniuspace/Stripe.php:6`
- L8–8 · public · `function __construct(private string $secret, private string $webhook, public bool $live = false, private mixed $transport = null)`
- L9–9 · public · `function ready(): bool`
- L10–27 · public · `function checkout(array $data, string $key): array`
- L28–46 · public · `function verify(string $body, string $signature, ?int $clock = null): array`

## Geniuspace\SubscriptionSchema

`components/com_joomcck/site/library/php/geniuspace/SubscriptionSchema.php:6`
- L8–16 · public · `function install(): void`
- L17–20 · public · `function available(): bool`
- L21–26 · public · `function transactional(bool $publication=false): void`

## Geniuspace\SubscriptionPlans

`components/com_joomcck/site/library/php/geniuspace/SubscriptionPlans.php:6`
- L10–10 · public · `function config(): \Joomla\Registry\Registry`
- L11–11 · public · `function ids(mixed $v): array`
- L12–20 · public · `function clean(array $v): array`
- L21–32 · public · `function get(int $id,bool $requirePublic=true): array`
- L37–41 · public · `function seller(): array`
- L42–46 · public · `function buyer(array $v): array`
- L47–52 · public · `function target(array $plan,int $record,int $user): ?array`
- L53–54 · public · `function applies(array $plan,int $section,int $type): bool`
- L55–58 · public · `function publicationLinks(array $plan): array`
- L59–60 · public · `function url(array $query=[]): string`

## Geniuspace\SubscriptionEntitlements

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:6`
- L14–14 · public · `function reset(): void`
- L17–21 · public · `function publicationEnd(int $record): ?string`
- L23–29 · public · `function formNotice(int $section,int $type): string`
- L31–34 · public · `function policy(int $section,int $type): array`
- L35–46 · private · `function required(array $record): bool`
- L47–50 · public · `function run(array $record,callable $operation): mixed`
- L51–57 · private · `function credit(array $context): int`
- L58–65 · public · `function beforeSave(array $record): void`
- L66–72 · public · `function saved(int $record): void`
- L73–78 · public · `function visible(int $record,?int $time=null): bool`
- L79–83 · public · `function promotion(int $record,?int $time=null): ?array`
- L84–87 · public · `function decoration(int $record): array`
- L88–96 · public · `function advertisements(string $placement,int $section=0,int $category=0): string`

## Geniuspace\SubscriptionCheckout

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:6`
- L8–8 · public · `function __construct(public Store $store,public SubscriptionGateway $gateway,public int $user,private ?int $clock=null)`
- L9–9 · public · `function now(): int`
- L10–10 · private · `function date(?int $time=null): string`
- L11–11 · private · `function q(string $s): string`
- L12–13 · private · `function actor(bool $lock=false): array`
- L14–18 · private · `function insert(string $table,array $data): int`
- L19–28 · public · `function create(int $plan,int $record,string $provider,array $buyer,string $asset='',string $network=''): array`
- L29–33 · public · `function order(string $token,bool $lock=false): array`
- L34–43 · public · `function checkout(string $token): string`
- L44–45 · public · `function confirmPayPal(string $token): void`
- L46–56 · public · `function webhook(string $provider,string $body,array $headers): void`
- L57–86 · public · `function apply(string $provider,array $p,string $checksum): void`
- L87–91 · private · `function invoice(array $o,string $kind,int $amount,string $event): void`
- L92–93 · public · `function invoices(string $token): array`
- L94–95 · public · `function invoiceData(int $id,bool $manage=false): array`

## Geniuspace\SubscriptionGateway

`components/com_joomcck/site/library/php/geniuspace/SubscriptionGateway.php:6`
- L9–9 · public · `function __construct(private array $config,private mixed $transport=null)`
- L10–10 · private · `function setting(string $key): string`
- L11–11 · public · `function live(): bool`
- L12–12 · private · `function stripe(): Stripe`
- L13–14 · public · `function ready(string $provider): bool`
- L15–15 · private · `function hasNetworks(): bool`
- L16–17 · public · `function methods(): array`
- L18–23 · public · `function networks(): array`
- L24–25 · public · `function network(string $asset,string $network): array`
- L26–35 · private · `function request(string $method,string $url,array $headers=[],mixed $data=null,bool $form=false): array`
- L36–41 · private · `function paypal(string $method,string $path,mixed $data=null,array $headers=[]): array`
- L42–43 · private · `function crypto(string $method,string $path,mixed $data=null): array`
- L44–45 · private · `function redirect(string $url,array $hosts): string`
- L46–54 · public · `function checkout(array $o,string $return,string $webhook): array`
- L55–56 · private · `function objectId(string $value): string`
- L57–62 · private · `function paypalProof(array $order,string $event): array`
- L63–69 · public · `function capture(array $order): array`
- L70–73 · public · `function canonicalJson(mixed $v): string`
- L74–77 · public · `function decimal(string $v): string`
- L78–82 · private · `function canonicalRaw(string $body): string`
- L84–87 · public · `function sufficient(string $paid,string $due): bool`
- L88–105 · public · `function notification(string $provider,string $body,array $headers): ?array`

## Geniuspace\SubscriptionUi

`components/com_joomcck/site/library/php/geniuspace/SubscriptionUi.php:5`
- L7–7 · private · `function e(mixed $v): string`
- L8–8 · private · `function money(int $v,string $currency): string`
- L9–9 · private · `function token(): string`
- L10–10 · private · `function form(string $action,string $extra=''): string`
- L11–15 · public · `function invoice(array $i): string`
- L16–41 · public · `function render(SubscriptionCheckout $s,string $view,int $plan,string $order,int $invoice): string`

## Geniuspace\SubscriptionRuntime

`components/com_joomcck/site/library/php/geniuspace/SubscriptionRuntime.php:5`
- L7–8 · public · `function gateway(): SubscriptionGateway`
- L9–10 · public · `function service(): SubscriptionCheckout`
- L11–12 · public · `function headers(): void`
- L13–14 · public · `function origin(): void`
- L15–27 · public · `function page(): string`
- L28–34 · public · `function webhook(): void`
- L35–40 · public · `function shell(string $body,string $title): string`

## Geniuspace\SubscriptionAdmin

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:6`
- L8–8 · private · `function e(mixed $v): string`
- L9–10 · private · `function authorize(): void`
- L11–34 · public · `function render(): string`

## SQL et données

Les expressions suivantes sont du PHP source ; les variables ne sont pas évaluées. Pour un EXPLAIN réel, reconstruire une requête paramétrée sur une copie de test.

### SQL00716 · Geniuspace\Commerce::authenticated

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:40`

```php
$user = $this->user > 0 ? ($this->store->rows('SELECT id,name,email FROM #__users WHERE id=' . $this->user . ' AND block=0' . ($lock ? $this->lock() : ''), 1)[0] ?? null) : null;
```

### SQL00717 · Geniuspace\Commerce::offers

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:49`

```php
$p = $this->store->rows('SELECT id,name,params FROM #__joomsubscription_plans WHERE id=' . $o['plan_id'] . ' AND published=1 AND access IN (' . implode(',', $this->levels ?: [0]) . ')', 1)[0] ?? null;
```

### SQL00718 · Geniuspace\Commerce::offers

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:52`

```php
// Dedicated fixed-price plans; legacy conditional/coupon/tax flows remain in the component.
            if ($this->store->rows('SELECT id FROM #__joomsubscription_plans_rules WHERE plan_id=' . $o['plan_id'], 1)) continue;
```

### SQL00719 · Geniuspace\Commerce::nativeInsert

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:79`

```php
$this->store->run('INSERT INTO #__joomsubscription_subscriptions (' . implode(',', array_keys($data)) . ') VALUES (' . implode(',', $values) . ')');
```

### SQL00720 · Geniuspace\Commerce::create

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:92`

```php
// Double-clicks reuse a pending checkout, preventing duplicate pending subscriptions.
            $pending = $this->store->rows('SELECT token FROM #__gp_social_orders WHERE scope=' . $this->q($this->company['slug']) . ' AND user_id=' . $this->user . ' AND plan_id=' . $offer['plan_id'] . ' AND record_id=' . $record . " AND state='pending' AND ctime>" . $this->q($this->date($this->now() - 3600)), 1)[0] ?? null;
```

### SQL00721 · Geniuspace\Commerce::order

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:105`

```php
$o = $this->store->rows('SELECT * FROM #__gp_social_orders WHERE token=' . $this->q($token) . ' AND scope=' . $this->q($this->company['slug']) . ' AND user_id=' . $this->user . ($lock ? $this->lock() : ''), 1)[0] ?? null;
```

### SQL00722 · Geniuspace\Commerce::checkout

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:121`

```php
$this->store->run('UPDATE #__gp_social_orders SET checkout_id=' . $this->q($session['id']) . ' WHERE id=' . (int) $o['id']);
```

### SQL00723 · Geniuspace\Commerce::webhook

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:136`

```php
$past = $this->store->rows('SELECT checksum FROM #__gp_social_stripe_events WHERE event_id=' . $this->q($event['id']), 1)[0] ?? null;
```

### SQL00724 · Geniuspace\Commerce::webhook

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:139`

```php
$o = $this->store->rows('SELECT * FROM #__gp_social_orders WHERE ' . $where . $this->lock(), 1)[0] ?? null;
```

### SQL00725 · Geniuspace\Commerce::webhook

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:146`

```php
if ($this->store->rows('SELECT id FROM #__gp_social_orders WHERE intent_id=' . $this->q($intent) . ' AND id<>' . (int) $o['id'] . $this->lock(), 1)) throw new \DomainException('Ce paiement est déjà affecté à une autre commande.', 409);
```

### SQL00726 · Geniuspace\Commerce::webhook

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:152`

```php
// Joomla users are InnoDB; legacy CCK records may still use MyISAM.
                    // Serialize every entitlement extension for this buyer using a transactional row.
                    $this->store->rows('SELECT id FROM #__users WHERE id=' . (int) $o['user_id'] . $this->lock(), 1);
```

### SQL00727 · Geniuspace\Commerce::webhook

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:154`

```php
// Two webhooks extending the same record must serialize independently of order IDs.
                    if ((int) $o['record_id']) $this->store->rows('SELECT id FROM #__js_res_record WHERE id=' . (int) $o['record_id'] . $this->lock(), 1);
```

### SQL00728 · Geniuspace\Commerce::webhook

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:157`

```php
$last = $this->store->rows("SELECT expires_at FROM #__gp_social_orders WHERE scope=" . $this->q($o['scope']) . ' AND record_id=' . (int) $o['record_id'] . ' AND user_id=' . (int) $o['user_id'] . " AND state='paid' ORDER BY expires_at DESC", 1)[0] ?? null;
```

### SQL00729 · Geniuspace\Commerce::webhook

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:161`

```php
$last = $this->store->rows('SELECT expires_at FROM #__gp_social_orders WHERE user_id=' . (int) $o['user_id'] . ' AND record_id=0 AND plan_id=' . (int) $o['plan_id'] . " AND state='paid' ORDER BY expires_at DESC", 1)[0] ?? null;
```

### SQL00730 · Geniuspace\Commerce::webhook

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:165`

```php
$this->store->run("UPDATE #__gp_social_orders SET state='paid',intent_id=" . $this->q($intent) . ',paid_at=' . $this->q($at) . ',expires_at=' . $this->q($end) . ' WHERE id=' . (int) $o['id']);
```

### SQL00731 · Geniuspace\Commerce::webhook

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:166`

```php
$this->store->run("UPDATE #__joomsubscription_subscriptions SET published=1,activated=1,ctime=" . $this->q($this->date($start)) . ',extime=' . $this->q($end) . ',purchased=' . $this->q($at) . ' WHERE id=' . (int) $o['subscription_id'] . " AND gateway='geniuspace_stripe'");
```

### SQL00732 · Geniuspace\Commerce::webhook

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:169`

```php
// Financial events may precede checkout completion. Apply the verified ledger atomically.
                    $adjustment = $this->store->rows('SELECT * FROM #__gp_social_stripe_adjustments WHERE intent_id=' . $this->q($intent) . $this->lock(), 1)[0] ?? null;
```

### SQL00733 · Geniuspace\Commerce::adjustment

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:185`

```php
$a = $this->store->rows('SELECT * FROM #__gp_social_stripe_adjustments WHERE intent_id=' . $this->q($intent) . $this->lock(), 1)[0] ?? null;
```

### SQL00734 · Geniuspace\Commerce::adjustment

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:189`

```php
else $this->store->run('UPDATE #__gp_social_stripe_adjustments SET refunded=' . $data['refunded'] . ',disputed=' . $data['disputed'] . ' WHERE intent_id=' . $this->q($intent));
```

### SQL00735 · Geniuspace\Commerce::applyAdjustment

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:198`

```php
$this->store->run('UPDATE #__gp_social_orders SET refunded=' . $refund . ' WHERE id=' . (int) $o['id']);
```

### SQL00736 · Geniuspace\Commerce::applyAdjustment

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:201`

```php
$this->store->run("UPDATE #__gp_social_orders SET state='revoked' WHERE id=" . (int) $o['id']);
```

### SQL00737 · Geniuspace\Commerce::applyAdjustment

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:202`

```php
$this->store->run("UPDATE #__joomsubscription_subscriptions SET published=0 WHERE id=" . (int) $o['subscription_id'] . " AND gateway='geniuspace_stripe'");
```

### SQL00738 · Geniuspace\Commerce::invoice

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:210`

```php
$this->store->run('UPDATE #__gp_social_invoices SET number=' . $this->q($number) . ' WHERE id=' . $id);
```

### SQL00739 · Geniuspace\Commerce::invoice

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:211`

```php
if ($kind === 'invoice') $this->store->run('UPDATE #__joomsubscription_subscriptions SET invoice_num=' . $id . ' WHERE id=' . (int) $o['subscription_id']);
```

### SQL00740 · Geniuspace\Commerce::history

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:215`

```php
return $this->store->rows('SELECT * FROM #__gp_social_orders WHERE scope=' . $this->q($this->company['slug']) . ' AND user_id=' . $this->user . ' ORDER BY id DESC', 100);
```

### SQL00741 · Geniuspace\Commerce::invoices

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:217`

```php
return $this->store->rows('SELECT id,number,kind,amount,ctime FROM #__gp_social_invoices WHERE order_id=' . (int) $o['id'] . ' ORDER BY id', 100);
```

### SQL00742 · Geniuspace\Commerce::invoiceData

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:220`

```php
$row = $this->store->rows('SELECT i.*,o.currency,o.token FROM #__gp_social_invoices i INNER JOIN #__gp_social_orders o ON o.id=i.order_id WHERE i.id=' . $id . ' AND o.scope=' . $this->q($this->company['slug']) . ' AND o.user_id=' . $this->user, 1)[0] ?? null;
```

### SQL00743 · Geniuspace\Commerce::featured

`components/com_joomcck/site/library/php/geniuspace/Commerce.php:229`

```php
return (bool) $store->rows("SELECT gp.id FROM #__gp_social_orders gp INNER JOIN #__js_res_record r ON r.id=gp.record_id AND r.user_id=gp.user_id WHERE gp.scope=" . $store->q($scope) . ' AND gp.record_id=' . $record . " AND gp.state='paid' AND gp.paid_at<=" . $store->q(gmdate('Y-m-d H:i:s', $now ?? time())) . ' AND gp.expires_at>' . $store->q(gmdate('Y-m-d H:i:s', $now ?? time())), 1);
```

### SQL00758 · Geniuspace\ContentSubscription::state

`components/com_joomcck/site/library/php/geniuspace/ContentSubscription.php:9`

```php
return (bool)$s->store->rows('SELECT id FROM #__js_res_subscribe WHERE '.$this->where($record),1);
```

### SQL00759 · Geniuspace\ContentSubscription::set

`components/com_joomcck/site/library/php/geniuspace/ContentSubscription.php:10`

```php
$s->store->rows('SELECT id FROM #__users WHERE id='.$s->user.$lock,1);
```

### SQL00760 · Geniuspace\ContentSubscription::set

`components/com_joomcck/site/library/php/geniuspace/ContentSubscription.php:10`

```php
$s->store->run('DELETE FROM #__js_res_subscribe WHERE '.$this->where($record));
```

### SQL00761 · Geniuspace\ContentSubscription::set

`components/com_joomcck/site/library/php/geniuspace/ContentSubscription.php:10`

```php
if($enabled)$s->store->run("INSERT INTO #__js_res_subscribe(user_id,type,ref_id,section_id,ctime) VALUES(".$s->user.",'record',".$record.','.$s->repository->record($s->company,$record)['section_id'].','.$s->store->q(gmdate('Y-m-d H:i:s')).')');
```

### SQL00884 · Geniuspace\ExtendedCommerce::field

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:29`

```php
$db->setQuery('SELECT r.*,f.params AS field_params,f.access AS field_access,f.field_type,t.published AS type_published,s.params AS section_params FROM #__js_res_record r INNER JOIN #__js_res_fields f ON f.type_id=r.type_id INNER JOIN #__js_res_types t ON t.id=r.type_id INNER JOIN #__js_res_sections s ON s.id=r.section_id WHERE r.id='.$record.' AND f.id='.$field.' AND f.published=1 AND r.published=1 AND r.hidden=0 AND r.archive=0');
```

### SQL00885 · Geniuspace\ExtendedCommerce::field

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:34`

```php
$db->setQuery('SELECT COUNT(*) FROM #__js_res_record_category rc LEFT JOIN #__js_res_categories c ON c.id=rc.catid WHERE rc.record_id='.$record.' AND (c.id IS NULL OR c.published<>1 OR c.access NOT IN ('.implode(',',$levels?:[0]).') OR c.section_id<>'.(int)$r['section_id'].')');
```

### SQL00886 · Geniuspace\ExtendedCommerce::remaining

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:45`

```php
$used=array_column($s->rows('SELECT code_hash FROM #__gp_social_extended_vouchers WHERE record_id='.$record.' AND field_id='.$field,5001),'code_hash');
```

### SQL00887 · Geniuspace\ExtendedCommerce::locked

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:50`

```php
$db->setQuery('SELECT GET_LOCK('.$db->quote($name).',5)');
```

### SQL00888 · Geniuspace\ExtendedCommerce::locked

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:51`

```php
$db->setQuery('SELECT RELEASE_LOCK('.$db->quote($name).')');
```

### SQL00889 · Geniuspace\ExtendedCommerce::checkout

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:61`

```php
$existing=$s->rows('SELECT * FROM #__gp_social_extended_orders WHERE token='.$s->q($token),1)[0]??null;
```

### SQL00890 · Geniuspace\ExtendedCommerce::checkout

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:71`

```php
$s->run('UPDATE #__gp_social_extended_orders SET checkout_id='.$s->q($result['id']).' WHERE id='.$id.' AND state=\'pending\'');
```

### SQL00891 · Geniuspace\ExtendedCommerce::event

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:80`

```php
$candidate=$s->rows('SELECT record_id,field_id FROM #__gp_social_extended_orders WHERE '.$where,1)[0]??null;
```

### SQL00892 · Geniuspace\ExtendedCommerce::event

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:82`

```php
$row=$s->rows('SELECT * FROM #__gp_social_extended_orders WHERE '.$where.' FOR UPDATE',1)[0]??null;
```

### SQL00893 · Geniuspace\ExtendedCommerce::event

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:83`

```php
$prior=$s->rows('SELECT checksum FROM #__gp_social_extended_events WHERE event_id='.$s->q($event['id']),1)[0]??null;
```

### SQL00894 · Geniuspace\ExtendedCommerce::event

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:88`

```php
$s->run('DELETE FROM #__gp_social_extended_vouchers WHERE order_id='.(int)$row['id']);
```

### SQL00895 · Geniuspace\ExtendedCommerce::event

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:88`

```php
$s->run("UPDATE #__gp_social_extended_orders SET state='expired' WHERE id=".(int)$row['id']);
```

### SQL00896 · Geniuspace\ExtendedCommerce::event

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:94`

```php
$allocated=$s->rows('SELECT code FROM #__gp_social_extended_vouchers WHERE order_id='.(int)$row['id'],1)[0]??null;
```

### SQL00897 · Geniuspace\ExtendedCommerce::event

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:97`

```php
$s->run('UPDATE #__gp_social_extended_orders SET state='.$s->q($state).',intent_id='.$s->q((string)($o['payment_intent']??$row['intent_id'])).' WHERE id='.(int)$row['id']);
```

### SQL00898 · Geniuspace\ExtendedCommerce::event

`components/com_joomcck/site/library/php/geniuspace/ExtendedCommerce.php:98`

```php
$s->db->setQuery('SELECT id FROM #__js_res_sales WHERE gateway_id='.$s->q($gateway).' AND record_id='.(int)$row['record_id'].' AND field_id='.(int)$row['field_id'].' AND user_id='.(int)$row['user_id']);
```

### SQL01604 · Geniuspace\SubscriptionSchema::install

`components/com_joomcck/site/library/php/geniuspace/SubscriptionSchema.php:12`

```php
if(!str_starts_with($sql,'CREATE TABLE IF NOT EXISTS #__joomsubscription_')||str_contains($sql,';'))throw new \RuntimeException('Schéma natif invalide.');
```

### SQL01605 · Geniuspace\SubscriptionSchema::transactional

`components/com_joomcck/site/library/php/geniuspace/SubscriptionSchema.php:25`

```php
$engine=$db->setQuery('SELECT ENGINE FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='.$db->quote($db->getPrefix().$t))->loadResult();
```

### SQL01626 · Geniuspace\SubscriptionPlans::get

`components/com_joomcck/site/library/php/geniuspace/SubscriptionPlans.php:24`

```php
$r=$s->rows('SELECT * FROM #__joomsubscription_plans WHERE id='.max(0,$id),1)[0]??null;
```

### SQL01627 · Geniuspace\SubscriptionPlans::get

`components/com_joomcck/site/library/php/geniuspace/SubscriptionPlans.php:30`

```php
// A conditional legacy price must be resolved deliberately, never guessed by the new checkout.
        if($s->rows('SELECT id FROM #__joomsubscription_plans_rules WHERE plan_id='.$id,1))throw new \DomainException('Cette formule utilise des règles tarifaires : configurez une formule à prix fixe pour ce parcours.',422);
```

### SQL01628 · TOPLEVEL

`components/com_joomcck/site/library/php/geniuspace/SubscriptionPlans.php:35`

```php
foreach(ProductAccess::store()->rows('SELECT id FROM #__joomsubscription_plans WHERE published=1 ORDER BY ordering,id',200)as$r)try{$out[]=self::get((int)$r['id']);
```

### SQL01629 · Geniuspace\SubscriptionPlans::target

`components/com_joomcck/site/library/php/geniuspace/SubscriptionPlans.php:50`

```php
$r=ProductAccess::store()->rows('SELECT * FROM #__js_res_record WHERE id='.max(0,$record),1)[0]??null;
```

### SQL01630 · Geniuspace\SubscriptionPlans::publicationLinks

`components/com_joomcck/site/library/php/geniuspace/SubscriptionPlans.php:57`

```php
foreach(ProductAccess::store()->rows('SELECT id,name,params FROM #__js_res_sections',500)as$row){$p=new \Joomla\Registry\Registry($row['params']);
```

### SQL01673 · Geniuspace\SubscriptionEntitlements::policy

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:33`

```php
$rows=ProductAccess::store()->rows('SELECT id,params FROM #__joomsubscription_plans WHERE id>'.$cursor.' ORDER BY id',1000);
```

### SQL01674 · Geniuspace\SubscriptionEntitlements::required

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:39`

```php
$old=$s->rows('SELECT published,section_id,type_id FROM #__js_res_record WHERE id='.$id,1)[0]??null;
```

### SQL01675 · Geniuspace\SubscriptionEntitlements::required

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:40`

```php
$used=(bool)$s->rows('SELECT record_id FROM #__gp_social_billing_uses WHERE record_id='.$id,1);
```

### SQL01676 · Geniuspace\SubscriptionEntitlements::credit

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:54`

```php
$rows=$s->rows('SELECT * FROM #__joomsubscription_subscriptions WHERE id>'.$cursor.' AND user_id='.$context['user'].' AND plan_id IN('.implode(',',$ids).') AND published=1 AND activated=1 AND ctime<='.$s->q($now).' AND extime>'.$s->q($now).' ORDER BY id FOR UPDATE',1000);
```

### SQL01677 · Geniuspace\SubscriptionEntitlements::credit

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:55`

```php
$used=(int)$s->rows('SELECT COUNT(*) AS n FROM #__gp_social_billing_uses WHERE subscription_id='.(int)$row['id'],1)[0]['n'];
```

### SQL01678 · Geniuspace\SubscriptionEntitlements::saved

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:68`

```php
$r=$s->rows('SELECT id,user_id,type_id,section_id,published FROM #__js_res_record WHERE id='.$record,1)[0]??null;
```

### SQL01679 · Geniuspace\SubscriptionEntitlements::saved

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:70`

```php
$row=$s->rows('SELECT params FROM #__joomsubscription_subscriptions WHERE id='.$sub,1)[0];
```

### SQL01680 · Geniuspace\SubscriptionEntitlements::saved

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:71`

```php
$s->run('INSERT INTO #__gp_social_billing_uses(subscription_id,record_id,user_id,ctime,expires_at) VALUES('.$sub.','.$record.','.$grant['user'].','.$s->q($now).','.$s->q($end).')');
```

### SQL01681 · Geniuspace\SubscriptionEntitlements::saved

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:71`

```php
$s->run('UPDATE #__js_res_record SET extime='.$s->q($end).' WHERE id='.$record);
```

### SQL01682 · Geniuspace\SubscriptionEntitlements::visible

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:75`

```php
self::$hasUses??=(bool)$s->rows('SELECT record_id FROM #__gp_social_billing_uses',1);
```

### SQL01683 · Geniuspace\SubscriptionEntitlements::visible

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:75`

```php
$row=$s->rows('SELECT u.expires_at,s.published,s.activated FROM #__gp_social_billing_uses u LEFT JOIN #__joomsubscription_subscriptions s ON s.id=u.subscription_id WHERE u.record_id='.$record,1)[0]??null;
```

### SQL01684 · Geniuspace\SubscriptionEntitlements::promotion

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:81`

```php
self::$hasPromotions??=(bool)$s->rows('SELECT id FROM #__gp_social_billing_promotions',1);
```

### SQL01685 · Geniuspace\SubscriptionEntitlements::promotion

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:82`

```php
return $s->rows("SELECT p.* FROM #__gp_social_billing_promotions p JOIN #__joomsubscription_subscriptions s ON s.id=p.subscription_id JOIN #__js_res_record r ON r.id=p.record_id WHERE p.record_id=".$record." AND p.kind='featured' AND p.revoked=0 AND s.published=1 AND s.activated=1 AND s.extime>".$s->q($now)." AND r.user_id=p.user_id AND p.starts_at<=".$s->q($now).' AND p.expires_at>'.$s->q($now).' ORDER BY p.expires_at DESC',1)[0]??null;
```

### SQL01686 · Geniuspace\SubscriptionEntitlements::advertisements

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:91`

```php
foreach($s->rows("SELECT p.*,o.snapshot FROM #__gp_social_billing_promotions p JOIN #__gp_social_billing_orders o ON o.id=p.order_id JOIN #__joomsubscription_subscriptions s ON s.id=p.subscription_id JOIN #__js_res_record r ON r.id=p.record_id WHERE p.kind='advertisement' AND p.revoked=0 AND s.published=1 AND s.activated=1 AND s.extime>".$s->q($now)." AND r.user_id=p.user_id AND p.placement=".$s->q($placement).' AND p.starts_at<='.$s->q($now).' AND p.expires_at>'.$s->q($now).' ORDER BY p.id DESC',6)as$p){$snapshot=json_decode($p['snapshot'],true);
```

### SQL01687 · Geniuspace\SubscriptionEntitlements::advertisements

`components/com_joomcck/site/library/php/geniuspace/SubscriptionEntitlements.php:91`

```php
$current=(int)($s->rows('SELECT parent_id FROM #__js_res_categories WHERE id='.$current.' AND section_id='.$section,1)[0]['parent_id']??0);
```

### SQL01714 · Geniuspace\SubscriptionCheckout::actor

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:13`

```php
$r=$this->store->rows('SELECT id,name,email FROM #__users WHERE id='.max(0,$this->user).' AND block=0'.($lock?' FOR UPDATE':''),1)[0]??null;
```

### SQL01715 · Geniuspace\SubscriptionCheckout::insert

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:17`

```php
$sql='INSERT INTO #__'.$table.' ('.implode(',',array_keys($data)).') VALUES ('.implode(',',array_map(fn($v)=>$v===null?'NULL':(is_int($v)?(string)$v:$this->q((string)$v)),array_values($data))).')';
```

### SQL01716 · Geniuspace\SubscriptionCheckout::create

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:23`

```php
foreach($this->store->rows("SELECT * FROM #__gp_social_billing_orders WHERE user_id=".$this->user." AND state='pending' AND ctime>".$this->q($this->date($this->now()-3600)).' ORDER BY id DESC',25)as$r)if((int)$r['plan_id']===$p['id']&&(int)$r['record_id']===$record&&$r['provider']===$provider&&$r['asset']===$chain['asset']&&$r['network']===$chain['network']&&hash_equals(hash('sha256',$r['snapshot']),hash('sha256',$snapshot)))return$r;
```

### SQL01717 · Geniuspace\SubscriptionCheckout::create

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:24`

```php
$pending=(int)$this->store->rows("SELECT COUNT(*) AS n FROM #__gp_social_billing_orders WHERE user_id=".$this->user.' AND ctime>'.$this->q($this->date($this->now()-3600)),1)[0]['n'];
```

### SQL01718 · Geniuspace\SubscriptionCheckout::create

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:26`

```php
return$this->store->rows('SELECT * FROM #__gp_social_billing_orders WHERE id='.$id,1)[0];
```

### SQL01719 · Geniuspace\SubscriptionCheckout::order

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:32`

```php
$r=$this->store->rows('SELECT * FROM #__gp_social_billing_orders WHERE token='.$this->q($token).' AND user_id='.$this->user.($lock?' FOR UPDATE':''),1)[0]??null;
```

### SQL01720 · Geniuspace\SubscriptionCheckout::checkout

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:38`

```php
$acquired=(int)$db->setQuery('SELECT GET_LOCK('.$db->quote($lock).',5)')->loadResult();
```

### SQL01721 · Geniuspace\SubscriptionCheckout::checkout

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:41`

```php
$this->store->run('UPDATE #__gp_social_billing_orders SET checkout_id='.$this->q($session['id']).',snapshot='.$this->q(Seo::json($snap)).' WHERE id='.(int)$o['id']);
```

### SQL01722 · Geniuspace\SubscriptionCheckout::checkout

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:42`

```php
$db->setQuery('SELECT RELEASE_LOCK('.$db->quote($lock).')')->loadResult();
```

### SQL01723 · Geniuspace\SubscriptionCheckout::webhook

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:52`

```php
$row=$this->store->rows('SELECT token FROM #__gp_social_billing_orders WHERE provider='.$this->q($provider).' AND provider_ref='.$this->q($transfer),1)[0]??null;
```

### SQL01724 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:60`

```php
$prior=$this->store->rows('SELECT checksum FROM #__gp_social_billing_events WHERE provider='.$this->q($provider).' AND event_id='.$this->q($p['event']),1)[0]??null;
```

### SQL01725 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:61`

```php
$o=$this->store->rows('SELECT * FROM #__gp_social_billing_orders WHERE token='.$this->q($p['token']).' FOR UPDATE',1)[0]??null;
```

### SQL01726 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:61`

```php
$again=$this->store->rows('SELECT checksum FROM #__gp_social_billing_events WHERE provider='.$this->q($provider).' AND event_id='.$this->q($p['event']),1)[0]??null;
```

### SQL01727 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:66`

```php
if($this->store->rows('SELECT id FROM #__gp_social_billing_orders WHERE provider='.$this->q($provider).' AND provider_ref='.$this->q($p['transfer']).' AND id<>'.(int)$o['id'],1))throw new \DomainException('Paiement déjà utilisé.',409);
```

### SQL01728 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:67`

```php
$this->store->rows('SELECT id FROM #__users WHERE id='.(int)$o['user_id'].' FOR UPDATE',1);
```

### SQL01729 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:68`

```php
$this->store->run("UPDATE #__gp_social_billing_orders SET state='paid',provider_ref=".$this->q($p['transfer']).',paid_at='.$this->q($this->date()).',expires_at='.$this->q($this->date($end)).' WHERE id='.(int)$o['id']);
```

### SQL01730 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:69`

```php
$this->store->run('UPDATE #__joomsubscription_subscriptions SET published=1,activated=1,ctime='.$this->q($this->date()).',extime='.$this->q($this->date($end)).' WHERE id='.(int)$o['subscription_id'].' AND user_id='.(int)$o['user_id']);
```

### SQL01731 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:70`

```php
$record=$this->store->rows('SELECT user_id,section_id,type_id FROM #__js_res_record WHERE id='.(int)$o['record_id'],1)[0]??null;
```

### SQL01732 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:72`

```php
$last=$this->store->rows('SELECT expires_at FROM #__gp_social_billing_promotions WHERE user_id='.(int)$o['user_id'].' AND record_id='.(int)$o['record_id'].' AND kind='.$this->q($kind).' AND placement='.$this->q($s['plan']['settings']['placement']).' AND revoked=0 ORDER BY expires_at DESC',1)[0]??null;
```

### SQL01733 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:74`

```php
$this->store->run('UPDATE #__gp_social_billing_orders SET expires_at='.$this->q($this->date($end)).' WHERE id='.(int)$o['id']);
```

### SQL01734 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:74`

```php
$this->store->run('UPDATE #__joomsubscription_subscriptions SET extime='.$this->q($this->date($end)).' WHERE id='.(int)$o['subscription_id']);
```

### SQL01735 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:75`

```php
$this->store->run('UPDATE #__joomsubscription_subscriptions SET activated=0,published=0 WHERE id='.(int)$o['subscription_id']);
```

### SQL01736 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:77`

```php
$this->store->run('UPDATE #__gp_social_billing_orders SET snapshot='.$this->q($o['snapshot']).' WHERE id='.(int)$o['id']);
```

### SQL01737 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:81`

```php
$this->store->run("UPDATE #__gp_social_billing_orders SET state='revoked',provider_ref=".$this->q($p['transfer']).' WHERE id='.(int)$o['id']);
```

### SQL01738 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:81`

```php
$this->store->run('UPDATE #__joomsubscription_subscriptions SET published=0,activated=0 WHERE id='.(int)$o['subscription_id']);
```

### SQL01739 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:81`

```php
$this->store->run('UPDATE #__gp_social_billing_promotions SET revoked=1 WHERE order_id='.(int)$o['id']);
```

### SQL01740 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:82`

```php
if($this->store->rows("SELECT id FROM #__gp_social_billing_invoices WHERE order_id=".(int)$o['id']." AND kind='invoice'",1))$this->invoice($o,'credit',$delta,$p['event']);
```

### SQL01741 · Geniuspace\SubscriptionCheckout::apply

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:82`

```php
$this->store->run('UPDATE #__gp_social_billing_orders SET refunded='.$total.' WHERE id='.(int)$o['id']);
```

### SQL01742 · Geniuspace\SubscriptionCheckout::invoice

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:89`

```php
$this->store->run('INSERT IGNORE INTO #__gp_social_billing_sequences(period,serial) VALUES('.$this->q($period).',0)');
```

### SQL01743 · Geniuspace\SubscriptionCheckout::invoice

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:89`

```php
$this->store->rows('SELECT serial FROM #__gp_social_billing_sequences WHERE period='.$this->q($period).' FOR UPDATE',1);
```

### SQL01744 · Geniuspace\SubscriptionCheckout::invoice

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:89`

```php
$this->store->run('UPDATE #__gp_social_billing_sequences SET serial=serial+1 WHERE period='.$this->q($period));
```

### SQL01745 · Geniuspace\SubscriptionCheckout::invoice

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:89`

```php
$serial=(int)$this->store->rows('SELECT serial FROM #__gp_social_billing_sequences WHERE period='.$this->q($period),1)[0]['serial'];
```

### SQL01746 · Geniuspace\SubscriptionCheckout::invoices

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:93`

```php
return$this->store->rows('SELECT id,number,kind,amount,ctime FROM #__gp_social_billing_invoices WHERE order_id='.(int)$o['id'].' ORDER BY id',100);
```

### SQL01747 · Geniuspace\SubscriptionCheckout::invoiceData

`components/com_joomcck/site/library/php/geniuspace/SubscriptionCheckout.php:95`

```php
$r=$this->store->rows('SELECT i.*,o.user_id FROM #__gp_social_billing_invoices i JOIN #__gp_social_billing_orders o ON o.id=i.order_id WHERE i.id='.max(0,$id).($manage?'':' AND o.user_id='.$this->user),1)[0]??null;
```

### SQL01776 · Geniuspace\SubscriptionUi::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionUi.php:32`

```php
foreach($s->store->rows('SELECT token,snapshot,state,ctime FROM #__gp_social_billing_orders WHERE user_id='.(int)ProductAccess::user()->id.' ORDER BY id DESC',100)as$r){$p=json_decode($r['snapshot'],true)['plan'];
```

### SQL01777 · Geniuspace\SubscriptionUi::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionUi.php:35`

```php
foreach($s->store->rows('SELECT id,title FROM #__js_res_record WHERE user_id='.(int)ProductAccess::user()->id.' AND published=1 ORDER BY id DESC',200)as$r)try{SubscriptionPlans::target($p,(int)$r['id'],(int)ProductAccess::user()->id);
```

### SQL01794 · Geniuspace\SubscriptionAdmin::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:16`

```php
$old=$id?$s->rows('SELECT * FROM #__joomsubscription_plans WHERE id='.$id,1)[0]??null:null;
```

### SQL01795 · Geniuspace\SubscriptionAdmin::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:18`

```php
foreach($settings['sections']as$section)if(!$db->setQuery('SELECT id FROM #__js_res_sections WHERE id='.$section)->loadResult())throw new \InvalidArgumentException('Section inexistante.');
```

### SQL01796 · Geniuspace\SubscriptionAdmin::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:18`

```php
foreach($settings['types']as$type)if(!$db->setQuery('SELECT id FROM #__js_res_types WHERE id='.$type)->loadResult())throw new \InvalidArgumentException('Type inexistant.');
```

### SQL01797 · Geniuspace\SubscriptionAdmin::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:19`

```php
foreach($settings['categories']as$category)if(!$db->setQuery('SELECT id FROM #__js_res_categories WHERE id='.$category)->loadResult())throw new \InvalidArgumentException('Catégorie inexistante.');
```

### SQL01798 · Geniuspace\SubscriptionAdmin::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:24`

```php
$row=$id?$s->rows('SELECT * FROM #__joomsubscription_plans WHERE id='.$id,1)[0]??null:null;
```

### SQL01799 · Geniuspace\SubscriptionAdmin::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:28`

```php
foreach($s->rows('SELECT id,'.$title.' AS name FROM #__'.$table.' WHERE published=1 ORDER BY '.$title,500)as$r)$out.='<option value="'.(int)$r['id'].'"'.(in_array((int)$r['id'],(array)($v[$key]??[]),true)?' selected':'').'>'.$e($r['name']).' #'.(int)$r['id'].'</option>';
```

### SQL01800 · Geniuspace\SubscriptionAdmin::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:30`

```php
foreach($s->rows('SELECT * FROM #__gp_social_billing_orders ORDER BY id DESC',200)as$r){$snapshot=json_decode($r['snapshot'],true);
```

### SQL01801 · Geniuspace\SubscriptionAdmin::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:30`

```php
foreach($s->rows('SELECT id,number,kind FROM #__gp_social_billing_invoices ORDER BY id DESC',200)as$i)$out.='<li><a href="'.$base.'&amp;view=invoice&amp;id='.(int)$i['id'].'">'.$e($i['number']).($i['kind']==='credit'?' · Avoir':' · Facture').'</a></li>';
```

### SQL01802 · Geniuspace\SubscriptionAdmin::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:31`

```php
foreach($s->rows('SELECT s.id,s.user_id,s.published,s.activated,s.extime,p.name FROM #__joomsubscription_subscriptions s LEFT JOIN #__joomsubscription_plans p ON p.id=s.plan_id ORDER BY s.id DESC',200)as$r)$out.='<tr><td>#'.(int)$r['id'].'</td><td>#'.(int)$r['user_id'].'</td><td>'.$e($r['name']).'</td><td>'.((int)$r['published']===1&&(int)$r['activated']===1?'Oui':'Non').'</td><td>'.$e($r['extime']).'</td></tr>';
```

### SQL01803 · Geniuspace\SubscriptionAdmin::render

`components/com_joomcck/site/library/php/geniuspace/SubscriptionAdmin.php:32`

```php
foreach($s->rows('SELECT id,name,published,params FROM #__joomsubscription_plans ORDER BY ordering,id',300)as$r){$p=json_decode($r['params']?:'{}',true);
```
