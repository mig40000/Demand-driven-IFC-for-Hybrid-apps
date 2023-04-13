.class public Lcom/yandex/metrica/impl/ao;
.super Lcom/yandex/metrica/impl/aq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ao$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/aq;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 27
    return-void
.end method

.method public static q()Lcom/yandex/metrica/impl/ap$a;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ao$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ao$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/aq;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/aq;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/aq;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/aq;->e()V

    return-void
.end method

.method public bridge synthetic f()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/aq;->f()V

    return-void
.end method

.method protected o()J
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method protected p()J
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    return-wide v0
.end method
