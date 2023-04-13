.class public Lcom/yandex/metrica/impl/ob/cy;
.super Lcom/yandex/metrica/impl/ob/cs;
.source "SourceFile"


# instance fields
.field private c:Lcom/yandex/metrica/impl/ob/cz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/cy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/cs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cy;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->c:Lcom/yandex/metrica/impl/ob/cz;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/cy;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cs;->k()V

    .line 55
    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "_serviceproviderspreferences"

    return-object v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/cs;->h()V

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    const-string v1, "LOCATION_TRACKING_ENABLED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->c:Lcom/yandex/metrica/impl/ob/cz;

    .line 38
    return-void
.end method
