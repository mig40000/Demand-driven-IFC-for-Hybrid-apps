.class Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;
.super Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;
.source "PicksInterstatialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PicksInterstatialAd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;


# direct methods
.method public constructor <init>(Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;Lcom/cmcm/picks/loader/Ad;Landroid/content/Context;)V
    .locals 0
    .param p2, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;->this$0:Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;-><init>(Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;Lcom/cmcm/picks/loader/Ad;Landroid/content/Context;)V

    .line 72
    return-void
.end method


# virtual methods
.method public registerViewForInteraction(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->setNativeAd(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;->this$0:Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;

    iget-object v1, v1, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;->this$0:Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;

    iget-object v1, v1, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;->onLoggingImpression()V

    .line 81
    const/4 v0, 0x1

    return v0
.end method
