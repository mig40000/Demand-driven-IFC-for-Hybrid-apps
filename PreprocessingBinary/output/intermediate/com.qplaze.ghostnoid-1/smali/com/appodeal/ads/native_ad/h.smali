.class public Lcom/appodeal/ads/native_ad/h;
.super Lcom/appodeal/ads/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/native_ad/h$b;,
        Lcom/appodeal/ads/native_ad/h$a;
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

.method static synthetic a(Lcom/appodeal/ads/native_ad/h;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/h;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/h;IILcom/appodeal/ads/ac;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/native_ad/h;->a(IILcom/appodeal/ads/ac;I)V

    return-void
.end method

.method static synthetic c()Lcom/appodeal/ads/ac;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/native_ad/h;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ac;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/native_ad/h;->b:Lcom/appodeal/ads/ac;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/native_ad/h;

    invoke-direct {v0}, Lcom/appodeal/ads/native_ad/h;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ac;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/ac;-><init>(Ljava/lang/String;Lcom/appodeal/ads/af;)V

    sput-object v1, Lcom/appodeal/ads/native_ad/h;->b:Lcom/appodeal/ads/ac;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/native_ad/h;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;III)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/native_ad/h;->b:Lcom/appodeal/ads/ac;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v1, "app_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v2, "placement_key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;)V

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getLogLevel()Lcom/appodeal/ads/utils/Log$LogLevel;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/h;->a:Ljava/util/List;

    new-instance v7, Lcom/flurry/android/ads/FlurryAdNative;

    invoke-direct {v7, p1, v3}, Lcom/flurry/android/ads/FlurryAdNative;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appodeal/ads/networks/j;->a(Landroid/app/Activity;)Lcom/flurry/android/ads/FlurryAdTargeting;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/flurry/android/ads/FlurryAdNative;->setTargeting(Lcom/flurry/android/ads/FlurryAdTargeting;)V

    new-instance v0, Lcom/appodeal/ads/native_ad/h$a;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/native_ad/h$a;-><init>(Lcom/appodeal/ads/native_ad/h;Landroid/app/Activity;Ljava/lang/String;III)V

    invoke-virtual {v7, v0}, Lcom/flurry/android/ads/FlurryAdNative;->setListener(Lcom/flurry/android/ads/FlurryAdNativeListener;)V

    invoke-virtual {v7}, Lcom/flurry/android/ads/FlurryAdNative;->fetchAd()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
