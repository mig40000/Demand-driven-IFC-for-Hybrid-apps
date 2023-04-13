.class Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;
.super Lcom/cmcm/adsdk/base/CMBaseNativeAd;
.source "PicksNativeAdapter.java"

# interfaces
.implements Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PicksNativeAd"
.end annotation


# static fields
.field private static final DOWNLOAD_MT_TYPE:I = 0x8


# instance fields
.field private mAd:Lcom/cmcm/picks/loader/Ad;

.field private mAdView:Landroid/view/View;

.field private mImpressioned:Z

.field private mPicksViewCheckHelper:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

.field final synthetic this$0:Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;


# direct methods
.method public constructor <init>(Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;Lcom/cmcm/picks/loader/Ad;Landroid/content/Context;)V
    .locals 1
    .param p2, "ad"    # Lcom/cmcm/picks/loader/Ad;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->this$0:Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    invoke-direct {p0}, Lcom/cmcm/adsdk/base/CMBaseNativeAd;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mImpressioned:Z

    .line 120
    iput-object p2, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    .line 121
    invoke-direct {p0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setUpData()V

    .line 122
    return-void
.end method

.method private setUpData()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getAppShowType()I

    move-result v0

    iget-object v3, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    const v3, 0x11173

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getAppShowType()I

    move-result v0

    iget-object v3, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    const v3, 0x11172

    if-ne v0, v3, :cond_1

    .line 126
    :cond_0
    const-string v0, "CMCMADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "70003|70002 pic size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v4}, Lcom/cmcm/picks/loader/Ad;->getExtPics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getExtPics()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setExtPics(Ljava/util/List;)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setTitle(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getBackground()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setAdCoverImageUrl(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setAdIconUrl(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getButtonTxt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setAdCallToAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setAdBody(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getRating()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setAdStarRate(D)V

    .line 135
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getDownloadNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setAdSocialContext(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getMtType()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setIsDownloadApp(Ljava/lang/Boolean;)V

    .line 137
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getPriority()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setIsPriority(Z)V

    .line 138
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->getMpaModule()Lcom/cmcm/picks/loader/MpaModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->setMpaModule(Lcom/cmcm/picks/loader/MpaModule;)V

    .line 139
    return-void

    :cond_2
    move v0, v2

    .line 136
    goto :goto_0

    :cond_3
    move v1, v2

    .line 137
    goto :goto_1
.end method


# virtual methods
.method public getAdObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    return-object v0
.end method

.method public getAdTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "cm"

    return-object v0
.end method

.method public handleClick()V
    .locals 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->this$0:Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    iget-object v0, v0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->this$0:Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    invoke-static {v1}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->access$100(Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->getExtraReportParams()Ljava/util/Map;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmcm/picks/market/MarketUtils;->openOrDownloadAdNoDialog(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;Ljava/util/Map;)V

    .line 201
    return-void
.end method

.method public hasExpired()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->isAvailAble()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAd:Lcom/cmcm/picks/loader/Ad;

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->isShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoggingImpression()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mImpressionListener:Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mImpressionListener:Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;

    invoke-interface {v0}, Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;->onLoggingImpression()V

    .line 195
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mImpressioned:Z

    .line 196
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 148
    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mPicksViewCheckHelper:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->unregisterView()V

    .line 156
    :cond_2
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAdView:Landroid/view/View;

    .line 158
    iget-boolean v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mImpressioned:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->this$0:Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    invoke-static {v0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->access$000(Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    new-instance v0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    iget-object v1, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->this$0:Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;

    iget-object v1, v1, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;Z)V

    iput-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mPicksViewCheckHelper:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    .line 161
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mPicksViewCheckHelper:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->startWork()V

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->onLoggingImpression()V

    goto :goto_0
.end method

.method public unregisterView()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAdView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mAdView:Landroid/view/View;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mPicksViewCheckHelper:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/PicksNativeAdapter$PicksNativeAd;->mPicksViewCheckHelper:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    const-string v1, "unregisterView"

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->stopWork(Ljava/lang/String;)V

    .line 178
    :cond_1
    return-void
.end method
