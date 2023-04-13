.class public Lcom/appodeal/ads/VideoPlayerActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/VideoPlayerActivity$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/VideoView;

.field private c:Lcom/appodeal/ads/VideoPlayerActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appodeal/ads/VideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.appodeal.ads.fileUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.appodeal.ads.seekTo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/VideoPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/VideoPlayerActivity$2;-><init>(Lcom/appodeal/ads/VideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    invoke-interface {v2, v0, v1}, Lcom/appodeal/ads/VideoPlayerActivity$a;->a(IZ)V

    :cond_0
    invoke-direct {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->a()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->b()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/appodeal/ads/VideoPlayerActivity$a;->a(IZ)V

    :cond_0
    invoke-direct {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.appodeal.ads.fileUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.appodeal.ads.seekTo"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->a:I

    const-string v0, "VideoPlayerActivity started, position: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/appodeal/ads/VideoPlayerActivity;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/u;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    iput-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->c:Lcom/appodeal/ads/VideoPlayerActivity$a;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/VideoView;

    invoke-direct {v2, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v2, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v2, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xa

    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v2, 0x1080038

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v2, "#6b000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v2, Lcom/appodeal/ads/VideoPlayerActivity$1;

    invoke-direct {v2, p0}, Lcom/appodeal/ads/VideoPlayerActivity$1;-><init>(Lcom/appodeal/ads/VideoPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/VideoPlayerActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/VideoPlayerActivity;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    iget v1, p0, Lcom/appodeal/ads/VideoPlayerActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/appodeal/ads/VideoPlayerActivity;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method
