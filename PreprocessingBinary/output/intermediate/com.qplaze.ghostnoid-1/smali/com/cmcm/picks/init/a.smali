.class public abstract Lcom/cmcm/picks/init/a;
.super Ljava/lang/Object;
.source "PicksMobBase.java"


# static fields
.field private static mInstance:Lcom/cmcm/picks/init/a;

.field public static sIPicksCallBack:Lcom/cmcm/picks/init/IPicksBrowserCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/picks/init/a;Lcom/cmcm/picks/init/ICallBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/picks/init/a;
    .param p1, "x1"    # Lcom/cmcm/picks/init/ICallBack;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/cmcm/picks/init/a;->onError(Lcom/cmcm/picks/init/ICallBack;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cmcm/picks/init/a;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/picks/init/a;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/cmcm/picks/init/a;->filterShowed(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cmcm/picks/init/a;IILcom/cmcm/picks/init/ICallBack;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/picks/init/a;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/cmcm/picks/init/ICallBack;
    .param p4, "x4"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cmcm/picks/init/a;->loadFromNet(IILcom/cmcm/picks/init/ICallBack;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/cmcm/picks/init/a;Lcom/cmcm/picks/init/ICallBack;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/picks/init/a;
    .param p1, "x1"    # Lcom/cmcm/picks/init/ICallBack;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/cmcm/picks/init/a;->onSuccess(Lcom/cmcm/picks/init/ICallBack;Ljava/util/List;)V

    return-void
.end method

.method private filterShowed(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/Ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/picks/loader/Ad;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 132
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/loader/Ad;

    .line 134
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmcm/picks/loader/Ad;->isShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 139
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/cmcm/picks/init/a;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/cmcm/picks/init/a;->mInstance:Lcom/cmcm/picks/init/a;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/cmcm/picks/init/a;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/cmcm/picks/init/a;->mInstance:Lcom/cmcm/picks/init/a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/cmcm/picks/init/PicksMob;

    invoke-direct {v0}, Lcom/cmcm/picks/init/PicksMob;-><init>()V

    sput-object v0, Lcom/cmcm/picks/init/a;->mInstance:Lcom/cmcm/picks/init/a;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/cmcm/picks/init/a;->mInstance:Lcom/cmcm/picks/init/a;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initUserAgent()V
    .locals 2

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 39
    invoke-static {}, Lcom/cmcm/picks/loader/g;->d()V

    .line 41
    :cond_0
    return-void
.end method

.method private loadAd(IILcom/cmcm/picks/init/ICallBack;IZZ)V
    .locals 10
    .param p1, "pageNum"    # I
    .param p2, "posid"    # I
    .param p3, "cb"    # Lcom/cmcm/picks/init/ICallBack;
    .param p4, "adn"    # I
    .param p5, "isEnforceLoadFromRemote"    # Z
    .param p6, "filterShowed"    # Z

    .prologue
    .line 52
    if-lez p4, :cond_0

    const/16 v0, 0x1e

    if-gt p4, v0, :cond_0

    if-gez p1, :cond_1

    .line 53
    :cond_0
    invoke-direct {p0, p3}, Lcom/cmcm/picks/init/a;->onError(Lcom/cmcm/picks/init/ICallBack;)V

    .line 115
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/utils/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    invoke-direct {p0, p3}, Lcom/cmcm/picks/init/a;->onError(Lcom/cmcm/picks/init/ICallBack;)V

    goto :goto_0

    .line 62
    :cond_2
    new-instance v0, Lcom/cmcm/picks/init/a$1;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move v3, p4

    move-object v5, p3

    move/from16 v6, p6

    move v7, p1

    move v8, p2

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/cmcm/picks/init/a$1;-><init>(Lcom/cmcm/picks/init/a;IILjava/lang/String;Lcom/cmcm/picks/init/ICallBack;ZIII)V

    .line 107
    if-eqz p5, :cond_3

    .line 108
    invoke-virtual {v0}, Lcom/cmcm/picks/loader/b;->c()V

    .line 110
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 111
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lcom/cmcm/picks/loader/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 113
    :cond_4
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/loader/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private loadFromNet(IILcom/cmcm/picks/init/ICallBack;I)V
    .locals 7
    .param p1, "pageNum"    # I
    .param p2, "posid"    # I
    .param p3, "cb"    # Lcom/cmcm/picks/init/ICallBack;
    .param p4, "adn"    # I

    .prologue
    const/4 v5, 0x1

    .line 142
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/cmcm/picks/init/a;->loadAd(IILcom/cmcm/picks/init/ICallBack;IZZ)V

    .line 143
    return-void
.end method

.method private onError(Lcom/cmcm/picks/init/ICallBack;)V
    .locals 0
    .param p1, "cb"    # Lcom/cmcm/picks/init/ICallBack;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Lcom/cmcm/picks/init/ICallBack;->onLoadError()V

    .line 121
    :cond_0
    return-void
.end method

.method private onSuccess(Lcom/cmcm/picks/init/ICallBack;Ljava/util/List;)V
    .locals 0
    .param p1, "cb"    # Lcom/cmcm/picks/init/ICallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmcm/picks/init/ICallBack;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/Ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "ads":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/picks/loader/Ad;>;"
    if-eqz p1, :cond_0

    .line 125
    invoke-interface {p1, p2}, Lcom/cmcm/picks/init/ICallBack;->onLoadSuccess(Ljava/util/List;)V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract downloadSuccessReport(Ljava/lang/String;Lcom/cmcm/picks/loader/Ad;Ljava/lang/String;)V
.end method

.method public getIPicksCallBack()Lcom/cmcm/picks/init/IPicksBrowserCallBack;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/cmcm/picks/init/a;->sIPicksCallBack:Lcom/cmcm/picks/init/IPicksBrowserCallBack;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/cmcm/picks/gaid/a;->c()Lcom/cmcm/picks/gaid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/gaid/a;->b()V

    .line 34
    invoke-direct {p0}, Lcom/cmcm/picks/init/a;->initUserAgent()V

    .line 35
    return-void
.end method

.method public abstract ishaveInternalDown()Z
.end method

.method public loadad(ILcom/cmcm/picks/init/ICallBack;I)V
    .locals 7
    .param p1, "posid"    # I
    .param p2, "cb"    # Lcom/cmcm/picks/init/ICallBack;
    .param p3, "adn"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/cmcm/picks/init/a;->loadAd(IILcom/cmcm/picks/init/ICallBack;IZZ)V

    .line 45
    return-void
.end method

.method public loadad(ILcom/cmcm/picks/init/ICallBack;IZ)V
    .locals 7
    .param p1, "posid"    # I
    .param p2, "cb"    # Lcom/cmcm/picks/init/ICallBack;
    .param p3, "adn"    # I
    .param p4, "filterShowed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 48
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, v1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/cmcm/picks/init/a;->loadAd(IILcom/cmcm/picks/init/ICallBack;IZZ)V

    .line 49
    return-void
.end method

.method public abstract reportDowned(Ljava/lang/String;)V
.end method

.method public abstract reportInstall(Ljava/lang/String;)V
.end method

.method public setPicksBrowserCallBack(Lcom/cmcm/picks/init/IPicksBrowserCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/cmcm/picks/init/IPicksBrowserCallBack;

    .prologue
    .line 157
    sput-object p1, Lcom/cmcm/picks/init/a;->sIPicksCallBack:Lcom/cmcm/picks/init/IPicksBrowserCallBack;

    .line 158
    return-void
.end method
