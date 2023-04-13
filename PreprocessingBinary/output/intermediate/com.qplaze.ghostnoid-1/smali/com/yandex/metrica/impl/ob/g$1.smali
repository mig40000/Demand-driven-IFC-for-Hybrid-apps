.class Lcom/yandex/metrica/impl/ob/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/g;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/g;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/g$1;->a:Lcom/yandex/metrica/impl/ob/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 37
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g$1;->a:Lcom/yandex/metrica/impl/ob/g;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/g;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/i;

    .line 38
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/g$1;->a:Lcom/yandex/metrica/impl/ob/g;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/g;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/k;

    .line 42
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/k;->b(Lcom/yandex/metrica/impl/ob/i;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 43
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/ob/i;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method
