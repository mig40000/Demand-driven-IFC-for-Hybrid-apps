.class public final Lcom/my/target/core/controllers/a;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Lcom/my/target/core/ui/views/VideoTextureView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/controllers/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/my/target/core/models/banners/f;

.field private final b:Lcom/my/target/nativeads/models/VideoData;

.field private c:Lcom/my/target/nativeads/views/MediaAdView;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/view/View$OnClickListener;

.field private j:Lcom/my/target/core/ui/b;

.field private k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/my/target/core/models/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/my/target/core/ui/views/VideoTextureView;

.field private m:Z

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private p:Lcom/my/target/core/controllers/a$a;

.field private final q:Landroid/content/DialogInterface$OnDismissListener;

.field private final r:Lcom/my/target/core/ui/b$a;


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/banners/f;Lcom/my/target/nativeads/models/VideoData;)V
    .locals 4

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/my/target/core/controllers/a$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/a$1;-><init>(Lcom/my/target/core/controllers/a;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->n:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v0, Lcom/my/target/core/controllers/a$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/a$2;-><init>(Lcom/my/target/core/controllers/a;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->o:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 97
    new-instance v0, Lcom/my/target/core/controllers/a$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/a$3;-><init>(Lcom/my/target/core/controllers/a;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->q:Landroid/content/DialogInterface$OnDismissListener;

    .line 149
    new-instance v0, Lcom/my/target/core/controllers/a$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/a$4;-><init>(Lcom/my/target/core/controllers/a;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->r:Lcom/my/target/core/ui/b$a;

    .line 214
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->a:Lcom/my/target/core/models/banners/f;

    .line 215
    iput-object p2, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/nativeads/models/VideoData;

    .line 216
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/a;->f:Z

    .line 217
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/a;->m:Z

    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/HashSet;

    .line 220
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 222
    const-string v2, "playheadReachedValue"

    invoke-virtual {v0}, Lcom/my/target/core/models/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/my/target/core/models/g;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/HashSet;

    check-cast v0, Lcom/my/target/core/models/g;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/controllers/a;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/my/target/core/controllers/a;->d:I

    return p1
.end method

.method static synthetic a(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/views/VideoTextureView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/core/controllers/a;Lcom/my/target/core/ui/views/VideoTextureView;)Lcom/my/target/core/ui/views/VideoTextureView;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    return-object p1
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->p:Lcom/my/target/core/controllers/a$a;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->p:Lcom/my/target/core/controllers/a$a;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/HashSet;

    invoke-interface {v0, p1, v1}, Lcom/my/target/core/controllers/a$a;->a(FLjava/util/HashSet;)V

    .line 488
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 448
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->o:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 449
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 450
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/controllers/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/my/target/core/controllers/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/my/target/core/controllers/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/my/target/core/controllers/a;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/controllers/a$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->p:Lcom/my/target/core/controllers/a$a;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 536
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->o:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 537
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 540
    return-void
.end method

.method static synthetic b(Lcom/my/target/core/controllers/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/my/target/core/controllers/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/my/target/core/controllers/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/my/target/core/controllers/a;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/my/target/core/controllers/a;)V
    .locals 2

    .prologue
    .line 22
    .line 1422
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    if-eqz v0, :cond_1

    .line 1424
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/controllers/a;->d:I

    .line 1425
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Z)V

    .line 1429
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->g()V

    .line 22
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/my/target/core/controllers/a;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/my/target/core/controllers/a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->j()V

    return-void
.end method

.method static synthetic f(Lcom/my/target/core/controllers/a;)V
    .locals 1

    .prologue
    .line 22
    .line 2231
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_0

    .line 2233
    const-string v0, "Audiofocus loss can duck, set volume to 0.3"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 2234
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->m:Z

    if-nez v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->g()V

    .line 22
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    return-object v0
.end method

.method static synthetic h(Lcom/my/target/core/controllers/a;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/a;->g:Z

    return v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->h()V

    .line 268
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/my/target/core/controllers/a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->i()V

    return-void
.end method

.method static synthetic j(Lcom/my/target/core/controllers/a;)Lcom/my/target/nativeads/views/MediaAdView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->e()V

    .line 532
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/my/target/core/controllers/a;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/controllers/a;->d:I

    return v0
.end method

.method static synthetic l(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/banners/f;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->a:Lcom/my/target/core/models/banners/f;

    return-object v0
.end method

.method static synthetic m(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/ui/b;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    return-object v0
.end method

.method static synthetic n(Lcom/my/target/core/controllers/a;)Lcom/my/target/nativeads/models/VideoData;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/nativeads/models/VideoData;

    return-object v0
.end method

.method static synthetic o(Lcom/my/target/core/controllers/a;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic p(Lcom/my/target/core/controllers/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 22
    .line 2390
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v0, :cond_0

    .line 2391
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/nativeads/models/VideoData;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->i:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 2393
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->i:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2394
    :cond_0
    :goto_0
    return-void

    .line 2397
    :cond_1
    iput-boolean v4, p0, Lcom/my/target/core/controllers/a;->g:Z

    .line 2398
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2504
    new-instance v1, Lcom/my/target/core/ui/b;

    invoke-direct {v1, v0}, Lcom/my/target/core/ui/b;-><init>(Landroid/content/Context;)V

    .line 2505
    iget-object v2, p0, Lcom/my/target/core/controllers/a;->a:Lcom/my/target/core/models/banners/f;

    iget-object v3, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v1, v2, v3}, Lcom/my/target/core/ui/b;->a(Lcom/my/target/core/models/banners/f;Lcom/my/target/nativeads/models/VideoData;)V

    .line 2506
    iget-object v2, p0, Lcom/my/target/core/controllers/a;->r:Lcom/my/target/core/ui/b$a;

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/b;->a(Lcom/my/target/core/ui/b$a;)V

    .line 2507
    iget-object v2, p0, Lcom/my/target/core/controllers/a;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2509
    iget-object v2, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-nez v2, :cond_2

    invoke-static {p0, v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/controllers/a;Landroid/content/Context;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    .line 2510
    :cond_2
    iget-object v2, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v2, p0}, Lcom/my/target/core/ui/views/VideoTextureView;->setVideoListener(Lcom/my/target/core/ui/views/VideoTextureView$a;)V

    .line 2511
    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/a;->b(Landroid/content/Context;)V

    .line 2513
    iget v0, p0, Lcom/my/target/core/controllers/a;->d:I

    if-ne v0, v4, :cond_3

    .line 2515
    const/4 v0, 0x4

    iput v0, p0, Lcom/my/target/core/controllers/a;->d:I

    .line 2516
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->f()V

    .line 2519
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2520
    if-eqz v0, :cond_4

    .line 2522
    iget-object v2, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2524
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/b;->a(Lcom/my/target/core/ui/views/VideoTextureView;)V

    .line 2398
    iput-object v1, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    .line 2399
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->a()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2400
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->m:Z

    if-eqz v0, :cond_6

    .line 2402
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->i()V

    .line 2408
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->show()V

    .line 2409
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->p:Lcom/my/target/core/controllers/a$a;

    if-eqz v0, :cond_5

    .line 2411
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->p:Lcom/my/target/core/controllers/a$a;

    invoke-interface {v0}, Lcom/my/target/core/controllers/a$a;->b()V

    .line 2413
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v0, v1, v4}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/nativeads/models/VideoData;Z)V

    .line 2416
    iput v4, p0, Lcom/my/target/core/controllers/a;->d:I

    goto :goto_0

    .line 2405
    :cond_6
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->j()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 241
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->g:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/my/target/core/controllers/a;->d:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/my/target/core/controllers/a;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/my/target/core/controllers/a;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handle visible, state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/my/target/core/controllers/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-nez v0, :cond_1

    .line 249
    iput-boolean v3, p0, Lcom/my/target/core/controllers/a;->h:Z

    .line 250
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/controllers/a;Landroid/content/Context;)Lcom/my/target/core/ui/views/VideoTextureView;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    .line 251
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0, p0}, Lcom/my/target/core/ui/views/VideoTextureView;->setVideoListener(Lcom/my/target/core/ui/views/VideoTextureView$a;)V

    .line 252
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->i()V

    .line 258
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v0, v1, v3}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/nativeads/models/VideoData;Z)V

    .line 260
    const/4 v0, 0x1

    iput v0, p0, Lcom/my/target/core/controllers/a;->d:I

    .line 262
    :cond_2
    return-void
.end method

.method public final a(FF)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 545
    :goto_0
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->f()V

    .line 546
    iget-boolean v1, p0, Lcom/my/target/core/controllers/a;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->p:Lcom/my/target/core/controllers/a$a;

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->p:Lcom/my/target/core/controllers/a$a;

    invoke-interface {v1}, Lcom/my/target/core/controllers/a$a;->a()V

    .line 549
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/my/target/core/controllers/a;->h:Z

    .line 550
    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/a;->a(F)V

    .line 552
    :cond_0
    iget-boolean v1, p0, Lcom/my/target/core/controllers/a;->e:Z

    if-eqz v1, :cond_1

    .line 554
    cmpl-float v1, p1, p2

    if-eqz v1, :cond_1

    .line 555
    iput-boolean v2, p0, Lcom/my/target/core/controllers/a;->e:Z

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 560
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->n()F

    move-result p2

    .line 561
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    if-eqz v1, :cond_2

    .line 563
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    invoke-virtual {v1, p1, p2}, Lcom/my/target/core/ui/b;->a(FF)V

    .line 567
    :cond_2
    :goto_1
    cmpg-float v1, p1, p2

    if-gtz v1, :cond_5

    .line 569
    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 570
    invoke-direct {p0, p1}, Lcom/my/target/core/controllers/a;->a(F)V

    .line 571
    :cond_3
    cmpl-float v0, p1, p2

    if-nez v0, :cond_4

    .line 573
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->e()V

    .line 574
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/controllers/a;->d:I

    .line 575
    iput-boolean v2, p0, Lcom/my/target/core/controllers/a;->f:Z

    .line 576
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_4

    .line 578
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->d()V

    .line 583
    :cond_4
    return-void

    :cond_5
    move p1, p2

    .line 582
    goto :goto_0

    :cond_6
    move p2, v0

    goto :goto_1
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->i:Landroid/view/View$OnClickListener;

    .line 205
    return-void
.end method

.method public final a(Lcom/my/target/core/controllers/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/my/target/core/controllers/a$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->p:Lcom/my/target/core/controllers/a$a;

    .line 210
    return-void
.end method

.method public final a(Lcom/my/target/nativeads/views/MediaAdView;)V
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->b()V

    .line 282
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    .line 284
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->g:Z

    if-nez v0, :cond_0

    .line 286
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->f:Z

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->h()V

    .line 295
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->i:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 297
    new-instance v0, Lcom/my/target/core/controllers/a$5;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/a$5;-><init>(Lcom/my/target/core/controllers/a;)V

    invoke-virtual {p1, v0}, Lcom/my/target/nativeads/views/MediaAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    :cond_1
    return-void

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->e()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/controllers/a;->d:I

    .line 608
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->e()V

    .line 609
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/b;->a(Z)V

    .line 277
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregister from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->d()V

    .line 314
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->c()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/MediaAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iput-object v2, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    .line 318
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call release texture view on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/VideoTextureView;->setVideoListener(Lcom/my/target/core/ui/views/VideoTextureView$a;)V

    .line 326
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->e()V

    .line 332
    iput-object v2, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    .line 333
    invoke-static {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Lcom/my/target/core/controllers/a;)V

    .line 334
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 338
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->g:Z

    if-nez v0, :cond_0

    .line 340
    iget v0, p0, Lcom/my/target/core/controllers/a;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 342
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->f:Z

    if-eqz v0, :cond_1

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handle invisible, state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/my/target/core/controllers/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " obj = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/controllers/a;->d:I

    .line 346
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->f()V

    .line 349
    iput v2, p0, Lcom/my/target/core/controllers/a;->d:I

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->e()V

    .line 354
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/controllers/a;->d:I

    .line 355
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->d()V

    goto :goto_0

    .line 360
    :cond_2
    iget v0, p0, Lcom/my/target/core/controllers/a;->d:I

    if-eq v0, v2, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/my/target/core/controllers/a;->e()V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v1, :cond_1

    .line 373
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getPlayButtonView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 380
    :cond_1
    iget-boolean v1, p0, Lcom/my/target/core/controllers/a;->g:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    invoke-virtual {v1}, Lcom/my/target/core/ui/b;->b()V

    .line 383
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 385
    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/a;->a(Landroid/content/Context;)V

    .line 386
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 436
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getPlayButtonView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->c()V

    .line 444
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    const/4 v0, 0x0

    .line 456
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v1, :cond_1

    .line 458
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 460
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v1}, Lcom/my/target/core/ui/views/VideoTextureView;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 466
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getPlayButtonView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 471
    :cond_1
    iget-boolean v1, p0, Lcom/my/target/core/controllers/a;->g:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    if-eqz v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    invoke-virtual {v1}, Lcom/my/target/core/ui/b;->e()V

    .line 474
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 476
    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/a;->a(Landroid/content/Context;)V

    .line 477
    :cond_3
    return-void

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getPlayButtonView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->d()V

    .line 500
    :cond_0
    return-void
.end method
