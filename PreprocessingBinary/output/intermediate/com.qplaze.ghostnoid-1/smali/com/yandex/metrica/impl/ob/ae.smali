.class public Lcom/yandex/metrica/impl/ob/ae;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ae;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/t;->b(Z)V

    .line 25
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/bf;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/bf;->a(Z)V

    .line 26
    return v2
.end method
