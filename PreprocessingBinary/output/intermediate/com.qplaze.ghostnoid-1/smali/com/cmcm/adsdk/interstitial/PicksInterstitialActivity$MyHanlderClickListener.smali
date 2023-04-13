.class Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;
.super Ljava/lang/Object;
.source "PicksInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHanlderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;->this$0:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-static {}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->access$300()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->access$300()Lcom/cmcm/baseapi/ads/INativeAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd;->handleClick()V

    .line 184
    invoke-static {}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->access$000()Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->access$000()Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;->onAdClicked()V

    .line 189
    :cond_0
    return-void
.end method
