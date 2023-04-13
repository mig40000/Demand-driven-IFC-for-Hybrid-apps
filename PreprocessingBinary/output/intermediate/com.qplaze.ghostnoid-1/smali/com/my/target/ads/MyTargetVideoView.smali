.class public Lcom/my/target/ads/MyTargetVideoView;
.super Landroid/widget/RelativeLayout;
.source "MyTargetVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ads/MyTargetVideoView$BannerInfo;,
        Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;
    }
.end annotation


# static fields
.field public static final COMPLETE_STATUS_ERROR:Ljava/lang/String; = "error"

.field public static final COMPLETE_STATUS_NO_BANNERS:Ljava/lang/String; = "no_banners"

.field public static final COMPLETE_STATUS_OK:Ljava/lang/String; = "ok"

.field public static final COMPLETE_STATUS_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final DEFAULT_VIDEO_QUALITY:I = 0x168


# instance fields
.field private ad:Lcom/my/target/core/facades/d;

.field private adListener:Lcom/my/target/core/facades/d$a;

.field private engine:Lcom/my/target/core/engines/f;

.field private fullscreen:Z

.field private isInitialized:Z

.field private listener:Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

.field private videoQuality:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0x168

    iput v0, p0, Lcom/my/target/ads/MyTargetVideoView;->videoQuality:I

    .line 45
    new-instance v0, Lcom/my/target/ads/MyTargetVideoView$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/MyTargetVideoView$1;-><init>(Lcom/my/target/ads/MyTargetVideoView;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->adListener:Lcom/my/target/core/facades/d$a;

    .line 110
    const-string v0, "MyTargetVideoView created. Version: 4.5.10"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v0, 0x168

    iput v0, p0, Lcom/my/target/ads/MyTargetVideoView;->videoQuality:I

    .line 45
    new-instance v0, Lcom/my/target/ads/MyTargetVideoView$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/MyTargetVideoView$1;-><init>(Lcom/my/target/ads/MyTargetVideoView;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->adListener:Lcom/my/target/core/facades/d$a;

    .line 117
    const-string v0, "MyTargetVideoView created. Version: 4.5.10"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/16 v0, 0x168

    iput v0, p0, Lcom/my/target/ads/MyTargetVideoView;->videoQuality:I

    .line 45
    new-instance v0, Lcom/my/target/ads/MyTargetVideoView$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/MyTargetVideoView$1;-><init>(Lcom/my/target/ads/MyTargetVideoView;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->adListener:Lcom/my/target/core/facades/d$a;

    .line 123
    const-string v0, "MyTargetVideoView created. Version: 4.5.10"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    const/16 v0, 0x168

    iput v0, p0, Lcom/my/target/ads/MyTargetVideoView;->videoQuality:I

    .line 45
    new-instance v0, Lcom/my/target/ads/MyTargetVideoView$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/MyTargetVideoView$1;-><init>(Lcom/my/target/ads/MyTargetVideoView;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->adListener:Lcom/my/target/core/facades/d$a;

    .line 130
    const-string v0, "MyTargetVideoView created. Version: 4.5.10"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/ads/MyTargetVideoView;)Lcom/my/target/core/facades/d;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->ad:Lcom/my/target/core/facades/d;

    return-object v0
.end method

.method static synthetic access$100(Lcom/my/target/ads/MyTargetVideoView;)Lcom/my/target/core/engines/f;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    return-object v0
.end method

.method static synthetic access$102(Lcom/my/target/ads/MyTargetVideoView;Lcom/my/target/core/engines/f;)Lcom/my/target/core/engines/f;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    return-object p1
.end method

.method static synthetic access$200(Lcom/my/target/ads/MyTargetVideoView;)Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->listener:Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    return-object v0
.end method

.method private checkInit()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/my/target/ads/MyTargetVideoView;->isInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    .line 200
    :cond_0
    const-string v0, "AdView not initialized"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private start(Lcom/my/target/core/enums/b;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    invoke-virtual {v0, p1}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/enums/b;)V

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method public closedByUser()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    invoke-virtual {v0}, Lcom/my/target/core/engines/f;->i()V

    .line 210
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-boolean v0, p0, Lcom/my/target/ads/MyTargetVideoView;->isInitialized:Z

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    invoke-virtual {v0}, Lcom/my/target/core/engines/f;->f()V

    .line 188
    iput-object v1, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/ads/MyTargetVideoView;->isInitialized:Z

    .line 191
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->ad:Lcom/my/target/core/facades/d;

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/facades/d$a;)V

    .line 192
    iput-object v1, p0, Lcom/my/target/ads/MyTargetVideoView;->ad:Lcom/my/target/core/facades/d;

    .line 194
    :cond_1
    iput-object v1, p0, Lcom/my/target/ads/MyTargetVideoView;->listener:Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    .line 195
    return-void
.end method

.method public fullscreen(Z)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    invoke-virtual {v0, p1}, Lcom/my/target/core/engines/f;->a(Z)V

    .line 218
    :cond_0
    return-void
.end method

.method public getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->listener:Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    return-object v0
.end method

.method public getTrackingLocationEnabled()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/my/target/ads/MyTargetVideoView;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->ad:Lcom/my/target/core/facades/d;

    invoke-virtual {v0}, Lcom/my/target/core/facades/d;->a()Z

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/my/target/ads/MyTargetVideoView;->videoQuality:I

    return v0
.end method

.method public handleClick()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    invoke-virtual {v0}, Lcom/my/target/core/engines/f;->h()V

    .line 248
    :cond_0
    return-void
.end method

.method public init(I)V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/my/target/ads/MyTargetVideoView;->init(ILcom/my/target/ads/CustomParams;)V

    .line 140
    return-void
.end method

.method public init(ILcom/my/target/ads/CustomParams;)V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/my/target/ads/MyTargetVideoView;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/my/target/core/facades/d;

    invoke-direct {v0, p1, p2}, Lcom/my/target/core/facades/d;-><init>(ILcom/my/target/ads/CustomParams;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->ad:Lcom/my/target/core/facades/d;

    .line 148
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->ad:Lcom/my/target/core/facades/d;

    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/d;->a(Landroid/content/Context;)V

    .line 149
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->ad:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/ads/MyTargetVideoView;->adListener:Lcom/my/target/core/facades/d$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/facades/d$a;)V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/ads/MyTargetVideoView;->isInitialized:Z

    .line 151
    const-string v0, "AdView initialized"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/my/target/ads/MyTargetVideoView;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->ad:Lcom/my/target/core/facades/d;

    invoke-virtual {v0}, Lcom/my/target/core/facades/d;->load()V

    .line 158
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    invoke-virtual {v0}, Lcom/my/target/core/engines/f;->a()V

    .line 174
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    invoke-virtual {v0}, Lcom/my/target/core/engines/f;->b()V

    .line 179
    :cond_0
    return-void
.end method

.method public setListener(Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/my/target/ads/MyTargetVideoView;->listener:Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    .line 90
    return-void
.end method

.method public setTrackingLocationEnabled(Z)V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/my/target/ads/MyTargetVideoView;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->ad:Lcom/my/target/core/facades/d;

    invoke-virtual {v0, p1}, Lcom/my/target/core/facades/d;->a(Z)V

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "Unable to set tracking location on MyTargetVideoView, must call init() first"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoQuality(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/my/target/ads/MyTargetVideoView;->videoQuality:I

    .line 100
    return-void
.end method

.method public skipBanner()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    invoke-virtual {v0}, Lcom/my/target/core/engines/f;->g()V

    .line 164
    :cond_0
    return-void
.end method

.method public startMidroll()V
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/my/target/core/enums/b;->d:Lcom/my/target/core/enums/b;

    invoke-direct {p0, v0}, Lcom/my/target/ads/MyTargetVideoView;->start(Lcom/my/target/core/enums/b;)V

    .line 258
    return-void
.end method

.method public startPauseroll()V
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/my/target/core/enums/b;->c:Lcom/my/target/core/enums/b;

    invoke-direct {p0, v0}, Lcom/my/target/ads/MyTargetVideoView;->start(Lcom/my/target/core/enums/b;)V

    .line 263
    return-void
.end method

.method public startPostroll()V
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/my/target/core/enums/b;->b:Lcom/my/target/core/enums/b;

    invoke-direct {p0, v0}, Lcom/my/target/ads/MyTargetVideoView;->start(Lcom/my/target/core/enums/b;)V

    .line 268
    return-void
.end method

.method public startPreroll()V
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/my/target/core/enums/b;->a:Lcom/my/target/core/enums/b;

    invoke-direct {p0, v0}, Lcom/my/target/ads/MyTargetVideoView;->start(Lcom/my/target/core/enums/b;)V

    .line 253
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView;->engine:Lcom/my/target/core/engines/f;

    invoke-virtual {v0}, Lcom/my/target/core/engines/f;->c()V

    .line 169
    :cond_0
    return-void
.end method
