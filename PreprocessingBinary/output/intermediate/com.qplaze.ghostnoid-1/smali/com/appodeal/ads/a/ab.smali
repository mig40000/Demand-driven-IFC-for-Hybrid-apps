.class public Lcom/appodeal/ads/a/ab;
.super Lcom/appodeal/ads/k;


# static fields
.field private static c:Lcom/appodeal/ads/h;


# instance fields
.field private d:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/k;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/h;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/a/ab;->c:Lcom/appodeal/ads/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/a/ab;

    invoke-direct {v0}, Lcom/appodeal/ads/a/ab;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/h;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/h;-><init>(Ljava/lang/String;Lcom/appodeal/ads/k;)V

    sput-object v1, Lcom/appodeal/ads/a/ab;->c:Lcom/appodeal/ads/h;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/a/ab;->c:Lcom/appodeal/ads/h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)V
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x44360000    # 728.0f

    const/4 v2, 0x0

    sget-object v0, Lcom/appodeal/ads/g;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    iget-object v0, v0, Lcom/appodeal/ads/l;->l:Lorg/json/JSONObject;

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/startapp/android/publish/StartAppSDK;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

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

    invoke-virtual {v0, v7}, Lcom/startapp/android/publish/model/AdPreferences;->setTestMode(Z)Lcom/startapp/android/publish/model/AdPreferences;

    :cond_1
    new-instance v1, Lcom/appodeal/ads/a/ac;

    sget-object v2, Lcom/appodeal/ads/a/ab;->c:Lcom/appodeal/ads/h;

    invoke-direct {v1, v2, p2, p3}, Lcom/appodeal/ads/a/ac;-><init>(Lcom/appodeal/ads/h;II)V

    new-instance v2, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-direct {v2, p1, v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/banner/BannerListener;)V

    iput-object v2, p0, Lcom/appodeal/ads/a/ab;->d:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {p1}, Lcom/appodeal/ads/an;->g(Landroid/content/Context;)F

    move-result v0

    invoke-static {p1}, Lcom/appodeal/ads/an;->h(Landroid/content/Context;)F

    move-result v1

    sget-boolean v2, Lcom/appodeal/ads/g;->t:Z

    if-eqz v2, :cond_2

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_2

    const/high16 v0, 0x44340000    # 720.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    const/16 v0, 0x5a

    iput v0, p0, Lcom/appodeal/ads/a/ab;->b:I

    iget-object v0, p0, Lcom/appodeal/ads/a/ab;->d:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/appodeal/ads/a/ab;->b:I

    int-to-float v3, v3

    invoke-static {p1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/a/ab;->d:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "initBanner"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/appodeal/ads/a/ab;->d:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x32

    iput v0, p0, Lcom/appodeal/ads/a/ab;->b:I

    iget-object v0, p0, Lcom/appodeal/ads/a/ab;->d:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-static {p1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/appodeal/ads/a/ab;->b:I

    int-to-float v3, v3

    invoke-static {p1}, Lcom/appodeal/ads/an;->i(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public c()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/a/ab;->d:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
