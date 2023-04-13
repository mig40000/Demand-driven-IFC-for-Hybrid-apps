.class public abstract Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;
.super Ljava/lang/Object;
.source "NativeloaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;,
        Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOAD_SIZE:I = 0x1


# instance fields
.field private final ADLOAD_AD:Ljava/lang/String;

.field private final ADLOAD_ADS:Ljava/lang/String;

.field private final FAILED:Ljava/lang/String;

.field private mListener:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "adload_ads"

    iput-object v0, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->ADLOAD_ADS:Ljava/lang/String;

    .line 56
    const-string v0, "adload_ad"

    iput-object v0, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->ADLOAD_AD:Ljava/lang/String;

    .line 57
    const-string v0, "failed"

    iput-object v0, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->FAILED:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;)Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->mListener:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;

    return-object v0
.end method

.method private callBack(Ljava/lang/String;Lcom/cmcm/baseapi/ads/INativeAd;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;
    .param p4, "errorInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/baseapi/ads/INativeAd;>;"
    new-instance v0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$CallBackRunnable;-><init>(Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;Ljava/lang/String;Lcom/cmcm/baseapi/ads/INativeAd;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method


# virtual methods
.method public abstract getAdKeyType()Ljava/lang/String;
.end method

.method public abstract getDefaultCacheTime()J
.end method

.method public getDefaultLoadNum()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getReportPkgName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getReportRes()I
.end method

.method public abstract loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected notifyNativeAdFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "failed"

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->callBack(Ljava/lang/String;Lcom/cmcm/baseapi/ads/INativeAd;Ljava/util/List;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected notifyNativeAdLoaded(Lcom/cmcm/baseapi/ads/INativeAd;)V
    .locals 3
    .param p1, "nativeAd"    # Lcom/cmcm/baseapi/ads/INativeAd;

    .prologue
    .line 44
    const-string v0, "adload_ad"

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->callBack(Ljava/lang/String;Lcom/cmcm/baseapi/ads/INativeAd;Ljava/util/List;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected notifyNativeAdLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/baseapi/ads/INativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/baseapi/ads/INativeAd;>;"
    const-string v0, "adload_ads"

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->callBack(Ljava/lang/String;Lcom/cmcm/baseapi/ads/INativeAd;Ljava/util/List;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setAdapterListener(Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cmcm/adsdk/adapter/NativeloaderAdapter;->mListener:Lcom/cmcm/adsdk/adapter/NativeloaderAdapter$NativeAdapterListener;

    .line 41
    return-void
.end method
