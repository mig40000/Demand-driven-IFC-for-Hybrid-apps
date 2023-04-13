.class public Lcom/appodeal/ads/native_ad/k;
.super Lcom/appodeal/ads/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/native_ad/k$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/ac;


# instance fields
.field private final c:Lcom/mopub/nativeads/MoPubAdRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/af;-><init>()V

    new-instance v0, Lcom/appodeal/ads/native_ad/k$2;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/native_ad/k$2;-><init>(Lcom/appodeal/ads/native_ad/k;)V

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/k;->c:Lcom/mopub/nativeads/MoPubAdRenderer;

    return-void
.end method

.method private a(Landroid/app/Activity;)Lcom/mopub/nativeads/RequestParameters;
    .locals 2

    new-instance v0, Lcom/mopub/nativeads/RequestParameters$Builder;

    invoke-direct {v0}, Lcom/mopub/nativeads/RequestParameters$Builder;-><init>()V

    invoke-static {p1}, Lcom/appodeal/ads/an;->e(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/RequestParameters$Builder;->location(Landroid/location/Location;)Lcom/mopub/nativeads/RequestParameters$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/mopub/nativeads/RequestParameters$Builder;->build()Lcom/mopub/nativeads/RequestParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/k;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/k;IILcom/appodeal/ads/ac;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/native_ad/k;->a(IILcom/appodeal/ads/ac;I)V

    return-void
.end method

.method static synthetic c()Lcom/appodeal/ads/ac;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/native_ad/k;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ac;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/native_ad/k;->b:Lcom/appodeal/ads/ac;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/native_ad/k;

    invoke-direct {v0}, Lcom/appodeal/ads/native_ad/k;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ac;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/ac;-><init>(Ljava/lang/String;Lcom/appodeal/ads/af;)V

    invoke-virtual {v1}, Lcom/appodeal/ads/ac;->c()Lcom/appodeal/ads/ac;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/native_ad/k;->b:Lcom/appodeal/ads/ac;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/native_ad/k;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;III)V
    .locals 3

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/native_ad/k;->b:Lcom/appodeal/ads/ac;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v1, "mopub_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/appodeal/ads/native_ad/k;->a:Ljava/util/List;

    new-instance v1, Lcom/mopub/nativeads/MoPubNative;

    new-instance v2, Lcom/appodeal/ads/native_ad/k$1;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/appodeal/ads/native_ad/k$1;-><init>(Lcom/appodeal/ads/native_ad/k;III)V

    invoke-direct {v1, p1, v0, v2}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/k;->c:Lcom/mopub/nativeads/MoPubAdRenderer;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    invoke-direct {p0, p1}, Lcom/appodeal/ads/native_ad/k;->a(Landroid/app/Activity;)Lcom/mopub/nativeads/RequestParameters;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;)V

    goto :goto_0
.end method
