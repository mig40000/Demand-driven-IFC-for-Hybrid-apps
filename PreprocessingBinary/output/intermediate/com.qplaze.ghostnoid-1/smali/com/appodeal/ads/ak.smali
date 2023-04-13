.class public Lcom/appodeal/ads/ak;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/ak$b;,
        Lcom/appodeal/ads/ak$a;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String;

.field private static B:Ljava/lang/Integer;

.field static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/appodeal/ads/ap;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Z

.field public static c:Z

.field static d:Lcom/appodeal/ads/RewardedVideoCallbacks;

.field static e:Lcom/appodeal/ads/NonSkippableVideoCallbacks;

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

.field public static j:Z

.field static k:Z

.field static l:I

.field public static final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/appodeal/ads/ar;",
            ">;"
        }
    .end annotation
.end field

.field public static n:I

.field public static o:I

.field public static p:I

.field static q:Lcom/appodeal/ads/f/c;

.field public static r:Ljava/lang/String;

.field static s:Z

.field static t:Z

.field static u:I

.field static v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static w:I

.field public static x:Z

.field static y:Lcom/appodeal/ads/utils/m;

.field private static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-object v4, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

    sput-boolean v2, Lcom/appodeal/ads/ak;->z:Z

    sput-boolean v2, Lcom/appodeal/ads/ak;->b:Z

    sput-boolean v2, Lcom/appodeal/ads/ak;->c:Z

    sput v2, Lcom/appodeal/ads/ak;->f:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/appodeal/ads/ak;->g:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/ak;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/ak;->i:Ljava/util/ArrayList;

    sput-boolean v3, Lcom/appodeal/ads/ak;->k:Z

    const/16 v0, 0x1388

    sput v0, Lcom/appodeal/ads/ak;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    sput-object v4, Lcom/appodeal/ads/ak;->B:Ljava/lang/Integer;

    invoke-static {}, Lcom/appodeal/ads/f/d;->a()Lcom/appodeal/ads/f/c;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/ak;->q:Lcom/appodeal/ads/f/c;

    sput-object v4, Lcom/appodeal/ads/ak;->r:Ljava/lang/String;

    sput-boolean v2, Lcom/appodeal/ads/ak;->s:Z

    sput-boolean v3, Lcom/appodeal/ads/ak;->t:Z

    sput v2, Lcom/appodeal/ads/ak;->u:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/ak;->v:Ljava/util/ArrayList;

    const v0, 0x15f90

    sput v0, Lcom/appodeal/ads/ak;->w:I

    sput-boolean v3, Lcom/appodeal/ads/ak;->x:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    invoke-static {p0}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

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

.method static synthetic a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/appodeal/ads/ak;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v0

    return-object v0
.end method

.method static a()Lcom/appodeal/ads/ar;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    sput-object p0, Lcom/appodeal/ads/ak;->B:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/appodeal/ads/ak;->A:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/appodeal/ads/ap;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

    const-string v0, "adcolony"

    const-class v1, Lcom/appodeal/ads/e/a;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.jirbo.adcolony.AdColony"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "applovin"

    const-class v1, Lcom/appodeal/ads/e/c;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.applovin.sdk.AppLovinSdk"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "chartboost"

    const-class v1, Lcom/appodeal/ads/e/e;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.chartboost.sdk.Chartboost"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "flurry"

    const-class v1, Lcom/appodeal/ads/e/g;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.flurry.android.ads.FlurryAdInterstitial"

    aput-object v3, v2, v4

    const-string v3, "com.flurry.android.FlurryAgent"

    aput-object v3, v2, v5

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "mailru"

    const-class v1, Lcom/appodeal/ads/e/m;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.my.target.ads.InterstitialAd"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "mopub"

    const-class v1, Lcom/appodeal/ads/e/o;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.mopub.mobileads.MoPubInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "mraid"

    const-class v1, Lcom/appodeal/ads/e/i;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "rtbmraid"

    const-class v1, Lcom/appodeal/ads/e/q;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "mraid_va"

    const-class v1, Lcom/appodeal/ads/e/k;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDVideoAddendumInterstitial"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "revmob"

    const-class v1, Lcom/appodeal/ads/e/s;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.revmob.ads.interstitial.RevMobFullscreen"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "spotx"

    const-class v1, Lcom/appodeal/ads/e/u;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.appodeal.ads.networks.spotx.SpotXVPAIDView"

    aput-object v3, v2, v4

    const-string v3, "org.nexage.sourcekit.vast.VASTPlayer"

    aput-object v3, v2, v5

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "startapp"

    const-class v1, Lcom/appodeal/ads/e/w;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.startapp.android.publish.StartAppAd"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "tapjoy"

    const-class v1, Lcom/appodeal/ads/e/y;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.tapjoy.Tapjoy"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "unity_ads"

    const-class v1, Lcom/appodeal/ads/e/aa;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.unity3d.ads.UnityAds"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "vast"

    const-class v1, Lcom/appodeal/ads/e/ac;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.vast.VASTPlayer"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "rtbvast"

    const-class v1, Lcom/appodeal/ads/e/r;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.vast.VASTPlayer"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "vpaid"

    const-class v1, Lcom/appodeal/ads/e/ae;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.appodeal.ads.networks.vpaid.VPAIDView"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "vungle"

    const-class v1, Lcom/appodeal/ads/e/ag;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.vungle.publisher.VunglePub"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

    return-object v0
.end method

.method static a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lcom/appodeal/ads/ak;->a(IZI)V

    return-void
.end method

.method static a(ILjava/lang/Double;)V
    .locals 9

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/appodeal/ads/ar;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, ""

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->g:Z

    if-eqz v0, :cond_1

    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    move-object v6, p1

    :cond_0
    :goto_0
    new-instance v0, Lcom/appodeal/ads/d/i;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v2, 0x4

    sget-object v4, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/ar;

    iget-object v4, v4, Lcom/appodeal/ads/ar;->A:Lcom/appodeal/ads/d/g;

    new-instance v5, Lcom/appodeal/ads/ak$b;

    invoke-direct {v5}, Lcom/appodeal/ads/ak$b;-><init>()V

    iget-object v8, v3, Lcom/appodeal/ads/ar;->m:Ljava/lang/String;

    move v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/appodeal/ads/d/i;-><init>(Landroid/app/Activity;IILcom/appodeal/ads/d/g;Lcom/appodeal/ads/d/i$a;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/ak;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, v3, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

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
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_1

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v1, v0, Lcom/appodeal/ads/ar;->d:Lorg/json/JSONObject;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->d:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    sget-object v1, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/ar;

    iget-object v1, v1, Lcom/appodeal/ads/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    instance-of v0, v0, Lcom/appodeal/ads/e/r;

    if-eqz v0, :cond_4

    const/4 v0, -0x2

    move v2, v0

    :goto_1
    if-nez p1, :cond_c

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    sget-object v1, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/ar;

    iget-object v1, v1, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/appodeal/ads/ar;->d:Lorg/json/JSONObject;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v1, v0, Lcom/appodeal/ads/ar;->c:Ljava/util/ArrayList;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    invoke-virtual {v0}, Lcom/appodeal/ads/ar;->f()I

    move-result v0

    if-le v0, v5, :cond_0

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    sget-object v1, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/ar;

    iget-object v1, v1, Lcom/appodeal/ads/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-boolean v0, v0, Lcom/appodeal/ads/ar;->s:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v4, "offer"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    instance-of v0, v0, Lcom/appodeal/ads/e/ac;

    if-eqz v0, :cond_5

    :cond_3
    invoke-static {p2, v2, v1}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    invoke-virtual {v0}, Lcom/appodeal/ads/ar;->f()I

    move-result v0

    invoke-static {p2, v0}, Lcom/appodeal/ads/am;->a(II)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    invoke-virtual {v0}, Lcom/appodeal/ads/ar;->f()I

    move-result v0

    move v2, v0

    goto/16 :goto_1

    :cond_5
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->a:Z

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    invoke-static {}, Lcom/appodeal/ads/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/aq;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-le v0, v4, :cond_8

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appodeal/ads/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Lcom/appodeal/ads/ap;->f()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v4, v0, Lcom/appodeal/ads/ar;->e:Ljava/util/ArrayList;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v4, Lcom/appodeal/ads/ak$1;

    invoke-direct {v4, p2, v1, v3, v2}, Lcom/appodeal/ads/ak$1;-><init>(ILcom/appodeal/ads/ap;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {p2, v2, v1}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {p2, v2}, Lcom/appodeal/ads/am;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto/16 :goto_2
.end method

.method static a(Landroid/app/Activity;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/appodeal/ads/ak;->z:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/appodeal/ads/ak;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/appodeal/ads/ak;->z:Z

    :try_start_0
    invoke-static {p0}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;)Ljava/util/Set;

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

    check-cast v0, Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v2

    if-nez v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/appodeal/ads/an;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    const-string v2, "ERROR: %s not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->a()Ljava/lang/String;

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
    sput-boolean v5, Lcom/appodeal/ads/ak;->z:Z

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/appodeal/ads/utils/c;->d(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/appodeal/ads/ak;->k:Z

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/appodeal/ads/ak;->b(Landroid/app/Activity;)V

    :cond_5
    const-string v0, "Rewarded Video Initialized"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/ak;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/am;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/appodeal/ads/Appodeal;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/appodeal/ads/ak;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->b()Lcom/appodeal/ads/f/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/ak;->a()Lcom/appodeal/ads/ar;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "Caching Rewarded Video (debugType: %s, isLoaded: %s, isLoading: %s)"

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
    new-instance v2, Lcom/appodeal/ads/ar;

    invoke-direct {v2, p1}, Lcom/appodeal/ads/ar;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    sget v3, Lcom/appodeal/ads/ak;->f:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-boolean v0, v0, Lcom/appodeal/ads/ar;->z:Z

    iput-boolean v0, v2, Lcom/appodeal/ads/ar;->z:Z

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    sget v3, Lcom/appodeal/ads/ak;->f:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-boolean v0, v0, Lcom/appodeal/ads/ar;->y:Z

    iput-boolean v0, v2, Lcom/appodeal/ads/ar;->y:Z

    new-instance v3, Lcom/appodeal/ads/d/g;

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    sget v4, Lcom/appodeal/ads/ak;->f:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->A:Lcom/appodeal/ads/d/g;

    invoke-direct {v3, v0}, Lcom/appodeal/ads/d/g;-><init>(Lcom/appodeal/ads/d/g;)V

    iput-object v3, v2, Lcom/appodeal/ads/ar;->A:Lcom/appodeal/ads/d/g;

    :cond_2
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    sput v3, Lcom/appodeal/ads/ak;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/appodeal/ads/ar;->k:J

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/appodeal/ads/ar;->q:Z

    sget-object v0, Lcom/appodeal/ads/ak;->A:Ljava/lang/String;

    iput-object v0, v2, Lcom/appodeal/ads/ar;->m:Ljava/lang/String;

    iput-boolean p2, v2, Lcom/appodeal/ads/ar;->v:Z

    invoke-static {}, Lcom/appodeal/ads/f/g;->d()V

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/appodeal/ads/ar;->a:Ljava/lang/Long;

    :goto_2
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ge v1, v0, :cond_5

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-boolean v4, v0, Lcom/appodeal/ads/ar;->u:Z

    if-nez v4, :cond_3

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/ar;->a(I)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const-string v2, "Caching Rewarded Video (debugType: %s, isLoaded: %s, isLoading: %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, v0, Lcom/appodeal/ads/ar;->r:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-boolean v0, v0, Lcom/appodeal/ads/ar;->q:Z

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

    invoke-static {v6}, Lcom/appodeal/ads/am;->a(Z)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/appodeal/ads/ak;->f()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Lcom/appodeal/ads/ar;->a()Z

    move-result v0

    if-nez v0, :cond_6

    sget-wide v0, Lcom/appodeal/ads/ak;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/appodeal/ads/ak;->g:J

    sub-long/2addr v0, v4

    sget-object v4, Lcom/appodeal/ads/ak;->B:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/appodeal/ads/AppodealSettings;->a(Ljava/lang/Integer;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    :cond_6
    new-instance v0, Lcom/appodeal/ads/t$c;

    invoke-direct {v0, p0, v3, p1}, Lcom/appodeal/ads/t$c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    new-instance v1, Lcom/appodeal/ads/ak$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/appodeal/ads/ak$a;-><init>(Lcom/appodeal/ads/ak$1;)V

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/t$a;)Lcom/appodeal/ads/t$c;

    move-result-object v0

    iget-object v1, v2, Lcom/appodeal/ads/ar;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/Long;)Lcom/appodeal/ads/t$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t$c;->a()Lcom/appodeal/ads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t;->a()V

    goto/16 :goto_0

    :cond_7
    sget-boolean v0, Lcom/appodeal/ads/ak;->j:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/appodeal/ads/ak;->h:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/ak;->i:Ljava/util/ArrayList;

    const/16 v4, 0x80

    invoke-static {v0, v1, v4}, Lcom/appodeal/ads/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/ak;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Lcom/appodeal/ads/ar;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appodeal/ads/ak;->j:Z

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->g:Z

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/appodeal/ads/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f;->a(I)V

    :cond_9
    invoke-static {v3}, Lcom/appodeal/ads/ak;->a(I)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/am;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/appodeal/ads/ak;->v:Ljava/util/ArrayList;

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

    new-instance v2, Lcom/appodeal/ads/ak$3;

    invoke-direct {v2, p1, p2, p4}, Lcom/appodeal/ads/ak$3;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V

    invoke-static {p0, v0, v1, v2}, Lcom/appodeal/ads/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p2, p1, p4}, Lcom/appodeal/ads/ak;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

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

    new-instance v0, Lcom/appodeal/ads/al$b;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/al$b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/al$b;->a(Lcom/appodeal/ads/f/c;)Lcom/appodeal/ads/al$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/al$b;->a()Z

    move-result v0

    return v0
.end method

.method static a(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    sput-object p1, Lcom/appodeal/ads/ak;->q:Lcom/appodeal/ads/f/c;

    invoke-static {p0}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/appodeal/ads/Appodeal;->a:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/appodeal/ads/ak;->c:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->b()Lcom/appodeal/ads/f/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "debug_rewarded_video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Showing Rewarded Video (debugType: %s, isLoaded: %s, isLoading: %s, placement: \'%s\')"

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

    const/16 v0, 0x80

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    sget-boolean v0, Lcom/appodeal/ads/ak;->k:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/appodeal/ads/al$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/al$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/al$a;->b()Lcom/appodeal/ads/al$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/al$a;->a()V

    invoke-static {p0}, Lcom/appodeal/ads/an;->m(Landroid/content/Context;)V

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    sget-object v0, Lcom/appodeal/ads/ak;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    const-string v5, "Showing Rewarded Video (debugType: %s, isLoaded: %s, isLoading: %s, placement: \'%s\')"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    iget-boolean v8, v0, Lcom/appodeal/ads/ar;->r:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-boolean v8, v0, Lcom/appodeal/ads/ar;->q:Z

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

    const/16 v5, 0x80

    invoke-virtual {p1, v5, v0}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    iget-boolean v5, v0, Lcom/appodeal/ads/ar;->r:Z

    if-eqz v5, :cond_7

    iget-object v0, v0, Lcom/appodeal/ads/ar;->o:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v3, Lcom/appodeal/ads/ak$2;

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/appodeal/ads/ak$2;-><init>(Landroid/app/Activity;Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/ap;I)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/appodeal/ads/ar;->c()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/appodeal/ads/ar;->v:Z

    invoke-static {p0}, Lcom/appodeal/ads/an;->m(Landroid/content/Context;)V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    if-nez v3, :cond_9

    sget-boolean v0, Lcom/appodeal/ads/ak;->k:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/appodeal/ads/al$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/al$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/al$a;->b()Lcom/appodeal/ads/al$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/al$a;->a()V

    invoke-static {p0}, Lcom/appodeal/ads/an;->m(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public static b()I
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ak;->q:Lcom/appodeal/ads/f/c;

    invoke-virtual {v0}, Lcom/appodeal/ads/f/c;->m()I

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
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
            "Lcom/appodeal/ads/ap;"
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

    check-cast v0, Lcom/appodeal/ads/ap;
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

.method static b(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/al$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/al$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/al$a;->a()V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ak;->q:Lcom/appodeal/ads/f/c;

    invoke-virtual {v0}, Lcom/appodeal/ads/f/c;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ak;->B:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ak;->A:Ljava/lang/String;

    return-object v0
.end method

.method private static f()Z
    .locals 2

    sget-object v0, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sget v1, Lcom/appodeal/ads/ak;->u:I

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/ak;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sput v0, Lcom/appodeal/ads/ak;->u:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
