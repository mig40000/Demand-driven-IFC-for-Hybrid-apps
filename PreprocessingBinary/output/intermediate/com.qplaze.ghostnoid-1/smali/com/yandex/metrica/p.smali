.class public final Lcom/yandex/metrica/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/yandex/metrica/IIdentifierCallback;

    .prologue
    .line 26
    .line 1019
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->b()Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/bk;->a(Lcom/yandex/metrica/IIdentifierCallback;)V

    .line 27
    return-void
.end method

.method public static cpcwh(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 1
    .param p0, "config"    # Lcom/yandex/metrica/YandexMetricaConfig;
    .param p1, "h"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/yandex/metrica/e;->b(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/e$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/e$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/e$a;->b()Lcom/yandex/metrica/e;

    move-result-object v0

    return-object v0
.end method

.method public static gbc(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2203
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 2204
    if-eqz v1, :cond_0

    .line 2205
    const-string v2, "level"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2206
    const-string v3, "scale"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2207
    if-ltz v2, :cond_0

    if-lez v1, :cond_0

    .line 2208
    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method public static gcni(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    .line 1035
    new-instance v0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->getCelluralInfo()Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method public static gdi(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    .line 1031
    invoke-static {p0}, Lcom/yandex/metrica/impl/interact/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method public static glkl(Landroid/content/Context;)Landroid/location/Location;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/y;->d()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public static gmsvn(I)Ljava/lang/String;
    .locals 1
    .param p0, "apiLevel"    # I

    .prologue
    .line 66
    invoke-static {p0}, Lcom/yandex/metrica/impl/am;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1043
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->b()Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk;->f()Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method public static iifa()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/yandex/metrica/impl/bj;->a()Z

    move-result v0

    return v0
.end method

.method public static mpn(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    .line 1047
    invoke-static {p0}, Lcom/yandex/metrica/impl/ba;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public static pgai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/yandex/metrica/impl/bj;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static plat()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/yandex/metrica/impl/bj;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static rce(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .line 1051
    .local p3, "environment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/yandex/metrica/impl/z;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public static rolu(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrant"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sdkName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static urolu(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrant"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/y;->b(Ljava/lang/Object;)V

    .line 81
    return-void
.end method
