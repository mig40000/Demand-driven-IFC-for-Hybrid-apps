.class public Lcom/yandex/metrica/impl/ob/an;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 10
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/an;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->b(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/h;)Z
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/an;->a(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x1

    return v0
.end method
