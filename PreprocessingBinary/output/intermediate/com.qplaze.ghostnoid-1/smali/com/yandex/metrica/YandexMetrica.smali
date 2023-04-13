.class public final Lcom/yandex/metrica/YandexMetrica;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static activate(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/yandex/metrica/YandexMetricaConfig;

    .prologue
    .line 58
    invoke-static {p1}, Lcom/yandex/metrica/e;->a(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/e;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;Lcom/yandex/metrica/e;)V

    .line 59
    return-void
.end method

.method public static activate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p1}, Lcom/yandex/metrica/e;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/e$a;->b()Lcom/yandex/metrica/e;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;Lcom/yandex/metrica/e;)V

    .line 46
    return-void
.end method

.method public static enableActivityAutoTracking(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 103
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/app/Application;)V

    .line 104
    return-void
.end method

.method public static getLibraryApiLevel()I
    .locals 1

    .prologue
    .line 391
    const/16 v0, 0x34

    return v0
.end method

.method public static getLibraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    const-string v0, "2.62"

    return-object v0
.end method

.method public static getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {p1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/String;)V

    .line 361
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;)V

    .line 362
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->b()Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/String;)Lcom/yandex/metrica/b;

    move-result-object v0

    return-object v0
.end method

.method public static isCollectInstalledApps()Z
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->e()Z

    move-result v0

    return v0
.end method

.method public static onPauseActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->c(Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method public static onResumeActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->b(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public static varargs registerReferrerBroadcastReceivers([Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "anotherReferrerReceivers"    # [Landroid/content/BroadcastReceiver;

    .prologue
    .line 413
    invoke-static {p0}, Lcom/yandex/metrica/MetricaEventHandler;->a([Landroid/content/BroadcastReceiver;)V

    .line 414
    return-void
.end method

.method public static reportAppOpen(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 229
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/app/Activity;)V

    .line 230
    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/z;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->reportEvent(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "jsonValue"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/z;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/impl/z;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    return-void
.end method

.method public static reportNativeCrash(Ljava/lang/String;)V
    .locals 1
    .param p0, "nativeCrash"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->d(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->reportUnhandledException(Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method public static setCollectInstalledApps(Z)V
    .locals 0
    .param p0, "collect"    # Z

    .prologue
    .line 346
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->d(Z)V

    .line 347
    return-void
.end method

.method public static setCustomAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->c(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public static setEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 0
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 299
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/location/Location;)V

    .line 300
    return-void
.end method

.method public static setLogEnabled()V
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/i;->a()V

    .line 335
    return-void
.end method

.method public static setReportCrashesEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 267
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Z)V

    .line 268
    return-void
.end method

.method public static setReportNativeCrashesEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 281
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->b(Z)V

    .line 282
    return-void
.end method

.method public static setSessionTimeout(I)V
    .locals 0
    .param p0, "sessionTimeout"    # I

    .prologue
    .line 254
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(I)V

    .line 255
    return-void
.end method

.method public static setTrackLocationEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 312
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->c(Z)V

    .line 313
    return-void
.end method
