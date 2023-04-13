.class public Lcom/yandex/metrica/impl/ob/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/s$e;,
        Lcom/yandex/metrica/impl/ob/s$f;,
        Lcom/yandex/metrica/impl/ob/s$b;,
        Lcom/yandex/metrica/impl/ob/s$d;,
        Lcom/yandex/metrica/impl/ob/s$c;,
        Lcom/yandex/metrica/impl/ob/s$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/t;

.field private final b:Lcom/yandex/metrica/impl/ob/cq;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ob/s$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cq;)V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    .line 31
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/s;->b:Lcom/yandex/metrica/impl/ob/cq;

    .line 1036
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    .line 1037
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    new-instance v1, Lcom/yandex/metrica/impl/ob/s$b;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/s;->b:Lcom/yandex/metrica/impl/ob/cq;

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/s$b;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cq;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    new-instance v1, Lcom/yandex/metrica/impl/ob/s$d;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/s;->b:Lcom/yandex/metrica/impl/ob/cq;

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/s$d;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cq;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    new-instance v1, Lcom/yandex/metrica/impl/ob/s$c;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/s$c;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    new-instance v1, Lcom/yandex/metrica/impl/ob/s$a;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/s$a;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 1053
    sget-object v1, Lcom/yandex/metrica/impl/ob/cq;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/s$e;

    .line 47
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/s$e;->d()V

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method
