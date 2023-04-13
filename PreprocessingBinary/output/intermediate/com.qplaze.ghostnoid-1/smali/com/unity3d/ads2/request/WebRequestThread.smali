.class public Lcom/unity3d/ads2/request/WebRequestThread;
.super Ljava/lang/Thread;
.source "WebRequestThread.java"


# static fields
.field protected static final MSG_REQUEST:I = 0x1

.field private static _handler:Lcom/unity3d/ads2/request/WebRequestHandler;

.field private static _ready:Z

.field private static final _readyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads2/request/WebRequestThread;->_ready:Z

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/ads2/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/unity3d/ads2/request/WebRequestThread;

    invoke-direct {v0}, Lcom/unity3d/ads2/request/WebRequestThread;-><init>()V

    .line 24
    const-string v1, "UnityAdsWebRequestThread"

    invoke-virtual {v0, v1}, Lcom/unity3d/ads2/request/WebRequestThread;->setName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/unity3d/ads2/request/WebRequestThread;->start()V

    .line 27
    :goto_0
    sget-boolean v0, Lcom/unity3d/ads2/request/WebRequestThread;->_ready:Z

    if-nez v0, :cond_0

    .line 29
    :try_start_0
    sget-object v1, Lcom/unity3d/ads2/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    sget-object v0, Lcom/unity3d/ads2/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 31
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v0, "Couldn\'t synchronize thread"

    invoke-static {v0}, Lcom/unity3d/ads2/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public static declared-synchronized request(ILjava/lang/String;Lcom/unity3d/ads2/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads2/request/IWebRequestListener;Lcom/unity3d/ads2/request/WebRequestResultReceiver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads2/request/WebRequest$RequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/ads2/request/IWebRequestListener;",
            "Lcom/unity3d/ads2/request/WebRequestResultReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    const-class v2, Lcom/unity3d/ads2/request/WebRequestThread;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/unity3d/ads2/request/WebRequestThread;->_ready:Z

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/unity3d/ads2/request/WebRequestThread;->init()V

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 69
    :cond_1
    const-string v0, "Request is NULL or too short"

    invoke-interface {p7, p1, v0}, Lcom/unity3d/ads2/request/IWebRequestListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    monitor-exit v2

    return-void

    .line 73
    :cond_2
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string v0, "url"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "type"

    invoke-virtual {p2}, Lcom/unity3d/ads2/request/WebRequest$RequestType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "body"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "receiver"

    invoke-virtual {v3, v0, p8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    const-string v0, "connectTimeout"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v0, "readTimeout"

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    if-eqz p3, :cond_3

    .line 82
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 84
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 88
    :cond_3
    :try_start_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 89
    iput p0, v0, Landroid/os/Message;->what:I

    .line 90
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 92
    sget-object v1, Lcom/unity3d/ads2/request/WebRequestThread;->_handler:Lcom/unity3d/ads2/request/WebRequestHandler;

    invoke-virtual {v1, v0}, Lcom/unity3d/ads2/request/WebRequestHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized request(Ljava/lang/String;Lcom/unity3d/ads2/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads2/request/IWebRequestListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads2/request/WebRequest$RequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/ads2/request/IWebRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    const-class v7, Lcom/unity3d/ads2/request/WebRequestThread;

    monitor-enter v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/unity3d/ads2/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/ads2/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads2/request/IWebRequestListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v7

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized request(Ljava/lang/String;Lcom/unity3d/ads2/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads2/request/IWebRequestListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads2/request/WebRequest$RequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/ads2/request/IWebRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    const-class v10, Lcom/unity3d/ads2/request/WebRequestThread;

    monitor-enter v10

    const/4 v1, 0x1

    :try_start_0
    new-instance v9, Lcom/unity3d/ads2/request/WebRequestResultReceiver;

    sget-object v2, Lcom/unity3d/ads2/request/WebRequestThread;->_handler:Lcom/unity3d/ads2/request/WebRequestHandler;

    move-object/from16 v0, p6

    invoke-direct {v9, v2, v0}, Lcom/unity3d/ads2/request/WebRequestResultReceiver;-><init>(Landroid/os/Handler;Lcom/unity3d/ads2/request/IWebRequestListener;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v9}, Lcom/unity3d/ads2/request/WebRequestThread;->request(ILjava/lang/String;Lcom/unity3d/ads2/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads2/request/IWebRequestListener;Lcom/unity3d/ads2/request/WebRequestResultReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v10

    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method public static declared-synchronized resolve(Ljava/lang/String;Lcom/unity3d/ads2/request/IResolveHostListener;)Z
    .locals 3

    .prologue
    .line 96
    const-class v1, Lcom/unity3d/ads2/request/WebRequestThread;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 97
    :cond_0
    sget-object v0, Lcom/unity3d/ads2/request/ResolveHostError;->INVALID_HOST:Lcom/unity3d/ads2/request/ResolveHostError;

    const-string v2, "Host is NULL"

    invoke-interface {p1, p0, v0, v2}, Lcom/unity3d/ads2/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/ads2/request/ResolveHostError;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    const/4 v0, 0x0

    .line 137
    :goto_0
    monitor-exit v1

    return v0

    .line 101
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/unity3d/ads2/request/WebRequestThread$1;

    invoke-direct {v2, p0, p1}, Lcom/unity3d/ads2/request/WebRequestThread$1;-><init>(Ljava/lang/String;Lcom/unity3d/ads2/request/IResolveHostListener;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 42
    sget-object v0, Lcom/unity3d/ads2/request/WebRequestThread;->_handler:Lcom/unity3d/ads2/request/WebRequestHandler;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/unity3d/ads2/request/WebRequestHandler;

    invoke-direct {v0}, Lcom/unity3d/ads2/request/WebRequestHandler;-><init>()V

    sput-object v0, Lcom/unity3d/ads2/request/WebRequestThread;->_handler:Lcom/unity3d/ads2/request/WebRequestHandler;

    .line 46
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads2/request/WebRequestThread;->_ready:Z

    .line 48
    sget-object v1, Lcom/unity3d/ads2/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/unity3d/ads2/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 53
    return-void

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
