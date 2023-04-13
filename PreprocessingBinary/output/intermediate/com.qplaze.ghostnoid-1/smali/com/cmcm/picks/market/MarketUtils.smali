.class public Lcom/cmcm/picks/market/MarketUtils;
.super Ljava/lang/Object;
.source "MarketUtils.java"


# static fields
.field private static mAesUtils:Lcom/cmcm/utils/a;

.field static sAdTraceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmcm/picks/market/MarketUtils;->sAdTraceMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encryptRawJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "rawJson"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, ""

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :try_start_0
    sget-object v1, Lcom/cmcm/picks/market/MarketUtils;->mAesUtils:Lcom/cmcm/utils/a;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/cmcm/utils/a;

    invoke-direct {v1}, Lcom/cmcm/utils/a;-><init>()V

    sput-object v1, Lcom/cmcm/picks/market/MarketUtils;->mAesUtils:Lcom/cmcm/utils/a;

    .line 78
    :cond_0
    sget-object v1, Lcom/cmcm/picks/market/MarketUtils;->mAesUtils:Lcom/cmcm/utils/a;

    invoke-virtual {v1, p0}, Lcom/cmcm/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :cond_1
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getPreloadTraceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "originUrl"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/cmcm/picks/market/MarketUtils;->sAdTraceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isGooglePlayUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    const-string v1, "https://play.google.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://play.google.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "market:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static openOrDownloadAdNoDialog(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "context1"    # Landroid/content/Context;
    .param p1, "posId"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p3, "rf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/cmcm/picks/loader/Ad;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p4, "extraReportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cmcm/picks/market/MarketUtils;->openOrDownloadAdNoReport(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    const-string v0, "click"

    invoke-static {v0, p2, p1, p3, p4}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public static openOrDownloadAdNoReport(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "context1"    # Landroid/content/Context;
    .param p1, "posId"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p3, "rf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/cmcm/picks/loader/Ad;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p4, "extraReportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/cmcm/utils/h;

    invoke-direct {v0, p0}, Lcom/cmcm/utils/h;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->isDeepLink()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/Commons;->isHasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->getDeepLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cmcm/utils/Commons;->openAppByDeeplink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/Commons;->isHasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/Commons;->openApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->isOpenBrowser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->getPkgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/market/MarketUtils;->openUriByBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->isOpenInternal()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->getPkgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/picks/webview/PicksBrowser;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p2}, Lcom/cmcm/picks/loader/Ad;->getPkgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/cmcm/picks/market/MarketUtils;->smartGo2GooglePlayEx(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static openUriByBrowser(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 48
    invoke-static {p0, v0}, Lcom/cmcm/utils/Commons;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reportExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Lcom/cmcm/baseapi/ads/INativeAd;Ljava/lang/String;)V
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "posid"    # Ljava/lang/String;
    .param p3, "reportRes"    # I
    .param p5, "placementID"    # Ljava/lang/String;
    .param p6, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;
    .param p7, "rawStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "reportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 60
    .line 61
    const-string v0, "cm"

    invoke-interface {p6}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {p6}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/loader/Ad;

    move-object v1, v0

    .line 64
    :goto_0
    if-nez v1, :cond_0

    .line 65
    invoke-static {p1, p3}, Lcom/cmcm/picks/loader/a;->a(Ljava/lang/String;I)Lcom/cmcm/picks/loader/Ad;

    move-result-object v1

    .line 67
    :cond_0
    invoke-static {p7}, Lcom/cmcm/picks/market/MarketUtils;->encryptRawJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method private static smartGo2GooglePlayEx(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p3, "posId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-static {p1}, Lcom/cmcm/picks/market/MarketUtils;->isGooglePlayUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-static {p1, p0}, Lcom/cmcm/utils/Commons;->openGooglePlayByUrl(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 124
    :cond_2
    sget-object v0, Lcom/cmcm/picks/market/MarketUtils;->sAdTraceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/cmcm/picks/market/MarketUtils;->isGooglePlayUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 126
    :cond_3
    new-instance v0, Lcom/cmcm/utils/k;

    invoke-direct {v0}, Lcom/cmcm/utils/k;-><init>()V

    .line 127
    new-instance v2, Lcom/cmcm/picks/market/MarketUtils$1;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/cmcm/picks/market/MarketUtils$1;-><init>(Landroid/content/Context;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/cmcm/utils/k;->a(Lcom/cmcm/utils/k$b;)V

    .line 141
    invoke-static {p0}, Lcom/cmcm/picks/market/MarketUtils;->startLoadingActivity(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0, p1}, Lcom/cmcm/utils/k;->a(Ljava/lang/String;)Lcom/cmcm/utils/k$a;

    move v0, v1

    .line 144
    goto :goto_0

    .line 145
    :cond_4
    invoke-static {v0, p0}, Lcom/cmcm/utils/Commons;->openGooglePlayByUrl(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v1

    .line 146
    goto :goto_0
.end method

.method public static startLoadingActivity(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-static {p0}, Lcom/cmcm/picks/PicksLoadingActivity;->a(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public static stopLoadingActivity(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/cmcm/picks/PicksLoadingActivity;->b(Landroid/content/Context;)V

    .line 159
    sget-boolean v0, Lcom/cmcm/picks/PicksLoadingActivity;->a:Z

    return v0
.end method
