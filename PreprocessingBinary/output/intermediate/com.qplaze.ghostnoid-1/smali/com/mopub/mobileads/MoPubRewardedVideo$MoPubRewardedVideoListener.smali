.class Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
.implements Lcom/mopub/mobileads/RewardedVastVideoInterstitial$CustomEventRewardedVideoInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoPubRewardedVideoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideo;Lcom/mopub/mobileads/MoPubRewardedVideo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideo;)V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked()V
    .locals 2

    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialDismissed()V
    .locals 2

    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideo$1;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_0
    return-void

    :pswitch_0
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onInterstitialFinished()V
    .locals 0

    return-void
.end method

.method public onInterstitialLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideo;->access$102(Lcom/mopub/mobileads/MoPubRewardedVideo;Z)Z

    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialShown()V
    .locals 2

    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onLeaveApplication()V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 4

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideo;->access$200(Lcom/mopub/mobileads/MoPubRewardedVideo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "No rewarded video was loaded, so no reward is possible"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideo;->access$200(Lcom/mopub/mobileads/MoPubRewardedVideo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideo;->access$300(Lcom/mopub/mobileads/MoPubRewardedVideo;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    goto :goto_0
.end method
