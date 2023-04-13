.class public Lcom/appodeal/ads/g/e;
.super Lcom/appodeal/ads/aq;


# static fields
.field private static b:Lcom/appodeal/ads/ap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/aq;-><init>()V

    return-void
.end method

.method private static g()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.chartboost.sdk.CBImpressionActivity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/g/e;->b:Lcom/appodeal/ads/ap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/g/e;

    invoke-direct {v0}, Lcom/appodeal/ads/g/e;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ap;

    invoke-static {}, Lcom/appodeal/ads/g/e;->g()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V

    sput-object v1, Lcom/appodeal/ads/g/e;->b:Lcom/appodeal/ads/ap;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g/e;->b:Lcom/appodeal/ads/ap;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    const-string v0, "Video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/aj;->a(Z)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 3

    sget-boolean v0, Lcom/appodeal/ads/networks/g;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/g/e;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "chartboost_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v2, "chartboost_signature"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/appodeal/ads/networks/g;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/appodeal/ads/networks/h;->a()Lcom/appodeal/ads/networks/h;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/g/e;->b:Lcom/appodeal/ads/ap;

    invoke-virtual {v0, v1, p2, p3}, Lcom/appodeal/ads/networks/h;->b(Lcom/appodeal/ads/ap;II)Lcom/appodeal/ads/networks/h;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    const-string v0, "Video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/g/e;->b:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->a(IILcom/appodeal/ads/ap;)V

    goto :goto_0

    :cond_1
    const-string v0, "Video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->NONE:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    sput-boolean p1, Lcom/appodeal/ads/networks/g;->a:Z

    return-void
.end method

.method public d()Z
    .locals 1

    sget-boolean v0, Lcom/appodeal/ads/networks/g;->a:Z

    return v0
.end method
