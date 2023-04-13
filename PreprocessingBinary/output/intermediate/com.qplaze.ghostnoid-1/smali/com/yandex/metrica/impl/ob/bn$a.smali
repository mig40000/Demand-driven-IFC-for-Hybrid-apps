.class Lcom/yandex/metrica/impl/ob/bn$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/bn;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/bn;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/bn;B)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bn$a;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/bn;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bn;->b(Lcom/yandex/metrica/impl/ob/bn;)V

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/bn;Z)Z

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/bn;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bn$a;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bn;->c(Lcom/yandex/metrica/impl/ob/bn;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :cond_1
    :goto_1
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bn;->c(Lcom/yandex/metrica/impl/ob/bn;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 82
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bn;->c(Lcom/yandex/metrica/impl/ob/bn;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 83
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/bn;Ljava/util/Map;)V

    .line 87
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 78
    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bn$a;->interrupt()V

    goto :goto_1

    .line 83
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 90
    :cond_2
    return-void
.end method
