.class public Lcom/yandex/metrica/impl/ob/am;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/bu;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 26
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->v()Lcom/yandex/metrica/impl/ob/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/am;->a:Lcom/yandex/metrica/impl/ob/bu;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/am;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v1

    .line 32
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/am;->a:Lcom/yandex/metrica/impl/ob/bu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bu;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->E:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/am;->a:Lcom/yandex/metrica/impl/ob/bu;

    const-string v3, ""

    .line 40
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/bu;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/t;->d(Lcom/yandex/metrica/impl/h;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Z)V

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/am;->a:Lcom/yandex/metrica/impl/ob/bu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bu;->a()V

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/am;->a:Lcom/yandex/metrica/impl/ob/bu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bu;->e()V

    .line 45
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2331
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->b:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    goto :goto_0
.end method
