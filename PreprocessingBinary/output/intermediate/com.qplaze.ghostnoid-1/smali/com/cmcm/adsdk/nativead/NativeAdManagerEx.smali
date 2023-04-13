.class public Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;
.super Lcom/cmcm/adsdk/nativead/NativeAdManager;
.source "NativeAdManagerEx.java"


# instance fields
.field private managerInternalEx:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posid"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/cmcm/adsdk/nativead/NativeAdManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;

    invoke-direct {v0, p1, p2}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;->managerInternalEx:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;

    .line 21
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;->managerInternalEx:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManager;->requestAd:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;)Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;->managerInternalEx:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;

    return-object v0
.end method


# virtual methods
.method public getAd(Z)Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 1
    .param p1, "forceImageSuccess"    # Z

    .prologue
    .line 27
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx$1;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx$1;-><init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;Z)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/baseapi/ads/INativeAd;

    return-object v0
.end method

.method public getHighPriorityType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;->managerInternalEx:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->getPosBeans()Ljava/util/List;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/config/PosBean;->getAdName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasHighPriorityAd()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerEx;->managerInternalEx:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternalEx;->hasHighPriorityAd()Z

    move-result v0

    return v0
.end method
