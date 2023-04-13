.class public Lcom/my/target/nativeads/views/MediaAdView;
.super Landroid/widget/RelativeLayout;
.source "MediaAdView.java"


# static fields
.field protected static final COLOR_PLACEHOLDER_GRAY:I = -0x111112

.field private static final IMAGE_CONTENT_DESCRIPTION:Ljava/lang/String; = "mvmi"

.field private static final PLAY_BUTTON_CONTENT_DESCRIPTION:Ljava/lang/String; = "mvpb"

.field private static final PROGRESS_BAR_CONTENT_DESCRIPTION:Ljava/lang/String; = "mvpr"


# instance fields
.field private final imageView:Lcom/my/target/core/ui/views/CacheImageView;

.field private placeholderHeight:I

.field private placeholderWidth:I

.field private final playButton:Lcom/my/target/core/ui/views/CacheImageView;

.field private final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/my/target/nativeads/views/MediaAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/nativeads/views/MediaAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/MediaAdView;->imageView:Lcom/my/target/core/ui/views/CacheImageView;

    .line 41
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/MediaAdView;->playButton:Lcom/my/target/core/ui/views/CacheImageView;

    .line 42
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010077

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/MediaAdView;->progressBar:Landroid/widget/ProgressBar;

    .line 43
    invoke-direct {p0, p1}, Lcom/my/target/nativeads/views/MediaAdView;->initViews(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 48
    const v0, -0x111112

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/MediaAdView;->setBackgroundColor(I)V

    .line 49
    iget-object v0, p0, Lcom/my/target/nativeads/views/MediaAdView;->imageView:Lcom/my/target/core/ui/views/CacheImageView;

    const-string v1, "mvmi"

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    iget-object v1, p0, Lcom/my/target/nativeads/views/MediaAdView;->imageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v1, v0}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57
    iget-object v1, p0, Lcom/my/target/nativeads/views/MediaAdView;->progressBar:Landroid/widget/ProgressBar;

    const-string v2, "mvpr"

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/my/target/nativeads/views/MediaAdView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/my/target/nativeads/views/MediaAdView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, -0xff540e

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 63
    iget-object v1, p0, Lcom/my/target/nativeads/views/MediaAdView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69
    iget-object v2, p0, Lcom/my/target/nativeads/views/MediaAdView;->playButton:Lcom/my/target/core/ui/views/CacheImageView;

    const-string v3, "mvpb"

    invoke-virtual {v2, v3}, Lcom/my/target/core/ui/views/CacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/my/target/nativeads/views/MediaAdView;->playButton:Lcom/my/target/core/ui/views/CacheImageView;

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/my/target/core/resources/a;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v0, p0, Lcom/my/target/nativeads/views/MediaAdView;->playButton:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v6}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/my/target/nativeads/views/MediaAdView;->playButton:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getImageView()Lcom/my/target/core/ui/views/CacheImageView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/my/target/nativeads/views/MediaAdView;->imageView:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method public getPlayButtonView()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/my/target/nativeads/views/MediaAdView;->playButton:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method public getProgressBarView()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/my/target/nativeads/views/MediaAdView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 95
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 96
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 98
    if-nez v5, :cond_d

    move v6, v1

    .line 101
    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    .line 104
    :cond_0
    iget v5, p0, Lcom/my/target/nativeads/views/MediaAdView;->placeholderHeight:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/my/target/nativeads/views/MediaAdView;->placeholderWidth:I

    if-nez v5, :cond_2

    .line 106
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 183
    :goto_1
    return-void

    .line 110
    :cond_2
    iget v5, p0, Lcom/my/target/nativeads/views/MediaAdView;->placeholderWidth:I

    int-to-float v5, v5

    iget v7, p0, Lcom/my/target/nativeads/views/MediaAdView;->placeholderHeight:I

    int-to-float v7, v7

    div-float v7, v5, v7

    .line 112
    const/4 v5, 0x0

    .line 113
    if-eqz v4, :cond_3

    .line 114
    int-to-float v5, v2

    int-to-float v8, v4

    div-float/2addr v5, v8

    .line 119
    :cond_3
    if-ne v6, v9, :cond_4

    if-ne v0, v9, :cond_4

    move v0, v2

    move v3, v4

    .line 180
    :goto_2
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 181
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 182
    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_1

    .line 123
    :cond_4
    if-ne v6, v1, :cond_8

    if-ne v0, v1, :cond_8

    .line 125
    cmpg-float v0, v7, v5

    if-gez v0, :cond_6

    .line 127
    int-to-float v0, v4

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 129
    if-lez v2, :cond_5

    if-le v0, v2, :cond_5

    .line 131
    int-to-float v0, v2

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v0, v2

    .line 132
    goto :goto_2

    :cond_5
    move v3, v4

    .line 138
    goto :goto_2

    .line 140
    :cond_6
    int-to-float v0, v2

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 142
    if-lez v4, :cond_7

    if-le v3, v4, :cond_7

    .line 144
    int-to-float v0, v4

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v3, v4

    .line 145
    goto :goto_2

    :cond_7
    move v0, v2

    .line 151
    goto :goto_2

    .line 152
    :cond_8
    if-ne v6, v1, :cond_a

    if-ne v0, v9, :cond_a

    .line 154
    int-to-float v0, v4

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 156
    if-lez v2, :cond_9

    if-le v0, v2, :cond_9

    .line 158
    int-to-float v0, v2

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v0, v2

    .line 159
    goto :goto_2

    :cond_9
    move v3, v4

    .line 165
    goto :goto_2

    :cond_a
    if-ne v6, v9, :cond_c

    if-ne v0, v1, :cond_c

    .line 167
    int-to-float v0, v2

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 169
    if-lez v4, :cond_b

    if-le v3, v4, :cond_b

    .line 171
    int-to-float v0, v4

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v3, v4

    .line 172
    goto :goto_2

    :cond_b
    move v0, v2

    .line 176
    goto :goto_2

    :cond_c
    move v0, v3

    goto :goto_2

    :cond_d
    move v6, v5

    goto/16 :goto_0
.end method

.method public setPlaceHolderDimension(II)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/my/target/nativeads/views/MediaAdView;->placeholderWidth:I

    .line 188
    iput p2, p0, Lcom/my/target/nativeads/views/MediaAdView;->placeholderHeight:I

    .line 189
    return-void
.end method
