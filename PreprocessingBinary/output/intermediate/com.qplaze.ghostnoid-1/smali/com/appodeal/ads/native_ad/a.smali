.class public Lcom/appodeal/ads/native_ad/a;
.super Lcom/appodeal/ads/af;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/native_ad/a$a;
    }
.end annotation


# static fields
.field public static b:Lcom/appodeal/ads/ao$a;

.field public static c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/appodeal/ads/ac;


# instance fields
.field private e:Lcom/jirbo/adcolony/AdColonyNativeAdView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ao$a;->b:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/native_ad/a;->b:Lcom/appodeal/ads/ao$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/appodeal/ads/native_ad/a;->c:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/af;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/a;)Lcom/jirbo/adcolony/AdColonyNativeAdView;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/a;->e:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/a;->a:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/app/Activity;II)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v1, "zone_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v2, "zones"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v3, "store"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->m:Lorg/json/JSONObject;

    const-string v4, "app_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0, v2, v1}, Lcom/appodeal/ads/networks/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appodeal/ads/an;->f(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_1

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-direct {v2, p1, v1, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/appodeal/ads/native_ad/a;->e:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/a;->e:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/appodeal/ads/native_ad/a$a;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/a;->e:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    sget-object v2, Lcom/appodeal/ads/native_ad/a;->d:Lcom/appodeal/ads/ac;

    invoke-direct {v0, v1, p2, v2}, Lcom/appodeal/ads/native_ad/a$a;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;ILcom/appodeal/ads/ac;)V

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/a;->a:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appodeal/ads/native_ad/a;->a:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/native_ad/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/native_ad/a;->d:Lcom/appodeal/ads/ac;

    invoke-virtual {p0, p2, p3, v0}, Lcom/appodeal/ads/native_ad/a;->a(IILcom/appodeal/ads/ac;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/appodeal/ads/native_ad/a;->b:Lcom/appodeal/ads/ao$a;

    sget-object v1, Lcom/appodeal/ads/ao$a;->c:Lcom/appodeal/ads/ao$a;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/appodeal/ads/native_ad/a;->d:Lcom/appodeal/ads/ac;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/appodeal/ads/native_ad/a;->d:Lcom/appodeal/ads/ac;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v4, Landroid/os/HandlerThread;

    const-string v0, "AdcolonyThread"

    invoke-direct {v4, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/appodeal/ads/native_ad/a$2;

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/native_ad/a$2;-><init>(Lcom/appodeal/ads/native_ad/a;IILandroid/os/HandlerThread;Landroid/os/Handler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/appodeal/ads/native_ad/a;Landroid/app/Activity;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/native_ad/a;->a(Landroid/app/Activity;II)V

    return-void
.end method

.method static synthetic b(Lcom/appodeal/ads/native_ad/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/a;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c()Lcom/appodeal/ads/ac;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/native_ad/a;->d:Lcom/appodeal/ads/ac;

    return-object v0
.end method

.method static synthetic c(Lcom/appodeal/ads/native_ad/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ac;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/native_ad/a;->d:Lcom/appodeal/ads/ac;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/native_ad/a;

    invoke-direct {v0}, Lcom/appodeal/ads/native_ad/a;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ac;

    invoke-direct {v1, p0, v0}, Lcom/appodeal/ads/ac;-><init>(Ljava/lang/String;Lcom/appodeal/ads/af;)V

    sput-object v1, Lcom/appodeal/ads/native_ad/a;->d:Lcom/appodeal/ads/ac;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/native_ad/a;->d:Lcom/appodeal/ads/ac;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;III)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/Native;->A:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v1, Lcom/appodeal/ads/Native$NativeAdType;->NoVideo:Lcom/appodeal/ads/Native$NativeAdType;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/appodeal/ads/native_ad/a;->d:Lcom/appodeal/ads/ac;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/ae;->a(IILcom/appodeal/ads/ac;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/appodeal/ads/networks/a$b;

    new-instance v1, Lcom/appodeal/ads/native_ad/a$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/native_ad/a$1;-><init>(Lcom/appodeal/ads/native_ad/a;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/appodeal/ads/networks/a$b;-><init>(Landroid/app/Activity;IILcom/appodeal/ads/networks/a$a;)V

    goto :goto_0
.end method
