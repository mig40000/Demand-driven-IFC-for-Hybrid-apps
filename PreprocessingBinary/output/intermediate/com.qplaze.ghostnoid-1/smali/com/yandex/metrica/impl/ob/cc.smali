.class public Lcom/yandex/metrica/impl/ob/cc;
.super Lcom/yandex/metrica/impl/ob/ca;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ba$a;Lcom/yandex/metrica/impl/ob/cd;Lcom/yandex/metrica/impl/ob/cd;)V
    .locals 0

    .prologue
    .line 8
    if-nez p2, :cond_0

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/yandex/metrica/impl/ob/ca;-><init>(Lcom/yandex/metrica/impl/ba$a;Lcom/yandex/metrica/impl/ob/cd;)V

    .line 9
    return-void

    :cond_0
    move-object p3, p2

    .line 8
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/cf;)Lcom/yandex/metrica/impl/ob/ca$a;
    .locals 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cc;->b()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->d()Lcom/yandex/metrica/impl/ob/cf;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/cf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca$a;->a:Lcom/yandex/metrica/impl/ob/ca$a;

    .line 22
    :goto_0
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->d()Lcom/yandex/metrica/impl/ob/cf;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 17
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca$a;->b:Lcom/yandex/metrica/impl/ob/ca$a;

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca$a;->b:Lcom/yandex/metrica/impl/ob/ca$a;

    goto :goto_0

    .line 22
    :cond_2
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca$a;->c:Lcom/yandex/metrica/impl/ob/ca$a;

    goto :goto_0
.end method

.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/ca;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Lcom/yandex/metrica/impl/ob/cd;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/ca;->b()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/yandex/metrica/impl/ba$a;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/ca;->c()Lcom/yandex/metrica/impl/ba$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/ca;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
