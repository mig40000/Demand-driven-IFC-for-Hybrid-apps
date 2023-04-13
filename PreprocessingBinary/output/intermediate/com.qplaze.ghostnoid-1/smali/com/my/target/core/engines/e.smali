.class public final Lcom/my/target/core/engines/e;
.super Lcom/my/target/core/engines/a;
.source "FSPromoAdEngine.java"


# instance fields
.field private final c:Lcom/my/target/core/facades/f;

.field private d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

.field private final e:Ljava/lang/Runnable;

.field private f:Lcom/my/target/core/models/banners/e;

.field private g:Lcom/my/target/core/engines/b$a;

.field private final h:Landroid/view/View$OnClickListener;

.field private i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/my/target/core/models/g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/my/target/core/models/banners/i;

.field private k:Z

.field private final l:Landroid/view/View$OnClickListener;

.field private final m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final n:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

.field private o:Z

.field private p:Z

.field private final q:Landroid/view/View$OnClickListener;

.field private r:F

.field private s:F

.field private t:J

.field private u:Z

.field private final v:Lcom/my/target/core/ui/views/VideoTextureView$a;


# direct methods
.method public constructor <init>(Lcom/my/target/core/facades/f;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 260
    invoke-direct {p0, p2, p3}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/my/target/core/engines/e$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$1;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->e:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lcom/my/target/core/engines/e$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$2;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->h:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v0, Lcom/my/target/core/engines/e$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$3;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->l:Landroid/view/View$OnClickListener;

    .line 80
    new-instance v0, Lcom/my/target/core/engines/e$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$4;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 109
    new-instance v0, Lcom/my/target/core/engines/e$5;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$5;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->n:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    .line 143
    new-instance v0, Lcom/my/target/core/engines/e$6;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$6;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->q:Landroid/view/View$OnClickListener;

    .line 165
    iput-boolean v5, p0, Lcom/my/target/core/engines/e;->u:Z

    .line 166
    new-instance v0, Lcom/my/target/core/engines/e$7;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$7;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->v:Lcom/my/target/core/ui/views/VideoTextureView$a;

    .line 261
    iput-object p1, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/f;

    .line 1267
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/f;

    invoke-virtual {v0}, Lcom/my/target/core/facades/f;->d()Lcom/my/target/core/models/banners/e;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/e;

    .line 1268
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/e;

    if-eqz v0, :cond_2

    .line 1270
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/e;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    .line 2017
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2018
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2019
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/e;->v()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 2021
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;-><init>(Landroid/content/Context;)V

    .line 1270
    :goto_0
    iput-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    .line 1272
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 1273
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->v:Lcom/my/target/core/ui/views/VideoTextureView$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setVideoListener(Lcom/my/target/core/ui/views/VideoTextureView$a;)V

    .line 1274
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setBanner(Lcom/my/target/core/models/banners/e;)V

    .line 1276
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1279
    iget-object v1, p0, Lcom/my/target/core/engines/e;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1281
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    .line 1282
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    if-eqz v0, :cond_6

    .line 1284
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->u:Z

    .line 1285
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/my/target/core/engines/e;->t:J

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->o:Z

    .line 1290
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->p()F

    move-result v0

    iput v0, p0, Lcom/my/target/core/engines/e;->r:F

    .line 1292
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->o:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/my/target/core/engines/e;->r:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1294
    const-string v0, "banner is allowed to close"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->f()V

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->n()F

    move-result v0

    iput v0, p0, Lcom/my/target/core/engines/e;->s:F

    .line 1299
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->n:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setOnVideoClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V

    .line 1300
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->k:Z

    .line 1301
    iget-object v1, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->k:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(I)V

    .line 1316
    :goto_2
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/f;

    invoke-virtual {v0}, Lcom/my/target/core/facades/f;->b()V

    .line 1318
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setOnCTAClickListener(Landroid/view/View$OnClickListener;)V

    .line 1320
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1322
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/e;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_3
    return-void

    .line 2022
    :cond_4
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1301
    :cond_5
    const/4 v0, 0x2

    goto :goto_1

    .line 1304
    :cond_6
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/e;->s()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "banner will be allowed to close in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->s()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/e;->s()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/my/target/core/engines/e;->a(J)V

    goto :goto_2

    .line 1311
    :cond_7
    const-string v0, "banner is allowed to close"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->f()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    return-object v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/my/target/core/engines/e;->t:J

    .line 330
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 369
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 370
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 371
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/e;F)V
    .locals 3

    .prologue
    .line 22
    .line 2391
    iget-object v0, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    if-eqz v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/f;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    iget-object v2, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2, p1}, Lcom/my/target/core/facades/f;->a(Lcom/my/target/core/models/banners/i;Ljava/util/Set;F)V

    .line 22
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/e;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 2350
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 2351
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/e;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 22
    .line 2375
    iget-object v0, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 2376
    iget-object v0, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2380
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 2382
    invoke-virtual {v0}, Lcom/my/target/core/models/i;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playheadReachedValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/my/target/core/models/g;

    if-eqz v2, :cond_0

    .line 2384
    iget-object v2, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    check-cast v0, Lcom/my/target/core/models/g;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2378
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    goto :goto_0

    .line 22
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/e;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/my/target/core/engines/e;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/f;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/f;

    return-object v0
.end method

.method static synthetic b(Lcom/my/target/core/engines/e;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/my/target/core/engines/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/my/target/core/engines/e;)Lcom/my/target/core/engines/b$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/engines/e;->g:Lcom/my/target/core/engines/b$a;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/e;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/e;

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/i;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    return-object v0
.end method

.method static synthetic g(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->o:Z

    return v0
.end method

.method static synthetic i(Lcom/my/target/core/engines/e;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/engines/e;->r:F

    return v0
.end method

.method static synthetic j(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->p:Z

    return v0
.end method

.method static synthetic k(Lcom/my/target/core/engines/e;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/engines/e;->s:F

    return v0
.end method

.method static synthetic l(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->u:Z

    return v0
.end method

.method static synthetic m(Lcom/my/target/core/engines/e;)V
    .locals 2

    .prologue
    .line 22
    .line 3358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->p:Z

    .line 3359
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->f()V

    .line 3360
    const/4 v0, 0x1

    .line 3361
    iget-object v1, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    if-eqz v1, :cond_0

    .line 3362
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->l()Z

    move-result v0

    .line 3363
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/my/target/core/engines/e;->a(Landroid/content/Context;)V

    .line 3364
    iget-object v1, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 400
    invoke-super {p0}, Lcom/my/target/core/engines/a;->a()V

    .line 402
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/f;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/i;

    const-string v2, "playbackPaused"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/f;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->h()V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 412
    :cond_1
    return-void
.end method

.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/my/target/core/engines/e;->g:Lcom/my/target/core/engines/b$a;

    .line 256
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 417
    invoke-super {p0}, Lcom/my/target/core/engines/a;->b()V

    .line 419
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    if-eqz v0, :cond_0

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 423
    iget-wide v2, p0, Lcom/my/target/core/engines/e;->t:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 425
    iget-wide v2, p0, Lcom/my/target/core/engines/e;->t:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 427
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->f()V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-wide v2, p0, Lcom/my/target/core/engines/e;->t:J

    sub-long v0, v2, v0

    invoke-direct {p0, v0, v1}, Lcom/my/target/core/engines/e;->a(J)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Lcom/my/target/core/engines/a;->e()V

    .line 440
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/f;

    invoke-virtual {v0}, Lcom/my/target/core/facades/f;->f()V

    .line 441
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->u:Z

    return v0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(I)V

    .line 336
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(I)V

    .line 341
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(I)V

    .line 346
    return-void
.end method
