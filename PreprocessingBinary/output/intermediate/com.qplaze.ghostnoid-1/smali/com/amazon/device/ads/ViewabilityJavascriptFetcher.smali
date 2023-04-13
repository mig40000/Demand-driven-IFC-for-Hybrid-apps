.class Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;
.super Ljava/lang/Object;


# static fields
.field private static final CDN_URL:Ljava/lang/String; = "https://dwxjayoxbnyrr.cloudfront.net/amazon-ads.viewablejs"

.field private static final LOGTAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;


# instance fields
.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private currentJSVersion:I

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final metrics:Lcom/amazon/device/ads/Metrics;

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->LOGTAG:Ljava/lang/String;

    new-instance v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-direct {v0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->instance:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v2}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v3

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v4

    new-instance v5, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v6

    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v7

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v8

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    iput-object p2, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    iput-object p3, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    iput-object p4, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    iput-object p5, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    iput-object p6, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->metrics:Lcom/amazon/device/ads/Metrics;

    iput-object p7, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    iput-object p8, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    iput-object p9, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->configuration:Lcom/amazon/device/ads/Configuration;

    return-void
.end method

.method public static final getInstance()Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;
    .locals 1

    sget-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->instance:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    return-object v0
.end method

.method private onFetchFailure()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CDN_JAVASCRIPT_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Viewability Javascript fetch failed"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method private shouldFetch()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JS_VERSION_CONFIG:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Configuration;->getInt(Lcom/amazon/device/ads/Configuration$ConfigOption;)I

    move-result v1

    iput v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->currentJSVersion:I

    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const-string v2, "viewableJSVersionStored"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->currentJSVersion:I

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const-string v2, "viewableJSSettingsNameAmazonAdSDK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected beginFetch()V
    .locals 4

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;-><init>(Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method protected createWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JAVASCRIPT_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v3, "https://dwxjayoxbnyrr.cloudfront.net/amazon-ads.viewablejs"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Configuration;->getStringWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v1}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CDN_JAVASCRIPT_DOWLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.aaxConfigUseSecure"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUseSecure(Z)V

    return-object v0
.end method

.method public fetchJavascript()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->shouldFetch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->beginFetch()V

    :cond_0
    return-void
.end method

.method public fetchJavascriptFromURLOnBackgroundThread()V
    .locals 3

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "In ViewabilityJavascriptFetcher background thread"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/PermissionChecker;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Network task cannot commence because the INTERNET permission is missing from the app\'s manifest."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->onFetchFailure()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->onFetchFailure()V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResponseReader;->readAsString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const-string v2, "viewableJSSettingsNameAmazonAdSDK"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "viewableJSVersionStored"

    iget v2, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->currentJSVersion:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Viewability Javascript fetched and saved"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->onFetchFailure()V

    goto :goto_0
.end method
