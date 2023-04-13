.class Lcom/mopub/nativeads/NativeAdData;
.super Ljava/lang/Object;


# instance fields
.field private final adRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final adResponse:Lcom/mopub/nativeads/NativeAd;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final adUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mopub/nativeads/MoPubAdRenderer;Lcom/mopub/nativeads/NativeAd;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/nativeads/MoPubAdRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/nativeads/NativeAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdData;->adUnitId:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/nativeads/NativeAdData;->adRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    iput-object p3, p0, Lcom/mopub/nativeads/NativeAdData;->adResponse:Lcom/mopub/nativeads/NativeAd;

    return-void
.end method


# virtual methods
.method getAd()Lcom/mopub/nativeads/NativeAd;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdData;->adResponse:Lcom/mopub/nativeads/NativeAd;

    return-object v0
.end method

.method getAdRenderer()Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdData;->adRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    return-object v0
.end method

.method getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdData;->adUnitId:Ljava/lang/String;

    return-object v0
.end method
