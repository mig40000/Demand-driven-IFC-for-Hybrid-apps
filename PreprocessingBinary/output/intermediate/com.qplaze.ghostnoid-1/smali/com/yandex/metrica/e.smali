.class public Lcom/yandex/metrica/e;
.super Lcom/yandex/metrica/YandexMetricaConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/a;

.field private final b:Ljava/util/Map;
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

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/Integer;

.field private final g:Ljava/lang/Integer;

.field private final h:Ljava/lang/Integer;

.field private final i:Ljava/util/Map;
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

.field private final j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/yandex/metrica/YandexMetricaConfig;-><init>(Lcom/yandex/metrica/YandexMetricaConfig;)V

    .line 46
    iput-object v0, p0, Lcom/yandex/metrica/e;->a:Lcom/yandex/metrica/a;

    .line 47
    iput-object v0, p0, Lcom/yandex/metrica/e;->b:Ljava/util/Map;

    .line 48
    iput-object v0, p0, Lcom/yandex/metrica/e;->d:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/yandex/metrica/e;->e:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/yandex/metrica/e;->f:Ljava/lang/Integer;

    .line 51
    iput-object v0, p0, Lcom/yandex/metrica/e;->g:Ljava/lang/Integer;

    .line 52
    iput-object v0, p0, Lcom/yandex/metrica/e;->h:Ljava/lang/Integer;

    .line 53
    iput-object v0, p0, Lcom/yandex/metrica/e;->c:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/yandex/metrica/e;->i:Ljava/util/Map;

    .line 55
    iput-object v0, p0, Lcom/yandex/metrica/e;->j:Ljava/lang/Boolean;

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/e$a;)V
    .locals 1

    .prologue
    .line 504
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->a(Lcom/yandex/metrica/e$a;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/YandexMetricaConfig;-><init>(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)V

    .line 505
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->b(Lcom/yandex/metrica/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->d:Ljava/lang/String;

    .line 506
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->c(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->f:Ljava/lang/Integer;

    .line 507
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->d(Lcom/yandex/metrica/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->e:Ljava/lang/String;

    .line 508
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->e(Lcom/yandex/metrica/e$a;)Lcom/yandex/metrica/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->a:Lcom/yandex/metrica/a;

    .line 509
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->f(Lcom/yandex/metrica/e$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->b:Ljava/util/Map;

    .line 510
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->g(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->h:Ljava/lang/Integer;

    .line 511
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->h(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->g:Ljava/lang/Integer;

    .line 512
    iget-object v0, p1, Lcom/yandex/metrica/e$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/e;->c:Ljava/lang/String;

    .line 513
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->i(Lcom/yandex/metrica/e$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->i:Ljava/util/Map;

    .line 514
    invoke-static {p1}, Lcom/yandex/metrica/e$a;->j(Lcom/yandex/metrica/e$a;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e;->j:Ljava/lang/Boolean;

    .line 515
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/e$a;B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/yandex/metrica/e;-><init>(Lcom/yandex/metrica/e$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/yandex/metrica/e$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/e$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/e;
    .locals 1

    .prologue
    .line 59
    instance-of v0, p0, Lcom/yandex/metrica/e;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lcom/yandex/metrica/e;

    .line 62
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/yandex/metrica/e;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/e;-><init>(Lcom/yandex/metrica/YandexMetricaConfig;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static b(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/e$a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/e;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    move-result-object v3

    .line 98
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 1338
    if-eqz v1, :cond_a

    move v1, v2

    .line 98
    :goto_0
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v1

    .line 2338
    if-eqz v1, :cond_b

    move v1, v2

    .line 101
    :goto_1
    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/yandex/metrica/e$a;->a(I)Lcom/yandex/metrica/e$a;

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v1

    .line 3338
    if-eqz v1, :cond_c

    move v1, v2

    .line 104
    :goto_2
    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/yandex/metrica/e$a;->a(Z)Lcom/yandex/metrica/e$a;

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v1

    .line 4338
    if-eqz v1, :cond_d

    move v1, v2

    .line 107
    :goto_3
    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/yandex/metrica/e$a;->b(Z)Lcom/yandex/metrica/e$a;

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 5338
    if-eqz v1, :cond_e

    move v1, v2

    .line 110
    :goto_4
    if-eqz v1, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/yandex/metrica/e$a;->a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;

    .line 113
    :cond_4
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v1

    .line 6338
    if-eqz v1, :cond_f

    move v1, v2

    .line 113
    :goto_5
    if-eqz v1, :cond_5

    .line 114
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/yandex/metrica/e$a;->c(Z)Lcom/yandex/metrica/e$a;

    .line 116
    :cond_5
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v1

    .line 7338
    if-eqz v1, :cond_10

    move v1, v2

    .line 116
    :goto_6
    if-eqz v1, :cond_6

    .line 117
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/yandex/metrica/e$a;->d(Z)Lcom/yandex/metrica/e$a;

    .line 119
    :cond_6
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v1

    .line 8338
    if-eqz v1, :cond_11

    move v1, v2

    .line 119
    :goto_7
    if-eqz v1, :cond_7

    .line 120
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 121
    invoke-virtual {v3}, Lcom/yandex/metrica/e$a;->a()Lcom/yandex/metrica/e$a;

    .line 124
    :cond_7
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getPreloadInfo()Lcom/yandex/metrica/PreloadInfo;

    move-result-object v1

    .line 9338
    if-eqz v1, :cond_12

    move v1, v2

    .line 124
    :goto_8
    if-eqz v1, :cond_8

    .line 125
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getPreloadInfo()Lcom/yandex/metrica/PreloadInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/yandex/metrica/e$a;->a(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/e$a;

    .line 127
    :cond_8
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getErrorEnvironment()Ljava/util/Map;

    move-result-object v1

    .line 10338
    if-eqz v1, :cond_9

    move v0, v2

    .line 127
    :cond_9
    if-eqz v0, :cond_13

    .line 128
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->getErrorEnvironment()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    goto :goto_9

    :cond_a
    move v1, v0

    .line 1338
    goto/16 :goto_0

    :cond_b
    move v1, v0

    .line 2338
    goto/16 :goto_1

    :cond_c
    move v1, v0

    .line 3338
    goto/16 :goto_2

    :cond_d
    move v1, v0

    .line 4338
    goto/16 :goto_3

    :cond_e
    move v1, v0

    .line 5338
    goto/16 :goto_4

    :cond_f
    move v1, v0

    .line 6338
    goto/16 :goto_5

    :cond_10
    move v1, v0

    .line 7338
    goto :goto_6

    :cond_11
    move v1, v0

    .line 8338
    goto :goto_7

    :cond_12
    move v1, v0

    .line 9338
    goto :goto_8

    .line 132
    :cond_13
    invoke-virtual {p0}, Lcom/yandex/metrica/YandexMetricaConfig;->isFirstActivationAsUpdate()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 133
    invoke-virtual {v3, v2}, Lcom/yandex/metrica/e$a;->e(Z)Lcom/yandex/metrica/e$a;

    .line 135
    :cond_14
    return-object v3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/yandex/metrica/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/yandex/metrica/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/yandex/metrica/e;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/a;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/yandex/metrica/e;->a:Lcom/yandex/metrica/a;

    return-object v0
.end method

.method public e()Ljava/util/Map;
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
    .line 566
    iget-object v0, p0, Lcom/yandex/metrica/e;->b:Ljava/util/Map;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/yandex/metrica/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/yandex/metrica/e;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/yandex/metrica/e;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public i()Ljava/util/Map;
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
    .line 609
    iget-object v0, p0, Lcom/yandex/metrica/e;->i:Ljava/util/Map;

    return-object v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/yandex/metrica/e;->j:Ljava/lang/Boolean;

    return-object v0
.end method
