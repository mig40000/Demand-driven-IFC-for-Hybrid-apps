.class Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$2;
.super Ljava/lang/Object;
.source "PicksInterstatialAdapter.java"

# interfaces
.implements Lcom/cmcm/adsdk/BitmapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;->issueNextLoadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;

.field final synthetic val$ad:Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$2;->this$0:Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter;

    iput-object p2, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$2;->val$ad:Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interstitial ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$2;->val$ad:Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;

    invoke-virtual {v2}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " icon load fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onSuccessed(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interstitial ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$2;->val$ad:Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;

    invoke-virtual {v2}, Lcom/cmcm/adsdk/adapter/PicksInterstatialAdapter$PicksInterstatialAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " icon load success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method
