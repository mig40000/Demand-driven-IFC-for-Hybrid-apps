.class public final Lcom/yandex/metrica/impl/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->d()Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2049
    sget-object v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    .line 1064
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b()Ljava/lang/String;

    move-result-object v0

    .line 27
    return-object v0
.end method

.method public static c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 3049
    sget-object v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    .line 55
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
