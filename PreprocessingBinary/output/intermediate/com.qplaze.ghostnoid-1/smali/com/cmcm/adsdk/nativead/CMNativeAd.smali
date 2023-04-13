.class public Lcom/cmcm/adsdk/nativead/CMNativeAd;
.super Lcom/cmcm/adsdk/base/CMBaseNativeAd;
.source "CMNativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;
.implements Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;


# instance fields
.field final mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

.field private mAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

.field private mAdTypeName:Ljava/lang/String;

.field private mAdView:Landroid/view/View;

.field private mAdapterAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

.field final mContext:Landroid/content/Context;

.field protected mHasReportShow:Z

.field private mPlacementId:Ljava/lang/String;

.field private mPosid:Ljava/lang/String;

.field private mReportPkgName:Ljava/lang/String;

.field private mReportRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;Ljava/util/Map;Lcom/cmcm/adsdk/base/CMBaseNativeAd;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adClickListener"    # Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;
    .param p4, "ad"    # Lcom/cmcm/adsdk/base/CMBaseNativeAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/cmcm/adsdk/base/CMBaseNativeAd;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .line 43
    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdapterAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mHasReportShow:Z

    .line 64
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mContext:Landroid/content/Context;

    .line 65
    iput-object p4, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    .line 66
    iput-object p2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdapterAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .line 68
    const-string v0, "cache_time"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    const-string v0, "cache_time"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->setCacheTime(J)V

    .line 70
    const-string v0, "cache_time"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setCacheTime(J)V

    .line 72
    :cond_0
    const-string v0, "juhe_posid"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "juhe_posid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setJuhePosid(Ljava/lang/String;)V

    .line 75
    :cond_1
    const-string v0, "report_res"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    const-string v0, "report_res"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setReportRes(I)V

    .line 78
    :cond_2
    const-string v0, "report_pkg_name"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    const-string v0, "report_pkg_name"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setReportPkgName(Ljava/lang/String;)V

    .line 81
    :cond_3
    const-string v0, "placementid"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    const-string v0, "placementid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setPlacementId(Ljava/lang/String;)V

    .line 84
    :cond_4
    const-string v0, "ad_type_name"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    const-string v0, "ad_type_name"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdTypeName:Ljava/lang/String;

    .line 88
    :cond_5
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setTitle(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setAdCoverImageUrl(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setAdIconUrl(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setAdSocialContext(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setAdCallToAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setAdBody(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdStarRating()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setAdStarRate(D)V

    .line 95
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->isDownLoadApp()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setIsDownloadApp(Ljava/lang/Boolean;)V

    .line 96
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdOnClickListener()Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setAdOnClickListener(Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V

    .line 97
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->isPriority()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setIsPriority(Z)V

    .line 98
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getExtPics()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setExtPics(Ljava/util/List;)V

    .line 99
    invoke-virtual {p4}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getMpaModule()Lcom/cmcm/picks/loader/MpaModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setMpaModule(Lcom/cmcm/picks/loader/MpaModule;)V

    .line 100
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0, p0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->setImpressionListener(Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;)V

    .line 101
    return-void
.end method

.method private recordImpression()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 230
    iget-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mHasReportShow:Z

    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/cmcm/picks/loader/Ad;

    if-eqz v0, :cond_2

    .line 235
    const-string v1, "view"

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/loader/Ad;

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mPosid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->getExtraReportParams()Ljava/util/Map;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/cmcm/utils/ReportFactory;->report(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    :goto_1
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mImpressionListener:Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mImpressionListener:Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;->onLoggingImpression()V

    .line 243
    :cond_1
    iput-boolean v8, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mHasReportShow:Z

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p0, v8}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->getRawString(I)Ljava/lang/String;

    move-result-object v7

    .line 238
    const-string v0, "view"

    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mReportPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mPosid:Ljava/lang/String;

    iget v3, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mReportRes:I

    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->getExtraReportParams()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mPlacementId:Ljava/lang/String;

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lcom/cmcm/picks/market/MarketUtils;->reportExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Lcom/cmcm/baseapi/ads/INativeAd;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getAdObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAdTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdTypeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdTypeName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMpaModule()Lcom/cmcm/picks/loader/MpaModule;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getMpaModule()Lcom/cmcm/picks/loader/MpaModule;

    move-result-object v0

    return-object v0
.end method

.method public getRawString(I)Ljava/lang/String;
    .locals 1
    .param p1, "operation"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->getRawString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public handleClick()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->handleClick()V

    .line 164
    invoke-virtual {p0, p0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 165
    return-void
.end method

.method public hasExpired()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->hasExpired()Z

    move-result v0

    .line 172
    return v0
.end method

.method public onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 1
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdapterAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdapterAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    invoke-interface {v0, p0}, Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;->onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    invoke-interface {v0, p0}, Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;->onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 212
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 177
    .line 200
    invoke-virtual {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->handleClick()V

    .line 202
    return-void
.end method

.method public onLoggingImpression()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->recordImpression()V

    .line 227
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public registerViewForInteraction(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/Map;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "reportParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mExtraReportParams:Ljava/util/Map;

    .line 130
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0, p2}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->setExtraReportParams(Ljava/util/Map;)V

    .line 133
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0, p1}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->registerViewForInteraction(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdView:Landroid/view/View;

    .line 135
    invoke-virtual {p0, p1, p0, p0}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setListener(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    .line 140
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0, p0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->setAdOnClickListener(Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V

    goto :goto_0
.end method

.method public setAdOnClickListener(Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V
    .locals 0
    .param p1, "adOnClickListener"    # Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .line 217
    return-void
.end method

.method public setJuhePosid(Ljava/lang/String;)V
    .locals 0
    .param p1, "posid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 247
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mPosid:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setListener(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "touchListener"    # Landroid/view/View$OnTouchListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 263
    if-nez p1, :cond_1

    .line 275
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 266
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Landroid/view/ViewGroup;

    .line 270
    .end local p1    # "view":Landroid/view/View;
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 272
    invoke-virtual {p0, v1, p2, p3}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setListener(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mPlacementId:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setReUseAd()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mHasReportShow:Z

    .line 58
    return-void
.end method

.method public setReportPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 255
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mReportPkgName:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setReportRes(I)V
    .locals 0
    .param p1, "res"    # I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 252
    iput p1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mReportRes:I

    .line 253
    return-void
.end method

.method public unregisterView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->unregisterView()V

    .line 147
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/cmcm/adsdk/nativead/CMNativeAd;->setListener(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    .line 149
    iput-object v1, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAdView:Landroid/view/View;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/CMNativeAd;->mAd:Lcom/cmcm/adsdk/base/CMBaseNativeAd;

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->setAdOnClickListener(Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V

    .line 154
    :cond_1
    return-void
.end method
