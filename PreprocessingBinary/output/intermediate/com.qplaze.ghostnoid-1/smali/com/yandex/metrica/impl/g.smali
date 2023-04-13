.class public Lcom/yandex/metrica/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bv;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/yandex/metrica/impl/c;

.field private volatile d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bv;Lcom/yandex/metrica/impl/c;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->d:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/impl/ob/bv;

    .line 63
    iput-object p3, p0, Lcom/yandex/metrica/impl/g;->b:Ljava/util/concurrent/Executor;

    .line 65
    iput-object p2, p0, Lcom/yandex/metrica/impl/g;->c:Lcom/yandex/metrica/impl/c;

    .line 67
    invoke-direct {p0}, Lcom/yandex/metrica/impl/g;->b()V

    .line 1080
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/metrica/impl/g$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/g$1;-><init>(Lcom/yandex/metrica/impl/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->c:Lcom/yandex/metrica/impl/c;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/g;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yandex/metrica/impl/g;->d:Ljava/util/Map;

    return-object p1
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v5}, Lcom/yandex/metrica/impl/ob/bv;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2034
    new-instance v2, Lcom/yandex/metrica/impl/ob/di;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/di;-><init>()V

    .line 2035
    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2036
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2037
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2038
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v4, 0x7fffffff

    invoke-static {v0, v4}, Lcom/yandex/metrica/impl/utils/h;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/yandex/metrica/impl/ob/di;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v5}, Lcom/yandex/metrica/impl/ob/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v5}, Lcom/yandex/metrica/impl/ob/bv;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0, v5}, Lcom/yandex/metrica/impl/ob/bv;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yandex/metrica/impl/g;->b()V

    .line 96
    return-void
.end method
