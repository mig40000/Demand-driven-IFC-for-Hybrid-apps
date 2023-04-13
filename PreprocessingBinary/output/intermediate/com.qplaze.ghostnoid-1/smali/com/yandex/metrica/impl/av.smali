.class public Lcom/yandex/metrica/impl/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ad$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/av$a;,
        Lcom/yandex/metrica/impl/av$b;,
        Lcom/yandex/metrica/impl/av$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/s;

.field private b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/yandex/metrica/impl/av$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ad;

.field private final d:Lcom/yandex/metrica/impl/av$c;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/s;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/av;->b:Ljava/util/concurrent/BlockingQueue;

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/av;->a:Lcom/yandex/metrica/impl/s;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/av$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/av$c;-><init>(Lcom/yandex/metrica/impl/av;B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/av;->d:Lcom/yandex/metrica/impl/av$c;

    .line 36
    invoke-interface {p1}, Lcom/yandex/metrica/impl/s;->a()Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/av;->c:Lcom/yandex/metrica/impl/ad;

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/av;->c:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad$a;)V

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/av;->d:Lcom/yandex/metrica/impl/av$c;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/av$c;->start()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/av;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/av;->b:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/av;Lcom/yandex/metrica/impl/av$b;)V
    .locals 4

    .prologue
    .line 24
    .line 1091
    iget-object v0, p0, Lcom/yandex/metrica/impl/av;->a:Lcom/yandex/metrica/impl/s;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/s;->b()Landroid/content/Context;

    move-result-object v0

    .line 1092
    invoke-static {v0}, Lcom/yandex/metrica/impl/ba;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1093
    invoke-static {p1}, Lcom/yandex/metrica/impl/av$b;->c(Lcom/yandex/metrica/impl/av$b;)Lcom/yandex/metrica/impl/h;

    move-result-object v2

    invoke-static {p1}, Lcom/yandex/metrica/impl/av$b;->b(Lcom/yandex/metrica/impl/av$b;)Lcom/yandex/metrica/impl/as;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/as;->c()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/h;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1094
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 24
    return-void
.end method

.method private a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/av$b;)Z
    .locals 3

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/av;->a:Lcom/yandex/metrica/impl/s;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/av$b;->b()Lcom/yandex/metrica/impl/h;

    move-result-object v1

    invoke-static {p2}, Lcom/yandex/metrica/impl/av$b;->b(Lcom/yandex/metrica/impl/av$b;)Lcom/yandex/metrica/impl/as;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/s;->a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/as;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/av;->c:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->a()V

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/av;Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/av$b;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/av;->a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/av$b;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/av;)Lcom/yandex/metrica/impl/ad;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/av;->c:Lcom/yandex/metrica/impl/ad;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/yandex/metrica/impl/av;->d:Lcom/yandex/metrica/impl/av$c;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/av;->d:Lcom/yandex/metrica/impl/av$c;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/yandex/metrica/impl/av$b;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/av;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
