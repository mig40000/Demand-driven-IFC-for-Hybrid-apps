.class public Lcom/appodeal/ads/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/v$b;,
        Lcom/appodeal/ads/v$a;,
        Lcom/appodeal/ads/v$c;
    }
.end annotation


# static fields
.field static A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static B:I

.field static C:Lcom/appodeal/ads/utils/m;

.field private static D:Z

.field private static E:Ljava/lang/String;

.field private static F:Ljava/lang/Integer;

.field private static G:Ljava/lang/Integer;

.field static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/appodeal/ads/w;",
            ">;"
        }
    .end annotation
.end field

.field static b:Z

.field public static c:Z

.field static d:Lcom/appodeal/ads/MrecCallbacks;

.field static e:I

.field public static f:J

.field static final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

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

.field public static k:Z

.field static l:Z

.field static m:Z

.field static n:I

.field public static o:I

.field public static p:Landroid/view/View;

.field public static q:I

.field public static r:Lcom/appodeal/ads/MrecView;

.field public static s:Lcom/appodeal/ads/v$c;

.field public static final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/appodeal/ads/aa;",
            ">;"
        }
    .end annotation
.end field

.field public static u:I

.field public static v:I

.field static w:Lcom/appodeal/ads/f/c;

.field static x:Z

.field static y:Z

.field static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v3, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

    sput-boolean v2, Lcom/appodeal/ads/v;->D:Z

    sput-boolean v2, Lcom/appodeal/ads/v;->b:Z

    sput-boolean v2, Lcom/appodeal/ads/v;->c:Z

    sput v2, Lcom/appodeal/ads/v;->e:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/appodeal/ads/v;->f:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/v;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/v;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/v;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/v;->j:Ljava/util/ArrayList;

    sput-boolean v5, Lcom/appodeal/ads/v;->l:Z

    sput-boolean v2, Lcom/appodeal/ads/v;->m:Z

    const/16 v0, 0x1388

    sput v0, Lcom/appodeal/ads/v;->n:I

    sput-object v3, Lcom/appodeal/ads/v;->F:Ljava/lang/Integer;

    sput v4, Lcom/appodeal/ads/v;->o:I

    sput v4, Lcom/appodeal/ads/v;->q:I

    sget-object v0, Lcom/appodeal/ads/v$c;->c:Lcom/appodeal/ads/v$c;

    sput-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    sput-object v3, Lcom/appodeal/ads/v;->G:Ljava/lang/Integer;

    invoke-static {}, Lcom/appodeal/ads/f/d;->a()Lcom/appodeal/ads/f/c;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    sput-boolean v2, Lcom/appodeal/ads/v;->x:Z

    sput-boolean v5, Lcom/appodeal/ads/v;->y:Z

    sput v2, Lcom/appodeal/ads/v;->z:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/v;->A:Ljava/util/ArrayList;

    sput v2, Lcom/appodeal/ads/v;->B:I

    return-void
.end method

.method static a()Lcom/appodeal/ads/aa;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/w;
    .locals 3

    invoke-static {p0}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/w;

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

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

.method static synthetic a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/w;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/appodeal/ads/v;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/w;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    sput-object p0, Lcom/appodeal/ads/v;->F:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/appodeal/ads/v;->E:Ljava/lang/String;

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
            "Lcom/appodeal/ads/w;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

    const-string v0, "admob"

    const-class v1, Lcom/appodeal/ads/c/a;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads.AdView"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "amazon_ads"

    const-class v1, Lcom/appodeal/ads/c/e;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.amazon.device.ads.AdLayout"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "cheetah"

    const-class v1, Lcom/appodeal/ads/c/g;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.cmcm.adsdk.banner.CMNativeBannerView"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "facebook"

    const-class v1, Lcom/appodeal/ads/c/j;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.facebook.ads.AdView"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "inner-active"

    const-class v1, Lcom/appodeal/ads/c/l;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDView"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "mopub"

    const-class v1, Lcom/appodeal/ads/c/o;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.mopub.mobileads.MoPubView"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "mraid"

    const-class v1, Lcom/appodeal/ads/c/m;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDView"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "rtbmraid"

    const-class v1, Lcom/appodeal/ads/c/q;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "org.nexage.sourcekit.mraid.MRAIDView"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v4, v2}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    const-string v0, "yandex"

    const-class v1, Lcom/appodeal/ads/c/r;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.yandex.mobile.ads.AdView"

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v5, v2}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

    return-object v0
.end method

.method static a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lcom/appodeal/ads/v;->a(IZI)V

    return-void
.end method

.method static a(ILjava/lang/Double;)V
    .locals 9

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/appodeal/ads/aa;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, ""

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->g:Z

    if-eqz v0, :cond_1

    const-wide v0, 0x3f0a36e2eb1c432dL    # 5.0E-5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    move-object v6, p1

    :cond_0
    :goto_0
    new-instance v0, Lcom/appodeal/ads/d/i;

    sget-object v1, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    const/4 v2, 0x7

    sget-object v4, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/aa;

    iget-object v4, v4, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    new-instance v5, Lcom/appodeal/ads/v$b;

    invoke-direct {v5}, Lcom/appodeal/ads/v$b;-><init>()V

    iget-object v8, v3, Lcom/appodeal/ads/aa;->m:Ljava/lang/String;

    move v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/appodeal/ads/d/i;-><init>(Landroid/app/Activity;IILcom/appodeal/ads/d/g;Lcom/appodeal/ads/d/i$a;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/v;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, v3, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

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
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    sget-object v1, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/aa;

    iget-object v1, v1, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->g()I

    move-result v2

    sget-object v0, Lcom/appodeal/ads/v;->A:Ljava/util/ArrayList;

    const-string v3, "admob"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/c/c;->h()Lcom/appodeal/ads/w;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p2, v2, v0, v3}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;Z)V

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/c/c;->h()Lcom/appodeal/ads/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v3, v0, Lcom/appodeal/ads/aa;->e:Ljava/util/ArrayList;

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v3, Lcom/appodeal/ads/v$1;

    invoke-direct {v3, v1, p2, v2}, Lcom/appodeal/ads/v$1;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/c/c;->h()Lcom/appodeal/ads/w;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v2, v0, v1}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->g()I

    move-result v0

    invoke-static {p2, v0}, Lcom/appodeal/ads/y;->a(II)V

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/appodeal/ads/v;->D:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/appodeal/ads/v;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/appodeal/ads/v;->D:Z

    :try_start_0
    invoke-static {p0}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;)Ljava/util/Set;

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

    check-cast v0, Lcom/appodeal/ads/w;

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v2

    if-nez v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/appodeal/ads/an;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    const-string v2, "ERROR: %s not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->a()Ljava/lang/String;

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
    sput-boolean v5, Lcom/appodeal/ads/v;->D:Z

    goto :goto_0

    :cond_4
    :try_start_1
    sget-boolean v0, Lcom/appodeal/ads/v;->l:Z

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/appodeal/ads/v;->b(Landroid/app/Activity;)V

    :cond_5
    const-string v0, "Mrec Initialized"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/v;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/y;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/appodeal/ads/Appodeal;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/appodeal/ads/v;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->b()Lcom/appodeal/ads/f/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f$a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/v;->a()Lcom/appodeal/ads/aa;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Caching Mrec (debugType: %s, isLoaded: %s, isLoading: %s)"

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
    new-instance v2, Lcom/appodeal/ads/aa;

    invoke-direct {v2, p1}, Lcom/appodeal/ads/aa;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    sget v3, Lcom/appodeal/ads/v;->e:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->A:Z

    iput-boolean v0, v2, Lcom/appodeal/ads/aa;->A:Z

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    sget v3, Lcom/appodeal/ads/v;->e:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->z:Z

    iput-boolean v0, v2, Lcom/appodeal/ads/aa;->z:Z

    new-instance v3, Lcom/appodeal/ads/d/g;

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    sget v4, Lcom/appodeal/ads/v;->e:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    invoke-direct {v3, v0}, Lcom/appodeal/ads/d/g;-><init>(Lcom/appodeal/ads/d/g;)V

    iput-object v3, v2, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    :cond_2
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    sput v3, Lcom/appodeal/ads/v;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/appodeal/ads/aa;->k:J

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/appodeal/ads/aa;->q:Z

    sget-object v0, Lcom/appodeal/ads/v;->E:Ljava/lang/String;

    iput-object v0, v2, Lcom/appodeal/ads/aa;->m:Ljava/lang/String;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/appodeal/ads/aa;->w:Z

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/f/g;->d()V

    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/appodeal/ads/aa;->a:Ljava/lang/Long;

    :goto_2
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ge v1, v0, :cond_6

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-boolean v4, v0, Lcom/appodeal/ads/aa;->v:Z

    if-nez v4, :cond_4

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/aa;->a(I)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    const-string v2, "Caching Mrec (debugType: %s, isLoaded: %s, isLoading: %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, v0, Lcom/appodeal/ads/aa;->r:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->q:Z

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

    invoke-static {v6}, Lcom/appodeal/ads/y;->a(Z)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/appodeal/ads/v;->e()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2}, Lcom/appodeal/ads/aa;->a()Z

    move-result v0

    if-nez v0, :cond_7

    sget-wide v0, Lcom/appodeal/ads/v;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/appodeal/ads/v;->f:J

    sub-long/2addr v0, v4

    sget-object v4, Lcom/appodeal/ads/v;->G:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/appodeal/ads/AppodealSettings;->a(Ljava/lang/Integer;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    :cond_7
    new-instance v0, Lcom/appodeal/ads/t$c;

    invoke-direct {v0, p0, v3, p1}, Lcom/appodeal/ads/t$c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    new-instance v1, Lcom/appodeal/ads/v$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/appodeal/ads/v$a;-><init>(Lcom/appodeal/ads/v$1;)V

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/t$c;->a(Lcom/appodeal/ads/t$a;)Lcom/appodeal/ads/t$c;

    move-result-object v0

    iget-object v1, v2, Lcom/appodeal/ads/aa;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/t$c;->a(Ljava/lang/Long;)Lcom/appodeal/ads/t$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t$c;->a()Lcom/appodeal/ads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/t;->a()V

    goto/16 :goto_0

    :cond_8
    sget-boolean v0, Lcom/appodeal/ads/v;->k:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/appodeal/ads/v;->g:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/v;->i:Ljava/util/ArrayList;

    const/16 v4, 0x100

    invoke-static {v0, v1, v4}, Lcom/appodeal/ads/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/v;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    if-eqz p3, :cond_b

    if-lez v3, :cond_b

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/appodeal/ads/v;->k:Z

    if-nez v0, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v2, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    :goto_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/appodeal/ads/v;->k:Z

    iget-object v0, v2, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f;->a(I)V

    :cond_a
    invoke-static {v3}, Lcom/appodeal/ads/v;->a(I)V

    goto/16 :goto_0

    :cond_b
    sget-boolean v0, Lcom/appodeal/ads/v;->k:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/appodeal/ads/v;->h:Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/v;->j:Ljava/util/ArrayList;

    const/16 v4, 0x100

    invoke-static {v0, v1, v4}, Lcom/appodeal/ads/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/appodeal/ads/v;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    goto :goto_3

    :cond_d
    iget-object v0, v2, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/appodeal/ads/Appodeal;->e:Lcom/appodeal/ads/f;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/f;->a(I)V

    :cond_e
    invoke-static {v3}, Lcom/appodeal/ads/v;->b(I)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/y;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/appodeal/ads/v;->A:Ljava/util/ArrayList;

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

    new-instance v2, Lcom/appodeal/ads/v$7;

    invoke-direct {v2, p1, p2, p4}, Lcom/appodeal/ads/v$7;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V

    invoke-static {p0, v0, v1, v2}, Lcom/appodeal/ads/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p2, p1, p4}, Lcom/appodeal/ads/v;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/w;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

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

    new-instance v0, Lcom/appodeal/ads/x$b;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/x$b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/x$b;->a(Lcom/appodeal/ads/f/c;)Lcom/appodeal/ads/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/x$b;->a()Z

    move-result v0

    return v0
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;ZLcom/appodeal/ads/f/c;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    sput-object p3, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    invoke-static {p0}, Lcom/appodeal/ads/an;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/appodeal/ads/Appodeal;->a:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/appodeal/ads/v;->c:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    sget-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    sget-object v3, Lcom/appodeal/ads/v$c;->b:Lcom/appodeal/ads/v$c;

    if-eq v0, v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/f/g;->a()Lcom/appodeal/ads/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f;->b()Lcom/appodeal/ads/f/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/f/f$a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "debug_mrec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Showing Mrec (debugType: %s, isLoaded: %s, isLoading: %s, placement: \'%s\')"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

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

    invoke-virtual {p3}, Lcom/appodeal/ads/f/c;->x()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const/16 v0, 0x100

    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    sget-boolean v0, Lcom/appodeal/ads/v;->l:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/appodeal/ads/x$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/x$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/x$a;->b()Lcom/appodeal/ads/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/x$a;->a()V

    sget-object v0, Lcom/appodeal/ads/v$c;->a:Lcom/appodeal/ads/v$c;

    sput-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    const-string v5, "Showing Mrec (debugType: %s, isLoaded: %s, isLoading: %s, placement: \'%s\')"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    iget-boolean v8, v0, Lcom/appodeal/ads/aa;->r:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-boolean v8, v0, Lcom/appodeal/ads/aa;->q:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p3}, Lcom/appodeal/ads/f/c;->x()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    const/16 v5, 0x100

    invoke-virtual {p3, v5, v0}, Lcom/appodeal/ads/f/c;->a(ILcom/appodeal/ads/e;)Z

    move-result v5

    if-nez v5, :cond_7

    move v0, v1

    goto/16 :goto_0

    :cond_7
    iget-boolean v5, v0, Lcom/appodeal/ads/aa;->r:Z

    if-eqz v5, :cond_9

    iget-object v0, v0, Lcom/appodeal/ads/aa;->o:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/w;

    move-result-object v0

    if-eqz v0, :cond_10

    sget v3, Lcom/appodeal/ads/v;->o:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/appodeal/ads/v;->r:Lcom/appodeal/ads/MrecView;

    if-nez v3, :cond_8

    const-string v0, "MrecView not found"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    new-instance v3, Lcom/appodeal/ads/v$3;

    invoke-direct {v3, p3, v0, p0, v4}, Lcom/appodeal/ads/v$3;-><init>(Lcom/appodeal/ads/f/c;Lcom/appodeal/ads/w;Landroid/app/Activity;I)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/appodeal/ads/v$c;->a:Lcom/appodeal/ads/v$c;

    sput-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    move v0, v2

    goto/16 :goto_0

    :cond_9
    iget-boolean v5, v0, Lcom/appodeal/ads/aa;->s:Z

    if-eqz v5, :cond_b

    sget v0, Lcom/appodeal/ads/v;->o:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/appodeal/ads/v;->r:Lcom/appodeal/ads/MrecView;

    if-nez v0, :cond_a

    const-string v0, "MrecView not found"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcom/appodeal/ads/v$4;

    invoke-direct {v0, p3, p0, v4}, Lcom/appodeal/ads/v$4;-><init>(Lcom/appodeal/ads/f/c;Landroid/app/Activity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/appodeal/ads/v$c;->a:Lcom/appodeal/ads/v$c;

    sput-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    move v0, v2

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->c()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/appodeal/ads/aa;->w:Z

    sget v0, Lcom/appodeal/ads/v;->q:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_e

    sget-object v0, Lcom/appodeal/ads/v;->p:Landroid/view/View;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    sget v3, Lcom/appodeal/ads/v;->q:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v3, v0, Lcom/appodeal/ads/aa;->o:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/w;

    move-result-object v3

    iget-boolean v4, v0, Lcom/appodeal/ads/aa;->r:Z

    if-eqz v4, :cond_e

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->v:Z

    if-nez v0, :cond_e

    if-eqz v3, :cond_e

    sget v0, Lcom/appodeal/ads/v;->o:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/appodeal/ads/v;->r:Lcom/appodeal/ads/MrecView;

    if-nez v0, :cond_c

    const-string v0, "MRECView not found"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/appodeal/ads/v;->p:Landroid/view/View;

    if-nez v0, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/appodeal/ads/v$5;

    invoke-direct {v0, v3, p0}, Lcom/appodeal/ads/v$5;-><init>(Lcom/appodeal/ads/w;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    sget-object v0, Lcom/appodeal/ads/v$c;->a:Lcom/appodeal/ads/v$c;

    sput-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    move v0, v2

    goto/16 :goto_0

    :cond_f
    if-nez v3, :cond_10

    sget-boolean v0, Lcom/appodeal/ads/v;->l:Z

    if-eqz v0, :cond_10

    new-instance v0, Lcom/appodeal/ads/x$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/x$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/x$a;->b()Lcom/appodeal/ads/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/x$a;->a()V

    sget-object v0, Lcom/appodeal/ads/v$c;->a:Lcom/appodeal/ads/v$c;

    sput-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    :cond_10
    move v0, v1

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/w;
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
            "Lcom/appodeal/ads/w;"
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

    check-cast v0, Lcom/appodeal/ads/w;
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

.method public static b()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    invoke-virtual {v0}, Lcom/appodeal/ads/f/c;->t()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/v;->w:Lcom/appodeal/ads/f/c;

    invoke-virtual {v0}, Lcom/appodeal/ads/f/c;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/v;->F:Ljava/lang/Integer;

    :cond_0
    :goto_0
    sget-object v0, Lcom/appodeal/ads/v;->F:Ljava/lang/Integer;

    return-object v0

    :cond_1
    sget-object v0, Lcom/appodeal/ads/v;->F:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x3a98

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/v;->F:Ljava/lang/Integer;

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    sput-object p0, Lcom/appodeal/ads/v;->G:Ljava/lang/Integer;

    return-object p0
.end method

.method static b(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lcom/appodeal/ads/v;->b(IZI)V

    return-void
.end method

.method public static b(IZI)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    sget-object v1, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/aa;

    iget-object v1, v1, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/appodeal/ads/v;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/w;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    instance-of v0, v0, Lcom/appodeal/ads/c/q;

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    move v1, v0

    :goto_0
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-boolean v0, v0, Lcom/appodeal/ads/aa;->t:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v4, "offer"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    instance-of v0, v0, Lcom/appodeal/ads/c/m;

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {p2, v1, v3}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;)V

    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->g()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->a:Z

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/z;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-le v0, v4, :cond_5

    invoke-virtual {v3}, Lcom/appodeal/ads/w;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appodeal/ads/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Lcom/appodeal/ads/w;->e()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v4, v0, Lcom/appodeal/ads/aa;->f:Ljava/util/ArrayList;

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    iget-object v0, v0, Lcom/appodeal/ads/aa;->l:Lorg/json/JSONObject;

    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    new-instance v4, Lcom/appodeal/ads/v$2;

    invoke-direct {v4, p2, v3, v2, v1}, Lcom/appodeal/ads/v$2;-><init>(ILcom/appodeal/ads/w;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/appodeal/ads/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/aa;

    invoke-virtual {v0}, Lcom/appodeal/ads/aa;->g()I

    move-result v0

    invoke-static {p2, v0}, Lcom/appodeal/ads/y;->a(II)V

    goto :goto_1

    :cond_7
    :try_start_1
    invoke-static {p2, v1, v3}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;)V

    goto :goto_1

    :cond_8
    invoke-static {p2, v1}, Lcom/appodeal/ads/y;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static b(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/x$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/x$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/x$a;->a()V

    return-void
.end method

.method static synthetic c()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/v;->G:Ljava/lang/Integer;

    return-object v0
.end method

.method static c(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/v$6;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/v$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/appodeal/ads/v$c;->b:Lcom/appodeal/ads/v$c;

    sput-object v0, Lcom/appodeal/ads/v;->s:Lcom/appodeal/ads/v$c;

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/v;->E:Ljava/lang/String;

    return-object v0
.end method

.method private static e()Z
    .locals 2

    sget-object v0, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sget v1, Lcom/appodeal/ads/v;->z:I

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/v;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sput v0, Lcom/appodeal/ads/v;->z:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
