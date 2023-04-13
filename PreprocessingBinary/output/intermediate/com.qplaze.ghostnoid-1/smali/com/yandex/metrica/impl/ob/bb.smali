.class public Lcom/yandex/metrica/impl/ob/bb;
.super Lcom/yandex/metrica/impl/ob/bd;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bc;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bd;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bh;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected a()Lcom/yandex/metrica/impl/ob/bi;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/yandex/metrica/impl/ob/bi;->a:Lcom/yandex/metrica/impl/ob/bi;

    return-object v0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bb;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->d()I

    move-result v0

    return v0
.end method
