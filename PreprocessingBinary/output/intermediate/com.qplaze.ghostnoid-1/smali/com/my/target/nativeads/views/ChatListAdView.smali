.class public Lcom/my/target/nativeads/views/ChatListAdView;
.super Lcom/my/target/core/ui/views/AbstractNativeAdView;
.source "ChatListAdView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/my/target/core/ui/views/AbstractNativeAdView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getAdvertisingTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAgeRestrictionTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    return-object v0
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDisclaimerTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDomainOrCategoryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method public getStarsRatingView()Lcom/my/target/nativeads/views/StarsRatingView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getVotesTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->votesLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public loadImages()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->banner:Lcom/my/target/core/models/banners/f;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 174
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/f;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/net/b;->a(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->banner:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setupView(Lcom/my/target/core/models/banners/f;)V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 72
    invoke-super {p0, p1}, Lcom/my/target/core/ui/views/AbstractNativeAdView;->setupView(Lcom/my/target/core/models/banners/f;)V

    .line 74
    const-string v0, "web"

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->url2Label:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0, v4}, Lcom/my/target/nativeads/views/MediaAdView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->url2Label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->title2Label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 132
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAdvertisingLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 145
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_2
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getDisclaimer()Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 156
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/my/target/nativeads/views/ChatListAdView;->removeView(Landroid/view/View;)V

    .line 157
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 158
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_3
    return-void

    .line 82
    :cond_1
    const-string v0, "store"

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getSubcategory()Ljava/lang/String;

    move-result-object v2

    .line 87
    const-string v0, ""

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_4
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 109
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->url2Label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 113
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->votesLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getVotes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    const v1, -0x111112

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setBackgroundColor(I)V

    .line 137
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setPlaceholderWidth(I)V

    .line 138
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setPlaceholderHeight(I)V

    goto/16 :goto_1

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method
