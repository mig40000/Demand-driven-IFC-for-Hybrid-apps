.class public Lcom/appodeal/ads/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/n$b;,
        Lcom/appodeal/ads/n$a;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/Integer;

.field static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/appodeal/ads/o;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static c:Z

.field public static d:Z

.field static e:Lcom/appodeal/ads/InterstitialCallbacks;

.field static f:I

.field public static g:J

.field static final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field static final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field static final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field static final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static l:Z

.field static m:Z

.field static n:Z

.field static o:I

.field public static final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/appodeal/ads/s;",
            ">;"
        }
    .end annotation
.end field

.field public static q:I

.field public static r:I

.field static s:Lcom/appodeal/ads/f/c;

.field static t:Z

.field static u:Z

.field static v:I

.field static w:I

.field static x:Lcom/appodeal/ads/utils/m;

.field private static y:Z

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-object v4, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/n;->b:Ljava/util/ArrayList;

    sput-boolean v2, Lcom/appodeal/ads/n;->y:Z

    sput-boolean v2, Lcom/appodeal/ads/n;->c:Z

    sput-boolean v2, Lcom/appodeal/ads/n;->d:Z

    sput v2, Lcom/appodeal/ads/n;->f:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/appodeal/ads/n;->g:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/n;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/n;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/n;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/n;->k:Ljava/util/ArrayList;

    sput-boolean v3, Lcom/appodeal/ads/n;->m:Z

    sput-boolean v2, Lcom/appodeal/ads/n;->n:Z

    const/16 v0, 0x1388

    sput v0, Lcom/appodeal/ads/n;->o:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    sput-object v4, Lcom/appodeal/ads/n;->A:Ljava/lang/Integer;

    invoke-static {}, Lcom/appodeal/ads/f/d;->a()Lcom/appodeal/ads/f/c;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/n;->s:Lcom/appodeal/ads/f/c;

    sput-boolean v2, Lcom/appodeal/ads/n;->t:Z

    sput-boolean v3, Lcom/appodeal/ads/n;->u:Z

    sput v2, Lcom/appodeal/ads/n;->v:I

    sput v2, Lcom/appodeal/ads/n;->w:I

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 3

    invoke-static {p0}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/appodeal/ads/n;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;

    move-result-object v0

    return-object v0
.end method

.method static a()Lcom/appodeal/ads/s;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    sput-object p0, Lcom/appodeal/ads/n;->A:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/appodeal/ads/n;->z:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/appodeal/ads/o;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    const-string v0, "admob"

    const-class v1, Lcom/appodeal/ads/b/a;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads.InterstitialAd"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "amazon_ads"

    const-class v1, Lcom/appodeal/ads/b/e;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.amazon.device.ads.AdRegistration"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "applovin"

    const-class v1, Lcom/appodeal/ads/b/g;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.applovin.sdk.AppLovinSdk"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "appnexus"

    const-class v1, Lcom/appodeal/ads/b/i;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "cheetah"

    const-class v1, Lcom/appodeal/ads/b/k;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.cmcm.adsdk.interstitial.InterstitialAdManager"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "chartboost"

    const-class v1, Lcom/appodeal/ads/b/j;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.chartboost.sdk.Chartboost"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "facebook"

    const-class v1, Lcom/appodeal/ads/b/n;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.facebook.ads.InterstitialAd"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "flurry"

    const-class v1, Lcom/appodeal/ads/b/p;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.flurry.android.ads.FlurryAdInterstitial"

    aput-object v3, v2, v4

    const-string v3, "com.flurry.android.FlurryAgent"

    aput-object v3, v2, v5

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "inner-active"

    const-class v1, Lcom/appodeal/ads/b/r;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "mailru"

    const-class v1, Lcom/appodeal/ads/b/u;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.my.target.ads.InterstitialAd"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "mopub"

    const-class v1, Lcom/appodeal/ads/b/w;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.mopub.mobileads.MoPubInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "mraid"

    const-class v1, Lcom/appodeal/ads/b/s;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "revmob"

    const-class v1, Lcom/appodeal/ads/b/ab;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.revmob.ads.interstitial.RevMobFullscreen"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "rtbmraid"

    const-class v1, Lcom/appodeal/ads/b/aa;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "nexage"

    const-class v1, Lcom/appodeal/ads/b/y;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "openx"

    const-class v1, Lcom/appodeal/ads/b/z;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "rubicon"

    const-class v1, Lcom/appodeal/ads/b/ad;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "smaato"

    const-class v1, Lcom/appodeal/ads/b/ae;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "startapp"

    const-class v1, Lcom/appodeal/ads/b/af;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.startapp.android.publish.StartAppAd"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "yandex"

    const-class v1, Lcom/appodeal/ads/b/ah;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.yandex.mobile.ads.InterstitialAd"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    return-object v0
.end method

.method static a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lcom/appodeal/ads/n;->a(IZI)V

    return-void
.end method

.method static a(ILjava/lang/Double;)V
    .locals 9

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/appodeal/ads/s;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, ""

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->g:Z

    if-eqz v0, :cond_1

    const-wide v0, 0x3f40624dd2f1a9fcL    # 5.0E-4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    move-object v6, p1

    :cond_0
    :goto_0
    new-instance v0, Lcom/appodeal/ads/d/i;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v2, 0x3

    sget-object v4, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/s;

    iget-object v4, v4, Lcom/appodeal/ads/s;->C:Lcom/appodeal/ads/d/g;

    new-instance v5, Lcom/appodeal/ads/n$b;

    invoke-direct {v5}, Lcom/appodeal/ads/n$b;-><init>()V

    iget-object v8, v3, Lcom/appodeal/ads/s;->n:Ljava/lang/String;

    move v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/appodeal/ads/d/i;-><init>(Landroid/app/Activity;IILcom/appodeal/ads/d/g;Lcom/appodeal/ads/d/i$a;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, v3, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v6, p1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    move-object v6, p1

    goto :goto_0
.end method

.method public static a(IZI)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    sget-object v1, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/s;

    iget-object v1, v1, Lcom/appodeal/ads/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    invoke-virtual {v0}, Lcom/appodeal/ads/s;->g()I

    move-result v2

    sget-object v0, Lcom/appodeal/ads/n;->b:Ljava/util/ArrayList;

    const-string v3, "admob"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/b/c;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p2, v2, v0, v3}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;Z)V

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/b/c;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v3, v0, Lcom/appodeal/ads/s;->e:Ljava/util/ArrayList;

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v3, Lcom/appodeal/ads/n$1;

    invoke-direct {v3, v1, p2, v2}, Lcom/appodeal/ads/n$1;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/b/c;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v2, v0, v1}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    invoke-virtual {v0}, Lcom/appodeal/ads/s;->g()I

    move-result v0

    invoke-static {p2, v0}, Lcom/appodeal/ads/q;->a(II)V

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/appodeal/ads/n;->y:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/appodeal/ads/n;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/appodeal/ads/n;->y:Z

    :try_start_0
    invoke-static {p0}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v2

    if-nez v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/appodeal/ads/an;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    const-string v2, "ERROR: %s not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/appodeal/ads/an;->b(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :goto_2
    sput-boolean v5, Lcom/appodeal/ads/n;->y:Z

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/appodeal/ads/utils/c;->b(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/appodeal/ads/n;->m:Z

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/appodeal/ads/n;->b(Landroid/app/Activity;)V

    :cond_5
    const-string v0, "Interstitials Initialized"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/n;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/q;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/appodeal/ads/Appodeal;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/appodeal/ads/n;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->b()Lcom/appodeal/ads/f/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/n;->a()Lcom/appodeal/ads/s;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Caching Interstitial (debugType: %s, isLoaded: %s, isLoading: %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    :goto_1
    new-instance v2, Lcom/appodeal/ads/s;

    invoke-direct {v2, p1}, Lcom/appodeal/ads/s;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    sget v3, Lcom/appodeal/ads/n;->f:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-boolean v0, v0, Lcom/appodeal/ads/s;->B:Z

    iput-boolean v0, v2, Lcom/appodeal/ads/s;->B:Z

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    sget v3, Lcom/appodeal/ads/n;->f:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-boolean v0, v0, Lcom/appodeal/ads/s;->A:Z

    iput-boolean v0, v2, Lcom/appodeal/ads/s;->A:Z

    new-instance v3, Lcom/appodeal/ads/d/g;

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    sget v4, Lcom/appodeal/ads/n;->f:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->C:Lcom/appodeal/ads/d/g;

    invoke-direct {v3, v0}, Lcom/appodeal/ads/d/g;-><init>(Lcom/appodeal/ads/d/g;)V

    iput-object v3, v2, Lcom/appodeal/ads/s;->C:Lcom/appodeal/ads/d/g;

    :cond_2
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    sput v3, Lcom/appodeal/ads/n;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/appodeal/ads/s;->l:J

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/appodeal/ads/s;->r:Z

    sget-object v0, Lcom/appodeal/ads/n;->z:Ljava/lang/String;

    iput-object v0, v2, Lcom/appodeal/ads/s;->n:Ljava/lang/String;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/appodeal/ads/s;->x:Z

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/f/g;->d()V

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/appodeal/ads/s;->a:Ljava/lang/Long;

    :goto_2
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ge v1, v0, :cond_6

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-boolean v4, v0, Lcom/appodeal/ads/s;->w:Z

    if-nez v4, :cond_4

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/s;->a(I)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    const-string v2, "Caching Interstitial (debugType: %s, isLoaded: %s, isLoading: %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, v0, Lcom/appodeal/ads/s;->s:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-boolean v0, v0, Lcom/appodeal/ads/s;->r:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-static {v6}, Lcom/appodeal/ads/q;->a(Z)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/appodeal/ads/n;->d()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2}, Lcom/appodeal/ads/s;->a()Z

    move-result v0

    if-nez v0, :cond_7

    sget-wide v0, Lcom/appodeal/ads/n;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/appodeal/ads/n;->g:J

    sub-long/2addr v0, v4

    sget-object v4, Lcom/appodeal/ads/n;->A:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/appodeal/ads/AppodealSettings;->a(Ljava/lang/Integer;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    :cond_7
    new-instance v0, Lcom/appodeal/ads/t$c;

    invoke-direct {v0, p0, v3, p1}, Lcom/appodeal/ads/t$c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    new-instance v1, Lcom/appodeal/ads/n$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/appodeal/ads/n$a;-><init>(Lcom/appodeal/ads/n$1;)V

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/t$a;)Lcom/appodeal/ads/t$c;

    move-result-object v0

    iget-object v1, v2, Lcom/appodeal/ads/s;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/Long;)Lcom/appodeal/ads/t$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t$c;->a()Lcom/appodeal/ads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t;->a()V

    goto/16 :goto_0

    :cond_8
    sget-boolean v0, Lcom/appodeal/ads/n;->l:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/appodeal/ads/n;->h:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/n;->j:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/appodeal/ads/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/n;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Lcom/appodeal/ads/s;->c:Ljava/util/ArrayList;

    if-eqz p3, :cond_b

    if-lez v3, :cond_b

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/appodeal/ads/n;->l:Z

    if-nez v0, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v2, Lcom/appodeal/ads/s;->d:Ljava/util/ArrayList;

    :goto_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/appodeal/ads/n;->l:Z

    iget-object v0, v2, Lcom/appodeal/ads/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f;->a(I)V

    :cond_a
    invoke-static {v3}, Lcom/appodeal/ads/n;->a(I)V

    goto/16 :goto_0

    :cond_b
    sget-boolean v0, Lcom/appodeal/ads/n;->l:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/appodeal/ads/n;->i:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/n;->k:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/appodeal/ads/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/n;->k:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Lcom/appodeal/ads/s;->d:Ljava/util/ArrayList;

    goto :goto_3

    :cond_d
    iget-object v0, v2, Lcom/appodeal/ads/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f;->a(I)V

    :cond_e
    invoke-static {v3}, Lcom/appodeal/ads/n;->b(I)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/q;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/appodeal/ads/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    const-string v0, "%s.dex"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p4, v2

    new-instance v2, Lcom/appodeal/ads/n$5;

    invoke-direct {v2, p1, p2, p4}, Lcom/appodeal/ads/n$5;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V

    invoke-static {p0, v0, v1, v2}, Lcom/appodeal/ads/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p2, p1, p4}, Lcom/appodeal/ads/n;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;)Z
    .locals 1

    new-instance v0, Lcom/appodeal/ads/p$b;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/p$b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/p$b;->a(Lcom/appodeal/ads/f/c;)Lcom/appodeal/ads/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/p$b;->a()Z

    move-result v0

    return v0
.end method

.method static a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    sput-object p1, Lcom/appodeal/ads/n;->s:Lcom/appodeal/ads/f/c;

    invoke-static {p0}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/appodeal/ads/Appodeal;->a:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/appodeal/ads/n;->d:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->b()Lcom/appodeal/ads/f/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "debug"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Showing Interstitial (debugType: %s, isLoaded: %s, isLoading: %s, placement: \'%s\')"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/appodeal/ads/f/c;->x()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    sget-boolean v0, Lcom/appodeal/ads/n;->m:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/appodeal/ads/p$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/p$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/p$a;->b()Lcom/appodeal/ads/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/p$a;->a()V

    invoke-static {p0}, Lcom/appodeal/ads/an;->m(Landroid/content/Context;)V

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    const-string v5, "Showing Interstitial (debugType: %s, isLoaded: %s, isLoading: %s, placement: \'%s\')"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    iget-boolean v8, v0, Lcom/appodeal/ads/s;->s:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-boolean v8, v0, Lcom/appodeal/ads/s;->r:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p1}, Lcom/appodeal/ads/f/c;->x()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v0}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    iget-boolean v5, v0, Lcom/appodeal/ads/s;->s:Z

    if-eqz v5, :cond_7

    sget-object v3, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    iget-object v0, v0, Lcom/appodeal/ads/s;->p:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/o;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v3, Lcom/appodeal/ads/n$3;

    invoke-direct {v3, p1, v0, p0, v4}, Lcom/appodeal/ads/n$3;-><init>(Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/o;Landroid/app/Activity;I)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    iget-boolean v5, v0, Lcom/appodeal/ads/s;->t:Z

    if-eqz v5, :cond_8

    new-instance v0, Lcom/appodeal/ads/n$4;

    invoke-direct {v0, p1, p0, v4}, Lcom/appodeal/ads/n$4;-><init>(Lcom/appodeal/ads/f/c;Landroid/app/Activity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/appodeal/ads/s;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/appodeal/ads/s;->x:Z

    invoke-static {p0}, Lcom/appodeal/ads/an;->m(Landroid/content/Context;)V

    move v0, v2

    goto/16 :goto_0

    :cond_9
    if-nez v3, :cond_a

    sget-boolean v0, Lcom/appodeal/ads/n;->m:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/appodeal/ads/p$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/p$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/p$a;->b()Lcom/appodeal/ads/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/p$a;->a()V

    invoke-static {p0}, Lcom/appodeal/ads/an;->m(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/appodeal/ads/o;"
        }
    .end annotation

    :try_start_0
    const-string v0, "getInstance"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, [Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/n;->A:Ljava/lang/Integer;

    return-object v0
.end method

.method static b(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lcom/appodeal/ads/n;->b(IZI)V

    return-void
.end method

.method public static b(IZI)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    sget-object v1, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/s;

    iget-object v1, v1, Lcom/appodeal/ads/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/o;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    instance-of v0, v0, Lcom/appodeal/ads/b/aa;

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    move v1, v0

    :goto_0
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-boolean v0, v0, Lcom/appodeal/ads/s;->u:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v4, "offer"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    instance-of v0, v0, Lcom/appodeal/ads/b/s;

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {p2, v1, v3}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    invoke-virtual {v0}, Lcom/appodeal/ads/s;->g()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->a:Z

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-le v0, v4, :cond_5

    invoke-virtual {v3}, Lcom/appodeal/ads/o;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appodeal/ads/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Lcom/appodeal/ads/o;->f()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v4, v0, Lcom/appodeal/ads/s;->f:Ljava/util/ArrayList;

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    iget-object v0, v0, Lcom/appodeal/ads/s;->m:Lorg/json/JSONObject;

    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v4, Lcom/appodeal/ads/n$2;

    invoke-direct {v4, p2, v3, v2, v1}, Lcom/appodeal/ads/n$2;-><init>(ILcom/appodeal/ads/o;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/s;

    invoke-virtual {v0}, Lcom/appodeal/ads/s;->g()I

    move-result v0

    invoke-static {p2, v0}, Lcom/appodeal/ads/q;->a(II)V

    goto :goto_1

    :cond_7
    :try_start_1
    invoke-static {p2, v1, v3}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    goto :goto_1

    :cond_8
    invoke-static {p2, v1}, Lcom/appodeal/ads/q;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static b(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/p$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/p$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/p$a;->a()V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/n;->z:Ljava/lang/String;

    return-object v0
.end method

.method private static d()Z
    .locals 2

    sget-object v0, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sget v1, Lcom/appodeal/ads/n;->v:I

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/n;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sput v0, Lcom/appodeal/ads/n;->v:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
