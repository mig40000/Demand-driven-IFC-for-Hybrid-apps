.class Lcom/yandex/metrica/impl/ob/bk$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/bk;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/metrica/impl/ob/u;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bk;)V
    .locals 1

    .prologue
    .line 583
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bk$a;->a:Lcom/yandex/metrica/impl/ob/bk;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->b:Ljava/util/List;

    .line 585
    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bk$a;->interrupt()V

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->c:Lcom/yandex/metrica/impl/ob/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/ob/u;)V
    .locals 1

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bk$a;->c:Lcom/yandex/metrica/impl/ob/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    monitor-exit p0

    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    .line 626
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->c:Lcom/yandex/metrica/impl/ob/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->c:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/u;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->c:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/u;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :cond_0
    monitor-exit p0

    return-void

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 589
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->a:Lcom/yandex/metrica/impl/ob/bk;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bk;->a(Lcom/yandex/metrica/impl/ob/bk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 595
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->a:Lcom/yandex/metrica/impl/ob/bk;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bk;->b(Lcom/yandex/metrica/impl/ob/bk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 601
    :try_start_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 602
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk$a;->a:Lcom/yandex/metrica/impl/ob/bk;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/bk;->c(Lcom/yandex/metrica/impl/ob/bk;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 603
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->a:Lcom/yandex/metrica/impl/ob/bk;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bk;->c(Lcom/yandex/metrica/impl/ob/bk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 605
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->a:Lcom/yandex/metrica/impl/ob/bk;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk$a;->a:Lcom/yandex/metrica/impl/ob/bk;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/bk;->d(Lcom/yandex/metrica/impl/ob/bk;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/bk;->a(Lcom/yandex/metrica/impl/ob/bk;Landroid/content/ContentValues;)V

    .line 606
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->a:Lcom/yandex/metrica/impl/ob/bk;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bk$a;->b:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/bk;->a(Lcom/yandex/metrica/impl/ob/bk;Ljava/util/List;)V

    .line 608
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk$a;->a:Lcom/yandex/metrica/impl/ob/bk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/bk;->b(Lcom/yandex/metrica/impl/ob/bk;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 609
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 612
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bk$a;->b()V

    goto :goto_0

    .line 595
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 597
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 609
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 614
    :cond_1
    return-void
.end method
