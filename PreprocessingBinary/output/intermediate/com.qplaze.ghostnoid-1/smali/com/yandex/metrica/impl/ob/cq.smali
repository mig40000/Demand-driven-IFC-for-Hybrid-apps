.class public Lcom/yandex/metrica/impl/ob/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/yandex/metrica/impl/ob/cr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/cq$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cq$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/cq;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/cr;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cq;->b:Lcom/yandex/metrica/impl/ob/cr;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cq;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cq;->g()V

    .line 33
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cq;->h()V

    .line 35
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cq;->b(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cq;->g()V

    .line 59
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cq;->d()Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DONE"

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cq;->b:Lcom/yandex/metrica/impl/ob/cr;

    .line 1046
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cr;->g()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/cr;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 39
    :goto_0
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/cq;->a(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void

    .line 1046
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cq;->b:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cr;->d(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cq;->e()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/cq;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/yandex/metrica/impl/ob/cq;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cq;->b:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cr;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cq;->b:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cr;->g()Ljava/util/Map;

    move-result-object v1

    .line 67
    sget-object v0, Lcom/yandex/metrica/impl/ob/cq;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/cr;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 71
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    :try_start_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/cr;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 77
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method f()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cq;->b:Lcom/yandex/metrica/impl/ob/cr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cq;->b:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cr;->a()V

    .line 88
    return-void
.end method

.method h()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cq;->b:Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cr;->b()V

    .line 96
    return-void
.end method
