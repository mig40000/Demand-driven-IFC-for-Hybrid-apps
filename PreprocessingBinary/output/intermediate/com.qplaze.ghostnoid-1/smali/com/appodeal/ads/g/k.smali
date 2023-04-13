.class public Lcom/appodeal/ads/g/k;
.super Lcom/appodeal/ads/aq;


# static fields
.field private static b:Lcom/appodeal/ads/ap;


# instance fields
.field private c:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;

.field private d:Lcom/appodeal/ads/VideoActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/aq;-><init>()V

    return-void
.end method

.method private static g()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/g/k;->b:Lcom/appodeal/ads/ap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/g/k;

    invoke-direct {v0}, Lcom/appodeal/ads/g/k;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ap;

    invoke-static {}, Lcom/appodeal/ads/g/k;->g()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V

    sput-object v1, Lcom/appodeal/ads/g/k;->b:Lcom/appodeal/ads/ap;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g/k;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/g/k;->b:Lcom/appodeal/ads/ap;

    invoke-static {p1, v0, p2}, Lcom/appodeal/ads/an;->a(Landroid/app/Activity;Lcom/appodeal/ads/ap;I)V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/g/k;->a:Ljava/lang/String;

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/appodeal/ads/g/l;

    sget-object v3, Lcom/appodeal/ads/g/k;->b:Lcom/appodeal/ads/ap;

    invoke-direct {v2, v3, p2, p3}, Lcom/appodeal/ads/g/l;-><init>(Lcom/appodeal/ads/ap;II)V

    sget-object v3, Lcom/appodeal/ads/g/k;->b:Lcom/appodeal/ads/ap;

    invoke-virtual {v3}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, v4}, Lcom/appodeal/ads/g/k;->a(Ljava/lang/String;IZ)Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    move-result-object v3

    new-instance v4, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    invoke-direct {v4}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->setContext(Landroid/content/Context;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->setBaseUrl(Ljava/lang/String;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/appodeal/ads/g/k;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->setData(Ljava/lang/String;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->setSupportedNativeFeatures([Ljava/lang/String;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->setWidth(I)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->setHeight(I)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->setListener(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitialListener;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->setNativeFeatureListener(Lorg/nexage/sourcekit/mraid/MRAIDNativeFeatureListener;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->setSkippable(Z)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->setRtbInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial$Builder;->build()Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/g/k;->c:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;

    return-void
.end method

.method public a(Lcom/appodeal/ads/VideoActivity;I)V
    .locals 2

    iput-object p1, p0, Lcom/appodeal/ads/g/k;->d:Lcom/appodeal/ads/VideoActivity;

    iget-object v0, p0, Lcom/appodeal/ads/g/k;->c:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g/k;->d:Lcom/appodeal/ads/VideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/VideoActivity;->a(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/g/k;->c:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;

    invoke-virtual {v0, p1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumInterstitial;->show(Landroid/app/Activity;)V

    sget-object v0, Lcom/appodeal/ads/g/k;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, v0}, Lcom/appodeal/ads/aj;->a(ILcom/appodeal/ads/ap;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/appodeal/ads/VideoActivity;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/g/k;->d:Lcom/appodeal/ads/VideoActivity;

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
