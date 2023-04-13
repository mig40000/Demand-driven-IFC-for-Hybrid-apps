.class public final Lcom/my/target/core/engines/h;
.super Lcom/my/target/core/engines/a;
.source "StandardAdNativeEngine.java"

# interfaces
.implements Lcom/my/target/core/ui/views/StandardNativeView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/engines/h$a;
    }
.end annotation


# static fields
.field private static c:Landroid/os/Handler;


# instance fields
.field private final d:Lcom/my/target/core/ui/views/AdView;

.field private final e:Lcom/my/target/ads/MyTargetView;

.field private final f:[Landroid/widget/ViewFlipper;

.field private final g:Landroid/widget/ViewFlipper;

.field private final h:[Lcom/my/target/core/facades/h;

.field private final i:Lcom/my/target/core/engines/h$a;

.field private final j:Lcom/my/target/core/net/b$a;

.field private final k:Landroid/view/animation/Animation$AnimationListener;

.field private final l:Ljava/lang/Runnable;

.field private final m:Lcom/my/target/core/net/b$a;

.field private final n:Lcom/my/target/core/facades/h$a;

.field private o:I

.field private p:J

.field private q:J

.field private r:I

.field private s:Lcom/my/target/core/models/h;

.field private t:Lcom/my/target/core/ui/views/controls/AdInfoButton;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/g;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/g;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/my/target/core/models/banners/g;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/my/target/ads/MyTargetView;Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/my/target/core/engines/h$a;

    invoke-direct {v0, v5}, Lcom/my/target/core/engines/h$a;-><init>(B)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    .line 59
    new-instance v0, Lcom/my/target/core/engines/h$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$1;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->j:Lcom/my/target/core/net/b$a;

    .line 72
    new-instance v0, Lcom/my/target/core/engines/h$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$2;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->k:Landroid/view/animation/Animation$AnimationListener;

    .line 106
    new-instance v0, Lcom/my/target/core/engines/h$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$3;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->l:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Lcom/my/target/core/engines/h$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$4;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->m:Lcom/my/target/core/net/b$a;

    .line 138
    new-instance v0, Lcom/my/target/core/engines/h$5;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$5;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->n:Lcom/my/target/core/facades/h$a;

    .line 171
    iput-object p1, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->u:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Lcom/my/target/core/ui/views/AdView;

    invoke-direct {v0, p2}, Lcom/my/target/core/ui/views/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/ui/views/AdView;

    .line 174
    new-instance v0, Landroid/widget/ViewFlipper;

    invoke-direct {v0, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/widget/ViewFlipper;

    .line 175
    new-array v0, v2, [Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/my/target/core/engines/h;->f:[Landroid/widget/ViewFlipper;

    .line 176
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:[Landroid/widget/ViewFlipper;

    new-instance v1, Landroid/widget/ViewFlipper;

    invoke-direct {v1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v5

    .line 177
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:[Landroid/widget/ViewFlipper;

    new-instance v1, Landroid/widget/ViewFlipper;

    invoke-direct {v1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 178
    new-array v0, v2, [Lcom/my/target/core/facades/h;

    iput-object v0, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    .line 1184
    iget-object v0, p0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1185
    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/my/target/core/engines/h;->r:I

    .line 1187
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1189
    iget-object v2, p0, Lcom/my/target/core/engines/h;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1191
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1195
    iget-object v2, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/ui/views/AdView;

    const/high16 v3, 0x44200000    # 640.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/AdView;->setMaxWidth(I)V

    .line 1197
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/my/target/core/engines/h;->r:I

    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1199
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1200
    iget-object v2, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/my/target/core/engines/h;->f:[Landroid/widget/ViewFlipper;

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 1203
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/my/target/core/engines/h;->f:[Landroid/widget/ViewFlipper;

    aget-object v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 1205
    iget-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/ui/views/AdView;

    iget-object v2, p0, Lcom/my/target/core/engines/h;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2, v1}, Lcom/my/target/core/ui/views/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1207
    iget-object v0, p0, Lcom/my/target/core/engines/h;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/h;J)J
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/my/target/core/engines/h;->p:J

    return-wide p1
.end method

.method static synthetic a(Lcom/my/target/core/engines/h;)Lcom/my/target/core/engines/h$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/core/engines/h;Lcom/my/target/core/models/banners/g;)Lcom/my/target/core/models/banners/g;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    return-object p1
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/g;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/g;

    .line 44
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    return-object v1
.end method

.method private a(Landroid/widget/ViewFlipper;)V
    .locals 5

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->l()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 471
    iget-object v0, p0, Lcom/my/target/core/engines/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/g;

    .line 473
    new-instance v2, Lcom/my/target/core/ui/views/StandardNativeView;

    iget-object v3, p0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    iget v4, p0, Lcom/my/target/core/engines/h;->r:I

    invoke-direct {v2, v3, v4}, Lcom/my/target/core/ui/views/StandardNativeView;-><init>(Landroid/content/Context;I)V

    .line 474
    const-string v3, "banner"

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 475
    iget-object v4, p0, Lcom/my/target/core/engines/h;->s:Lcom/my/target/core/models/h;

    invoke-virtual {v2, v4, v3}, Lcom/my/target/core/ui/views/StandardNativeView;->setViewSettings(Lcom/my/target/core/models/h;Z)V

    .line 476
    invoke-virtual {v2, p0}, Lcom/my/target/core/ui/views/StandardNativeView;->setMyTargetClickListener(Lcom/my/target/core/engines/h;)V

    .line 477
    invoke-virtual {v2, p0}, Lcom/my/target/core/ui/views/StandardNativeView;->setAfterLastSlideListener(Lcom/my/target/core/ui/views/StandardNativeView$a;)V

    .line 478
    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/StandardNativeView;->setBanner(Lcom/my/target/core/models/banners/g;)V

    .line 479
    invoke-virtual {p1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/h;->v:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/my/target/core/engines/h;->u:Ljava/util/ArrayList;

    .line 483
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/h;Landroid/widget/ViewFlipper;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/my/target/core/engines/h;->a(Landroid/widget/ViewFlipper;)V

    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/h;Lcom/my/target/core/facades/h;)V
    .locals 6

    .prologue
    .line 29
    .line 8529
    invoke-virtual {p1}, Lcom/my/target/core/facades/h;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/h;->v:Ljava/util/ArrayList;

    .line 8530
    iget-object v0, p0, Lcom/my/target/core/engines/h;->v:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 8531
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8533
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->l()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->a(Landroid/widget/ViewFlipper;)V

    .line 8534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/h;->x:Z

    .line 8535
    const-string v0, "banner"

    iget-object v1, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    .line 8536
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 8537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/my/target/core/engines/h;->p:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 8539
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->h()V

    :cond_0
    :goto_0
    return-void

    .line 8549
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 8551
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/engines/h;->m:Lcom/my/target/core/net/b$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/engines/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/my/target/core/engines/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/my/target/core/models/sections/g;)V
    .locals 11

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    if-eqz p1, :cond_5

    .line 420
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/g;->m()I

    move-result v0

    move v10, v0

    .line 4504
    :goto_0
    if-nez v10, :cond_0

    .line 5159
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5160
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object v9, v0

    .line 6488
    :goto_1
    if-nez v10, :cond_2

    .line 7166
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7167
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 7168
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 426
    :goto_2
    iget-object v1, p0, Lcom/my/target/core/engines/h;->k:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 428
    iget-object v1, p0, Lcom/my/target/core/engines/h;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v9}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 429
    iget-object v1, p0, Lcom/my/target/core/engines/h;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 431
    iget-object v2, p0, Lcom/my/target/core/engines/h;->f:[Landroid/widget/ViewFlipper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 433
    invoke-virtual {v4, v9}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 434
    invoke-virtual {v4, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4507
    :cond_0
    const/4 v0, 0x2

    if-ne v10, v0, :cond_1

    .line 6148
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 6152
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 6153
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v9, v0

    .line 4509
    goto :goto_1

    .line 4512
    :cond_1
    invoke-static {}, Lcom/my/target/core/utils/b;->a()Landroid/view/animation/Animation;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    .line 6491
    :cond_2
    const/4 v0, 0x2

    if-ne v10, v0, :cond_3

    .line 8137
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 8141
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 8142
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 6496
    :cond_3
    invoke-static {}, Lcom/my/target/core/utils/b;->b()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2

    .line 436
    :cond_4
    return-void

    :cond_5
    move v10, v0

    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Z)V

    .line 569
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/my/target/core/engines/h;J)J
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/my/target/core/engines/h;->q:J

    return-wide p1
.end method

.method static synthetic b(Lcom/my/target/core/engines/h;)Lcom/my/target/ads/MyTargetView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 449
    if-eqz p1, :cond_2

    .line 451
    iget-object v0, p0, Lcom/my/target/core/engines/h;->t:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcom/my/target/core/ui/views/controls/AdInfoButton;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/controls/AdInfoButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->t:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    .line 454
    iget-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/ui/views/AdView;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->t:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, v1, v2, v2}, Lcom/my/target/core/ui/views/AdView;->addView(Landroid/view/View;II)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/h;->t:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->setUrl(Ljava/lang/String;)V

    .line 464
    :cond_1
    :goto_0
    return-void

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/h;->t:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/my/target/core/engines/h;->t:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 461
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/my/target/core/engines/h;->t:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 462
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/engines/h;->t:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    goto :goto_0
.end method

.method static synthetic c(Lcom/my/target/core/engines/h;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/h;->z:Z

    return v0
.end method

.method static synthetic d(Lcom/my/target/core/engines/h;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/engines/h;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/my/target/core/engines/h;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/my/target/core/engines/h;)Lcom/my/target/core/models/banners/g;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    iget-boolean v0, p0, Lcom/my/target/core/engines/h;->x:Z

    if-eqz v0, :cond_2

    .line 1612
    iget v0, p0, Lcom/my/target/core/engines/h;->o:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/engines/h;->o:I

    .line 1613
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/my/target/core/engines/h;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1615
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/h;->o:I

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 1616
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/h;->o:I

    xor-int/lit8 v1, v1, 0x1

    aput-object v2, v0, v1

    .line 1618
    invoke-direct {p0, v3}, Lcom/my/target/core/engines/h;->a(Z)V

    .line 1619
    iget-object v0, p0, Lcom/my/target/core/engines/h;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/g;

    iput-object v0, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    .line 1620
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1622
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->b(Ljava/lang/String;)V

    .line 1623
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->g()Lcom/my/target/core/models/sections/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/models/sections/g;)V

    .line 1624
    iget-object v0, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/my/target/core/engines/h;->q:J

    .line 1625
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->i()V

    .line 215
    :cond_0
    iput-boolean v3, p0, Lcom/my/target/core/engines/h;->y:Z

    .line 216
    iput-boolean v3, p0, Lcom/my/target/core/engines/h;->x:Z

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 218
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 220
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->j()V

    .line 221
    iput-boolean v4, p0, Lcom/my/target/core/engines/h;->z:Z

    .line 222
    iput-boolean v3, p0, Lcom/my/target/core/engines/h;->y:Z

    .line 223
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0

    .line 226
    :cond_3
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->g()Lcom/my/target/core/models/sections/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->g()Lcom/my/target/core/models/sections/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/g;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2519
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/my/target/core/engines/h;->n()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2521
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->h()Lcom/my/target/core/facades/h;

    move-result-object v0

    .line 2598
    iget-object v1, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    iget v2, p0, Lcom/my/target/core/engines/h;->o:I

    xor-int/lit8 v2, v2, 0x1

    aput-object v0, v1, v2

    .line 2522
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->n()Lcom/my/target/core/facades/h;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/h;->n:Lcom/my/target/core/facades/h$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 2523
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->n()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->load()V

    .line 233
    :cond_4
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->g()Lcom/my/target/core/models/sections/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/g;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iput-boolean v4, p0, Lcom/my/target/core/engines/h;->z:Z

    .line 238
    iput-boolean v3, p0, Lcom/my/target/core/engines/h;->y:Z

    .line 239
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/my/target/core/engines/h;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->a(Z)V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 279
    sget-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/h;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/engines/h;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/my/target/core/engines/h;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 286
    sget-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    .line 287
    :cond_1
    sget-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->l:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/my/target/core/engines/h;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    :cond_2
    return-void
.end method

.method static synthetic i(Lcom/my/target/core/engines/h;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->i()V

    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a()V

    .line 561
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/my/target/core/engines/h;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->h()V

    return-void
.end method

.method private k()Landroid/widget/ViewFlipper;
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:[Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/my/target/core/engines/h;->o:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic k(Lcom/my/target/core/engines/h;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/h;->y:Z

    return v0
.end method

.method private l()Landroid/widget/ViewFlipper;
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:[Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/my/target/core/engines/h;->o:I

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic l(Lcom/my/target/core/engines/h;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->l()Landroid/widget/ViewFlipper;

    move-result-object v0

    return-object v0
.end method

.method private m()Lcom/my/target/core/facades/h;
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/h;->o:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic m(Lcom/my/target/core/engines/h;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/h;->x:Z

    return v0
.end method

.method static synthetic n(Lcom/my/target/core/engines/h;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/my/target/core/engines/h;->p:J

    return-wide v0
.end method

.method private n()Lcom/my/target/core/facades/h;
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/h;->o:I

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic o(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->n()Lcom/my/target/core/facades/h;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/h;->o:I

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/h;->o:I

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 606
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/h;->o:I

    xor-int/lit8 v1, v1, 0x1

    aput-object v2, v0, v1

    .line 608
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/my/target/core/engines/h;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->o()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 308
    invoke-super {p0}, Lcom/my/target/core/engines/a;->a()V

    .line 310
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const-string v0, "Pause native banner"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 3266
    iget-boolean v0, p0, Lcom/my/target/core/engines/h;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    if-eqz v0, :cond_0

    .line 3267
    iget-object v0, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 3268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/my/target/core/engines/h;->p:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/my/target/core/engines/h;->q:J

    .line 3270
    :cond_0
    sget-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3272
    sget-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3273
    const/4 v0, 0x0

    sput-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    .line 314
    :cond_1
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->j()V

    .line 315
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->f()V

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_2
    const-string v0, "Cannot pause native banner"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public final a(Lcom/my/target/core/facades/g;)V
    .locals 4

    .prologue
    .line 383
    instance-of v0, p1, Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 385
    check-cast v0, Lcom/my/target/core/facades/h;

    .line 3588
    iget-object v1, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    iget v2, p0, Lcom/my/target/core/engines/h;->o:I

    aput-object v0, v1, v2

    move-object v0, p1

    .line 386
    check-cast v0, Lcom/my/target/core/facades/h;

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->i()Lcom/my/target/core/models/h;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/h;->s:Lcom/my/target/core/models/h;

    move-object v0, p1

    .line 388
    check-cast v0, Lcom/my/target/core/facades/h;

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->g()Lcom/my/target/core/models/sections/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/models/sections/g;)V

    .line 390
    check-cast p1, Lcom/my/target/core/facades/h;

    invoke-virtual {p1}, Lcom/my/target/core/facades/h;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/h;->v:Ljava/util/ArrayList;

    .line 392
    iget-object v0, p0, Lcom/my/target/core/engines/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 394
    iget-object v0, p0, Lcom/my/target/core/engines/h;->v:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/my/target/core/engines/h;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 398
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/engines/h;->j:Lcom/my/target/core/net/b$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    .line 407
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->b(Ljava/lang/String;)V

    .line 409
    :cond_1
    const-string v0, "load native"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 413
    :cond_2
    :goto_1
    return-void

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->e()V

    .line 402
    iget-object v0, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-interface {v0, v1}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onLoad(Lcom/my/target/ads/MyTargetView;)V

    goto :goto_0

    .line 410
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    const-string v1, "No ad"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V

    goto :goto_1

    .line 412
    :cond_5
    const-string v0, "StandardAdEngine: incorrect ad type"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banner clicked "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 442
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/facades/h;->a(Ljava/lang/String;)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-interface {v0, v1}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onClick(Lcom/my/target/ads/MyTargetView;)V

    .line 445
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-super {p0}, Lcom/my/target/core/engines/a;->b()V

    .line 324
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "Resume native banner"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 330
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->i()V

    .line 331
    invoke-direct {p0, v1}, Lcom/my/target/core/engines/h;->a(Z)V

    .line 332
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->g()V

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    const-string v0, "Cannot resume native banner"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    invoke-super {p0}, Lcom/my/target/core/engines/a;->c()V

    .line 341
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const-string v0, "Stop native banner"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/ui/views/AdView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 346
    sget-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    const/4 v0, 0x0

    sput-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->j()V

    .line 354
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 355
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->l()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 356
    iput-boolean v2, p0, Lcom/my/target/core/engines/h;->y:Z

    .line 357
    iput-boolean v2, p0, Lcom/my/target/core/engines/h;->x:Z

    .line 358
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->o()V

    .line 359
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->i()V

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_1
    const-string v0, "Cannot stop native banner: Not started"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 294
    invoke-super {p0}, Lcom/my/target/core/engines/a;->d()V

    .line 296
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const-string v0, "Start native banner"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 3247
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->k()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->a(Landroid/widget/ViewFlipper;)V

    .line 3249
    iget-object v0, p0, Lcom/my/target/core/engines/h;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/h;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3252
    iget-object v0, p0, Lcom/my/target/core/engines/h;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/g;

    iput-object v0, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    .line 3253
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3255
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->m()Lcom/my/target/core/facades/h;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->b(Ljava/lang/String;)V

    .line 3256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/my/target/core/engines/h;->p:J

    .line 3257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3258
    sput-object v0, Lcom/my/target/core/engines/h;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->l:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v2}, Lcom/my/target/core/models/banners/g;->f()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3259
    invoke-direct {p0, v4}, Lcom/my/target/core/engines/h;->a(Z)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->h()V

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string v0, "Cannot start native banner"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-super {p0}, Lcom/my/target/core/engines/a;->f()V

    .line 367
    invoke-virtual {p0}, Lcom/my/target/core/engines/h;->c()V

    .line 368
    const-string v0, "Destroy native banner"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 370
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:[Lcom/my/target/core/facades/h;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 371
    iget-object v0, p0, Lcom/my/target/core/engines/h;->i:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->j()V

    .line 372
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/my/target/core/engines/h;->y:Z

    if-eqz v0, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/my/target/core/engines/h;->h()V

    .line 636
    :cond_0
    return-void
.end method
