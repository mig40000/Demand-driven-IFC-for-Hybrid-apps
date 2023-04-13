.class public Lcom/my/target/core/ui/views/VideoContainer;
.super Landroid/widget/FrameLayout;
.source "VideoContainer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/views/VideoContainer$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Landroid/widget/VideoView;

.field private c:Lcom/my/target/core/ui/views/VideoContainer$a;

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private final i:Ljava/lang/Runnable;

.field private final j:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final k:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->a:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->g:I

    .line 45
    new-instance v0, Lcom/my/target/core/ui/views/VideoContainer$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoContainer$1;-><init>(Lcom/my/target/core/ui/views/VideoContainer;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->i:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/my/target/core/ui/views/VideoContainer$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoContainer$2;-><init>(Lcom/my/target/core/ui/views/VideoContainer;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->j:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 121
    new-instance v0, Lcom/my/target/core/ui/views/VideoContainer$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoContainer$3;-><init>(Lcom/my/target/core/ui/views/VideoContainer;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->k:Landroid/media/MediaPlayer$OnErrorListener;

    .line 163
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoContainer;->setBackgroundColor(I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->a:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->g:I

    .line 45
    new-instance v0, Lcom/my/target/core/ui/views/VideoContainer$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoContainer$1;-><init>(Lcom/my/target/core/ui/views/VideoContainer;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->i:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/my/target/core/ui/views/VideoContainer$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoContainer$2;-><init>(Lcom/my/target/core/ui/views/VideoContainer;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->j:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 121
    new-instance v0, Lcom/my/target/core/ui/views/VideoContainer$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoContainer$3;-><init>(Lcom/my/target/core/ui/views/VideoContainer;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->k:Landroid/media/MediaPlayer$OnErrorListener;

    .line 169
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoContainer;->setBackgroundColor(I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->a:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->g:I

    .line 45
    new-instance v0, Lcom/my/target/core/ui/views/VideoContainer$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoContainer$1;-><init>(Lcom/my/target/core/ui/views/VideoContainer;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->i:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/my/target/core/ui/views/VideoContainer$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoContainer$2;-><init>(Lcom/my/target/core/ui/views/VideoContainer;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->j:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 121
    new-instance v0, Lcom/my/target/core/ui/views/VideoContainer$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/VideoContainer$3;-><init>(Lcom/my/target/core/ui/views/VideoContainer;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->k:Landroid/media/MediaPlayer$OnErrorListener;

    .line 175
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoContainer;->setBackgroundColor(I)V

    .line 176
    return-void
.end method

.method static synthetic a(I)F
    .locals 2

    .prologue
    .line 17
    .line 2033
    int-to-float v0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 17
    return v0
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/VideoContainer;I)I
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/my/target/core/ui/views/VideoContainer;->f:I

    return p1
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/VideoContainer;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/VideoContainer;)I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    return v0
.end method

.method static synthetic c(Lcom/my/target/core/ui/views/VideoContainer;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/my/target/core/ui/views/VideoContainer;)Lcom/my/target/core/ui/views/VideoContainer$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->c:Lcom/my/target/core/ui/views/VideoContainer$a;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/my/target/core/ui/views/VideoContainer;->a:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/my/target/core/ui/views/VideoContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    return-void
.end method

.method static synthetic e(Lcom/my/target/core/ui/views/VideoContainer;)Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/my/target/core/ui/views/VideoContainer;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->h:I

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/VideoContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method static synthetic g(Lcom/my/target/core/ui/views/VideoContainer;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->g:I

    return v0
.end method

.method static synthetic h(Lcom/my/target/core/ui/views/VideoContainer;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->a:J

    return-wide v0
.end method

.method static synthetic i(Lcom/my/target/core/ui/views/VideoContainer;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->f:I

    return v0
.end method

.method static synthetic j(Lcom/my/target/core/ui/views/VideoContainer;)I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->h:I

    return v0
.end method

.method static synthetic k(Lcom/my/target/core/ui/views/VideoContainer;)I
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->h:I

    return v0
.end method

.method static synthetic l(Lcom/my/target/core/ui/views/VideoContainer;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    return v0
.end method

.method static synthetic m(Lcom/my/target/core/ui/views/VideoContainer;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoContainer;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    .line 245
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoContainer;->f()V

    .line 246
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->f:I

    .line 249
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 251
    :cond_0
    return-void
.end method

.method public final a(Lcom/my/target/nativeads/models/VideoData;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 195
    iput-boolean v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->e:Z

    .line 196
    invoke-virtual {p1}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1208
    invoke-virtual {p0, v1}, Lcom/my/target/core/ui/views/VideoContainer;->a(Z)V

    .line 1209
    iput v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->h:I

    .line 1210
    iput-boolean v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->e:Z

    .line 1211
    const/4 v1, 0x1

    iput v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    .line 1212
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    if-nez v1, :cond_0

    .line 1214
    new-instance v1, Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/VideoContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    .line 1215
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1216
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoContainer;->k:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1217
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoContainer;->j:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1220
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1222
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1226
    iget-object v2, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {p0, v2, v1}, Lcom/my/target/core/ui/views/VideoContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    :cond_1
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoContainer;->e()V

    .line 1232
    :try_start_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :cond_2
    :goto_0
    return-void

    .line 1233
    :catch_0
    move-exception v0

    .line 1235
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->c:Lcom/my/target/core/ui/views/VideoContainer$a;

    if-eqz v1, :cond_2

    .line 1237
    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->c:Lcom/my/target/core/ui/views/VideoContainer$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/VideoContainer$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    const/4 v0, 0x5

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    .line 277
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 288
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 289
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 290
    iput-object v2, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    .line 300
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoContainer;->f()V

    .line 301
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    .line 266
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 269
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    iget v1, p0, Lcom/my/target/core/ui/views/VideoContainer;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 270
    invoke-direct {p0}, Lcom/my/target/core/ui/views/VideoContainer;->e()V

    .line 272
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    .line 339
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 338
    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 308
    iget v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 311
    iget-object v0, p0, Lcom/my/target/core/ui/views/VideoContainer;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 314
    :cond_1
    return-void
.end method

.method public setCheckProgressTime(J)V
    .locals 1

    .prologue
    .line 349
    iput-wide p1, p0, Lcom/my/target/core/ui/views/VideoContainer;->a:J

    .line 350
    return-void
.end method

.method public setConnectionTimeoutSeconds(I)V
    .locals 0

    .prologue
    .line 354
    iput p1, p0, Lcom/my/target/core/ui/views/VideoContainer;->g:I

    .line 355
    return-void
.end method

.method public setVideoListener(Lcom/my/target/core/ui/views/VideoContainer$a;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/my/target/core/ui/views/VideoContainer;->c:Lcom/my/target/core/ui/views/VideoContainer$a;

    .line 329
    return-void
.end method
