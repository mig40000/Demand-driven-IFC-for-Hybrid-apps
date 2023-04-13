.class public Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;
.super Ljava/lang/Object;
.source "NativeAdLoaderMap.java"


# instance fields
.field final mFailedLoaderNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoaderCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;",
            ">;"
        }
    .end annotation
.end field

.field oldBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mLoaderCacheMap:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mFailedLoaderNames:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->oldBeanList:Ljava/util/List;

    return-void
.end method

.method private assurePosbeanSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "newPosbean":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/adsdk/config/PosBean;>;"
    .local p2, "oldPosbean":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/adsdk/config/PosBean;>;"
    const/4 v3, 0x0

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v2, v3

    .line 32
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 33
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 34
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/adsdk/config/PosBean;

    .line 35
    iget-object v4, v0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/cmcm/adsdk/config/PosBean;->parameter:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 38
    iget-object v4, v0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/cmcm/adsdk/config/PosBean;->parameter:Ljava/lang/String;

    iget-object v1, v1, Lcom/cmcm/adsdk/config/PosBean;->parameter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 42
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mLoaderCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAdLoader(Landroid/content/Context;Lcom/cmcm/adsdk/config/PosBean;Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posBean"    # Lcom/cmcm/adsdk/config/PosBean;
    .param p3, "onClickListener"    # Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .prologue
    .line 64
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/cmcm/adsdk/config/PosBean;->isValidInfo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 76
    :cond_1
    :goto_0
    return-object v0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mLoaderCacheMap:Ljava/util/Map;

    iget-object v1, p2, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mLoaderCacheMap:Ljava/util/Map;

    iget-object v1, p2, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    goto :goto_0

    .line 71
    :cond_3
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getFactory()Lcom/cmcm/adsdk/CMBaseFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cmcm/adsdk/CMBaseFactory;->createAdLoader(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    check-cast v0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    .line 72
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0, p3}, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;->setAdClickListener(Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mLoaderCacheMap:Ljava/util/Map;

    iget-object v2, p2, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAdLoader(Ljava/lang/Object;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mLoaderCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mLoaderCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLoaders(Landroid/content/Context;Ljava/util/List;Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "onClickListener"    # Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/config/PosBean;",
            ">;",
            "Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "posBeans":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/adsdk/config/PosBean;>;"
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->oldBeanList:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->assurePosbeanSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iput-object p2, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->oldBeanList:Ljava/util/List;

    .line 48
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mLoaderCacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mFailedLoaderNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 53
    invoke-virtual {p0, p1, v0, p3}, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->getAdLoader(Landroid/content/Context;Lcom/cmcm/adsdk/config/PosBean;Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)Lcom/cmcm/adsdk/nativead/CMNativeAdLoader;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mLoaderCacheMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    if-nez v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mFailedLoaderNames:Ljava/util/List;

    iget-object v0, v0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_2
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConfigBeans size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLoaderCacheMap size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/NativeAdLoaderMap;->mLoaderCacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
