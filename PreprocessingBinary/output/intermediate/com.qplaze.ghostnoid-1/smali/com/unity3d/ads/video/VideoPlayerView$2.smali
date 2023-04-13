.class Lcom/unity3d/ads/video/VideoPlayerView$2;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/video/VideoPlayerView;->prepare(Ljava/lang/String;Ljava/lang/Float;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/video/VideoPlayerView;

.field final synthetic val$initialVolume:Ljava/lang/Float;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/video/VideoPlayerView;Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/unity3d/ads/video/VideoPlayerView$2;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    iput-object p2, p0, Lcom/unity3d/ads/video/VideoPlayerView$2;->val$initialVolume:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView$2;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-static {v0, p1}, Lcom/unity3d/ads/video/VideoPlayerView;->access$002(Lcom/unity3d/ads/video/VideoPlayerView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView$2;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    iget-object v1, p0, Lcom/unity3d/ads/video/VideoPlayerView$2;->val$initialVolume:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/video/VideoPlayerView;->setVolume(Ljava/lang/Float;)V

    .line 66
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->PREPARED:Lcom/unity3d/ads/video/VideoPlayerEvent;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/unity3d/ads/video/VideoPlayerView$2;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-static {v5}, Lcom/unity3d/ads/video/VideoPlayerView;->access$100(Lcom/unity3d/ads/video/VideoPlayerView;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
