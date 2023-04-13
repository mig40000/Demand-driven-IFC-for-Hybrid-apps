.class public Lcom/appodeal/ads/g/a;
.super Lcom/appodeal/ads/aq;


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

.field private static d:Lcom/appodeal/ads/ap;


# instance fields
.field private e:Lcom/jirbo/adcolony/AdColonyVideoAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ao$a;->b:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/g/a;->b:Lcom/appodeal/ads/ao$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/appodeal/ads/g/a;->c:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/aq;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/g/a;)Lcom/jirbo/adcolony/AdColonyVideoAd;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/g/a;->e:Lcom/jirbo/adcolony/AdColonyVideoAd;

    return-object v0
.end method

.method static synthetic a(Lcom/appodeal/ads/g/a;Landroid/app/Activity;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/g/a;->b(Landroid/app/Activity;II)V

    return-void
.end method

.method private b(Landroid/app/Activity;II)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "zone_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v2, "zones"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v3, "store"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v4, "app_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0, v2, v1}, Lcom/appodeal/ads/networks/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-boolean v0, Lcom/appodeal/ads/networks/a;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/appodeal/ads/g/b;

    sget-object v2, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    invoke-direct {v1, v2, p2}, Lcom/appodeal/ads/g/b;-><init>(Lcom/appodeal/ads/ap;I)V

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/g/a;->e:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v0, p0, Lcom/appodeal/ads/g/a;->e:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->a(IILcom/appodeal/ads/ap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/appodeal/ads/g/a;->b:Lcom/appodeal/ads/ao$a;

    sget-object v1, Lcom/appodeal/ads/ao$a;->c:Lcom/appodeal/ads/ao$a;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/os/HandlerThread;

    const-string v0, "AdcolonyThread"

    invoke-direct {v4, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/appodeal/ads/g/a$2;

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/g/a$2;-><init>(Lcom/appodeal/ads/g/a;IILandroid/os/HandlerThread;Landroid/os/Handler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic g()Lcom/appodeal/ads/ap;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/g/a;

    invoke-direct {v0}, Lcom/appodeal/ads/g/a;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ap;

    invoke-static {}, Lcom/appodeal/ads/g/a;->h()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V

    sput-object v1, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method private static h()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.jirbo.adcolony.AdColonyBrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.jirbo.adcolony.AdColonyFullscreen"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.jirbo.adcolony.AdColonyOverlay"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/g/a;->e:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    invoke-static {p2, v0}, Lcom/appodeal/ads/aj;->a(ILcom/appodeal/ads/ap;)V

    iget-object v0, p0, Lcom/appodeal/ads/g/a;->e:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/g/a;->d:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appodeal/ads/networks/a$b;

    new-instance v1, Lcom/appodeal/ads/g/a$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/g/a$1;-><init>(Lcom/appodeal/ads/g/a;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/appodeal/ads/networks/a$b;-><init>(Landroid/app/Activity;IILcom/appodeal/ads/networks/a$a;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    sput-boolean p1, Lcom/appodeal/ads/networks/a;->a:Z

    return-void
.end method

.method public d()Z
    .locals 1

    sget-boolean v0, Lcom/appodeal/ads/networks/a;->a:Z

    return v0
.end method
