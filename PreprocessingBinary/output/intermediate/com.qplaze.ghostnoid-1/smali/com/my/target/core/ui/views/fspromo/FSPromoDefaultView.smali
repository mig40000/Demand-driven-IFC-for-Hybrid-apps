.class public Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;
.super Lcom/my/target/core/ui/views/fspromo/FSPromoView;
.source "FSPromoDefaultView.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private final d:Lcom/my/target/core/ui/views/CacheImageView;

.field private final e:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

.field private final f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

.field private final g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

.field private final h:Lcom/my/target/core/ui/views/controls/IconButton;

.field private final i:Lcom/my/target/core/ui/views/VideoProgressWheel;

.field private final j:Lcom/my/target/core/utils/l;

.field private final k:Z

.field private final l:Lcom/my/target/core/ui/views/controls/IconButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->a:I

    .line 26
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->b:I

    .line 27
    invoke-static {}, Lcom/my/target/core/utils/l;->b()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 263
    invoke-direct {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-lt v0, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Z

    .line 268
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    .line 270
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->d:Lcom/my/target/core/ui/views/CacheImageView;

    .line 271
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->d:Lcom/my/target/core/ui/views/CacheImageView;

    const-string v2, "fsic"

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 273
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    iget-boolean v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Z

    invoke-direct {v0, p1, v2, v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;-><init>(Landroid/content/Context;Lcom/my/target/core/utils/l;Z)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    .line 274
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->b:I

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->setId(I)V

    .line 275
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    iget-boolean v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Z

    invoke-direct {v0, p1, v2, v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;-><init>(Landroid/content/Context;Lcom/my/target/core/utils/l;Z)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    .line 276
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->a:I

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setId(I)V

    .line 278
    new-instance v0, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 279
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/controls/IconButton;

    const-string v2, "fscl"

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 280
    new-instance v0, Lcom/my/target/core/ui/views/VideoProgressWheel;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/VideoProgressWheel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/VideoProgressWheel;

    .line 282
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->a:I

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 286
    new-instance v2, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    invoke-direct {v2, p1, v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;-><init>(Landroid/content/Context;Lcom/my/target/core/utils/l;)V

    iput-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    .line 287
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 290
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v3, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->c:I

    invoke-virtual {v2, v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setId(I)V

    .line 293
    new-instance v2, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v2, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 295
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {p0, v2, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;I)V

    .line 296
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->d:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v2, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;I)V

    .line 297
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    invoke-virtual {p0, v2, v1, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;)V

    .line 301
    return-void

    :cond_0
    move v0, v1

    .line 264
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)Lcom/my/target/core/ui/views/controls/IconButton;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    return-object v0
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(I)V

    .line 211
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/VideoProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c([Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Z)V

    .line 165
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d()Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/my/target/core/ui/views/controls/IconButton;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    return-object v0
.end method

.method protected final b(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, -0x2

    .line 216
    invoke-super {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b(I)V

    .line 217
    if-ne p1, v5, :cond_1

    .line 219
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->d:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 223
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    const/4 v1, 0x2

    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 227
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c([Landroid/view/View;)V

    .line 259
    :goto_1
    return-void

    .line 230
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->d:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$2;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)V

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->post(Ljava/lang/Runnable;)Z

    .line 248
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 251
    const/4 v1, 0x2

    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 252
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 256
    :goto_2
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 255
    :cond_3
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b([Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->b()V

    .line 146
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b([Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e()V

    .line 152
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/controls/IconButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 187
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->c()Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c([Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->f()V

    .line 205
    return-void
.end method

.method public setBanner(Lcom/my/target/core/models/banners/e;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v7, 0x1c

    const/16 v8, 0x8

    const/4 v6, -0x2

    .line 40
    invoke-super {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setBanner(Lcom/my/target/core/models/banners/e;)V

    .line 41
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/VideoProgressWheel;

    invoke-virtual {v0, v8}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setVisibility(I)V

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    .line 43
    invoke-virtual {v3, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    .line 44
    invoke-virtual {v4, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 47
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 48
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/VideoProgressWheel;

    invoke-virtual {v3, v0}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 54
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v3, v8}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 57
    :goto_0
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v3, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/controls/IconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/VideoProgressWheel;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/VideoProgressWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/VideoProgressWheel;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;)V

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 65
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v4, v5}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a(II)V

    .line 69
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setBanner(Lcom/my/target/core/models/banners/e;)V

    .line 71
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v4, v5}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->a(II)V

    .line 72
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->setBanner(Lcom/my/target/core/models/banners/e;)V

    .line 74
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a()V

    .line 75
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Lcom/my/target/core/models/banners/e;)V

    .line 77
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->l()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->l()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 79
    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->l()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 86
    :goto_1
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v0

    .line 87
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v4

    .line 89
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    iget-object v6, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 93
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 95
    int-to-float v4, v4

    int-to-float v0, v0

    div-float v0, v4, v0

    .line 97
    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    .line 98
    iget-object v6, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    float-to-int v6, v0

    .line 100
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 101
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 103
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v0, v3

    const/16 v3, 0x500

    if-ge v0, v3, :cond_6

    move v0, v1

    .line 104
    :goto_2
    if-nez v0, :cond_2

    .line 105
    neg-int v0, v6

    div-int/lit8 v0, v0, 0x2

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 108
    :cond_2
    sget v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->a:I

    invoke-virtual {v5, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 109
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/my/target/core/utils/l;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 113
    :goto_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->d:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v5}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->d:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->b()V

    .line 120
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$1;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)V

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_3
    return-void

    .line 56
    :cond_4
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v3, v8}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 82
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/controls/IconButton;

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-static {v4}, Lcom/my/target/core/resources/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 83
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 82
    invoke-virtual {v0, v4, v5}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 103
    goto :goto_2

    .line 112
    :cond_7
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/utils/l;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method public setCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method public setOnCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->setOnCTAClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setOnCTAClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method public setOnVideoClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setOnMediaClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V

    .line 176
    return-void
.end method

.method public setTimeChanged(FF)V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/VideoProgressWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/VideoProgressWheel;

    div-float v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setProgress(F)V

    .line 193
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/VideoProgressWheel;

    sub-float v1, p2, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/VideoProgressWheel;->setDigit(I)V

    .line 194
    return-void
.end method

.method public setVideoListener(Lcom/my/target/core/ui/views/VideoTextureView$a;)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setVideoListener(Lcom/my/target/core/ui/views/VideoTextureView$a;)V

    .line 306
    return-void
.end method
