.class public Lcom/appodeal/ads/b/af;
.super Lcom/appodeal/ads/r;


# static fields
.field private static b:Lcom/appodeal/ads/o;


# instance fields
.field private c:Lcom/startapp/android/publish/StartAppAd;

.field private d:Lcom/appodeal/ads/b/ag;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/r;-><init>()V

    return-void
.end method

.method private static f()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.startapp.android.publish.FullScreenActivity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/b/af;->b:Lcom/appodeal/ads/o;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/b/af;

    invoke-direct {v0}, Lcom/appodeal/ads/b/af;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/o;

    invoke-static {}, Lcom/appodeal/ads/b/af;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/o;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/r;)V

    sput-object v1, Lcom/appodeal/ads/b/af;->b:Lcom/appodeal/ads/o;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/b/af;->b:Lcom/appodeal/ads/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/b/af;->c:Lcom/startapp/android/publish/StartAppAd;

    iget-object v1, p0, Lcom/appodeal/ads/b/af;->d:Lcom/appodeal/ads/b/ag;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/StartAppAd;->showAd(Lcom/startapp/android/publish/AdDisplayListener;)Z

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 6

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    new-instance v0, Lcom/startapp/android/publish/StartAppAd;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/b/af;->c:Lcom/startapp/android/publish/StartAppAd;

    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    invoke-static {p1}, Lcom/appodeal/ads/an;->e(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/startapp/android/publish/model/AdPreferences;->setLatitude(D)Lcom/startapp/android/publish/model/AdPreferences;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/startapp/android/publish/model/AdPreferences;->setLongitude(D)Lcom/startapp/android/publish/model/AdPreferences;

    :cond_0
    sget-boolean v1, Lcom/appodeal/ads/AppodealSettings;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/model/AdPreferences;->setTestMode(Z)Lcom/startapp/android/publish/model/AdPreferences;

    :cond_1
    new-instance v1, Lcom/appodeal/ads/b/ag;

    sget-object v2, Lcom/appodeal/ads/b/af;->b:Lcom/appodeal/ads/o;

    invoke-direct {v1, v2, p2, p3}, Lcom/appodeal/ads/b/ag;-><init>(Lcom/appodeal/ads/o;II)V

    iput-object v1, p0, Lcom/appodeal/ads/b/af;->d:Lcom/appodeal/ads/b/ag;

    iget-object v1, p0, Lcom/appodeal/ads/b/af;->c:Lcom/startapp/android/publish/StartAppAd;

    sget-object v2, Lcom/startapp/android/publish/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/android/publish/StartAppAd$AdMode;

    iget-object v3, p0, Lcom/appodeal/ads/b/af;->d:Lcom/appodeal/ads/b/ag;

    invoke-virtual {v1, v2, v0, v3}, Lcom/startapp/android/publish/StartAppAd;->loadAd(Lcom/startapp/android/publish/StartAppAd$AdMode;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
