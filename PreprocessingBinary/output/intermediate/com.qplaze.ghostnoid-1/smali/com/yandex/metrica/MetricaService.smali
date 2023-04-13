.class public Lcom/yandex/metrica/MetricaService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/MetricaService$b;,
        Lcom/yandex/metrica/MetricaService$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/Executor;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/t;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/yandex/metrica/impl/ob/q;


# instance fields
.field private final e:Lcom/yandex/metrica/IMetricaService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/yandex/metrica/impl/ob/cj;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cj;-><init>()V

    sput-object v0, Lcom/yandex/metrica/MetricaService;->a:Ljava/util/concurrent/Executor;

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/MetricaService;->b:Ljava/util/concurrent/ExecutorService;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    .line 89
    new-instance v0, Lcom/yandex/metrica/impl/ob/q;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/q;-><init>()V

    sput-object v0, Lcom/yandex/metrica/MetricaService;->d:Lcom/yandex/metrica/impl/ob/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 265
    new-instance v0, Lcom/yandex/metrica/MetricaService$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/MetricaService$1;-><init>(Lcom/yandex/metrica/MetricaService;)V

    iput-object v0, p0, Lcom/yandex/metrica/MetricaService;->e:Lcom/yandex/metrica/IMetricaService$Stub;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/ob/t;
    .locals 6

    .prologue
    .line 65
    .line 6295
    if-eqz p1, :cond_3

    .line 6296
    sget-object v0, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/t;

    .line 6298
    if-nez v0, :cond_2

    .line 6299
    new-instance v0, Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/MetricaService;->a:Ljava/util/concurrent/Executor;

    sget-object v5, Lcom/yandex/metrica/MetricaService;->d:Lcom/yandex/metrica/impl/ob/q;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/t;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/q;)V

    .line 6302
    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/yandex/metrica/impl/p;->a(Lcom/yandex/metrica/impl/h;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6303
    :cond_0
    sget-object v1, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6311
    :cond_1
    :goto_0
    return-object v0

    .line 6308
    :cond_2
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/CounterConfiguration;)V

    goto :goto_0

    .line 6314
    :cond_3
    const/4 v0, 0x0

    .line 65
    goto :goto_0
.end method

.method static synthetic a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/yandex/metrica/MetricaService;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 145
    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1476
    invoke-static {p1}, Lcom/yandex/metrica/MetricaService;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1480
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/h;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/h;

    move-result-object v6

    .line 1483
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    const-string v0, "EXTRA_KEY_KEY_START_TYPE"

    sget-object v1, Lcom/yandex/metrica/impl/p$a;->a:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1485
    const-string v1, "EXTRA_KEY_KEY_START_EVENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1486
    invoke-virtual {v6, v0}, Lcom/yandex/metrica/impl/h;->a(I)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/h;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    .line 1489
    :cond_0
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/h;->m()Z

    move-result v0

    .line 1490
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/h;->n()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1491
    if-nez v0, :cond_1

    .line 1497
    const-string v0, "EXTRA_KEY_LIB_CFG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1498
    if-eqz v0, :cond_2

    .line 1499
    :goto_0
    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v4

    .line 2444
    if-nez v4, :cond_3

    const/4 v0, 0x1

    .line 1500
    :goto_1
    if-nez v0, :cond_1

    .line 1504
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1506
    invoke-static {v4, v0}, Lcom/yandex/metrica/MetricaService;->b(Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    .line 1508
    invoke-direct {p0, v4}, Lcom/yandex/metrica/MetricaService;->b(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 1511
    invoke-static {p0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v1

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/h;->e()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/y;->a(Landroid/location/Location;)V

    .line 1516
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v4, v1, v0}, Lcom/yandex/metrica/impl/ob/r;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v3

    .line 1517
    new-instance v0, Lcom/yandex/metrica/impl/ob/t;

    sget-object v2, Lcom/yandex/metrica/MetricaService;->a:Ljava/util/concurrent/Executor;

    sget-object v5, Lcom/yandex/metrica/MetricaService;->d:Lcom/yandex/metrica/impl/ob/q;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/t;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/q;)V

    .line 1518
    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/impl/h;)V

    .line 1520
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->stopSelf()V

    .line 154
    return-void

    .line 1498
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 2444
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/yandex/metrica/MetricaService;->b(Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yandex/metrica/MetricaService;->b(Lcom/yandex/metrica/CounterConfiguration;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/MetricaService;ZZ)V
    .locals 1

    .prologue
    .line 65
    .line 7251
    invoke-static {p0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/Object;ZZ)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/CounterConfiguration;)Z
    .locals 1

    .prologue
    .line 65
    .line 6444
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 65
    goto :goto_0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/t;)Z
    .locals 1

    .prologue
    .line 65
    .line 7440
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 65
    goto :goto_0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/h;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 65
    .line 7465
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->q:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 7466
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->e()V

    .line 7470
    :goto_0
    return v0

    .line 7468
    :cond_0
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->t:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 7469
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/t;->b(Lcom/yandex/metrica/impl/h;)V

    goto :goto_0

    .line 7472
    :cond_1
    const/4 v0, 0x0

    .line 65
    goto :goto_0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-direct {p0, p1}, Lcom/yandex/metrica/MetricaService;->c(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ce;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ce;->d()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    .line 417
    invoke-direct {p0, p1}, Lcom/yandex/metrica/MetricaService;->c(Lcom/yandex/metrica/CounterConfiguration;)V

    goto :goto_0

    .line 416
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/String;)V

    .line 433
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 436
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/ce;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/CounterConfiguration;->e(Ljava/lang/String;)V

    .line 427
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/CounterConfiguration;I)Lcom/yandex/metrica/impl/ob/r;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 451
    .line 452
    invoke-static {p1}, Lcom/yandex/metrica/impl/p;->a(Lcom/yandex/metrica/impl/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->l()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5314
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5315
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 5316
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 5317
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5318
    const/4 v0, 0x1

    .line 455
    :goto_0
    if-eqz v0, :cond_3

    .line 456
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/r;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v0

    .line 461
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 5321
    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p2, v2, v1}, Lcom/yandex/metrica/impl/ob/r;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const-string v0, "com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/yandex/metrica/MetricaService$a;

    invoke-direct {v0}, Lcom/yandex/metrica/MetricaService$a;-><init>()V

    .line 167
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/dg;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dg;->a()V

    .line 3243
    invoke-static {p0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/Object;)V

    .line 3247
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/du;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/du;->a()V

    .line 167
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService;->e:Lcom/yandex/metrica/IMetricaService$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 94
    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/i;->a(Landroid/content/Context;)V

    .line 96
    new-instance v0, Lcom/yandex/metrica/impl/az;

    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/az;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/az;->a(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->a()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/j;->a(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a()Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;)V

    .line 1107
    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->c()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    .line 1108
    new-instance v1, Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/bz;-><init>(Lcom/yandex/metrica/impl/ob/bn;Ljava/lang/String;)V

    .line 1116
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    .line 1117
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/bz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/bz;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v2, v3}, Lcom/yandex/metrica/impl/ob/ci;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bz;->e()Ljava/lang/String;

    move-result-object v0

    .line 1122
    if-eqz v0, :cond_0

    .line 1124
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/o;

    new-instance v3, Lcom/yandex/metrica/impl/ob/dh;

    invoke-direct {v3, v0}, Lcom/yandex/metrica/impl/ob/dh;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/o;-><init>(Lcom/yandex/metrica/impl/ob/dh;)V

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/i;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ce;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ce;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 104
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 4232
    invoke-static {p0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/y;->b(Ljava/lang/Object;)V

    .line 4233
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/du;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/du;->b()V

    .line 185
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 174
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/dg;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dg;->a()V

    .line 175
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/yandex/metrica/MetricaService;->a(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/yandex/metrica/MetricaService;->a(Landroid/content/Intent;)V

    .line 139
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    const-string v0, "com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 210
    :goto_0
    return v0

    .line 193
    :cond_0
    invoke-static {p1}, Lcom/yandex/metrica/MetricaService;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 194
    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v5

    .line 200
    sget-object v6, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    monitor-enter v6

    .line 5215
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 5217
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/t;

    .line 5259
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 5261
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v4, v3

    .line 5221
    :goto_2
    if-eqz v4, :cond_2

    .line 5222
    sget-object v4, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5223
    if-eqz v0, :cond_2

    .line 5224
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->c()V

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v4, v2

    .line 5261
    goto :goto_2

    .line 204
    :cond_5
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    sget-object v0, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/dg;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dg;->b()V

    :cond_6
    move v0, v3

    .line 210
    goto :goto_0
.end method
