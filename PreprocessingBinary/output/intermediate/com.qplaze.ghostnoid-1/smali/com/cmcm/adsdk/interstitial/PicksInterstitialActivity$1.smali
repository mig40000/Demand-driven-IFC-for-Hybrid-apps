.class Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$1;
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
    .line 73
    iput-object p1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$1;->this$0:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    :try_start_0
    sget-object v0, Lcom/cmcm/adsdk/Const;->CM_AD_DETAIL_URL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$1;->this$0:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;

    invoke-virtual {v1, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
