.class public final Lcom/yandex/metrica/impl/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/d;


# static fields
.field static final a:J

.field static final b:J

.field static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile i:Lcom/yandex/metrica/impl/y;

.field private static final j:Ljava/lang/Object;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/os/HandlerThread;

.field private final f:Landroid/location/LocationManager;

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private k:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/yandex/metrica/impl/ob/by;

.field private n:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/y;->a:J

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/y;->b:J

    .line 45
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "gps"

    aput-object v3, v1, v2

    .line 46
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/yandex/metrica/impl/y;->c:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/y;->j:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/y;->k:Lcom/yandex/metrica/impl/d$a;

    .line 62
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/y;->l:Z

    .line 210
    new-instance v0, Lcom/yandex/metrica/impl/y$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/y$1;-><init>(Lcom/yandex/metrica/impl/y;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/y;->n:Landroid/location/LocationListener;

    .line 66
    iput-object p1, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    .line 68
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/y;->g:Ljava/util/WeakHashMap;

    .line 69
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/y;->h:Z

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/y;->e:Landroid/os/HandlerThread;

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->b()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/yandex/metrica/impl/ob/by;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/by;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/y;->m:Lcom/yandex/metrica/impl/ob/by;

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->m:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/by;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/y;->l:Z

    .line 81
    return-void
.end method

.method public static a([B)Landroid/location/Location;
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 299
    const/4 v0, 0x0

    :try_start_0
    array-length v2, p0

    invoke-virtual {v1, p0, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 300
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 301
    const-class v0, Landroid/location/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 308
    :goto_0
    return-object v0

    .line 305
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 308
    const/4 v0, 0x0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;
    .locals 3

    .prologue
    .line 84
    sget-object v0, Lcom/yandex/metrica/impl/y;->i:Lcom/yandex/metrica/impl/y;

    if-nez v0, :cond_1

    .line 85
    sget-object v1, Lcom/yandex/metrica/impl/y;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/y;->i:Lcom/yandex/metrica/impl/y;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/yandex/metrica/impl/y;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/y;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yandex/metrica/impl/y;->i:Lcom/yandex/metrica/impl/y;

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/y;->i:Lcom/yandex/metrica/impl/y;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;FJLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    if-nez p0, :cond_2

    move v1, v2

    .line 236
    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 241
    sget-wide v6, Lcom/yandex/metrica/impl/y;->b:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    move v0, v1

    .line 242
    :goto_1
    sget-wide v6, Lcom/yandex/metrica/impl/y;->b:J

    neg-long v6, v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    move v3, v1

    .line 243
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    move v6, v1

    .line 245
    :goto_3
    if-nez v0, :cond_0

    .line 249
    if-eqz v3, :cond_6

    move v1, v2

    .line 251
    goto :goto_0

    :cond_3
    move v0, v2

    .line 241
    goto :goto_1

    :cond_4
    move v3, v2

    .line 242
    goto :goto_2

    :cond_5
    move v6, v2

    .line 243
    goto :goto_3

    .line 255
    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 256
    if-lez v0, :cond_9

    move v5, v1

    .line 257
    :goto_4
    if-gez v0, :cond_a

    move v4, v1

    .line 258
    :goto_5
    int-to-long v8, v0

    const-wide/16 v10, 0xc8

    cmp-long v0, v8, v10

    if-lez v0, :cond_b

    move v0, v1

    .line 261
    :goto_6
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 2276
    if-nez v3, :cond_d

    if-nez v7, :cond_c

    move v3, v1

    .line 264
    :goto_7
    if-nez v4, :cond_0

    .line 266
    if-eqz v6, :cond_7

    if-eqz v5, :cond_0

    .line 268
    :cond_7
    if-eqz v6, :cond_8

    if-nez v0, :cond_8

    if-nez v3, :cond_0

    :cond_8
    move v1, v2

    .line 272
    goto :goto_0

    :cond_9
    move v5, v2

    .line 256
    goto :goto_4

    :cond_a
    move v4, v2

    .line 257
    goto :goto_5

    :cond_b
    move v0, v2

    .line 258
    goto :goto_6

    :cond_c
    move v3, v2

    .line 2276
    goto :goto_7

    :cond_d
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7
.end method

.method public static b(Landroid/location/Location;)[B
    .locals 3

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 281
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 284
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    :goto_0
    return-object v0

    .line 289
    :catch_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 147
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/y;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/y;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/y;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_1
    monitor-exit p0

    return-void

    .line 169
    :cond_2
    :try_start_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/y;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    .line 1035
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->g:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/y;->h:Z

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/y;->h:Z

    .line 103
    const-string v2, "network"

    const/4 v3, 0x0

    sget-wide v4, Lcom/yandex/metrica/impl/y;->a:J

    iget-object v6, p0, Lcom/yandex/metrica/impl/y;->n:Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->e:Landroid/os/HandlerThread;

    .line 107
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, p0

    .line 103
    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/String;FJLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 111
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    .line 1039
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    const-string v2, "passive"

    const/4 v3, 0x0

    sget-wide v4, Lcom/yandex/metrica/impl/y;->a:J

    iget-object v6, p0, Lcom/yandex/metrica/impl/y;->n:Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->e:Landroid/os/HandlerThread;

    .line 116
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, p0

    .line 112
    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/String;FJLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;ZZ)V
    .locals 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/y;->l:Z

    if-eq v0, p3, :cond_0

    .line 313
    if-eqz p2, :cond_2

    .line 314
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/y;->l:Z

    .line 315
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->m:Lcom/yandex/metrica/impl/ob/by;

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/y;->l:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/by;->a(Z)V

    .line 316
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/y;->l:Z

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/Object;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/y;->a()V

    goto :goto_0

    .line 323
    :cond_2
    if-nez p3, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/y;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/y;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/y;->h:Z

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yandex/metrica/impl/y;->n:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/y;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Landroid/location/Location;
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Landroid/location/Location;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 180
    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    .line 2035
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 184
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    .line 2039
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 186
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    sget-object v6, Lcom/yandex/metrica/impl/y;->c:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 191
    if-eqz v3, :cond_1

    :try_start_0
    const-string v6, "passive"

    .line 192
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_1

    .line 194
    :cond_0
    iget-object v6, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    invoke-virtual {v6, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_1
    if-eqz v0, :cond_4

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/y;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    move-object v1, v0

    .line 204
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 207
    :cond_3
    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
