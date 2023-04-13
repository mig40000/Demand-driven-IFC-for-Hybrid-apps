.class public Lcom/yandex/metrica/impl/ob/al;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .locals 4

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/al;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/CounterConfiguration;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/al;->b()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/yandex/metrica/impl/be;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/al;->c()V

    .line 21
    new-instance v2, Lcom/yandex/metrica/impl/h;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/h;-><init>(Lcom/yandex/metrica/impl/h;)V

    const-string v3, ""

    .line 22
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/h;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    .line 24
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/h;->a(I)Lcom/yandex/metrica/impl/h;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/t;->a(Lcom/yandex/metrica/impl/h;)V

    .line 28
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/al;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/al;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->s()V

    .line 37
    return-void
.end method
