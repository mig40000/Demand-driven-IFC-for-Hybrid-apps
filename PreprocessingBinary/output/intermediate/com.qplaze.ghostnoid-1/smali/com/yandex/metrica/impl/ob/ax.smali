.class public Lcom/yandex/metrica/impl/ob/ax;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ax;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/bf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bf;->a(Lcom/yandex/metrica/impl/h;)Z

    .line 26
    const/4 v0, 0x0

    return v0
.end method
