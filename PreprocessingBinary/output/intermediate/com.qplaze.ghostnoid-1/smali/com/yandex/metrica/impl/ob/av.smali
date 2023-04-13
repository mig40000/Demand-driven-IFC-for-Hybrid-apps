.class public Lcom/yandex/metrica/impl/ob/av;
.super Lcom/yandex/metrica/impl/ob/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/v",
        "<",
        "Lcom/yandex/metrica/impl/ob/af;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/aa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/aa",
            "<",
            "Lcom/yandex/metrica/impl/ob/af;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/v;-><init>(Lcom/yandex/metrica/impl/ob/aa;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/x;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/h;",
            "Lcom/yandex/metrica/impl/ob/x",
            "<",
            "Lcom/yandex/metrica/impl/ob/af;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/x;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/af;

    .line 31
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/af;->a(Lcom/yandex/metrica/impl/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
