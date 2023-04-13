.class public Lcom/my/target/nativeads/views/ContentWallAdView;
.super Lcom/my/target/core/ui/views/AbstractNativeAdView;
.source "ContentWallAdView.java"


# instance fields
.field private shadeLayout:Landroid/widget/LinearLayout;

.field private shadeParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/my/target/core/ui/views/AbstractNativeAdView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getAdvertisingTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAgeRestrictionTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    return-object v0
.end method

.method public getMediaAdView()Lcom/my/target/nativeads/views/MediaAdView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    return-object v0
.end method

.method public loadImages()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/core/models/banners/f;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 110
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v2}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/net/b;->a(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setupView(Lcom/my/target/core/models/banners/f;)V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 45
    invoke-super {p0, p1}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->setupView(Lcom/my/target/core/models/banners/f;)V

    .line 47
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/ContentWallAdView;->removeView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 51
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/ContentWallAdView;->addView(Landroid/view/View;)V

    .line 55
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/ContentWallAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->shadeLayout:Landroid/widget/LinearLayout;

    .line 56
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->shadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->shadeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v3, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v4, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->shadeLayout:Landroid/widget/LinearLayout;

    const-string v1, "#55000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 59
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->shadeParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->shadeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->shadeParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->url2Label:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->title2Label:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->descriptionLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v5}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/BorderedTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->shadeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->shadeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->shadeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/ContentWallAdView;->addView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v7}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 81
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 84
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAdvertisingLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v5}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/nativeads/views/MediaAdView;->setPlaceHolderDimension(II)V

    goto :goto_1
.end method
