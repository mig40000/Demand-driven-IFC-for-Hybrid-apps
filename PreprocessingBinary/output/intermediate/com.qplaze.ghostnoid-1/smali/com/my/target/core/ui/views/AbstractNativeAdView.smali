.class public abstract Lcom/my/target/core/ui/views/AbstractNativeAdView;
.super Landroid/widget/RelativeLayout;
.source "AbstractNativeAdView.java"


# static fields
.field protected static final AD_ID:I = 0x106

.field protected static final AGE_ID:I = 0x100

.field protected static final COLOR_PLACEHOLDER_GRAY:I = -0x111112

.field protected static final CTA_ID:I = 0x10a

.field protected static final DESC_ID:I = 0x105

.field protected static final ICON_ID:I = 0x101

.field protected static final IMAGE_ID:I = 0x107

.field protected static final LABELS_ID:I = 0x102

.field protected static final RATING_ID:I = 0x10d

.field protected static final STARS_ID:I = 0x10b

.field protected static final TITLE_2_ID:I = 0x108

.field protected static final TITLE_ID:I = 0x103

.field protected static final URL_2_ID:I = 0x109

.field protected static final URL_ID:I = 0x104

.field protected static final VOTES_ID:I = 0x10c


# instance fields
.field protected final advertisingLabel:Landroid/widget/TextView;

.field protected advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

.field protected ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected banner:Lcom/my/target/core/models/banners/f;

.field protected final ctaButton:Landroid/widget/Button;

.field protected ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final descriptionLabel:Landroid/widget/TextView;

.field protected descriptionLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final disclaimerLabel:Landroid/widget/TextView;

.field protected disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

.field protected final labelsLayout:Landroid/widget/LinearLayout;

.field protected labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

.field protected mediaAdViewParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final ratingLayout:Landroid/widget/LinearLayout;

.field protected ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected starsParams:Landroid/widget/LinearLayout$LayoutParams;

.field protected final starsView:Lcom/my/target/nativeads/views/StarsRatingView;

.field protected final title2Label:Landroid/widget/TextView;

.field protected title2Params:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final titleLabel:Landroid/widget/TextView;

.field protected titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final uiUtils:Lcom/my/target/core/utils/l;

.field protected final url2Label:Landroid/widget/TextView;

.field protected url2Params:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final urlLabel:Landroid/widget/TextView;

.field protected urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final votesLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/BorderedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    .line 92
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->advertisingLabel:Landroid/widget/TextView;

    .line 93
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    .line 94
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayout:Landroid/widget/LinearLayout;

    .line 95
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->titleLabel:Landroid/widget/TextView;

    .line 96
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->urlLabel:Landroid/widget/TextView;

    .line 97
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->descriptionLabel:Landroid/widget/TextView;

    .line 98
    invoke-static {p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getMediaAdView(Landroid/content/Context;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    .line 99
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Label:Landroid/widget/TextView;

    .line 100
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->url2Label:Landroid/widget/TextView;

    .line 101
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ratingLayout:Landroid/widget/LinearLayout;

    .line 102
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 103
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->votesLabel:Landroid/widget/TextView;

    .line 104
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->disclaimerLabel:Landroid/widget/TextView;

    .line 105
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    .line 107
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 109
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->initView()V

    .line 110
    return-void
.end method

.method private updateDefaultParams()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, -0x1000000

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v3, 0x2

    const v2, -0x666667

    .line 282
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 283
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v6, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 284
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBackgroundColor(I)V

    .line 286
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 287
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->titleLabel:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 291
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->titleLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 293
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 296
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->descriptionLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->descriptionLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 299
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Label:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Label:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 301
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Label:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 303
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->url2Label:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->url2Label:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->votesLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->votesLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 309
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->disclaimerLabel:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 312
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 313
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 114
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->setPadding(IIII)V

    .line 117
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setId(I)V

    .line 118
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    const v1, -0x777778

    invoke-virtual {v0, v6, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 119
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v8, v8, v8}, Lcom/my/target/core/ui/views/BorderedTextView;->setPadding(IIII)V

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 121
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 122
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->advertisingLabel:Landroid/widget/TextView;

    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 125
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 126
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x100

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 127
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->advertisingLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setId(I)V

    .line 131
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0x36

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 132
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x106

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 134
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 138
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 140
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x106

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x101

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 144
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 145
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->titleLabel:Landroid/widget/TextView;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 148
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 149
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->titleLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->urlLabel:Landroid/widget/TextView;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 152
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 153
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 154
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->urlLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->descriptionLabel:Landroid/widget/TextView;

    const/16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 157
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->descriptionLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 158
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->descriptionLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 159
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->descriptionLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->descriptionLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    const/16 v1, 0x107

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setId(I)V

    .line 163
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 164
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x102

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 166
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Label:Landroid/widget/TextView;

    const/16 v1, 0x108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 170
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Params:Landroid/widget/RelativeLayout$LayoutParams;

    .line 171
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x107

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Params:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v9}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 173
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Label:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->url2Label:Landroid/widget/TextView;

    const/16 v1, 0x109

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 176
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->url2Params:Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->url2Params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x108

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 178
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->url2Label:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->url2Params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ratingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x10d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 181
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 182
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x108

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 184
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    const/16 v1, 0x10b

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setId(I)V

    .line 187
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 189
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->votesLabel:Landroid/widget/TextView;

    const/16 v1, 0x10c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 193
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 194
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x10d

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->disclaimerLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    const/16 v1, 0x10a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 198
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 199
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 200
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x108

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 201
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 205
    const v0, -0x3a1508

    invoke-static {p0, v8, v0}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 207
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 209
    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const v2, -0x333334

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 210
    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 212
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 215
    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    const v3, -0x333334

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 216
    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 218
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 219
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v8

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 220
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual {p0, v6}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->setClickable(Z)V

    .line 227
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->addView(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->addView(Landroid/view/View;)V

    .line 229
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->addView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->addView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->descriptionLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->addView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->title2Label:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->addView(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->url2Label:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->addView(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->addView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->addView(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->addView(Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->votesLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    invoke-direct {p0}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->updateDefaultParams()V

    .line 248
    return-void

    .line 207
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 212
    :array_1
    .array-data 4
        -0x3a1508
        -0x3a1508
    .end array-data
.end method

.method public abstract loadImages()V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 256
    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    .line 257
    invoke-virtual {v2}, Landroid/widget/Button;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    .line 258
    invoke-virtual {v2}, Landroid/widget/Button;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->ctaButton:Landroid/widget/Button;

    .line 259
    invoke-virtual {v2}, Landroid/widget/Button;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 262
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 275
    :goto_0
    return v0

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->banner:Lcom/my/target/core/models/banners/f;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->banner:Lcom/my/target/core/models/banners/f;

    .line 266
    invoke-virtual {v2}, Lcom/my/target/core/models/banners/f;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    .line 267
    invoke-virtual {v2}, Lcom/my/target/nativeads/views/MediaAdView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    .line 268
    invoke-virtual {v2}, Lcom/my/target/nativeads/views/MediaAdView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    .line 269
    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    .line 270
    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 273
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0, p1}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setupView(Lcom/my/target/core/models/banners/f;)V
    .locals 2

    .prologue
    .line 316
    iput-object p1, p0, Lcom/my/target/core/ui/views/AbstractNativeAdView;->banner:Lcom/my/target/core/models/banners/f;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setup banner type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 318
    return-void
.end method
