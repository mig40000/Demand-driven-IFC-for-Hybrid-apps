.class public abstract Lcom/cmcm/adsdk/base/CMBaseNativeAd;
.super Ljava/lang/Object;
.source "CMBaseNativeAd.java"

# interfaces
.implements Lcom/cmcm/baseapi/ads/INativeAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/base/CMBaseNativeAd$OpenDegBrowserListener;,
        Lcom/cmcm/adsdk/base/CMBaseNativeAd$IClickPreHanleListener;
    }
.end annotation


# static fields
.field public static final KEY_AD_TYPE_NAME:Ljava/lang/String; = "ad_type_name"

.field public static final KEY_APP_ID:Ljava/lang/String; = "appid"

.field public static final KEY_BANNER_VIEW_SIZE:Ljava/lang/String; = "banner_view_size"

.field public static final KEY_CACHE_TIME:Ljava/lang/String; = "cache_time"

.field public static final KEY_CHECK_VIEW:Ljava/lang/String; = "cm_check_view"

.field public static final KEY_JUHE_POSID:Ljava/lang/String; = "juhe_posid"

.field public static final KEY_LOAD_LIST:Ljava/lang/String; = "ad_load_list"

.field public static final KEY_LOAD_SIZE:Ljava/lang/String; = "load_size"

.field public static final KEY_PLACEMENT_ID:Ljava/lang/String; = "placementid"

.field public static final KEY_REPORT_PKGNAME:Ljava/lang/String; = "report_pkg_name"

.field public static final KEY_REPORT_RES:Ljava/lang/String; = "report_res"


# instance fields
.field private mAdDescription:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mAdOnClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAdSocialContext:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAdStartRate:D
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mCacheTime:J

.field private mCallToAction:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mCreateTime:J

.field private mExtPicks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mExtraReportParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIClickPreHanleListener:Lcom/cmcm/adsdk/base/CMBaseNativeAd$IClickPreHanleListener;

.field private mIconImageUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mImpressionListener:Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsDownloadApp:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsPriority:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMainImageUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMpaModule:Lcom/cmcm/picks/loader/MpaModule;

.field private mTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public openDegBrowserListener:Lcom/cmcm/adsdk/base/CMBaseNativeAd$OpenDegBrowserListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mCreateTime:J

    .line 69
    return-void
.end method


# virtual methods
.method public getAdBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mAdDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCoverImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdOnClickListener()Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mAdOnClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    return-object v0
.end method

.method public getAdSocialContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mAdSocialContext:Ljava/lang/String;

    return-object v0
.end method

.method public getAdStarRating()D
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mAdStartRate:D

    return-wide v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getExtPics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mExtPicks:Ljava/util/List;

    return-object v0
.end method

.method public getExtraReportParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mExtraReportParams:Ljava/util/Map;

    return-object v0
.end method

.method public getMpaModule()Lcom/cmcm/picks/loader/MpaModule;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mMpaModule:Lcom/cmcm/picks/loader/MpaModule;

    return-object v0
.end method

.method public getRawString(I)Ljava/lang/String;
    .locals 1
    .param p1, "operation"    # I

    .prologue
    .line 217
    const-string v0, ""

    return-object v0
.end method

.method public hasExpired()Z
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mCreateTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mCacheTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownLoadApp()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mIsDownloadApp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isNativeAd()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isPriority()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mIsPriority:Z

    return v0
.end method

.method public notifyNativeAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 1
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mAdOnClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mAdOnClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    invoke-interface {v0, p1}, Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;->onAdClick(Lcom/cmcm/baseapi/ads/INativeAd;)V

    .line 81
    :cond_0
    return-void
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
    .line 201
    .local p2, "reportParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setAdBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "adDescription"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mAdDescription:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setAdCallToAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "callToAction"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mCallToAction:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setAdCoverImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mainImageUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mMainImageUrl:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setAdIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconImageUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mIconImageUrl:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setAdOnClickListener(Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;)V
    .locals 0
    .param p1, "adOnClickListener"    # Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mAdOnClickListener:Lcom/cmcm/baseapi/ads/INativeAd$IAdOnClickListener;

    .line 74
    return-void
.end method

.method public setAdSocialContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "adSocialContext"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mAdSocialContext:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setAdStarRate(D)V
    .locals 1
    .param p1, "starRate"    # D
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mAdStartRate:D

    .line 170
    return-void
.end method

.method public setCacheTime(J)V
    .locals 1
    .param p1, "cacheTime"    # J

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mCacheTime:J

    .line 189
    return-void
.end method

.method public setClickPreHanlerListener(Lcom/cmcm/adsdk/base/CMBaseNativeAd$IClickPreHanleListener;)V
    .locals 0
    .param p1, "hanler"    # Lcom/cmcm/adsdk/base/CMBaseNativeAd$IClickPreHanleListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mIClickPreHanleListener:Lcom/cmcm/adsdk/base/CMBaseNativeAd$IClickPreHanleListener;

    .line 84
    return-void
.end method

.method public setExtPics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "extPicks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mExtPicks:Ljava/util/List;

    .line 182
    return-void
.end method

.method public setExtraReportParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "reportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mExtraReportParams:Ljava/util/Map;

    .line 193
    return-void
.end method

.method public setImpressionListener(Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;)V
    .locals 0
    .param p1, "impressionListener"    # Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mImpressionListener:Lcom/cmcm/baseapi/ads/INativeAd$ImpressionListener;

    .line 92
    return-void
.end method

.method public setIsDownloadApp(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isDownloadApp"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 133
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mIsDownloadApp:Ljava/lang/Boolean;

    .line 134
    return-void
.end method

.method public setIsPriority(Z)V
    .locals 0
    .param p1, "isPriority"    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mIsPriority:Z

    .line 178
    return-void
.end method

.method public setMpaModule(Lcom/cmcm/picks/loader/MpaModule;)V
    .locals 0
    .param p1, "mpaModule"    # Lcom/cmcm/picks/loader/MpaModule;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mMpaModule:Lcom/cmcm/picks/loader/MpaModule;

    .line 211
    return-void
.end method

.method public setOnClickToLBListener(Lcom/cmcm/adsdk/base/CMBaseNativeAd$OpenDegBrowserListener;)V
    .locals 0
    .param p1, "openDegBrowserListener"    # Lcom/cmcm/adsdk/base/CMBaseNativeAd$OpenDegBrowserListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->openDegBrowserListener:Lcom/cmcm/adsdk/base/CMBaseNativeAd$OpenDegBrowserListener;

    .line 96
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    iput-object p1, p0, Lcom/cmcm/adsdk/base/CMBaseNativeAd;->mTitle:Ljava/lang/String;

    .line 138
    return-void
.end method
