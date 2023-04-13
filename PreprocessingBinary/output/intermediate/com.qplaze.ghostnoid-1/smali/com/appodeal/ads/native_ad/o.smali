.class public Lcom/appodeal/ads/native_ad/o;
.super Lcom/appodeal/ads/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/native_ad/o$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appodeal/ads/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/af;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/o;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/o;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/native_ad/o;->c(Landroid/app/Activity;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/native_ad/o;->d(Landroid/app/Activity;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/native_ad/o;->b(Landroid/app/Activity;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/o;IILcom/appodeal/ads/ac;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/native_ad/o;->a(IILcom/appodeal/ads/ac;I)V

    return-void
.end method

.method static synthetic b(Lcom/appodeal/ads/native_ad/o;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/o;->a:Ljava/util/List;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V
    .locals 4

    invoke-static {p1}, Lcom/appodeal/ads/an;->e(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setLatitude(D)Lcom/startapp/android/publish/model/AdPreferences;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setLongitude(D)Lcom/startapp/android/publish/model/AdPreferences;

    :cond_0
    return-void
.end method

.method static synthetic c()Lcom/appodeal/ads/ac;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/native_ad/o;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method

.method private c(Landroid/app/Activity;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V
    .locals 1

    invoke-static {p1}, Lcom/appodeal/ads/utils/r;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setAge(Ljava/lang/Integer;)Lcom/startapp/android/publish/model/AdPreferences;

    :cond_0
    return-void
.end method

.method private d(Landroid/app/Activity;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V
    .locals 2

    invoke-static {p1}, Lcom/appodeal/ads/utils/r;->a(Landroid/content/Context;)Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/UserSettings$Gender;->FEMALE:Lcom/appodeal/ads/UserSettings$Gender;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/startapp/android/publish/SDKAdPreferences$Gender;->FEMALE:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    invoke-virtual {p2, v0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setGender(Lcom/startapp/android/publish/SDKAdPreferences$Gender;)Lcom/startapp/android/publish/model/AdPreferences;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/appodeal/ads/UserSettings$Gender;->MALE:Lcom/appodeal/ads/UserSettings$Gender;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/startapp/android/publish/SDKAdPreferences$Gender;->MALE:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    invoke-virtual {p2, v0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setGender(Lcom/startapp/android/publish/SDKAdPreferences$Gender;)Lcom/startapp/android/publish/model/AdPreferences;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ac;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/native_ad/o;->b:Lcom/appodeal/ads/ac;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/native_ad/o;

    invoke-direct {v0}, Lcom/appodeal/ads/native_ad/o;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ac;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/ac;-><init>(Ljava/lang/String;Lcom/appodeal/ads/af;)V

    sput-object v1, Lcom/appodeal/ads/native_ad/o;->b:Lcom/appodeal/ads/ac;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/native_ad/o;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;III)V
    .locals 7

    const/4 v3, 0x0

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->Video:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/native_ad/o;->b:Lcom/appodeal/ads/ac;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v2, "dev_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/appodeal/ads/native_ad/o;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1, v0, v1, v3}, Lcom/startapp/android/publish/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    new-instance v6, Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-direct {v6}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;-><init>()V

    invoke-virtual {v6, v3}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-virtual {v6, p4}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setSecondaryImageSize(I)Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-direct {p0, p1, v6}, Lcom/appodeal/ads/native_ad/o;->a(Landroid/app/Activity;Lcom/startapp/android/publish/nativead/NativeAdPreferences;)V

    new-instance v2, Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    invoke-direct {v2, p1}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/appodeal/ads/native_ad/o$1;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/native_ad/o$1;-><init>(Lcom/appodeal/ads/native_ad/o;Lcom/startapp/android/publish/nativead/StartAppNativeAd;III)V

    invoke-virtual {v2, v6, v0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/android/publish/nativead/NativeAdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1, v1, v3}, Lcom/startapp/android/publish/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_1
.end method
