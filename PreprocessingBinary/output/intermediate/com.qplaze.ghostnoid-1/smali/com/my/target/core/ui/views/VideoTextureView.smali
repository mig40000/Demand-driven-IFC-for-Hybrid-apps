.class public Lcom/my/target/core/ui/views/VideoTextureView;
.super Landroid/view/TextureView;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/views/VideoTextureView$a;
    }
.end annotation


# static fields
.field private static a:Lcom/my/target/core/ui/views/VideoTextureView;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/my/target/core/controllers/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/Runnable;

.field private d:Lcom/my/target/nativeads/models/VideoData;

.field private e:Lcom/my/target/core/ui/views/VideoTextureView$a;

.field private f:Z

.field private g:I

.field private h:Landroid/media/MediaPlayer;

.field private i:Z

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/my/target/core/ui/views/VideoTextureView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoTextureView$1;-><init>(Lcom/my/target/core/ui/views/VideoTextureView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->c:Ljava/lang/Runnable;

    .line 151
    return-void
.end method

.method static synthetic a(I)F
    .locals 2

    .prologue
    .line 22
    .line 2555
    int-to-float v0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 22
    return v0
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/VideoTextureView;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    return p1
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static a(Lcom/my/target/core/controllers/a;Landroid/content/Context;)Lcom/my/target/core/ui/views/VideoTextureView;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/VideoTextureView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->b:Ljava/lang/ref/WeakReference;

    .line 37
    sget-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    .line 57
    :goto_0
    return-object v0

    .line 41
    :cond_0
    sget-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/controllers/a;

    .line 44
    sget-object v1, Lcom/my/target/core/ui/views/VideoTextureView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 45
    const/4 v1, 0x0

    sput-object v1, Lcom/my/target/core/ui/views/VideoTextureView;->b:Ljava/lang/ref/WeakReference;

    .line 46
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->c()V

    .line 49
    :cond_1
    sget-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 51
    sget-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoTextureView;->d()V

    .line 52
    new-instance v0, Lcom/my/target/core/ui/views/VideoTextureView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/VideoTextureView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->b:Ljava/lang/ref/WeakReference;

    .line 57
    sget-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->a:Lcom/my/target/core/ui/views/VideoTextureView;

    goto :goto_0
.end method

.method private a(Landroid/view/Surface;Landroid/net/Uri;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: call play state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 348
    if-nez p1, :cond_1

    .line 1482
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->l()V

    .line 351
    iget v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    packed-switch v0, :pswitch_data_0

    .line 386
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    .line 388
    iput v2, p0, Lcom/my/target/core/ui/views/VideoTextureView;->g:I

    .line 389
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    .line 390
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 391
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 392
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 394
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 399
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 402
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/my/target/core/ui/views/VideoTextureView$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 363
    :pswitch_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: trying to start paused mediaplayer, state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 1471
    const-string v0, "VideoTextureView: Resume textureView"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 1474
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->l()V

    .line 1475
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    .line 1476
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->f:Z

    if-eqz v0, :cond_3

    .line 1477
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->h()V

    .line 1480
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1481
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1482
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->j:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto/16 :goto_0

    .line 1479
    :cond_3
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->e()V

    goto :goto_1

    .line 1485
    :cond_4
    iput v2, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    goto/16 :goto_0

    .line 372
    :pswitch_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: trying to RESUMING mediaplayer, state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 377
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    invoke-interface {v0}, Lcom/my/target/core/ui/views/VideoTextureView$a;->g()V

    goto/16 :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/my/target/core/controllers/a;)V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 64
    sget-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/my/target/core/ui/views/VideoTextureView;->b:Ljava/lang/ref/WeakReference;

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/VideoTextureView;Landroid/view/Surface;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Landroid/view/Surface;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/VideoTextureView;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->j:I

    return p1
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: call stop, state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " show play "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    if-eqz v0, :cond_0

    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    invoke-interface {v0}, Lcom/my/target/core/ui/views/VideoTextureView$a;->e()V

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->j:I

    .line 189
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->j()V

    .line 191
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 194
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    .line 198
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    .line 199
    return-void
.end method

.method static synthetic c(Lcom/my/target/core/ui/views/VideoTextureView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->g:I

    return v0
.end method

.method static synthetic d(Lcom/my/target/core/ui/views/VideoTextureView;)Lcom/my/target/core/ui/views/VideoTextureView$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/ui/views/VideoTextureView;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/my/target/core/ui/views/VideoTextureView;->b(Z)V

    return-void
.end method

.method static synthetic f(Lcom/my/target/core/ui/views/VideoTextureView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->j:I

    return v0
.end method

.method static synthetic g(Lcom/my/target/core/ui/views/VideoTextureView;)I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->g:I

    return v0
.end method

.method static synthetic h(Lcom/my/target/core/ui/views/VideoTextureView;)I
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->g:I

    return v0
.end method

.method static synthetic i(Lcom/my/target/core/ui/views/VideoTextureView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    return v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    packed-switch v0, :pswitch_data_0

    .line 175
    const-string v0, "idle"

    :goto_0
    return-object v0

    .line 165
    :pswitch_0
    const-string v0, "preparing"

    goto :goto_0

    .line 167
    :pswitch_1
    const-string v0, "wait"

    goto :goto_0

    .line 169
    :pswitch_2
    const-string v0, "playing"

    goto :goto_0

    .line 171
    :pswitch_3
    const-string v0, "paused"

    goto :goto_0

    .line 173
    :pswitch_4
    const-string v0, "stopped"

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private j()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->i:Z

    .line 204
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoTextureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method static synthetic j(Lcom/my/target/core/ui/views/VideoTextureView;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->f:Z

    return v0
.end method

.method private k()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 420
    :goto_0
    return-object v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/my/target/core/ui/views/VideoTextureView;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->l()V

    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->i:Z

    if-nez v0, :cond_0

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->i:Z

    .line 437
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/my/target/core/ui/views/VideoTextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/my/target/core/ui/views/VideoTextureView;)Z
    .locals 6

    .prologue
    .line 3443
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3444
    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoTextureView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3446
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-double v0, v0

    .line 3447
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-double v2, v2

    .line 3449
    const-wide v4, 0x3fe3333340000000L    # 0.6000000238418579

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 3451
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 3455
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_0
.end method

.method static synthetic m(Lcom/my/target/core/ui/views/VideoTextureView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic n(Lcom/my/target/core/ui/views/VideoTextureView;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->j()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(Lcom/my/target/nativeads/models/VideoData;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    invoke-interface {v0}, Lcom/my/target/core/ui/views/VideoTextureView$a;->h()V

    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/nativeads/models/VideoData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "file://"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/my/target/nativeads/models/VideoData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 223
    :goto_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->d:Lcom/my/target/nativeads/models/VideoData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->d:Lcom/my/target/nativeads/models/VideoData;

    if-eq p1, v1, :cond_1

    .line 225
    invoke-direct {p0, v2}, Lcom/my/target/core/ui/views/VideoTextureView;->b(Z)V

    .line 226
    iput v2, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    .line 228
    :cond_1
    iput-object p1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->d:Lcom/my/target/nativeads/models/VideoData;

    .line 230
    if-eqz p2, :cond_2

    const/4 v1, 0x2

    iput v1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    .line 1237
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoTextureView: Playing video "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dims "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1238
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1237
    invoke-static {v1}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1241
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->k()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/my/target/core/ui/views/VideoTextureView;->a(Landroid/view/Surface;Landroid/net/Uri;)V

    .line 1243
    :cond_3
    new-instance v1, Lcom/my/target/core/ui/views/VideoTextureView$2;

    invoke-direct {v1, p0, v0}, Lcom/my/target/core/ui/views/VideoTextureView$2;-><init>(Lcom/my/target/core/ui/views/VideoTextureView;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/my/target/core/ui/views/VideoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 233
    return-void

    .line 220
    :cond_4
    invoke-virtual {p1}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->j()V

    .line 492
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    if-eqz p1, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->d:Lcom/my/target/nativeads/models/VideoData;

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->d:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/VideoData;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->d:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/VideoData;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/my/target/core/ui/views/VideoTextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->l:Landroid/graphics/Bitmap;

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: Pause textureView, state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 497
    const/4 v0, 0x4

    iput v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    .line 498
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 500
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->f:Z

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: call stop from controller state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/my/target/core/ui/views/VideoTextureView;->b(Z)V

    .line 158
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 425
    iput-boolean v2, p0, Lcom/my/target/core/ui/views/VideoTextureView;->f:Z

    .line 426
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    invoke-interface {v0, v2}, Lcom/my/target/core/ui/views/VideoTextureView$a;->a(Z)V

    .line 430
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->j()V

    .line 461
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "VideoTextureView: Pause textureView until available"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    .line 465
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 467
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 510
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 512
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 585
    iput-boolean v2, p0, Lcom/my/target/core/ui/views/VideoTextureView;->f:Z

    .line 586
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    invoke-interface {v0, v2}, Lcom/my/target/core/ui/views/VideoTextureView$a;->a(Z)V

    .line 590
    :cond_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 546
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 1555
    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 547
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    invoke-interface {v1, v0, v0}, Lcom/my/target/core/ui/views/VideoTextureView$a;->a(FF)V

    .line 551
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 561
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/my/target/core/ui/views/VideoTextureView$a;->a(Ljava/lang/String;)V

    .line 565
    :cond_0
    invoke-direct {p0, v3}, Lcom/my/target/core/ui/views/VideoTextureView;->b(Z)V

    .line 566
    return v3
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: call on prepared, state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 519
    iget v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: call mediaplayer to start visibility "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dims = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->k()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 526
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->f:Z

    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->h()V

    .line 530
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 531
    iget v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->j:I

    if-eqz v0, :cond_0

    .line 533
    iget v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->j:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 535
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    .line 541
    :cond_1
    :goto_1
    return-void

    .line 529
    :cond_2
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoTextureView;->e()V

    goto :goto_0

    .line 538
    :cond_3
    const-string v0, "VideoTextureView: mediaplayer is ready, but surface isn\'t available"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setVideoListener(Lcom/my/target/core/ui/views/VideoTextureView$a;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/my/target/core/ui/views/VideoTextureView;->e:Lcom/my/target/core/ui/views/VideoTextureView$a;

    .line 141
    return-void
.end method

.method public setWaitingState()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/ui/views/VideoTextureView;->k:I

    .line 146
    return-void
.end method
