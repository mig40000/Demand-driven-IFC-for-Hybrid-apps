.class Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$2;
.super Ljava/lang/Object;
.source "PicksInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$2;->this$0:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-static {}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->access$000()Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->access$000()Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;->onAdDismissed()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$2;->this$0:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->finish()V

    .line 95
    return-void
.end method
