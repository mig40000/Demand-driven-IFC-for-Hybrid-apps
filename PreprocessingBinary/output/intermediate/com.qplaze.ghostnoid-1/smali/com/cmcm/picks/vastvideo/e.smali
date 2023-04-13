.class public Lcom/cmcm/picks/vastvideo/e;
.super Landroid/widget/RelativeLayout;
.source "VastSmallView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/cmcm/picks/vastvideo/a;

.field private b:Lcom/cmcm/picks/vastvideo/c;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Z

.field private f:Landroid/graphics/SurfaceTexture;

.field private g:Lcom/cmcm/picks/vastvideo/VastModel;

.field private h:I

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Lcom/cmcm/picks/vastvideo/VastTextureView;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/LinearLayout;

.field private n:Lcom/cmcm/picks/vastvideo/VastView;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/e;->d:Z

    .line 30
    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/e;->e:Z

    .line 44
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/cmcm/picks/vastvideo/e;->l:Landroid/view/ViewGroup;

    .line 46
    iput-object p3, p0, Lcom/cmcm/picks/vastvideo/e;->n:Lcom/cmcm/picks/vastvideo/VastView;

    .line 47
    iput-object p4, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    .line 48
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/e;->c()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/e;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/cmcm/picks/vastvideo/e;->i:I

    return p1
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/e;)Lcom/cmcm/picks/vastvideo/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/e;->b(I)F

    move-result v0

    .line 144
    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const v1, 0x3e8f5c29    # 0.28f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/e;->i:I

    invoke-virtual {v0, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->e(II)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const v1, 0x3f07ae14    # 0.53f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 147
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/e;->i:I

    invoke-virtual {v0, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->f(II)V

    goto :goto_0

    .line 148
    :cond_2
    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const v1, 0x3f47ae14    # 0.78f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/e;->i:I

    invoke-virtual {v0, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->g(II)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 197
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->e(Z)V

    .line 199
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/e;->h:I

    iget v2, p0, Lcom/cmcm/picks/vastvideo/e;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->a(II)V

    .line 202
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v3}, Lcom/cmcm/picks/vastvideo/a;->d(Z)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->pause()V

    .line 208
    :goto_0
    if-eqz p1, :cond_4

    .line 209
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/e;->h:I

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->a(I)V

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->l:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 216
    :cond_1
    if-nez p1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/e;->i:I

    invoke-virtual {v0, v3, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->a(ZIZ)V

    .line 220
    :cond_2
    return-void

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->stop()V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/c;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->a(I)V

    goto :goto_1
.end method

.method private b(I)F
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 154
    int-to-float v0, p1

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    .line 155
    iget v1, p0, Lcom/cmcm/picks/vastvideo/e;->i:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    .line 156
    div-float/2addr v0, v1

    .line 157
    return v0
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/e;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/cmcm/picks/vastvideo/e;->h:I

    return p1
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/e;)Lcom/cmcm/picks/vastvideo/c;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcm/picks/vastvideo/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 60
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->j:Landroid/os/Handler;

    .line 62
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    const-string v2, "cm_vast_small_view"

    const-string v3, "layout"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/cmcm/picks/vastvideo/e;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    new-instance v0, Lcom/cmcm/picks/vastvideo/c;

    invoke-direct {v0}, Lcom/cmcm/picks/vastvideo/c;-><init>()V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    .line 64
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    const-string v1, "vast_small_ad"

    const-string v2, "id"

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/vastvideo/VastTextureView;

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->k:Lcom/cmcm/picks/vastvideo/VastTextureView;

    .line 65
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    const-string v1, "vast_small_view_close"

    const-string v2, "id"

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->m:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->k:Lcom/cmcm/picks/vastvideo/VastTextureView;

    invoke-virtual {v0, p0}, Lcom/cmcm/picks/vastvideo/VastTextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->k:Lcom/cmcm/picks/vastvideo/VastTextureView;

    invoke-virtual {v0, p0}, Lcom/cmcm/picks/vastvideo/VastTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 71
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->a()Lcom/cmcm/picks/vastvideo/VastModel;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->g:Lcom/cmcm/picks/vastvideo/VastModel;

    .line 72
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v6}, Lcom/cmcm/picks/vastvideo/a;->d(Z)V

    .line 73
    invoke-virtual {p0, v6}, Lcom/cmcm/picks/vastvideo/e;->setSmallViewClicked(Z)V

    .line 74
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0, v5, v5}, Lcom/cmcm/picks/vastvideo/c;->setVolume(FF)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/f;->b(Landroid/content/Context;)F

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;)F

    move-result v1

    div-float v0, v1, v0

    .line 79
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v1, v0, v0}, Lcom/cmcm/picks/vastvideo/c;->setVolume(FF)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/cmcm/picks/vastvideo/e;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/cmcm/picks/vastvideo/e;->i:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/cmcm/picks/vastvideo/e;->a(IZ)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/e;->e:Z

    .line 90
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->f:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 93
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/e;->d:Z

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->reset()V

    .line 96
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->a(Landroid/graphics/SurfaceTexture;)V

    .line 97
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e;->g:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/VastModel;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setDataSource(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->prepare()V

    .line 99
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/c;->setWakeMode(Landroid/content/Context;I)V

    .line 100
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    new-instance v1, Lcom/cmcm/picks/vastvideo/e$1;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/vastvideo/e$1;-><init>(Lcom/cmcm/picks/vastvideo/e;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 110
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    new-instance v1, Lcom/cmcm/picks/vastvideo/e$2;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/vastvideo/e$2;-><init>(Lcom/cmcm/picks/vastvideo/e;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->l()V

    goto :goto_0
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 184
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/cmcm/picks/vastvideo/e;->a(Z)V

    .line 185
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/e;->setVisibility(I)V

    goto :goto_0

    .line 188
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/e;->setVisibility(I)V

    .line 189
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/e;->d()V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/e;->o:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->release()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    .line 165
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 170
    invoke-virtual {p0, v5}, Lcom/cmcm/picks/vastvideo/e;->setSmallViewClicked(Z)V

    .line 171
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    const-string v2, "vast_small_view_close"

    const-string v3, "id"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 172
    invoke-virtual {p0, v5, v5}, Lcom/cmcm/picks/vastvideo/e;->a(IZ)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    const-string v2, "vast_small_ad"

    const-string v3, "id"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/e;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->a(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/e;->h:I

    iget v2, p0, Lcom/cmcm/picks/vastvideo/e;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->h(II)V

    .line 176
    invoke-virtual {p0, v5, v5}, Lcom/cmcm/picks/vastvideo/e;->a(IZ)V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_0

    .line 225
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/e;->f:Landroid/graphics/SurfaceTexture;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/e;->d:Z

    .line 227
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/e;->e:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/e;->d()V

    .line 229
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->d(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 235
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 243
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->b:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->a:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcm/picks/vastvideo/e;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v0, p0, Lcom/cmcm/picks/vastvideo/e;->h:I

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/e;->a(I)V

    .line 135
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->j:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/e;->j:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    :cond_2
    iget v0, p0, Lcom/cmcm/picks/vastvideo/e;->h:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/cmcm/picks/vastvideo/e;->h:I

    goto :goto_0
.end method

.method public setSmallViewClicked(Z)V
    .locals 0
    .param p1, "smallViewClicked"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/e;->o:Z

    .line 57
    return-void
.end method
