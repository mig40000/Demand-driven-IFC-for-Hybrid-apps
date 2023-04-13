.class public abstract Lcom/cmcm/adsdk/CMBaseFactory;
.super Ljava/lang/Object;
.source "CMBaseFactory.java"


# instance fields
.field public final mNativeAdLoaderClassMap:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/CMBaseFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    .line 24
    iget-object v0, p0, Lcom/cmcm/adsdk/CMBaseFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "cm"

    const-string v2, "com.cmcm.adsdk.adapter.PicksNativeAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/cmcm/adsdk/CMBaseFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "cmb"

    const-string v2, "com.cmcm.adsdk.adapter.PicksBannerAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/cmcm/adsdk/CMBaseFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "mpb"

    const-string v2, "com.cmcm.adsdk.adapter.MopubBannerAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/cmcm/adsdk/CMBaseFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "cmi"

    const-string v2, "com.cmcm.adsdk.adapter.PicksInterstatialAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/cmcm/adsdk/CMBaseFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    const-string v1, "fbi"

    const-string v2, "com.cmcm.adsdk.adapter.FacebookInterstitialAdapter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public addLoaderClass(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "loaderKey"    # Ljava/lang/String;
    .param p2, "loaderClass"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cmcm/adsdk/CMBaseFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/CMBaseFactory;->mNativeAdLoaderClassMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract clearVastCache(Landroid/content/Context;)V
.end method

.method public abstract createAdLoader(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract initConfig()V
.end method
