.class public Lcom/cmcm/picks/vastvideo/VastView;
.super Ljava/lang/Object;
.source "VastView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/picks/vastvideo/VastView$a;,
        Lcom/cmcm/picks/vastvideo/VastView$b;,
        Lcom/cmcm/picks/vastvideo/VastView$d;,
        Lcom/cmcm/picks/vastvideo/VastView$c;,
        Lcom/cmcm/picks/vastvideo/VastView$f;,
        Lcom/cmcm/picks/vastvideo/VastView$e;
    }
.end annotation


# static fields
.field public static final STATE_DEFAULT:I = 0x5

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PLAY:I = 0x1


# instance fields
.field a:Z

.field b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private volatile h:I

.field private i:I

.field private j:Landroid/content/Context;

.field private k:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

.field private l:Lcom/cmcm/picks/vastvideo/VastModel;

.field private m:Lcom/cmcm/picks/vastvideo/VastView$f;

.field public mCurrentState:I

.field private n:Landroid/view/View;

.field private o:Lcom/cmcm/picks/vastvideo/e;

.field private p:Landroid/graphics/SurfaceTexture;

.field private q:Lcom/cmcm/picks/vastvideo/c;

.field private r:Lcom/cmcm/picks/vastvideo/a;

.field private s:Landroid/telephony/TelephonyManager;

.field private t:Lcom/cmcm/picks/vastvideo/VastView$d;

.field private u:Lcom/cmcm/picks/vastvideo/VastView$b;

.field private v:Lcom/cmcm/picks/vastvideo/VastView$c;

.field private w:Lcom/cmcm/picks/vastvideo/VastView$a;

.field private x:Landroid/os/Handler;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cmcm/picks/vastvideo/VastModel;Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vastModel"    # Lcom/cmcm/picks/vastvideo/VastModel;
    .param p3, "vastVideoProgressListener"    # Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->mCurrentState:I

    .line 51
    iput-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    .line 52
    iput-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    .line 163
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->a:Z

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->z:Z

    .line 67
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/cmcm/picks/vastvideo/VastView;->l:Lcom/cmcm/picks/vastvideo/VastModel;

    .line 69
    iput-object p3, p0, Lcom/cmcm/picks/vastvideo/VastView;->k:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    .line 70
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastView;->a()V

    .line 71
    return-void
.end method

.method private a(II)F
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 89
    int-to-float v0, p1

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    .line 90
    int-to-float v1, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    .line 91
    div-float/2addr v0, v1

    .line 92
    return v0
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    return v0
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastView;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    return p1
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastView;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView;->p:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$a;)Lcom/cmcm/picks/vastvideo/VastView$a;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$b;)Lcom/cmcm/picks/vastvideo/VastView$b;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->l:Lcom/cmcm/picks/vastvideo/VastModel;

    if-nez v0, :cond_2

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->k:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->k:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    const-string v1, "params is null"

    invoke-interface {v0, v1}, Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;->onVastVideoShowFail(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->b(Z)V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    if-nez v0, :cond_3

    .line 106
    new-instance v0, Lcom/cmcm/picks/vastvideo/a;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->l:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-direct {v0, v1}, Lcom/cmcm/picks/vastvideo/a;-><init>(Lcom/cmcm/picks/vastvideo/VastModel;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    .line 107
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->b(Z)V

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->k:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->k:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->a(Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;)V

    .line 112
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->x:Landroid/os/Handler;

    .line 113
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastView;->b()V

    .line 114
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->s:Landroid/telephony/TelephonyManager;

    .line 115
    new-instance v0, Lcom/cmcm/picks/vastvideo/VastView$c;

    invoke-direct {v0, p0, v2}, Lcom/cmcm/picks/vastvideo/VastView$c;-><init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->v:Lcom/cmcm/picks/vastvideo/VastView$c;

    .line 116
    new-instance v0, Lcom/cmcm/picks/vastvideo/VastView$d;

    invoke-direct {v0, p0, v2}, Lcom/cmcm/picks/vastvideo/VastView$d;-><init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->t:Lcom/cmcm/picks/vastvideo/VastView$d;

    .line 117
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->t:Lcom/cmcm/picks/vastvideo/VastView$d;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastView$d;->a()V

    .line 118
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    if-nez v0, :cond_5

    .line 119
    new-instance v0, Lcom/cmcm/picks/vastvideo/VastView$b;

    invoke-direct {v0, p0, v2}, Lcom/cmcm/picks/vastvideo/VastView$b;-><init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView$b;->a(Lcom/cmcm/picks/vastvideo/VastView$b;)V

    .line 122
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    if-nez v0, :cond_6

    .line 123
    new-instance v0, Lcom/cmcm/picks/vastvideo/VastView$a;

    invoke-direct {v0, p0, v2}, Lcom/cmcm/picks/vastvideo/VastView$a;-><init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView$a;->a(Lcom/cmcm/picks/vastvideo/VastView$a;)V

    goto :goto_0
.end method

.method private a(FZ)V
    .locals 5

    .prologue
    .line 578
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->b:Z

    .line 580
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "vast_volume_off"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 589
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    .line 590
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget-boolean v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->b:Z

    iget v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    iget v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/cmcm/picks/vastvideo/a;->a(ZZII)V

    .line 591
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/f;->b(Landroid/content/Context;)F

    move-result v0

    .line 592
    div-float v0, p1, v0

    .line 593
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v1, v0, v0}, Lcom/cmcm/picks/vastvideo/c;->setVolume(FF)V

    .line 594
    return-void

    .line 584
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->b:Z

    .line 585
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "vast_volume_on"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    :cond_0
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    invoke-direct {p0, p1, v0}, Lcom/cmcm/picks/vastvideo/VastView;->a(II)F

    move-result v0

    .line 78
    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    invoke-virtual {v0, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->e(II)V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    .line 81
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    invoke-virtual {v0, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->f(II)V

    goto :goto_0

    .line 82
    :cond_3
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    const v1, 0x3f47ae14    # 0.78f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    invoke-virtual {v0, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->g(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastView;FZ)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/cmcm/picks/vastvideo/VastView;->a(FZ)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastView;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 148
    iput-boolean v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->c:Z

    .line 149
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    invoke-virtual {v0, v3, v1, p1}, Lcom/cmcm/picks/vastvideo/a;->a(ZIZ)V

    .line 150
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->stop()V

    .line 160
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->mCurrentState:I

    .line 161
    return-void
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/VastView;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    return p1
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$f;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    new-instance v0, Lcom/cmcm/picks/vastvideo/c;

    invoke-direct {v0}, Lcom/cmcm/picks/vastvideo/c;-><init>()V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    .line 142
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setAudioStreamType(I)V

    .line 143
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0, v2, v2}, Lcom/cmcm/picks/vastvideo/c;->setVolume(FF)V

    .line 144
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    .line 145
    return-void
.end method

.method private b(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-direct {p0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Z)V

    goto :goto_0

    .line 173
    :cond_2
    iput-boolean v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->e:Z

    .line 174
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->p:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->mCurrentState:I

    if-eq v0, v2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->reset()V

    .line 182
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->p:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->a(Landroid/graphics/SurfaceTexture;)V

    .line 183
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->l:Lcom/cmcm/picks/vastvideo/VastModel;

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/VastModel;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setDataSource(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->prepare()V

    .line 185
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/c;->setWakeMode(Landroid/content/Context;I)V

    .line 186
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    new-instance v1, Lcom/cmcm/picks/vastvideo/VastView$1;

    invoke-direct {v1, p0, p1}, Lcom/cmcm/picks/vastvideo/VastView$1;-><init>(Lcom/cmcm/picks/vastvideo/VastView;I)V

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 214
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    new-instance v1, Lcom/cmcm/picks/vastvideo/VastView$2;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/vastvideo/VastView$2;-><init>(Lcom/cmcm/picks/vastvideo/VastView;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->a:Z

    .line 221
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    new-instance v1, Lcom/cmcm/picks/vastvideo/VastView$3;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/vastvideo/VastView$3;-><init>(Lcom/cmcm/picks/vastvideo/VastView;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/c;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_3

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->l()V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 241
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->mCurrentState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->pause()V

    .line 245
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    .line 246
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->a(I)V

    .line 247
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 248
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    iget v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->a(II)V

    .line 250
    :cond_2
    iput v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->mCurrentState:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/VastView;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/cmcm/picks/vastvideo/VastView;->d:Z

    return p1
.end method

.method private c()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 271
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 274
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "cm_vast_ad_layout"

    const-string v3, "layout"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    .line 275
    new-instance v1, Lcom/cmcm/picks/vastvideo/VastView$e;

    invoke-direct {v1, p0, v5}, Lcom/cmcm/picks/vastvideo/VastView$e;-><init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V

    .line 276
    new-instance v0, Lcom/cmcm/picks/vastvideo/VastView$f;

    invoke-direct {v0, p0, v5}, Lcom/cmcm/picks/vastvideo/VastView$f;-><init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    .line 277
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v4, "vast_ad"

    const-string v5, "id"

    iget-object v6, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/vastvideo/VastTextureView;

    iput-object v0, v2, Lcom/cmcm/picks/vastvideo/VastView$f;->a:Lcom/cmcm/picks/vastvideo/VastTextureView;

    .line 278
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v4, "vast_progress"

    const-string v5, "id"

    iget-object v6, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/cmcm/picks/vastvideo/VastView$f;->b:Landroid/widget/ProgressBar;

    .line 279
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    iget-object v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v4, "vast_img_volume"

    const-string v5, "id"

    iget-object v6, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/cmcm/picks/vastvideo/VastView$f;->c:Landroid/widget/ImageView;

    .line 280
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->a:Lcom/cmcm/picks/vastvideo/VastTextureView;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/VastTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 282
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->a:Lcom/cmcm/picks/vastvideo/VastTextureView;

    invoke-virtual {v0, p0}, Lcom/cmcm/picks/vastvideo/VastTextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v3, "vast_rl"

    const-string v4, "id"

    iget-object v5, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/cmcm/picks/vastvideo/VastView$f;->e:Landroid/widget/RelativeLayout;

    .line 284
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v3, "vast_img_stranch"

    const-string v4, "id"

    iget-object v5, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cmcm/picks/vastvideo/VastView$f;->d:Landroid/widget/ImageView;

    .line 285
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v3, "cover_top"

    const-string v4, "id"

    iget-object v5, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/cmcm/picks/vastvideo/VastView$f;->i:Landroid/widget/RelativeLayout;

    .line 287
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v3, "vast_watch_again"

    const-string v4, "id"

    iget-object v5, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/cmcm/picks/vastvideo/VastView$f;->f:Landroid/widget/LinearLayout;

    .line 288
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v3, "vast_install"

    const-string v4, "id"

    iget-object v5, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/cmcm/picks/vastvideo/VastView$f;->g:Landroid/widget/LinearLayout;

    .line 290
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v3, "vast_detail"

    const-string v4, "id"

    iget-object v5, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cmcm/picks/vastvideo/VastView$f;->h:Landroid/widget/TextView;

    .line 292
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v3, "vast_detail"

    const-string v4, "id"

    iget-object v5, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cmcm/picks/vastvideo/VastView$f;->j:Landroid/widget/TextView;

    .line 294
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/cmcm/picks/vastvideo/VastView;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastView;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/cmcm/picks/vastvideo/VastView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/cmcm/picks/vastvideo/VastView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(FZ)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;)F

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(FZ)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 552
    iput-boolean v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->c:Z

    .line 553
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->a(ZIZ)V

    .line 554
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->m:Lcom/cmcm/picks/vastvideo/VastView$f;

    iget-object v0, v0, Lcom/cmcm/picks/vastvideo/VastView$f;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    iput v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    .line 560
    invoke-direct {p0, v3}, Lcom/cmcm/picks/vastvideo/VastView;->b(I)V

    .line 561
    return-void
.end method

.method static synthetic f(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastModel;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->l:Lcom/cmcm/picks/vastvideo/VastModel;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/c;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->a(I)V

    .line 566
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/VastView;->b(Z)V

    .line 567
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-class v2, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 570
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(Lcom/cmcm/picks/vastvideo/a;)V

    .line 571
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    iget v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->k(II)V

    .line 574
    return-void
.end method

.method static synthetic g(Lcom/cmcm/picks/vastvideo/VastView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    return-object v0
.end method

.method static synthetic i(Lcom/cmcm/picks/vastvideo/VastView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->e:Z

    return v0
.end method

.method static synthetic j(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/e;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    return-object v0
.end method

.method static synthetic k(Lcom/cmcm/picks/vastvideo/VastView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    return-object v0
.end method

.method static synthetic m(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 255
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastView;->c()V

    .line 259
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->b()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    .line 260
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-direct {p0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Z)V

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastView;->d()V

    .line 265
    iput-boolean v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->f:Z

    .line 266
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->n:Landroid/view/View;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 524
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "vast_img_volume"

    const-string v3, "id"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 525
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;)F

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/cmcm/picks/vastvideo/VastView;->a(FZ)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v5}, Lcom/cmcm/picks/vastvideo/VastView;->a(FZ)V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "vast_small_title"

    const-string v3, "id"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "vast_icon"

    const-string v3, "id"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "vast_install"

    const-string v3, "id"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "vast_cover_image"

    const-string v3, "id"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "vast_ad"

    const-string v3, "id"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 537
    :cond_3
    iput-boolean v5, p0, Lcom/cmcm/picks/vastvideo/VastView;->y:Z

    .line 538
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/a;->a(Landroid/content/Context;)V

    .line 539
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    iget v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->h(II)V

    goto :goto_0

    .line 540
    :cond_4
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "vast_img_stranch"

    const-string v3, "id"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 541
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastView;->f()V

    goto/16 :goto_0

    .line 544
    :cond_5
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    const-string v2, "vast_watch_again"

    const-string v3, "id"

    iget-object v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/cmcm/utils/Commons;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->y:Z

    .line 546
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v5}, Lcom/cmcm/picks/vastvideo/a;->a(Z)V

    .line 547
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastView;->e()V

    goto/16 :goto_0
.end method

.method public onDestory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 361
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->release()V

    .line 366
    iput-object v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    .line 369
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->s:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_1
    iput-object v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->v:Lcom/cmcm/picks/vastvideo/VastView$c;

    .line 373
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->t:Lcom/cmcm/picks/vastvideo/VastView$d;

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->t:Lcom/cmcm/picks/vastvideo/VastView$d;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/vastvideo/VastView$d;->a(Landroid/content/Context;)V

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView$b;->b(Lcom/cmcm/picks/vastvideo/VastView$b;)V

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView$a;->b(Lcom/cmcm/picks/vastvideo/VastView$a;)V

    .line 382
    :cond_4
    iput-object v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    .line 383
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    if-eqz v0, :cond_5

    .line 384
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/e;->b()V

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->i()V

    .line 387
    iput-object v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->l:Lcom/cmcm/picks/vastvideo/VastModel;

    .line 388
    iput-object v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 341
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 344
    :cond_0
    iput-boolean v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->f:Z

    .line 345
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView$b;->b(Lcom/cmcm/picks/vastvideo/VastView$b;)V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView$a;->b(Lcom/cmcm/picks/vastvideo/VastView$a;)V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->s:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->v:Lcom/cmcm/picks/vastvideo/VastView$c;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 352
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    invoke-virtual {v0, v3, v3}, Lcom/cmcm/picks/vastvideo/e;->a(IZ)V

    .line 354
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    iget v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/a;->a(II)V

    .line 355
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v3}, Lcom/cmcm/picks/vastvideo/a;->d(Z)V

    .line 357
    :cond_3
    invoke-direct {p0, v3}, Lcom/cmcm/picks/vastvideo/VastView;->b(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 305
    iput-boolean v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->f:Z

    .line 306
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->s:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->v:Lcom/cmcm/picks/vastvideo/VastView$c;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 307
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/cmcm/picks/vastvideo/VastView$b;

    invoke-direct {v0, p0, v5}, Lcom/cmcm/picks/vastvideo/VastView$b;-><init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->u:Lcom/cmcm/picks/vastvideo/VastView$b;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView$b;->a(Lcom/cmcm/picks/vastvideo/VastView$b;)V

    .line 311
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Lcom/cmcm/picks/vastvideo/VastView$a;

    invoke-direct {v0, p0, v5}, Lcom/cmcm/picks/vastvideo/VastView$a;-><init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->w:Lcom/cmcm/picks/vastvideo/VastView$a;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView$a;->a(Lcom/cmcm/picks/vastvideo/VastView$a;)V

    .line 315
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->t:Lcom/cmcm/picks/vastvideo/VastView$d;

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->t:Lcom/cmcm/picks/vastvideo/VastView$d;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/VastView$d;->a()V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->b()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    .line 319
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 338
    :cond_3
    :goto_0
    return-void

    .line 322
    :cond_4
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->z:Z

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 326
    invoke-direct {p0, v3}, Lcom/cmcm/picks/vastvideo/VastView;->a(Z)V

    goto :goto_0

    .line 329
    :cond_5
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    const/16 v1, 0xfa

    if-le v0, v1, :cond_6

    .line 330
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0, v4}, Lcom/cmcm/picks/vastvideo/VastView;->a(FZ)V

    .line 336
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v3}, Lcom/cmcm/picks/vastvideo/a;->f(Z)V

    .line 337
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/VastView;->b(I)V

    goto :goto_0

    .line 333
    :cond_7
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;)F

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/cmcm/picks/vastvideo/VastView;->a(FZ)V

    goto :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 475
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->q:Lcom/cmcm/picks/vastvideo/c;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/c;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    .line 477
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/VastView;->a(I)V

    .line 478
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->x:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->x:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
    :cond_0
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    .line 482
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->c:Z

    if-eqz v0, :cond_1

    .line 486
    :cond_1
    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "smallViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 419
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    invoke-direct {p0, v3}, Lcom/cmcm/picks/vastvideo/VastView;->a(Z)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->b()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    .line 430
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v3}, Lcom/cmcm/picks/vastvideo/a;->f(Z)V

    .line 431
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->z:Z

    if-eqz v0, :cond_8

    .line 432
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/e;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    invoke-virtual {v0, v3}, Lcom/cmcm/picks/vastvideo/e;->setSmallViewClicked(Z)V

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    if-eqz v0, :cond_4

    .line 436
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    invoke-virtual {v0, v4, v4}, Lcom/cmcm/picks/vastvideo/e;->a(IZ)V

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 440
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 441
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v3}, Lcom/cmcm/picks/vastvideo/a;->f(Z)V

    .line 448
    :goto_1
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->y:Z

    if-eqz v0, :cond_5

    .line 449
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v4}, Lcom/cmcm/picks/vastvideo/a;->f(Z)V

    .line 450
    iput-boolean v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->y:Z

    .line 452
    :cond_5
    iget v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->h:I

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/VastView;->b(I)V

    goto :goto_0

    .line 443
    :cond_6
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v4}, Lcom/cmcm/picks/vastvideo/a;->f(Z)V

    goto :goto_1

    .line 446
    :cond_7
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v3}, Lcom/cmcm/picks/vastvideo/a;->f(Z)V

    goto :goto_1

    .line 454
    :cond_8
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    :cond_9
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->h()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    .line 458
    new-instance v0, Lcom/cmcm/picks/vastvideo/e;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/cmcm/picks/vastvideo/e;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/a;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    .line 459
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/cmcm/picks/vastvideo/e;->a(IZ)V

    .line 461
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->o:Lcom/cmcm/picks/vastvideo/e;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 462
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0, v4}, Lcom/cmcm/picks/vastvideo/a;->e(Z)V

    .line 463
    iput v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->mCurrentState:I

    .line 465
    :cond_a
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 466
    invoke-direct {p0, v3}, Lcom/cmcm/picks/vastvideo/VastView;->b(Z)V

    goto/16 :goto_0

    .line 468
    :cond_b
    invoke-direct {p0, v4}, Lcom/cmcm/picks/vastvideo/VastView;->b(Z)V

    goto/16 :goto_0
.end method

.method public showIfCan(Landroid/widget/ListView;Lcom/cmcm/picks/vastvideo/IVastVideoBaseAdapter;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "lv"    # Landroid/widget/ListView;
    .param p2, "adapter"    # Lcom/cmcm/picks/vastvideo/IVastVideoBaseAdapter;
    .param p3, "smallViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 395
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 396
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 397
    :goto_0
    if-gt v0, v1, :cond_1

    .line 398
    invoke-interface {p2, v0}, Lcom/cmcm/picks/vastvideo/IVastVideoBaseAdapter;->isVastAdShow(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    iput-boolean v3, p0, Lcom/cmcm/picks/vastvideo/VastView;->z:Z

    .line 397
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    iput-boolean v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->z:Z

    goto :goto_1

    .line 404
    :cond_1
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->g:Z

    if-nez v0, :cond_2

    .line 405
    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->r:Lcom/cmcm/picks/vastvideo/a;

    iget v1, p0, Lcom/cmcm/picks/vastvideo/VastView;->i:I

    invoke-virtual {v0, v1, v3}, Lcom/cmcm/picks/vastvideo/a;->c(II)V

    .line 407
    iput-boolean v4, p0, Lcom/cmcm/picks/vastvideo/VastView;->g:Z

    .line 410
    :cond_2
    invoke-virtual {p0, p3}, Lcom/cmcm/picks/vastvideo/VastView;->show(Landroid/view/ViewGroup;)V

    .line 416
    :cond_3
    :goto_2
    return-void

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->k:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView;->k:Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;

    const-string v1, "showifcan params is null"

    invoke-interface {v0, v1}, Lcom/cmcm/picks/vastvideo/VastVideoProgressListener;->onVastVideoShowFail(Ljava/lang/String;)V

    goto :goto_2
.end method
