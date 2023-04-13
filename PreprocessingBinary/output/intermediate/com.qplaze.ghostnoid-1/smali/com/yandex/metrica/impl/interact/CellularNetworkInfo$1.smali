.class Lcom/yandex/metrica/impl/interact/CellularNetworkInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo$1;->a:Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/dv;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dv;->b()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->g()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->f()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->c()Ljava/lang/Integer;

    move-result-object v4

    .line 51
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->b()Ljava/lang/Integer;

    move-result-object v5

    .line 52
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->e()Ljava/lang/Integer;

    move-result-object v6

    .line 53
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->d()Ljava/lang/Integer;

    move-result-object v7

    .line 54
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->a()Ljava/lang/Integer;

    move-result-object v8

    .line 56
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v0, "network_type"

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "operator_name"

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v2, "country_code"

    if-eqz v5, :cond_1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v2, "operator_id"

    if-eqz v4, :cond_2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v2, "cell_id"

    if-eqz v6, :cond_3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v2, "lac"

    if-eqz v7, :cond_4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "signal_strength"

    if-eqz v8, :cond_0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v2, ""

    .line 67
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, "&"

    :goto_5
    move-object v2, v0

    .line 76
    goto :goto_4

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 60
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 61
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 62
    goto :goto_3

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo$1;->a:Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->a(Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    return-void

    :cond_6
    move-object v0, v2

    goto :goto_5
.end method
