.class Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$3;
.super Ljava/lang/Object;
.source "PicksInterstitialActivity.java"

# interfaces
.implements Lcom/cmcm/adsdk/BitmapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->fillAdData()V
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
    .line 119
    iput-object p1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$3;->this$0:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method

.method public onSuccessed(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$3;->this$0:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;

    invoke-static {v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->access$100(Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    return-void
.end method
