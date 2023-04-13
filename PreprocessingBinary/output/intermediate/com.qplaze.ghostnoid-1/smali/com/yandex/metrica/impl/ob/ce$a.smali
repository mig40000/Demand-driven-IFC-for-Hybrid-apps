.class Lcom/yandex/metrica/impl/ob/ce$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/yandex/metrica/impl/ob/ce;

.field private b:Landroid/net/LocalServerSocket;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/ce;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ce$a;->a:Lcom/yandex/metrica/impl/ob/ce;

    .line 327
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/ce;B)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ce$a;-><init>(Lcom/yandex/metrica/impl/ob/ce;)V

    return-void
.end method


# virtual methods
.method a()Lcom/yandex/metrica/impl/ob/ce;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ce$a;->a:Lcom/yandex/metrica/impl/ob/ce;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 355
    .line 356
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 360
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce$a;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ce;->f()Lcom/yandex/metrica/impl/ob/cg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/cg;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 362
    new-instance v1, Lcom/yandex/metrica/impl/ob/dc;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/dc;-><init>(I)V

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce$a;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce$a;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ce;->f()Lcom/yandex/metrica/impl/ob/cg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/ce$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ce$a;->b:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_1

    .line 1346
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ce$a;->b:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 1347
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/ce$a;->b:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dc;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    return-object v0

    .line 373
    :cond_2
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dc;->a()V

    .line 374
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dc;->c()V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 382
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/4 p3, 0x0

    .line 411
    :goto_0
    return-object p3

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce$a;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/yandex/metrica/impl/ob/ce;->a(Lcom/yandex/metrica/impl/ob/ce;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce$a;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ce;->a(Lcom/yandex/metrica/impl/ob/ce;Landroid/content/Context;Ljava/lang/String;)V

    .line 2022
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p1, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 394
    const-string v1, "update_snapshot"

    new-instance v2, Lcom/yandex/metrica/impl/ob/ce$c;

    invoke-direct {v2, p1, p3, p2}, Lcom/yandex/metrica/impl/ob/ce$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    move-object p3, p2

    .line 396
    goto :goto_0

    .line 398
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce$a;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ce;->a(Lcom/yandex/metrica/impl/ob/ce;Landroid/content/Context;Ljava/lang/String;)V

    .line 3022
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p1, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 402
    const-string v1, "wtf_situation. App has id and elector hasn\'t"

    new-instance v2, Lcom/yandex/metrica/impl/ob/ce$c;

    invoke-direct {v2, p1, p3, p2}, Lcom/yandex/metrica/impl/ob/ce$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    move-object p3, p2

    .line 404
    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ce$a;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/yandex/metrica/impl/ob/ce;->a(Lcom/yandex/metrica/impl/ob/ce;Landroid/content/Context;Ljava/lang/String;)V

    .line 4022
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p1, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 409
    const-string v1, "overlapping_device_id"

    new-instance v2, Lcom/yandex/metrica/impl/ob/ce$c;

    invoke-direct {v2, p1, p3, p2}, Lcom/yandex/metrica/impl/ob/ce$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 336
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v1, "com.yandex.metrica.synchronization.deviceid"

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ce$a;->b:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
