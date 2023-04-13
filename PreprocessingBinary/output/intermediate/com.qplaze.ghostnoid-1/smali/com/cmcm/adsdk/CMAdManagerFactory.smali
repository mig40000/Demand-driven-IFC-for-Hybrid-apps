.class public Lcom/cmcm/adsdk/CMAdManagerFactory;
.super Lcom/cmcm/adsdk/CMBaseFactory;
.source "CMAdManagerFactory.java"


# static fields
.field private static sImageDownloadListener:Lcom/cmcm/adsdk/ImageDownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cmcm/adsdk/CMBaseFactory;-><init>()V

    .line 25
    iget-object v0, p0, Lcom/cmcm/adsdk/CMAdManagerFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "fb"

    const-string v2, "com.cmcm.adsdk.adapter.FacebookNativeAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/cmcm/adsdk/CMAdManagerFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "yh"

    const-string v2, "com.cmcm.adsdk.adapter.YahooNativeAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/cmcm/adsdk/CMAdManagerFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "mp"

    const-string v2, "com.cmcm.adsdk.adapter.MopubNativeAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/cmcm/adsdk/CMAdManagerFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "ab"

    const-string v2, "com.cmcm.adsdk.adapter.AdmobNativeAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/cmcm/adsdk/CMAdManagerFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "cmb"

    const-string v2, "com.cmcm.adsdk.adapter.PicksBannerAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/cmcm/adsdk/CMAdManagerFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "mpb"

    const-string v2, "com.cmcm.adsdk.adapter.MopubBannerAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private static createObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 148
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 149
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    const-string v2, "CMCMADSDK"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/cmcm/adsdk/CMAdManagerFactory;->sImageDownloadListener:Lcom/cmcm/adsdk/ImageDownloadListener;

    return-object v0
.end method

.method public static setDefaultConfig(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "defaultConfig"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .prologue
    .line 51
    invoke-static {}, Lcom/cmcm/adsdk/config/RequestConfig;->getInstance()Lcom/cmcm/adsdk/config/RequestConfig;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/cmcm/adsdk/config/RequestConfig;->setDefaultConfig(Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public static setImageDownloadListener(Lcom/cmcm/adsdk/ImageDownloadListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/cmcm/adsdk/ImageDownloadListener;

    .prologue
    .line 93
    sput-object p0, Lcom/cmcm/adsdk/CMAdManagerFactory;->sImageDownloadListener:Lcom/cmcm/adsdk/ImageDownloadListener;

    .line 94
    return-void
.end method


# virtual methods
.method public clearVastCache(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Lcom/cmcm/adsdk/CMAdManagerFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/adsdk/CMAdManagerFactory$1;-><init>(Lcom/cmcm/adsdk/CMAdManagerFactory;Landroid/content/Context;)V

    const-wide/16 v2, 0x7530

    invoke-static {v0, v2, v3}, Lcom/cmcm/utils/ThreadHelper;->postDelay(Ljava/lang/Runnable;J)V

    .line 48
    return-void
.end method

.method public createAdLoader(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posBean"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 57
    instance-of v0, p2, Lcom/cmcm/adsdk/config/PosBean;

    if-nez v0, :cond_0

    move-object v0, v7

    .line 89
    :goto_0
    return-object v0

    :cond_0
    move-object v5, p2

    .line 60
    check-cast v5, Lcom/cmcm/adsdk/config/PosBean;

    .line 61
    if-eqz p2, :cond_1

    iget-object v0, v5, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v7

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    :try_start_0
    iget-object v0, v5, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    array-length v1, v0

    if-nez v1, :cond_3

    .line 67
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",has error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, v5, Lcom/cmcm/adsdk/config/PosBean;->placeid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 73
    iget-object v4, v5, Lcom/cmcm/adsdk/config/PosBean;->parameter:Ljava/lang/String;

    .line 74
    iget-object v3, v5, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/cmcm/adsdk/CMAdManagerFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    const-string v1, "CMCMADSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create NativeAdapter:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " [ loaderName:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/cmcm/adsdk/CMAdManagerFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/adsdk/CMAdManagerFactory;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 83
    :goto_1
    if-eqz v6, :cond_4

    .line 84
    new-instance v0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    check-cast v6, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/adsdk/config/PosBean;Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "CMCMADSDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v0, v7

    .line 89
    goto/16 :goto_0

    .line 81
    :cond_5
    :try_start_1
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unmatched native adtype:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v7

    goto :goto_1
.end method

.method public initConfig()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/cmcm/adsdk/config/RequestConfig;->getInstance()Lcom/cmcm/adsdk/config/RequestConfig;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/adsdk/config/RequestConfig;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/cmcm/adsdk/config/RequestConfig;->getInstance()Lcom/cmcm/adsdk/config/RequestConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/config/RequestConfig;->requestConfig(Z)V

    .line 38
    return-void
.end method
