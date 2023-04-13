.class public Lcom/cmcm/picks/mixad/IMixBoxAd;
.super Ljava/lang/Object;
.source "IMixBoxAd.java"

# interfaces
.implements Lcom/cmcm/picks/mixad/IAd;


# instance fields
.field private ad:Lcom/cmcm/picks/loader/Ad;

.field private isImpressionReport:Z

.field private mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

.field private mContext:Landroid/content/Context;

.field private mIMixBoxDownloadListener:Lcom/cmcm/picks/mixad/IMixBoxDownloadListener;

.field private mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

.field private mPosId:Ljava/lang/String;

.field private mViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/mixad/MixBeans;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;
    .param p3, "mMixBeans"    # Lcom/cmcm/picks/mixad/MixBeans;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    .line 24
    iput-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mIMixBoxDownloadListener:Lcom/cmcm/picks/mixad/IMixBoxDownloadListener;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->isImpressionReport:Z

    .line 28
    iput-object p1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mPosId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    .line 31
    invoke-direct {p0}, Lcom/cmcm/picks/mixad/IMixBoxAd;->initParams()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/picks/mixad/IMixBoxAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/picks/mixad/IMixBoxAd;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cmcm/picks/mixad/IMixBoxAd;->clicked()V

    return-void
.end method

.method private clicked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mPosId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mPosId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/cmcm/picks/market/MarketUtils;->openOrDownloadAdNoDialog(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/util/Map;)V

    .line 199
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mPosId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/mixad/MixBeans;->setClicked(Ljava/lang/String;Z)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    invoke-interface {v0}, Lcom/cmcm/picks/mixad/IMixBoxDelegate;->onClicked()V

    .line 204
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    invoke-interface {v0}, Lcom/cmcm/picks/mixad/IMixBoxDelegate;->onHideReddot()V

    .line 207
    :cond_1
    return-void
.end method

.method private impression()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 175
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_3

    .line 176
    iget-boolean v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->isImpressionReport:Z

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mPosId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v2}, Lcom/cmcm/picks/mixad/MixBeans;->getPkg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v3}, Lcom/cmcm/picks/mixad/MixBeans;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/cmcm/picks/mixad/MixBeans;->savePkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 178
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mPosId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "view"

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    iget-object v2, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mPosId:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    iput-boolean v6, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->isImpressionReport:Z

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    invoke-interface {v0}, Lcom/cmcm/picks/mixad/IMixBoxDelegate;->onImpressioned()V

    .line 185
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getType()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getBox_reddot()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mPosId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/mixad/MixBeans;->isClickedInOneDay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    invoke-interface {v0}, Lcom/cmcm/picks/mixad/IMixBoxDelegate;->onHideReddot()V

    .line 193
    :cond_3
    :goto_0
    return-void

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    invoke-interface {v0}, Lcom/cmcm/picks/mixad/IMixBoxDelegate;->onShowReddot()V

    goto :goto_0
.end method

.method private initParams()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/picks/loader/Ad;->createAd(Ljava/lang/String;)Lcom/cmcm/picks/loader/Ad;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    .line 37
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v1}, Lcom/cmcm/picks/mixad/MixBeans;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/Ad;->setDeepLink(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v1}, Lcom/cmcm/picks/mixad/MixBeans;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/Ad;->setPkg(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v1}, Lcom/cmcm/picks/mixad/MixBeans;->getPkg_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/Ad;->setPkgUrl(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v1}, Lcom/cmcm/picks/mixad/MixBeans;->getMt_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/Ad;->setMtType(I)V

    .line 41
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v1}, Lcom/cmcm/picks/mixad/MixBeans;->getThird_imp_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/Ad;->setThirdImpUrl(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v1}, Lcom/cmcm/picks/mixad/MixBeans;->getClick_tracking_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/Ad;->setClickTrackingUrl(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v1}, Lcom/cmcm/picks/mixad/MixBeans;->getDes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/Ad;->setDes(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v1}, Lcom/cmcm/picks/mixad/MixBeans;->getRes_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/Ad;->setResType(I)V

    .line 45
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->ad:Lcom/cmcm/picks/loader/Ad;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v1}, Lcom/cmcm/picks/mixad/MixBeans;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/Ad;->setTitle(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getButton_txt()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getDesc()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdType()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getType()I

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackGroundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getBackground()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGifShowTimes()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getGiftimes()I

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageOrGifUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getPic_url()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getSource()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplashAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getSplashImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplashShowtime()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getSplashShowtime()I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    invoke-virtual {v0}, Lcom/cmcm/picks/mixad/MixBeans;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickedToday()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mPosId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/mixad/MixBeans;->isClickedInOneDay(Ljava/lang/String;)Z

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowedToday()Z
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mPosId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/mixad/MixBeans;->isShowedInOneDay(Ljava/lang/String;)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mMixBeans:Lcom/cmcm/picks/mixad/MixBeans;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mViewId:I

    if-ne v0, v1, :cond_1

    .line 166
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 150
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mViewId:I

    .line 151
    invoke-direct {p0}, Lcom/cmcm/picks/mixad/IMixBoxAd;->impression()V

    .line 152
    new-instance v1, Lcom/cmcm/picks/mixad/IMixBoxAd$1;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/mixad/IMixBoxAd$1;-><init>(Lcom/cmcm/picks/mixad/IMixBoxAd;)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 160
    check-cast p1, Landroid/view/ViewGroup;

    .line 161
    .end local p1    # "view":Landroid/view/View;
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 163
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMixBoxDelegate(Lcom/cmcm/picks/mixad/IMixBoxDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    if-nez v0, :cond_0

    .line 212
    iput-object p1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mAdDelegate:Lcom/cmcm/picks/mixad/IMixBoxDelegate;

    .line 214
    :cond_0
    return-void
.end method

.method public setMixBoxDownloadListener(Lcom/cmcm/picks/mixad/IMixBoxDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cmcm/picks/mixad/IMixBoxDownloadListener;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mIMixBoxDownloadListener:Lcom/cmcm/picks/mixad/IMixBoxDownloadListener;

    .line 219
    return-void
.end method

.method public unregisterView()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmcm/picks/mixad/IMixBoxAd;->mViewId:I

    .line 171
    return-void
.end method
