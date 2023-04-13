.class public final Lcom/my/target/core/engines/f;
.super Lcom/my/target/core/engines/a;
.source "InstreamAdEngine.java"


# instance fields
.field private c:Z

.field private final d:Lcom/my/target/ads/MyTargetVideoView;

.field private e:Lcom/my/target/core/facades/d;

.field private f:Lcom/my/target/core/ui/views/VideoContainer;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/i;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

.field private j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/my/target/core/models/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/my/target/core/models/banners/i;

.field private l:Lcom/my/target/core/models/sections/h;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Lcom/my/target/core/ui/views/VideoContainer$a;


# direct methods
.method public constructor <init>(Lcom/my/target/core/facades/d;Lcom/my/target/ads/MyTargetVideoView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p2, p3}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 312
    new-instance v0, Lcom/my/target/core/engines/f$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/f$1;-><init>(Lcom/my/target/core/engines/f;)V

    iput-object v0, p0, Lcom/my/target/core/engines/f;->q:Lcom/my/target/core/ui/views/VideoContainer$a;

    .line 47
    iput-object p1, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    .line 48
    iput-object p2, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    .line 49
    invoke-direct {p0}, Lcom/my/target/core/engines/f;->j()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/facades/g;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    return-object v0
.end method

.method private a(I)V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 120
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/f;->c:Z

    .line 121
    iget-object v0, p0, Lcom/my/target/core/engines/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/i;

    iput-object v0, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    .line 123
    const-string v0, "statistics"

    iget-object v1, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    .line 3179
    iget-object v1, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    const-string v2, "playbackStarted"

    invoke-virtual {v1, v0, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/my/target/core/engines/f;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/engines/f;->h:I

    iget-object v1, p0, Lcom/my/target/core/engines/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 128
    iget p1, p0, Lcom/my/target/core/engines/f;->h:I

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/f;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    const-string v3, "no_banners"

    invoke-interface {v0, v1, v2, v3}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/MyTargetVideoView;Ljava/lang/String;)V

    .line 175
    :cond_1
    :goto_1
    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->u()Ljava/util/List;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    .line 143
    invoke-virtual {v1}, Lcom/my/target/ads/MyTargetVideoView;->getVideoQuality()I

    move-result v1

    .line 142
    invoke-static {v0, v1}, Lcom/my/target/core/utils/n;->a(Ljava/util/List;I)Lcom/my/target/nativeads/models/VideoData;

    move-result-object v6

    .line 145
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    if-nez v0, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/my/target/core/engines/f;->j()V

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3216
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3218
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3220
    iget-object v1, p0, Lcom/my/target/core/engines/f;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/engines/f;->l:Lcom/my/target/core/models/sections/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/h;->i()Lcom/my/target/core/models/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/j;->c()I

    move-result v0

    .line 156
    if-eqz v0, :cond_5

    .line 158
    iget-object v1, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/VideoContainer;->setConnectionTimeoutSeconds(I)V

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/f;->a(Ljava/util/ArrayList;)V

    .line 163
    iget-object v0, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->o()Z

    move-result v1

    .line 164
    iget-object v0, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->p()F

    move-result v2

    .line 165
    iget-object v0, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->n()F

    move-result v3

    .line 166
    iget-object v0, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->getCtaText()Ljava/lang/String;

    move-result-object v7

    .line 168
    new-instance v0, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    .line 170
    invoke-virtual {v6}, Lcom/my/target/nativeads/models/VideoData;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Lcom/my/target/nativeads/models/VideoData;->getHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;-><init>(ZFFII)V

    iput-object v0, p0, Lcom/my/target/core/engines/f;->i:Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    .line 172
    iget-object v0, p0, Lcom/my/target/core/engines/f;->i:Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    iput-object v7, v0, Lcom/my/target/ads/MyTargetVideoView$BannerInfo;->ctaText:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0, v6}, Lcom/my/target/core/ui/views/VideoContainer;->a(Lcom/my/target/nativeads/models/VideoData;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/my/target/core/engines/f;F)V
    .locals 3

    .prologue
    .line 26
    .line 4196
    iget-object v0, p0, Lcom/my/target/core/engines/f;->j:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4198
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    iget-object v2, p0, Lcom/my/target/core/engines/f;->j:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2, p1}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/i;Ljava/util/Set;F)V

    .line 26
    :cond_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/engines/f;->j:Ljava/util/HashSet;

    .line 185
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 187
    invoke-virtual {v0}, Lcom/my/target/core/models/i;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playheadReachedValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/my/target/core/models/g;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/my/target/core/engines/f;->j:Ljava/util/HashSet;

    check-cast v0, Lcom/my/target/core/models/g;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/f;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/my/target/core/engines/f;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/my/target/core/engines/f;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/my/target/core/engines/f;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/my/target/core/engines/f;)Lcom/my/target/ads/MyTargetVideoView$BannerInfo;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/my/target/core/engines/f;->i:Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/engines/f;)I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/my/target/core/engines/f;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/my/target/core/engines/f;->n:I

    return v0
.end method

.method static synthetic e(Lcom/my/target/core/engines/f;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/my/target/core/engines/f;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/my/target/core/engines/f;)Lcom/my/target/core/models/sections/h;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/my/target/core/engines/f;->l:Lcom/my/target/core/models/sections/h;

    return-object v0
.end method

.method static synthetic g(Lcom/my/target/core/engines/f;)Lcom/my/target/core/facades/d;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    return-object v0
.end method

.method static synthetic h(Lcom/my/target/core/engines/f;)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/f;->p:Z

    return v0
.end method

.method static synthetic i(Lcom/my/target/core/engines/f;)Lcom/my/target/core/models/banners/i;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/my/target/core/ui/views/VideoContainer;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/VideoContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    .line 211
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->q:Lcom/my/target/core/ui/views/VideoContainer$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoContainer;->setVideoListener(Lcom/my/target/core/ui/views/VideoContainer$a;)V

    .line 212
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/my/target/core/engines/a;->a()V

    .line 1236
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    const-string v2, "playbackPaused"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer;->a()V

    .line 69
    :cond_0
    return-void
.end method

.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public final a(Lcom/my/target/core/enums/b;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/my/target/core/engines/f;->c()V

    .line 95
    iput v2, p0, Lcom/my/target/core/engines/f;->h:I

    .line 96
    invoke-virtual {p1}, Lcom/my/target/core/enums/b;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/f;->m:Ljava/lang/String;

    .line 97
    iput v2, p0, Lcom/my/target/core/engines/f;->n:I

    .line 98
    iput-boolean v2, p0, Lcom/my/target/core/engines/f;->p:Z

    .line 99
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/d;->a(Ljava/lang/String;)Lcom/my/target/core/models/sections/h;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/f;->l:Lcom/my/target/core/models/sections/h;

    .line 102
    iget-object v0, p0, Lcom/my/target/core/engines/f;->l:Lcom/my/target/core/models/sections/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/h;->i()Lcom/my/target/core/models/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/j;->d()I

    move-result v0

    iput v0, p0, Lcom/my/target/core/engines/f;->o:I

    .line 103
    iget-object v0, p0, Lcom/my/target/core/engines/f;->l:Lcom/my/target/core/models/sections/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/h;->g()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/f;->g:Ljava/util/ArrayList;

    .line 104
    iget-object v0, p0, Lcom/my/target/core/engines/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/f;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    const-string v3, "no_banners"

    invoke-interface {v0, v1, v2, v3}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/MyTargetVideoView;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-direct {p0, v2}, Lcom/my/target/core/engines/f;->a(I)V

    goto :goto_0
.end method

.method public final a(Lcom/my/target/core/facades/g;)V
    .locals 1

    .prologue
    .line 57
    instance-of v0, p1, Lcom/my/target/core/facades/d;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/my/target/core/facades/d;

    iput-object p1, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    .line 61
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 421
    if-eqz p1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    const-string v2, "fullscreenOn"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    const-string v2, "fullscreenOff"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;Z)V
    .locals 4

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/f;->c:Z

    .line 262
    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    const-string v2, "closedByUser"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0, p3}, Lcom/my/target/core/ui/views/VideoContainer;->a(Z)V

    .line 269
    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    iget-object v2, p0, Lcom/my/target/core/engines/f;->i:Lcom/my/target/ads/MyTargetVideoView$BannerInfo;

    invoke-interface {v0, v1, v2, p2}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onCompleteBanner(Lcom/my/target/ads/MyTargetVideoView;Lcom/my/target/ads/MyTargetVideoView$BannerInfo;Ljava/lang/String;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 274
    iget v0, p0, Lcom/my/target/core/engines/f;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/engines/f;->h:I

    iget-object v1, p0, Lcom/my/target/core/engines/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 276
    iget v0, p0, Lcom/my/target/core/engines/f;->o:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/my/target/core/engines/f;->n:I

    iget v1, p0, Lcom/my/target/core/engines/f;->o:I

    if-ge v0, v1, :cond_4

    .line 278
    :cond_2
    iget v0, p0, Lcom/my/target/core/engines/f;->h:I

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/f;->a(I)V

    .line 284
    :cond_3
    :goto_0
    return-void

    .line 3289
    :cond_4
    iget v0, p0, Lcom/my/target/core/engines/f;->n:I

    if-lez v0, :cond_6

    .line 3291
    const-string v0, "ok"

    .line 3297
    :goto_1
    iget-object v1, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    if-eqz v1, :cond_3

    .line 3299
    iget-object v1, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    if-eqz v1, :cond_5

    .line 3301
    iget-object v1, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    iget-object v2, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v1, v2}, Lcom/my/target/ads/MyTargetVideoView;->removeView(Landroid/view/View;)V

    .line 3302
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    .line 3305
    :cond_5
    iget-object v1, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    invoke-virtual {v1}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3307
    iget-object v1, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    invoke-virtual {v1}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/engines/f;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    invoke-interface {v1, v2, v3, v0}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/MyTargetVideoView;Ljava/lang/String;)V

    goto :goto_0

    .line 3294
    :cond_6
    const-string v0, "error"

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Lcom/my/target/core/engines/a;->b()V

    .line 2226
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    const-string v2, "playbackResumed"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 2229
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer;->b()V

    .line 76
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/my/target/core/engines/a;->c()V

    .line 2245
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    const-string v2, "playbackStopped"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 2248
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoContainer;->a(Z)V

    .line 2249
    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    invoke-virtual {v0, v1}, Lcom/my/target/ads/MyTargetVideoView;->removeView(Landroid/view/View;)V

    .line 83
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/my/target/core/engines/f;->c()V

    .line 89
    invoke-super {p0}, Lcom/my/target/core/engines/a;->f()V

    .line 90
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 255
    iget v0, p0, Lcom/my/target/core/engines/f;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/engines/f;->n:I

    .line 256
    const/4 v0, 0x1

    const-string v1, "ok"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/my/target/core/engines/f;->a(ZLjava/lang/String;Z)V

    .line 257
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/ads/MyTargetVideoView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetVideoView;->getListener()Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Lcom/my/target/core/ui/views/VideoContainer;

    .line 407
    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/i;)V

    .line 411
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/my/target/core/engines/f;->c()V

    .line 416
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/facades/d;

    iget-object v1, p0, Lcom/my/target/core/engines/f;->k:Lcom/my/target/core/models/banners/i;

    const-string v2, "closedByUser"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/d;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V

    .line 417
    return-void
.end method
