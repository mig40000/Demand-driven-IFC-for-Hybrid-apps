.class Lcom/yandex/metrica/impl/ob/s$b;
.super Lcom/yandex/metrica/impl/ob/s$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cq;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/s$f;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/cq;)V

    .line 220
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/s$b;->c()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->B()Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/s$b;->e()Lcom/yandex/metrica/impl/ob/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cq;->a()V

    .line 232
    return-void
.end method
