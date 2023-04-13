.class public Lcom/yandex/metrica/YandexMetricaConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Boolean;

.field private final e:Ljava/lang/Boolean;

.field private final f:Landroid/location/Location;

.field private final g:Ljava/lang/Boolean;

.field private final h:Ljava/lang/Boolean;

.field private final i:Ljava/lang/Boolean;

.field private final j:Lcom/yandex/metrica/PreloadInfo;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Z


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->a(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->a:Ljava/lang/String;

    .line 297
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->b(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->b:Ljava/lang/String;

    .line 298
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->c(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->c:Ljava/lang/Integer;

    .line 299
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->d(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->d:Ljava/lang/Boolean;

    .line 300
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->e(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->e:Ljava/lang/Boolean;

    .line 301
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->f(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->f:Landroid/location/Location;

    .line 302
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->g(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->g:Ljava/lang/Boolean;

    .line 303
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->h(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->h:Ljava/lang/Boolean;

    .line 304
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->i(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->i:Ljava/lang/Boolean;

    .line 305
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->j(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Lcom/yandex/metrica/PreloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->j:Lcom/yandex/metrica/PreloadInfo;

    .line 306
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->k:Ljava/util/Map;

    .line 307
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->l(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->l:Z

    .line 308
    return-void
.end method

.method protected constructor <init>(Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 1
    .param p1, "source"    # Lcom/yandex/metrica/YandexMetricaConfig;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->a:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->b:Ljava/lang/String;

    .line 313
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->c:Ljava/lang/Integer;

    .line 314
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->d:Ljava/lang/Boolean;

    .line 315
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->e:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->e:Ljava/lang/Boolean;

    .line 316
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->f:Landroid/location/Location;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->f:Landroid/location/Location;

    .line 317
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->g:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->g:Ljava/lang/Boolean;

    .line 318
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->h:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->h:Ljava/lang/Boolean;

    .line 319
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->i:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->i:Ljava/lang/Boolean;

    .line 320
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->j:Lcom/yandex/metrica/PreloadInfo;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->j:Lcom/yandex/metrica/PreloadInfo;

    .line 321
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->k:Ljava/util/Map;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->k:Ljava/util/Map;

    .line 322
    iget-boolean v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->l:Z

    iput-boolean v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->l:Z

    .line 323
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/ab;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ab;-><init>()V

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ab;->a(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;

    move-result-object v0

    return-object v0
.end method

.method public static newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1
    .param p0, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorEnvironment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->k:Ljava/util/Map;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->f:Landroid/location/Location;

    return-object v0
.end method

.method public getPreloadInfo()Lcom/yandex/metrica/PreloadInfo;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->j:Lcom/yandex/metrica/PreloadInfo;

    return-object v0
.end method

.method public getSessionTimeout()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public isCollectInstalledApps()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isFirstActivationAsUpdate()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->l:Z

    return v0
.end method

.method public isLogEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isReportCrashEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isReportNativeCrashEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isTrackLocationEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/yandex/metrica/impl/ab;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ab;-><init>()V

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ab;->a(Lcom/yandex/metrica/YandexMetricaConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
