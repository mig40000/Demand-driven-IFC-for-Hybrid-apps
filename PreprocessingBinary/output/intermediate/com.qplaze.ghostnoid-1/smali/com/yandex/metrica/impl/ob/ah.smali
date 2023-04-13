.class public Lcom/yandex/metrica/impl/ob/ah;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/bu;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 23
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->v()Lcom/yandex/metrica/impl/ob/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/impl/ob/bu;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ah;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/impl/ob/bu;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bu;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/h;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/t;->e(Lcom/yandex/metrica/impl/h;)V

    .line 42
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
