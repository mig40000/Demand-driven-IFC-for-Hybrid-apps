.class public Lcom/unity3d/ads2/video/VideoPlayerView;
.super Landroid/widget/VideoView;
.source "VideoPlayerView.java"


# instance fields
.field private _infoListenerEnabled:Z

.field private _mediaPlayer:Landroid/media/MediaPlayer;

.field private _progressEventInterval:I

.field private _videoTimer:Ljava/util/Timer;

.field private _videoUrl:Ljava/lang/String;

.field private _volume:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 17
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_progressEventInterval:I

    .line 18
    iput-object v1, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 19
    iput-object v1, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_volume:Ljava/lang/Float;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_infoListenerEnabled:Z

    .line 24
    return-void
.end method

.method static synthetic access$002(Lcom/unity3d/ads2/video/VideoPlayerView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/unity3d/ads2/video/VideoPlayerView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method private startVideoProgressTimer()V
    .locals 6

    .prologue
    .line 27
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    .line 28
    iget-object v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    new-instance v1, Lcom/unity3d/ads2/video/VideoPlayerView$1;

    invoke-direct {v1, p0}, Lcom/unity3d/ads2/video/VideoPlayerView$1;-><init>(Lcom/unity3d/ads2/video/VideoPlayerView;)V

    iget v2, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_progressEventInterval:I

    int-to-long v2, v2

    iget v4, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_progressEventInterval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 43
    return-void
.end method


# virtual methods
.method public getProgressEventInterval()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_progressEventInterval:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_volume:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 138
    :try_start_0
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {p0}, Lcom/unity3d/ads2/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 147
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads2/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads2/video/VideoPlayerEvent;->PAUSE:Lcom/unity3d/ads2/video/VideoPlayerEvent;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 148
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads2/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads2/video/VideoPlayerEvent;->PAUSE_ERROR:Lcom/unity3d/ads2/video/VideoPlayerEvent;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 142
    const-string v1, "Error pausing video"

    invoke-static {v1, v0}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public play()V
    .locals 6

    .prologue
    .line 98
    invoke-static {}, Lcom/unity3d/ads2/log/DeviceLog;->entered()V

    .line 100
    new-instance v0, Lcom/unity3d/ads2/video/VideoPlayerView$4;

    invoke-direct {v0, p0}, Lcom/unity3d/ads2/video/VideoPlayerView$4;-><init>(Lcom/unity3d/ads2/video/VideoPlayerView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/video/VideoPlayerView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/unity3d/ads2/video/VideoPlayerView;->start()V

    .line 113
    invoke-virtual {p0}, Lcom/unity3d/ads2/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 114
    invoke-direct {p0}, Lcom/unity3d/ads2/video/VideoPlayerView;->startVideoProgressTimer()V

    .line 116
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads2/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads2/video/VideoPlayerEvent;->PLAY:Lcom/unity3d/ads2/video/VideoPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/Float;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-static {}, Lcom/unity3d/ads2/log/DeviceLog;->entered()V

    .line 56
    iput-object p1, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    .line 58
    new-instance v2, Lcom/unity3d/ads2/video/VideoPlayerView$2;

    invoke-direct {v2, p0, p2}, Lcom/unity3d/ads2/video/VideoPlayerView$2;-><init>(Lcom/unity3d/ads2/video/VideoPlayerView;Ljava/lang/Float;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads2/video/VideoPlayerView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 70
    new-instance v2, Lcom/unity3d/ads2/video/VideoPlayerView$3;

    invoke-direct {v2, p0}, Lcom/unity3d/ads2/video/VideoPlayerView$3;-><init>(Lcom/unity3d/ads2/video/VideoPlayerView;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads2/video/VideoPlayerView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 83
    iget-boolean v2, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_infoListenerEnabled:Z

    invoke-virtual {p0, v2}, Lcom/unity3d/ads2/video/VideoPlayerView;->setInfoListenerEnabled(Z)V

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/unity3d/ads2/video/VideoPlayerView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v2

    .line 89
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads2/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/ads2/video/VideoPlayerEvent;->PREPARE_ERROR:Lcom/unity3d/ads2/video/VideoPlayerEvent;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v6, v0, v1

    invoke-virtual {v3, v4, v5, v0}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error preparing video: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 153
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/VideoView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads2/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads2/video/VideoPlayerEvent;->SEEKTO:Lcom/unity3d/ads2/video/VideoPlayerEvent;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 162
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads2/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads2/video/VideoPlayerEvent;->SEEKTO_ERROR:Lcom/unity3d/ads2/video/VideoPlayerEvent;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 157
    const-string v1, "Error seeking video"

    invoke-static {v1, v0}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setInfoListenerEnabled(Z)V
    .locals 2

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_infoListenerEnabled:Z

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 122
    iget-boolean v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_infoListenerEnabled:Z

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Lcom/unity3d/ads2/video/VideoPlayerView$5;

    invoke-direct {v0, p0}, Lcom/unity3d/ads2/video/VideoPlayerView$5;-><init>(Lcom/unity3d/ads2/video/VideoPlayerView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/video/VideoPlayerView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads2/video/VideoPlayerView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    goto :goto_0
.end method

.method public setProgressEventInterval(I)V
    .locals 1

    .prologue
    .line 186
    iput p1, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_progressEventInterval:I

    .line 187
    iget-object v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/unity3d/ads2/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 189
    invoke-direct {p0}, Lcom/unity3d/ads2/video/VideoPlayerView;->startVideoProgressTimer()V

    .line 191
    :cond_0
    return-void
.end method

.method public setVolume(Ljava/lang/Float;)V
    .locals 3

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 177
    iput-object p1, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_volume:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "MediaPlayer generic error"

    invoke-static {v1, v0}, Lcom/unity3d/ads2/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/unity3d/ads2/video/VideoPlayerView;->stopPlayback()V

    .line 166
    invoke-virtual {p0}, Lcom/unity3d/ads2/video/VideoPlayerView;->stopVideoProgressTimer()V

    .line 167
    invoke-static {}, Lcom/unity3d/ads2/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads2/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads2/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads2/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads2/video/VideoPlayerEvent;->STOP:Lcom/unity3d/ads2/video/VideoPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads2/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public stopVideoProgressTimer()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 48
    iget-object v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads2/video/VideoPlayerView;->_videoTimer:Ljava/util/Timer;

    .line 51
    :cond_0
    return-void
.end method
