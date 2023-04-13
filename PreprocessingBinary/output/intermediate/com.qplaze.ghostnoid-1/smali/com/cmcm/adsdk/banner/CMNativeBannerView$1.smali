.class Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;
.super Ljava/lang/Object;
.source "CMNativeBannerView.java"

# interfaces
.implements Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/banner/CMNativeBannerView;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/banner/CMNativeBannerView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 2
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    iget-object v0, v0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    iget-object v0, v0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/banner/CMBannerAdListener;->onAdClicked(Lcom/cmcm/adsdk/banner/CMAdView;)V

    .line 99
    :cond_0
    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 3
    .param p1, "errorcode"    # I

    .prologue
    .line 89
    const-string v0, "CMNativeBannerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMNative ad load failed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-static {v0, p1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->access$100(Lcom/cmcm/adsdk/banner/CMNativeBannerView;I)V

    .line 91
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->scheduleRefreshTimerIfEnabled()V

    .line 92
    return-void
.end method

.method public adLoaded()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-static {v0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->access$000(Lcom/cmcm/adsdk/banner/CMNativeBannerView;)Lcom/cmcm/adsdk/nativead/NativeAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManager;->getAd()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    const/16 v1, 0x2715

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->access$100(Lcom/cmcm/adsdk/banner/CMNativeBannerView;I)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    iget-boolean v1, v1, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->isFirstLoaded:Z

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-virtual {v1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->scheduleRefreshTimerIfEnabled()V

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-virtual {v1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->renderBannerView()V

    .line 84
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;->this$0:Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    invoke-virtual {v1, v0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->renderBannerData(Lcom/cmcm/baseapi/ads/INativeAd;)V

    goto :goto_0
.end method
