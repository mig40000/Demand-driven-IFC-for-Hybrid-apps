.class public abstract Lcom/my/target/core/facades/b;
.super Lcom/my/target/core/facades/a;
.source "AbstractNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/facades/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/my/target/core/facades/a;"
    }
.end annotation


# static fields
.field private static final minViewAlpha:F = 0.5f

.field private static final minVisibleSquare:F = 0.6f


# instance fields
.field private autoLoadImages:Z

.field protected banner:Lcom/my/target/core/models/banners/f;

.field private final imageListener:Lcom/my/target/core/net/b$a;

.field private isShown:Z

.field private listener:Lcom/my/target/core/facades/b$a;

.field private nativeAdVideoController:Lcom/my/target/core/controllers/a;

.field private final showHelper:Lcom/my/target/core/utils/a$a;

.field private final statisticsListener:Lcom/my/target/core/controllers/a$a;

.field private final supportedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final viewClickListener:Landroid/view/View$OnClickListener;

.field private viewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;Landroid/content/Context;Lcom/my/target/ads/CustomParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/my/target/ads/CustomParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/my/target/core/facades/a;-><init>()V

    .line 60
    new-instance v0, Lcom/my/target/core/facades/b$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/b$1;-><init>(Lcom/my/target/core/facades/b;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->statisticsListener:Lcom/my/target/core/controllers/a$a;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/facades/b;->autoLoadImages:Z

    .line 385
    new-instance v0, Lcom/my/target/core/facades/b$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/b$2;-><init>(Lcom/my/target/core/facades/b;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->showHelper:Lcom/my/target/core/utils/a$a;

    .line 430
    new-instance v0, Lcom/my/target/core/facades/b$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/b$3;-><init>(Lcom/my/target/core/facades/b;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->viewClickListener:Landroid/view/View$OnClickListener;

    .line 446
    new-instance v0, Lcom/my/target/core/facades/b$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/b$4;-><init>(Lcom/my/target/core/facades/b;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->imageListener:Lcom/my/target/core/net/b$a;

    .line 146
    iput-object p2, p0, Lcom/my/target/core/facades/b;->supportedTypes:Ljava/util/List;

    .line 148
    new-instance v0, Lcom/my/target/core/a;

    const-string v1, "nativeads"

    invoke-direct {v0, p1, v1}, Lcom/my/target/core/a;-><init>(ILjava/lang/String;)V

    .line 150
    invoke-virtual {v0, p4}, Lcom/my/target/core/a;->a(Lcom/my/target/ads/CustomParams;)V

    .line 151
    invoke-virtual {v0}, Lcom/my/target/core/a;->h()V

    .line 153
    invoke-virtual {p0, v0, p3}, Lcom/my/target/core/facades/b;->init(Lcom/my/target/core/a;Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/core/facades/b;)Lcom/my/target/core/controllers/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/my/target/core/facades/b;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/my/target/core/facades/b;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/my/target/core/facades/b;->isShown:Z

    return v0
.end method

.method static synthetic access$300(Lcom/my/target/core/facades/b;)Lcom/my/target/core/facades/b$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    return-object v0
.end method

.method static synthetic access$400(Lcom/my/target/core/facades/b;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/my/target/core/facades/b;->doLoadSuccess()V

    return-void
.end method

.method private doAutoLoadImages()V
    .locals 4

    .prologue
    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/f;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/f;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " urls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 377
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 379
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/facades/b;->imageListener:Lcom/my/target/core/net/b$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_2
    invoke-direct {p0}, Lcom/my/target/core/facades/b;->doLoadSuccess()V

    goto :goto_0
.end method

.method private doLoadFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    if-eqz p1, :cond_1

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    invoke-interface {v0, p1, p0}, Lcom/my/target/core/facades/b$a;->onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/b;)V

    .line 222
    :cond_0
    return-void

    .line 220
    :cond_1
    const-string p1, "No ad"

    goto :goto_0
.end method

.method private doLoadSuccess()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/b$a;->onLoad(Lcom/my/target/core/facades/b;)V

    .line 215
    :cond_0
    return-void
.end method

.method private doRegisterView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 305
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 307
    check-cast v0, Landroid/view/ViewGroup;

    .line 309
    instance-of v1, v0, Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 311
    check-cast v1, Lcom/my/target/nativeads/views/MediaAdView;

    .line 312
    invoke-virtual {v1}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 313
    invoke-virtual {v1}, Lcom/my/target/nativeads/views/MediaAdView;->getPlayButtonView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v2, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v2}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    .line 315
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/my/target/nativeads/views/MediaAdView;->setPlaceHolderDimension(II)V

    .line 317
    :cond_0
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v2}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 319
    iget-object v2, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    .line 320
    invoke-virtual {v2}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/models/banners/i;->u()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x168

    .line 319
    invoke-static {v2, v3}, Lcom/my/target/core/utils/n;->a(Ljava/util/List;I)Lcom/my/target/nativeads/models/VideoData;

    move-result-object v2

    .line 321
    if-eqz v2, :cond_2

    .line 323
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/a;

    if-nez v0, :cond_1

    .line 325
    new-instance v0, Lcom/my/target/core/controllers/a;

    iget-object v3, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    invoke-direct {v0, v3, v2}, Lcom/my/target/core/controllers/a;-><init>(Lcom/my/target/core/models/banners/f;Lcom/my/target/nativeads/models/VideoData;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/a;

    .line 326
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/a;

    iget-object v2, p0, Lcom/my/target/core/facades/b;->viewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/my/target/core/controllers/a;->a(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/a;

    iget-object v2, p0, Lcom/my/target/core/facades/b;->statisticsListener:Lcom/my/target/core/controllers/a$a;

    invoke-virtual {v0, v2}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a$a;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/nativeads/views/MediaAdView;)V

    .line 341
    :goto_0
    return-void

    .line 334
    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 337
    invoke-direct {p0, v2}, Lcom/my/target/core/facades/b;->doRegisterView(Landroid/view/View;)V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private doUnregisterView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 345
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 347
    check-cast v0, Landroid/view/ViewGroup;

    .line 348
    instance-of v1, v0, Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->b()V

    .line 364
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-void

    .line 357
    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 360
    invoke-direct {p0, v2}, Lcom/my/target/core/facades/b;->doUnregisterView(Landroid/view/View;)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final getBanner()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    return-object v0
.end method

.method public final handleClick()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    iget-object v2, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/c;Landroid/content/Context;)V

    .line 262
    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/b$a;->onClick(Lcom/my/target/core/facades/b;)V

    .line 265
    :cond_0
    return-void
.end method

.method public final handleShow()V
    .locals 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/my/target/core/facades/b;->isShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    iget-object v1, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/c;Landroid/content/Context;)V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/facades/b;->isShown:Z

    .line 274
    :cond_0
    return-void
.end method

.method public isAutoLoadImages()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/my/target/core/facades/b;->autoLoadImages:Z

    return v0
.end method

.method protected loadImageDataToView(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 242
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 244
    :cond_0
    const-string v0, "AbstractNativeAd: invalid or null arguments"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p1}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 250
    const-string v0, "AbstractNativeAd: image data is empty"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/my/target/core/net/b;->a(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method protected onLoad(Lcom/my/target/core/models/c;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x28

    .line 164
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->g()Z

    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 168
    const-string v0, "nativeads"

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/f;

    move-result-object v0

    .line 169
    instance-of v1, v0, Lcom/my/target/core/models/sections/e;

    if-eqz v1, :cond_4

    .line 171
    check-cast v0, Lcom/my/target/core/models/sections/e;

    .line 172
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/e;->b()I

    move-result v1

    if-lez v1, :cond_4

    .line 175
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/e;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/f;

    .line 177
    iget-object v1, p0, Lcom/my/target/core/facades/b;->supportedTypes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iput-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    if-nez v0, :cond_2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No supported banners found for Ad types \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/facades/b;->supportedTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 194
    const-class v1, Lcom/my/target/core/facades/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/my/target/core/models/c;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 195
    invoke-direct {p0, v7}, Lcom/my/target/core/facades/b;->doLoadFailure(Ljava/lang/String;)V

    .line 209
    :goto_1
    return-void

    .line 184
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Banner "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with type \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' does not matches for Ad types \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/b;->supportedTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 186
    const-class v1, Lcom/my/target/core/facades/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/my/target/core/models/c;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 199
    :cond_2
    iget-boolean v0, p0, Lcom/my/target/core/facades/b;->autoLoadImages:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/my/target/core/facades/b;->doLoadSuccess()V

    goto :goto_1

    .line 200
    :cond_3
    invoke-direct {p0}, Lcom/my/target/core/facades/b;->doAutoLoadImages()V

    goto :goto_1

    .line 208
    :cond_4
    invoke-direct {p0, v7}, Lcom/my/target/core/facades/b;->doLoadFailure(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onLoadError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/my/target/core/facades/b;->doLoadFailure(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public final registerView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 281
    :cond_0
    if-eq p1, v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/my/target/core/facades/b;->unregisterView()V

    .line 284
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    .line 285
    invoke-direct {p0, p1}, Lcom/my/target/core/facades/b;->doRegisterView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcom/my/target/core/facades/b;->showHelper:Lcom/my/target/core/utils/a$a;

    invoke-interface {v0}, Lcom/my/target/core/utils/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/my/target/core/utils/a;->a()Lcom/my/target/core/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/b;->showHelper:Lcom/my/target/core/utils/a$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/a;->a(Lcom/my/target/core/utils/a$a;)V

    .line 288
    :cond_1
    return-void
.end method

.method public setAutoLoadImages(Z)V
    .locals 0

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/my/target/core/facades/b;->autoLoadImages:Z

    .line 238
    return-void
.end method

.method public setListener(Lcom/my/target/core/facades/b$a;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    .line 139
    return-void
.end method

.method public final unregisterView()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 295
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/my/target/core/facades/b;->doUnregisterView(Landroid/view/View;)V

    .line 296
    :cond_0
    invoke-static {}, Lcom/my/target/core/utils/a;->a()Lcom/my/target/core/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/b;->showHelper:Lcom/my/target/core/utils/a$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/a;->b(Lcom/my/target/core/utils/a$a;)V

    .line 297
    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    .line 301
    :cond_1
    return-void
.end method
