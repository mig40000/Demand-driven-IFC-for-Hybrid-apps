.class Lcom/yandex/metrica/impl/av$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/av;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/av;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yandex/metrica/impl/av$c;->a:Lcom/yandex/metrica/impl/av;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/av;B)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/av$c;-><init>(Lcom/yandex/metrica/impl/av;)V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/av$c;->a:Lcom/yandex/metrica/impl/av;

    invoke-static {v0}, Lcom/yandex/metrica/impl/av;->b(Lcom/yandex/metrica/impl/av;)Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/av$c;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/av$c;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/av$c;->a:Lcom/yandex/metrica/impl/av;

    invoke-static {v0}, Lcom/yandex/metrica/impl/av;->a(Lcom/yandex/metrica/impl/av;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/av$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    invoke-static {v0}, Lcom/yandex/metrica/impl/av$b;->a(Lcom/yandex/metrica/impl/av$b;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/yandex/metrica/impl/av$c;->a:Lcom/yandex/metrica/impl/av;

    invoke-static {v2}, Lcom/yandex/metrica/impl/av;->b(Lcom/yandex/metrica/impl/av;)Lcom/yandex/metrica/impl/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ad;->b()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/av$c;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/yandex/metrica/impl/av$c;->a:Lcom/yandex/metrica/impl/av;

    invoke-static {v2}, Lcom/yandex/metrica/impl/av;->b(Lcom/yandex/metrica/impl/av;)Lcom/yandex/metrica/impl/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ad;->e()Lcom/yandex/metrica/IMetricaService;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    iget-object v3, p0, Lcom/yandex/metrica/impl/av$c;->a:Lcom/yandex/metrica/impl/av;

    invoke-static {v3, v2, v0}, Lcom/yandex/metrica/impl/av;->a(Lcom/yandex/metrica/impl/av;Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/av$b;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 64
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/av$c;->interrupt()V

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {v0}, Lcom/yandex/metrica/impl/av$b;->a(Lcom/yandex/metrica/impl/av$b;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    iget-object v2, p0, Lcom/yandex/metrica/impl/av$c;->a:Lcom/yandex/metrica/impl/av;

    invoke-static {v2, v0}, Lcom/yandex/metrica/impl/av;->a(Lcom/yandex/metrica/impl/av;Lcom/yandex/metrica/impl/av$b;)V

    move-object v0, v1

    .line 69
    goto :goto_0

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/av$c;->a:Lcom/yandex/metrica/impl/av;

    invoke-static {v2}, Lcom/yandex/metrica/impl/av;->b(Lcom/yandex/metrica/impl/av;)Lcom/yandex/metrica/impl/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ad;->a()V

    .line 72
    invoke-direct {p0}, Lcom/yandex/metrica/impl/av$c;->a()V

    goto :goto_0

    .line 77
    :cond_4
    return-void

    .line 57
    :catch_1
    move-exception v2

    goto :goto_1
.end method
