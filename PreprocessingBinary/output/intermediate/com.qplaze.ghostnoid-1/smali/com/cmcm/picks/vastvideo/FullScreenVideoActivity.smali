.class public Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;
.super Landroid/app/Activity;
.source "FullScreenVideoActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;,
        Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;,
        Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;
    }
.end annotation


# static fields
.field private static e:Lcom/cmcm/picks/vastvideo/a;


# instance fields
.field a:Z

.field private b:Lcom/cmcm/picks/vastvideo/c;

.field private c:Lcom/cmcm/picks/vastvideo/VastTextureView;

.field private d:Landroid/widget/ProgressBar;

.field private f:Lcom/cmcm/picks/vastvideo/VastModel;

.field private g:Z

.field private h:Z

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:I

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/graphics/SurfaceTexture;

.field private o:Landroid/telephony/TelephonyManager;

.field private p:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;

.field private q:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;

.field private r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->g:Z

    .line 32
    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->h:Z

    .line 43
    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->s:Z

    .line 357
    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->k:I

    return p1
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;)Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    return-object p1
.end method

.method static synthetic a()Lcom/cmcm/picks/vastvideo/a;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    return-object v0
.end method

.method private a(FZ)V
    .locals 4

    .prologue
    .line 298
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a:Z

    .line 300
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->m:Landroid/widget/ImageView;

    const-string v1, "vast_volume_off"

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    .line 306
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    iget-boolean v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a:Z

    iget v2, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->k:I

    iget v3, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/cmcm/picks/vastvideo/a;->a(ZZII)V

    .line 307
    invoke-static {p0}, Lcom/cmcm/picks/vastvideo/f;->b(Landroid/content/Context;)F

    move-result v0

    .line 308
    div-float v0, p1, v0

    .line 309
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v1, v0, v0}, Lcom/cmcm/picks/vastvideo/c;->setVolume(FF)V

    .line 310
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a:Z

    .line 303
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->m:Landroid/widget/ImageView;

    const-string v1, "vast_volume_on"

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b(I)F

    move-result v0

    .line 280
    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 281
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->k:I

    invoke-virtual {v0, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->e(II)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const v1, 0x3f266666    # 0.65f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 283
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->k:I

    invoke-virtual {v0, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->f(II)V

    goto :goto_0

    .line 284
    :cond_2
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const v1, 0x3f47ae14    # 0.78f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 285
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->k:I

    invoke-virtual {v0, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->g(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;FZ)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(FZ)V

    return-void
.end method

.method public static a(Lcom/cmcm/picks/vastvideo/a;)V
    .locals 0

    .prologue
    .line 46
    sput-object p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    .line 47
    return-void
.end method

.method private b(I)F
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 290
    int-to-float v0, p1

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    .line 291
    iget v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->k:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    .line 292
    div-float/2addr v0, v1

    .line 293
    return v0
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->k:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->i:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/cmcm/picks/vastvideo/c;

    invoke-direct {v0}, Lcom/cmcm/picks/vastvideo/c;-><init>()V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    .line 100
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setAudioStreamType(I)V

    .line 101
    const-string v0, "video_full_screen"

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/vastvideo/VastTextureView;

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->c:Lcom/cmcm/picks/vastvideo/VastTextureView;

    .line 102
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->c:Lcom/cmcm/picks/vastvideo/VastTextureView;

    invoke-virtual {v0, p0}, Lcom/cmcm/picks/vastvideo/VastTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 103
    const-string v0, "video_full_screen_progress"

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->d:Landroid/widget/ProgressBar;

    .line 104
    const-string v0, "vast_full_img_stranch"

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->l:Landroid/widget/ImageView;

    .line 105
    const-string v0, "vast_full_img_volume"

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->m:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->c:Lcom/cmcm/picks/vastvideo/VastTextureView;

    invoke-virtual {v0, p0}, Lcom/cmcm/picks/vastvideo/VastTextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method static synthetic c(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->h:Z

    .line 135
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->n:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->g:Z

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->reset()V

    .line 141
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->n:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->a(Landroid/graphics/SurfaceTexture;)V

    .line 142
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->f:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/VastModel;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setDataSource(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->prepare()V

    .line 144
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Lcom/cmcm/picks/vastvideo/c;->setWakeMode(Landroid/content/Context;I)V

    .line 145
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    new-instance v1, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;-><init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 156
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    new-instance v1, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$2;-><init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :cond_2
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->l()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    .line 205
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->a(I)V

    .line 206
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->s:Z

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->g(Z)V

    .line 212
    :goto_0
    iput-boolean v3, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->s:Z

    .line 213
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->pause()V

    .line 215
    :cond_0
    return-void

    .line 209
    :cond_1
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    iget v2, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->a(II)V

    .line 210
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v3}, Lcom/cmcm/picks/vastvideo/a;->g(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(FZ)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {p0}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;)F

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(FZ)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->s:Z

    .line 398
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 399
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 220
    const-string v1, "vast_full_img_stranch"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->finish()V

    .line 222
    iput-boolean v4, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->s:Z

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const-string v1, "vast_full_img_volume"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 224
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-static {p0}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;)F

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(FZ)V

    .line 229
    :goto_1
    iput-boolean v4, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->s:Z

    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, v4}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(FZ)V

    goto :goto_1

    .line 230
    :cond_3
    const-string v1, "video_full_screen"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 231
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, p0}, Lcom/cmcm/picks/vastvideo/a;->a(Landroid/content/Context;)V

    .line 232
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    iget v2, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->h(II)V

    .line 233
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "cm_activity_full_screen_video"

    const-string v1, "layout"

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->setContentView(I)V

    .line 76
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->finish()V

    .line 95
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->a()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->f:Lcom/cmcm/picks/vastvideo/VastModel;

    .line 81
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->f:Lcom/cmcm/picks/vastvideo/VastModel;

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->finish()V

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b()V

    .line 86
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e()V

    .line 87
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->o:Landroid/telephony/TelephonyManager;

    .line 88
    new-instance v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;

    invoke-direct {v0, p0, v3}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;-><init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->p:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;

    .line 89
    new-instance v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;

    invoke-direct {v0, p0, v3}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;-><init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->q:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;

    .line 90
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->q:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->a()V

    .line 91
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    invoke-direct {v0, p0, v3}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;-><init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->release()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->b(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->q:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->q:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->b()V

    .line 250
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 189
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->b(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->o:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->p:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 193
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->i:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v2}, Lcom/cmcm/picks/vastvideo/a;->c(Z)V

    .line 196
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->d()V

    .line 199
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;-><init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->r:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;)V

    .line 129
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->o:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->p:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$b;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 130
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->c()V

    .line 131
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 116
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->finish()V

    .line 119
    :cond_0
    sget-object v0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e:Lcom/cmcm/picks/vastvideo/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->c(Z)V

    .line 120
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_0

    .line 255
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->n:Landroid/graphics/SurfaceTexture;

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->g:Z

    .line 257
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->h:Z

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->c()V

    .line 261
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 266
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 276
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    .line 176
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->d:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 177
    iget v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(I)V

    .line 178
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :cond_0
    iget v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->j:I

    .line 183
    :cond_1
    return-void
.end method
