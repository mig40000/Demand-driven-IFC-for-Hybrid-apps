.class public Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;,
        Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;,
        Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$c;,
        Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;
    }
.end annotation


# instance fields
.field private volatile a:Ljava/lang/String;

.field private volatile b:Ljava/lang/Boolean;

.field private final c:Ljava/lang/Object;

.field private volatile d:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$c",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d:Ljava/util/concurrent/FutureTask;

    invoke-interface {p2, v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$c;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 31
    .line 1146
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1147
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1148
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1150
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1151
    const-string v0, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1152
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1155
    const-string v3, "isLimitAdTrackingEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1156
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1157
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :try_start_1
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Ljava/lang/String;)V

    .line 2082
    iput-object v1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;

    .line 1160
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/l;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/i;)V

    .line 78
    iput-object p1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 31
    .line 2170
    new-instance v1, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;-><init>(B)V

    .line 2171
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2172
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2173
    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2175
    :try_start_0
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->Create(Landroid/os/IBinder;)Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;

    move-result-object v0

    .line 2176
    invoke-interface {v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2178
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;->getEnabled(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2180
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2181
    :try_start_1
    invoke-direct {p0, v2}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Ljava/lang/String;)V

    .line 3082
    iput-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;

    .line 2183
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2186
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2187
    :cond_0
    :goto_0
    return-void

    .line 2183
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2186
    :catch_0
    move-exception v0

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 133
    :try_start_0
    const-string v1, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 134
    const-string v2, "isGooglePlayServicesAvailable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 135
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 137
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_1

    .line 54
    iget-object v1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;

    invoke-direct {v2, p0, p1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;-><init>(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d:Ljava/util/concurrent/FutureTask;

    .line 70
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    :cond_0
    monitor-exit v1

    .line 74
    :cond_1
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$2;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$2;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public declared-synchronized d()Z
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
