.class final Lcom/yandex/metrica/MetricaService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/MetricaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/MetricaService;

.field private final b:I

.field private final c:Lcom/yandex/metrica/impl/h;

.field private final d:Landroid/os/Bundle;

.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/MetricaService;Landroid/content/Context;Lcom/yandex/metrica/impl/h;Landroid/os/Bundle;I)V
    .locals 1

    .prologue
    .line 324
    iput-object p1, p0, Lcom/yandex/metrica/MetricaService$b;->a:Lcom/yandex/metrica/MetricaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/MetricaService$b;->e:Landroid/content/Context;

    .line 326
    iput p5, p0, Lcom/yandex/metrica/MetricaService$b;->b:I

    .line 327
    iput-object p3, p0, Lcom/yandex/metrica/MetricaService$b;->c:Lcom/yandex/metrica/impl/h;

    .line 328
    iput-object p4, p0, Lcom/yandex/metrica/MetricaService$b;->d:Landroid/os/Bundle;

    .line 329
    return-void
.end method

.method private static a(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    .line 399
    if-eqz p0, :cond_0

    .line 401
    :try_start_0
    const-string v0, "COUNTER_MIGRATION_CFG_OBJ"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/CounterConfiguration;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 406
    :goto_1
    return-object v1

    .line 403
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 355
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService$b;->d:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    .line 356
    invoke-static {v0}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/CounterConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/MetricaService$b;->a:Lcom/yandex/metrica/MetricaService;

    iget-object v2, p0, Lcom/yandex/metrica/MetricaService$b;->c:Lcom/yandex/metrica/impl/h;

    iget v3, p0, Lcom/yandex/metrica/MetricaService$b;->b:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/CounterConfiguration;I)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/yandex/metrica/MetricaService;->b()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 372
    :try_start_0
    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$b;->a:Lcom/yandex/metrica/MetricaService;

    invoke-static {v3, v0}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/CounterConfiguration;)V

    .line 373
    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$b;->a:Lcom/yandex/metrica/MetricaService;

    iget-object v4, p0, Lcom/yandex/metrica/MetricaService$b;->a:Lcom/yandex/metrica/MetricaService;

    invoke-virtual {v4}, Lcom/yandex/metrica/MetricaService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 374
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->m()Z

    move-result v5

    .line 373
    invoke-static {v3, v4, v5}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;ZZ)V

    .line 376
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->j()Ljava/lang/String;

    move-result-object v3

    .line 1332
    iget-object v4, p0, Lcom/yandex/metrica/MetricaService$b;->d:Landroid/os/Bundle;

    const-string v5, "COUNTER_MIGRATION_CFG_OBJ"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1333
    iget-object v4, p0, Lcom/yandex/metrica/MetricaService$b;->d:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/yandex/metrica/MetricaService$b;->a(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v4

    .line 1334
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/yandex/metrica/CounterConfiguration;->C()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1335
    iget-object v5, p0, Lcom/yandex/metrica/MetricaService$b;->a:Lcom/yandex/metrica/MetricaService;

    .line 1336
    invoke-virtual {v5}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/yandex/metrica/MetricaService$b;->b:I

    .line 1338
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    .line 1335
    invoke-static {v5, v4, v6, v7}, Lcom/yandex/metrica/impl/ob/r;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v5

    .line 1340
    invoke-static {}, Lcom/yandex/metrica/MetricaService;->b()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1342
    new-instance v6, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v6, v4}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 1343
    invoke-virtual {v6, v3}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;)V

    .line 1344
    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$b;->a:Lcom/yandex/metrica/MetricaService;

    const/4 v4, 0x0

    invoke-static {v3, v5, v6, v4}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/ob/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/t;->f()V

    .line 377
    :cond_2
    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$b;->a:Lcom/yandex/metrica/MetricaService;

    iget-object v4, p0, Lcom/yandex/metrica/MetricaService$b;->c:Lcom/yandex/metrica/impl/h;

    invoke-static {v3, v1, v0, v4}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/impl/ob/r;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/ob/t;

    move-result-object v1

    .line 379
    invoke-static {v1}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/impl/ob/t;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 380
    monitor-exit v2

    goto/16 :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 384
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$b;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/MetricaService$b;->c:Lcom/yandex/metrica/impl/h;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/h;->e()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/y;->a(Landroid/location/Location;)V

    .line 386
    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$b;->c:Lcom/yandex/metrica/impl/h;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/p;->a(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 387
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 390
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService$b;->c:Lcom/yandex/metrica/impl/h;

    invoke-static {v1, v0}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/h;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 391
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService$b;->c:Lcom/yandex/metrica/impl/h;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/impl/h;)V

    .line 393
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
