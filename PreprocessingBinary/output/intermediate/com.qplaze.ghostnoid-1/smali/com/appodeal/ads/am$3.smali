.class final Lcom/appodeal/ads/am$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/am;->b(ILcom/appodeal/ads/ap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/appodeal/ads/ak;->d:Lcom/appodeal/ads/RewardedVideoCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/ak;->d:Lcom/appodeal/ads/RewardedVideoCallbacks;

    invoke-static {}, Lcom/appodeal/ads/ak;->b()I

    move-result v1

    invoke-static {}, Lcom/appodeal/ads/ak;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/appodeal/ads/RewardedVideoCallbacks;->onRewardedVideoFinished(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
