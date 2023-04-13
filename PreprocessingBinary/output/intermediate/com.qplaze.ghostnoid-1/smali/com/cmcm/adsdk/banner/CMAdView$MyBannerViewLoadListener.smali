.class Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;
.super Ljava/lang/Object;
.source "CMAdView.java"

# interfaces
.implements Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/banner/CMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyBannerViewLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/banner/CMAdView;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/banner/CMAdView;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 2
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 260
    const-string v0, "CMAdView"

    const-string v1, "onAdClicked"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    iget-object v0, v0, Lcom/cmcm/adsdk/banner/CMAdView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    iget-object v0, v0, Lcom/cmcm/adsdk/banner/CMAdView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/banner/CMBannerAdListener;->onAdClicked(Lcom/cmcm/adsdk/banner/CMAdView;)V

    .line 264
    :cond_0
    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 253
    const-string v0, "CMAdView"

    const-string v1, "onAdLoadFailed"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-static {v0, p1}, Lcom/cmcm/adsdk/banner/CMAdView;->access$500(Lcom/cmcm/adsdk/banner/CMAdView;I)V

    .line 255
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/CMAdView;->scheduleRefreshTimerIfEnabled()V

    .line 256
    return-void
.end method

.method public adLoaded()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "CMAdView"

    const-string v1, "adLoaded"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-static {v0}, Lcom/cmcm/adsdk/banner/CMAdView;->access$300(Lcom/cmcm/adsdk/banner/CMAdView;)Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/CMAdView;->removeAllViews()V

    .line 236
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-static {v0}, Lcom/cmcm/adsdk/banner/CMAdView;->access$300(Lcom/cmcm/adsdk/banner/CMAdView;)Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-static {v0}, Lcom/cmcm/adsdk/banner/CMAdView;->access$300(Lcom/cmcm/adsdk/banner/CMAdView;)Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-static {v0}, Lcom/cmcm/adsdk/banner/CMAdView;->access$300(Lcom/cmcm/adsdk/banner/CMAdView;)Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/BannerAdManagerRequest;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 238
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-static {v1, v0}, Lcom/cmcm/adsdk/banner/CMAdView;->access$400(Lcom/cmcm/adsdk/banner/CMAdView;Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    iget-object v0, v0, Lcom/cmcm/adsdk/banner/CMAdView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    iget-boolean v0, v0, Lcom/cmcm/adsdk/banner/CMAdView;->isFirstLoaded:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/banner/CMAdView;->scheduleRefreshTimerIfEnabled()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    iget-object v0, v0, Lcom/cmcm/adsdk/banner/CMAdView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/banner/CMBannerAdListener;->onAdLoaded(Lcom/cmcm/adsdk/banner/CMAdView;)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$MyBannerViewLoadListener;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/banner/CMAdView;->access$500(Lcom/cmcm/adsdk/banner/CMAdView;I)V

    goto :goto_0
.end method
