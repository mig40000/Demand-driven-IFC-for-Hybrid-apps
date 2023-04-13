.class public Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;
.super Landroid/app/Activity;
.source "PicksInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;
    }
.end annotation


# static fields
.field private static sInterstitialAdCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

.field private static sNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

.field private static sOverClickEnable:Z


# instance fields
.field private mAdBodyView:Landroid/view/View;

.field private mAdCallToActionBtn:Landroid/widget/Button;

.field private mAdCloseView:Landroid/widget/ImageView;

.field private mAdCoverImageView:Landroid/widget/ImageView;

.field private mAdDes:Landroid/widget/TextView;

.field private mAdDetailView:Landroid/view/View;

.field private mAdIconView:Landroid/widget/ImageView;

.field private mAdTitleTV:Landroid/widget/TextView;

.field private mHanldeClickListener:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sOverClickEnable:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sInterstitialAdCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 177
    new-instance v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;-><init>(Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;)V

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mHanldeClickListener:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;

    .line 178
    return-void
.end method

.method static synthetic access$000()Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sInterstitialAdCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdCoverImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300()Lcom/cmcm/baseapi/ads/INativeAd;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    return-object v0
.end method

.method private setCoverImageView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 106
    invoke-static {p0}, Lcom/cmcm/utils/Commons;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/cmcm/utils/Commons;->dip2px(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 107
    int-to-double v2, v0

    const-wide v4, 0x3ffe666666666666L    # 1.9

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 109
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/cmcm/utils/Commons;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 110
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {v3, v6, v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 112
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdCoverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method

.method public static setInterstitialAdCallBack(Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;)V
    .locals 0
    .param p0, "callBack"    # Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    .prologue
    .line 193
    sput-object p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sInterstitialAdCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    .line 194
    return-void
.end method

.method public static setNativeAd(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 0
    .param p0, "ad"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 154
    sput-object p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    .line 155
    return-void
.end method

.method public static setOverClickEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 174
    sput-boolean p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sOverClickEnable:Z

    .line 175
    return-void
.end method


# virtual methods
.method public fillAdData()V
    .locals 3

    .prologue
    .line 118
    sget-object v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v0

    sget-object v1, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$3;

    invoke-direct {v2, p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$3;-><init>(Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/cmcm/adsdk/ImageDownloadListener;->getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V

    .line 130
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManagerFactory;->getImageDownloadListener()Lcom/cmcm/adsdk/ImageDownloadListener;

    move-result-object v0

    sget-object v1, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$4;

    invoke-direct {v2, p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$4;-><init>(Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/cmcm/adsdk/ImageDownloadListener;->getBitmap(Ljava/lang/String;Lcom/cmcm/adsdk/BitmapListener;)V

    .line 142
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdTitleTV:Landroid/widget/TextView;

    sget-object v1, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdDes:Landroid/widget/TextView;

    sget-object v1, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdCallToActionBtn:Landroid/widget/Button;

    sget-object v1, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sNativeAd:Lcom/cmcm/baseapi/ads/INativeAd;

    invoke-interface {v1}, Lcom/cmcm/baseapi/ads/INativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    sget-object v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sInterstitialAdCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sInterstitialAdCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    invoke-interface {v0}, Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;->onAdDisplayed()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->finish()V

    goto :goto_0
.end method

.method public initUI()V
    .locals 2

    .prologue
    .line 57
    sget v0, Lcom/cmcm/adsdk/R$id;->root_view:I

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mRootView:Landroid/view/View;

    .line 58
    sget v0, Lcom/cmcm/adsdk/R$id;->iv_icon:I

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdIconView:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcom/cmcm/adsdk/R$id;->iv_coverimage:I

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdCoverImageView:Landroid/widget/ImageView;

    .line 60
    sget v0, Lcom/cmcm/adsdk/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdCloseView:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/cmcm/adsdk/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdTitleTV:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/cmcm/adsdk/R$id;->ll_ad_detail:I

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdDetailView:Landroid/view/View;

    .line 63
    sget v0, Lcom/cmcm/adsdk/R$id;->tv_des:I

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdDes:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/cmcm/adsdk/R$id;->btn_calltoaction:I

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdCallToActionBtn:Landroid/widget/Button;

    .line 65
    sget v0, Lcom/cmcm/adsdk/R$id;->ll_ad_body:I

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdBodyView:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mRootView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 67
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mHanldeClickListener:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdTitleTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mHanldeClickListener:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdDes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mHanldeClickListener:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdBodyView:Landroid/view/View;

    iget-object v1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mHanldeClickListener:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdCallToActionBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mHanldeClickListener:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdDetailView:Landroid/view/View;

    new-instance v1, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$1;

    invoke-direct {v1, p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$1;-><init>(Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mAdCloseView:Landroid/widget/ImageView;

    new-instance v1, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$2;

    invoke-direct {v1, p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$2;-><init>(Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget-boolean v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sOverClickEnable:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->mHanldeClickListener:Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity$MyHanlderClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->setCoverImageView()V

    .line 101
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 160
    sget-object v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sInterstitialAdCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->sInterstitialAdCallBack:Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;

    invoke-interface {v0}, Lcom/cmcm/adsdk/interstitial/InterstitialAdCallBack;->onAdDismissed()V

    .line 163
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 51
    sget v0, Lcom/cmcm/adsdk/R$layout;->cm_activity_picks_interstitial:I

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->initUI()V

    .line 53
    invoke-virtual {p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->fillAdData()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    invoke-virtual {p0}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 169
    invoke-virtual {p0, v1}, Lcom/cmcm/adsdk/interstitial/PicksInterstitialActivity;->setRequestedOrientation(I)V

    .line 171
    :cond_0
    return-void
.end method
