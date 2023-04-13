.class public Lcom/appodeal/ads/g/ac;
.super Lcom/appodeal/ads/aq;


# static fields
.field public static b:Lcom/appodeal/ads/ao$a;

.field private static c:Lcom/appodeal/ads/ap;

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/appodeal/ads/g/ac;->d:Z

    sget-object v0, Lcom/appodeal/ads/ao$a;->b:Lcom/appodeal/ads/ao$a;

    sput-object v0, Lcom/appodeal/ads/g/ac;->b:Lcom/appodeal/ads/ao$a;

    sput-boolean v1, Lcom/appodeal/ads/g/ac;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/aq;-><init>()V

    return-void
.end method

.method static synthetic g()Lcom/appodeal/ads/ap;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/g/ac;->c:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/appodeal/ads/ap;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/g/ac;->c:Lcom/appodeal/ads/ap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/g/ac;

    invoke-direct {v0}, Lcom/appodeal/ads/g/ac;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ap;

    invoke-static {}, Lcom/appodeal/ads/g/ac;->h()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/appodeal/ads/ap;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/appodeal/ads/aq;)V

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/ap;->a(I)Lcom/appodeal/ads/ap;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/g/ac;->c:Lcom/appodeal/ads/ap;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/g/ac;->c:Lcom/appodeal/ads/ap;

    return-object v0
.end method

.method private static h()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.vungle.publisher.FullScreenAdActivity"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onResume()V

    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->playAd()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 6

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/appodeal/ads/g/ac;->c:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/ao$b;->a:Lcom/appodeal/ads/ao$b;

    invoke-static {v0}, Lcom/appodeal/ads/networks/w;->a(Lcom/appodeal/ads/ao$b;)V

    sget-object v0, Lcom/appodeal/ads/networks/w;->a:Lcom/appodeal/ads/ao$b;

    sget-object v1, Lcom/appodeal/ads/ao$b;->a:Lcom/appodeal/ads/ao$b;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/appodeal/ads/g/ac;->c:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/appodeal/ads/g/ac;->d:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/ah;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ar;

    iget-object v0, v0, Lcom/appodeal/ads/ar;->l:Lorg/json/JSONObject;

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    sput-boolean v2, Lcom/appodeal/ads/g/ac;->d:Z

    :cond_2
    new-instance v0, Lcom/appodeal/ads/g/ad;

    sget-object v1, Lcom/appodeal/ads/g/ac;->c:Lcom/appodeal/ads/ap;

    invoke-direct {v0, v1, p2}, Lcom/appodeal/ads/g/ad;-><init>(Lcom/appodeal/ads/ap;I)V

    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    new-array v2, v2, [Lcom/vungle/publisher/EventListener;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/VunglePub;->setEventListeners([Lcom/vungle/publisher/EventListener;)V

    sget-boolean v0, Lcom/appodeal/ads/g/ac;->e:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/appodeal/ads/g/ac;->c:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/appodeal/ads/g/ac;->c:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->a(IILcom/appodeal/ads/ap;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/appodeal/ads/g/ac;->b:Lcom/appodeal/ads/ao$a;

    sget-object v1, Lcom/appodeal/ads/ao$a;->c:Lcom/appodeal/ads/ao$a;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/appodeal/ads/g/ac;->c:Lcom/appodeal/ads/ap;

    invoke-static {p2, p3, v0}, Lcom/appodeal/ads/aj;->b(IILcom/appodeal/ads/ap;)V

    goto :goto_0

    :cond_5
    new-instance v4, Landroid/os/HandlerThread;

    const-string v0, "VungleThread"

    invoke-direct {v4, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/appodeal/ads/g/ac$1;

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/g/ac$1;-><init>(Lcom/appodeal/ads/g/ac;IILandroid/os/HandlerThread;Landroid/os/Handler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public b(Z)V
    .locals 0

    sput-boolean p1, Lcom/appodeal/ads/g/ac;->e:Z

    return-void
.end method

.method public d()Z
    .locals 1

    sget-boolean v0, Lcom/appodeal/ads/g/ac;->e:Z

    return v0
.end method
