.class public Lcom/cmcm/adsdk/banner/CMNativeBannerView;
.super Lcom/cmcm/adsdk/banner/CMAdView;
.source "CMNativeBannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/banner/CMNativeBannerView$ImgBitMapListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CMNativeBannerView"


# instance fields
.field private mCmIcon:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mImgIcon:Landroid/widget/ImageView;

.field private mLLOriginBanner:Landroid/widget/RelativeLayout;

.field private mMainImg:Landroid/widget/ImageView;

.field private mNativeAdManager:Lcom/cmcm/adsdk/nativead/NativeAdManager;

.field private mTvDescibe:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mTv_buttonText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/cmcm/adsdk/banner/CMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object p1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/banner/CMNativeBannerView;)Lcom/cmcm/adsdk/nativead/NativeAdManager;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mNativeAdManager:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmcm/adsdk/banner/CMNativeBannerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/banner/CMNativeBannerView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->callBackFailed(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/cmcm/adsdk/banner/CMNativeBannerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/banner/CMNativeBannerView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private callBackFailed(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    invoke-interface {v0, p0, p1}, Lcom/cmcm/adsdk/banner/CMBannerAdListener;->adFailedToLoad(Lcom/cmcm/adsdk/banner/CMAdView;I)V

    .line 197
    :cond_0
    return-void
.end method

.method private downLoadImg(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "img"    # Landroid/widget/ImageView;

    .prologue
    .line 186
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v0

    .line 187
    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/cmcm/adsdk/utils/ImgAsynTask;

    invoke-direct {v0, p1, p2}, Lcom/cmcm/adsdk/utils/ImgAsynTask;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/utils/ImgAsynTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v1, Lcom/cmcm/adsdk/banner/CMNativeBannerView$ImgBitMapListener;

    invoke-direct {v1, p0, p2}, Lcom/cmcm/adsdk/banner/CMNativeBannerView$ImgBitMapListener;-><init>(Lcom/cmcm/adsdk/banner/CMNativeBannerView;Landroid/widget/ImageView;)V

    invoke-interface {v0, p1, v1}, Lcom/cmcm/adsdk/ImageDownloadListener;->getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected internalLoadAd()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "CMNativeBannerView"

    const-string v1, " CMNative internalLoadAd"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->invalidateView()V

    .line 110
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mNativeAdManager:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mNativeAdManager:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManager;->preloadAd()V

    .line 113
    :cond_0
    return-void
.end method

.method protected invalidateView()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->isFirstLoaded:Z

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    .line 223
    return-void
.end method

.method public loadAd()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->posid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "CMNativeBannerView"

    const-string v1, "posId is null"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/16 v0, 0x2719

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->callBackFailed(I)V

    .line 103
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mNativeAdManager:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/cmcm/adsdk/nativead/NativeAdManager;

    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->posid:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/adsdk/nativead/NativeAdManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mNativeAdManager:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mNativeAdManager:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    new-instance v1, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;

    invoke-direct {v1, p0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView$1;-><init>(Lcom/cmcm/adsdk/banner/CMNativeBannerView;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/nativead/NativeAdManager;->setNativeAdListener(Lcom/cmcm/baseapi/ads/INativeAdLoaderListener;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mAdWasLoaded:Z

    .line 102
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mNativeAdManager:Lcom/cmcm/adsdk/nativead/NativeAdManager;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManager;->loadAd()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->invalidateView()V

    .line 228
    invoke-super {p0}, Lcom/cmcm/adsdk/banner/CMAdView;->onDestroy()V

    .line 229
    return-void
.end method

.method public renderBannerData(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 3
    .param p1, "iNativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 139
    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mTvDescibe:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_1
    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mImgIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->downLoadImg(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 152
    :cond_2
    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mMainImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mMainImg:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->downLoadImg(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 156
    :cond_3
    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 158
    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mTv_buttonText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mLLOriginBanner:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v0}, Lcom/cmcm/baseapi/ads/INativeAd;->registerViewForInteraction(Landroid/view/View;)Z

    .line 163
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mBannerAdListener:Lcom/cmcm/adsdk/banner/CMBannerAdListener;

    invoke-interface {v0, p0}, Lcom/cmcm/adsdk/banner/CMBannerAdListener;->onAdLoaded(Lcom/cmcm/adsdk/banner/CMAdView;)V

    .line 167
    :cond_4
    invoke-interface {p1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mCmIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/cmcm/adsdk/banner/CMNativeBannerView$2;

    invoke-direct {v1, p0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView$2;-><init>(Lcom/cmcm/adsdk/banner/CMNativeBannerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :goto_1
    return-void

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mTv_buttonText:Landroid/widget/TextView;

    const-string v1, "LEARN MORE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mCmIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public renderBannerView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 116
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    sget-object v1, Lcom/cmcm/adsdk/banner/CMBannerAdSize;->BANNER_300_250:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    sget-object v1, Lcom/cmcm/adsdk/banner/CMBannerAdSize;->BANNER_320_50:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-eq v0, v1, :cond_1

    .line 117
    :cond_0
    const-string v0, "CMNativeBannerView"

    const-string v1, "adSize must be set"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/16 v0, 0x271a

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->callBackFailed(I)V

    .line 136
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    sget-object v1, Lcom/cmcm/adsdk/banner/CMBannerAdSize;->BANNER_300_250:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-ne v0, v1, :cond_3

    .line 122
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cmcm/adsdk/R$layout;->origin_picks_banner_mid:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    sget v1, Lcom/cmcm/adsdk/R$id;->img_mainbackground:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mMainImg:Landroid/widget/ImageView;

    .line 127
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    sget v1, Lcom/cmcm/adsdk/R$id;->ll_parentGroup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mLLOriginBanner:Landroid/widget/RelativeLayout;

    .line 128
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    sget v1, Lcom/cmcm/adsdk/R$id;->img_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mImgIcon:Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    sget v1, Lcom/cmcm/adsdk/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mTvTitle:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    sget v1, Lcom/cmcm/adsdk/R$id;->tv_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mTvDescibe:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    sget v1, Lcom/cmcm/adsdk/R$id;->cm_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mCmIcon:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    sget v1, Lcom/cmcm/adsdk/R$id;->tv_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mTv_buttonText:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->removeAllViews()V

    .line 134
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->addView(Landroid/view/View;)V

    .line 135
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->adSize:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    sget-object v1, Lcom/cmcm/adsdk/banner/CMBannerAdSize;->BANNER_320_50:Lcom/cmcm/adsdk/banner/CMBannerAdSize;

    if-ne v0, v1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cmcm/adsdk/R$layout;->origin_picks_banner_smail:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/banner/CMNativeBannerView;->mView:Landroid/view/View;

    goto :goto_1
.end method
