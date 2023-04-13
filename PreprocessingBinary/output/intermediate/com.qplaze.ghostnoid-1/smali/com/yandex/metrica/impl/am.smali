.class public Lcom/yandex/metrica/impl/am;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/yandex/metrica/impl/ax;->a(I)Lcom/yandex/metrica/impl/ax$a;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/metrica/impl/ax$a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/ax;->a:Lcom/yandex/metrica/impl/ax$a;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ax$a;->b:Ljava/lang/String;

    goto :goto_0
.end method
