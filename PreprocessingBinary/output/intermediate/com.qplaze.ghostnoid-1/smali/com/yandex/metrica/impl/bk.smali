.class public final Lcom/yandex/metrica/impl/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/j$a;


# static fields
.field private static a:Lcom/yandex/metrica/impl/bk;

.field private static b:Lcom/yandex/metrica/impl/n;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/yandex/metrica/impl/at;

.field private e:Lcom/yandex/metrica/impl/z;

.field private f:Lcom/yandex/metrica/impl/ae;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Lcom/yandex/metrica/impl/ob/dk;

.field private final i:Lcom/yandex/metrica/impl/an;

.field private j:Lcom/yandex/metrica/impl/g;

.field private k:Lcom/yandex/metrica/impl/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/yandex/metrica/impl/n;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/n;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/bk;->b:Lcom/yandex/metrica/impl/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk;->g:Ljava/util/concurrent/ExecutorService;

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing of Metrica"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1078
    const-string v1, ", Release type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    const-string v1, ", Version 2.62"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const-string v1, ", API Level 52"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    const-string v1, ", Dated 30.12.2016."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p1}, Lcom/yandex/metrica/impl/utils/i;->a(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk;->c:Landroid/content/Context;

    .line 2049
    sget-object v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    .line 66
    iget-object v1, p0, Lcom/yandex/metrica/impl/bk;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    new-instance v1, Lcom/yandex/metrica/impl/au;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bk;->g:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/yandex/metrica/impl/bk;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Lcom/yandex/metrica/impl/au;-><init>(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Landroid/os/Handler;)V

    .line 72
    iget-object v2, p0, Lcom/yandex/metrica/impl/bk;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/bm;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bm;->d()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v2

    .line 73
    new-instance v3, Lcom/yandex/metrica/impl/ob/bv;

    invoke-direct {v3, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    .line 75
    new-instance v2, Lcom/yandex/metrica/impl/f;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/f;-><init>(Lcom/yandex/metrica/impl/ob/bv;)V

    iget-object v4, p0, Lcom/yandex/metrica/impl/bk;->c:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/yandex/metrica/impl/f;->a(Landroid/content/Context;)V

    .line 77
    new-instance v2, Lcom/yandex/metrica/impl/ob/dk;

    invoke-direct {v2, v1, p2, v3}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Lcom/yandex/metrica/impl/au;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bv;)V

    iput-object v2, p0, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    .line 78
    iget-object v2, p0, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/ob/dl;)V

    .line 80
    new-instance v2, Lcom/yandex/metrica/impl/an;

    invoke-direct {v2, v1}, Lcom/yandex/metrica/impl/an;-><init>(Lcom/yandex/metrica/impl/au;)V

    iput-object v2, p0, Lcom/yandex/metrica/impl/bk;->i:Lcom/yandex/metrica/impl/an;

    .line 82
    new-instance v2, Lcom/yandex/metrica/impl/j;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/j;-><init>(Landroid/os/Handler;)V

    .line 83
    invoke-virtual {v2, p0}, Lcom/yandex/metrica/impl/j;->a(Lcom/yandex/metrica/impl/j$a;)V

    .line 84
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/j;)V

    .line 86
    new-instance v4, Lcom/yandex/metrica/impl/at$a;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/at$a;-><init>()V

    iget-object v5, p0, Lcom/yandex/metrica/impl/bk;->c:Landroid/content/Context;

    .line 87
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/at$a;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/at$a;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    .line 88
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/at$a;->a(Lcom/yandex/metrica/impl/ob/dl;)Lcom/yandex/metrica/impl/at$a;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v1}, Lcom/yandex/metrica/impl/at$a;->a(Lcom/yandex/metrica/impl/au;)Lcom/yandex/metrica/impl/at$a;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/at$a;->a(Landroid/os/Handler;)Lcom/yandex/metrica/impl/at$a;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/at$a;->a(Lcom/yandex/metrica/impl/j;)Lcom/yandex/metrica/impl/at$a;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/at$a;->a()Lcom/yandex/metrica/impl/at;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk;->d:Lcom/yandex/metrica/impl/at;

    .line 94
    invoke-static {}, Lcom/yandex/metrica/impl/ay;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/yandex/metrica/impl/g;

    new-instance v1, Lcom/yandex/metrica/impl/c;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bk;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/c;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/yandex/metrica/impl/bk;->g:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/impl/g;-><init>(Lcom/yandex/metrica/impl/ob/bv;Lcom/yandex/metrica/impl/c;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk;->j:Lcom/yandex/metrica/impl/g;

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bk;)Lcom/yandex/metrica/impl/z;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->g()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->setSessionTimeout(I)V

    .line 191
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 120
    const-class v0, Lcom/yandex/metrica/impl/bk;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/bk;->b(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit v0

    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    .locals 5

    .prologue
    .line 105
    const-class v1, Lcom/yandex/metrica/impl/bk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/bk;->b:Lcom/yandex/metrica/impl/n;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/n;->i()Z

    move-result v0

    .line 106
    sget-object v2, Lcom/yandex/metrica/impl/bk;->b:Lcom/yandex/metrica/impl/n;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/n;->a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/e;

    move-result-object v2

    .line 107
    invoke-static {p0, v2}, Lcom/yandex/metrica/impl/bk;->b(Landroid/content/Context;Lcom/yandex/metrica/e;)V

    .line 108
    sget-object v3, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/impl/bk;

    iget-object v3, v3, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;

    if-nez v3, :cond_1

    .line 109
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/yandex/metrica/e;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-static {}, Lcom/yandex/metrica/impl/utils/i;->e()Lcom/yandex/metrica/impl/utils/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/utils/i;->a()V

    .line 112
    :cond_0
    sget-object v3, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/impl/bk;

    .line 3282
    iget-object v4, v3, Lcom/yandex/metrica/impl/bk;->d:Lcom/yandex/metrica/impl/at;

    invoke-virtual {v4, v2, v0}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/e;Z)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    iput-object v0, v3, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;

    .line 3283
    iget-object v0, v3, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/z;->d()Lcom/yandex/metrica/impl/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->k()Z

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Z)V

    .line 4022
    :goto_0
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p0, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 116
    check-cast v0, Lcom/yandex/metrica/b;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/yandex/metrica/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v1

    return-void

    .line 114
    :cond_1
    :try_start_1
    sget-object v3, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/impl/bk;

    iget-object v3, v3, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;

    invoke-virtual {v3, v2, v0}, Lcom/yandex/metrica/impl/z;->a(Lcom/yandex/metrica/e;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->g()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->a(Landroid/location/Location;)V

    .line 223
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->g()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yandex/metrica/impl/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static a(Z)V
    .locals 4

    .prologue
    .line 194
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->b()Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    .line 4202
    if-eqz p0, :cond_1

    .line 4203
    iget-object v1, v0, Lcom/yandex/metrica/impl/bk;->k:Lcom/yandex/metrica/impl/i;

    if-nez v1, :cond_0

    .line 4204
    new-instance v1, Lcom/yandex/metrica/impl/ar;

    iget-object v2, v0, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;

    new-instance v3, Lcom/yandex/metrica/impl/bk$1;

    invoke-direct {v3, v0}, Lcom/yandex/metrica/impl/bk$1;-><init>(Lcom/yandex/metrica/impl/bk;)V

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ar;-><init>(Lcom/yandex/metrica/IReporter;Lcom/yandex/metrica/impl/i$a;)V

    iput-object v1, v0, Lcom/yandex/metrica/impl/bk;->k:Lcom/yandex/metrica/impl/i;

    .line 4210
    :cond_0
    iget-object v1, v0, Lcom/yandex/metrica/impl/bk;->f:Lcom/yandex/metrica/impl/ae;

    iget-object v2, v0, Lcom/yandex/metrica/impl/bk;->k:Lcom/yandex/metrica/impl/i;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ae;->a(Lcom/yandex/metrica/impl/i;)V

    .line 4214
    :goto_0
    iget-object v0, v0, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->c(Z)V

    .line 199
    :goto_1
    return-void

    .line 4212
    :cond_1
    iget-object v1, v0, Lcom/yandex/metrica/impl/bk;->f:Lcom/yandex/metrica/impl/ae;

    iget-object v2, v0, Lcom/yandex/metrica/impl/bk;->k:Lcom/yandex/metrica/impl/i;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ae;->b(Lcom/yandex/metrica/impl/i;)V

    goto :goto_0

    .line 197
    :cond_2
    sget-object v0, Lcom/yandex/metrica/impl/bk;->b:Lcom/yandex/metrica/impl/n;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/n;->c(Z)V

    goto :goto_1
.end method

.method public static declared-synchronized b()Lcom/yandex/metrica/impl/bk;
    .locals 2

    .prologue
    .line 134
    const-class v1, Lcom/yandex/metrica/impl/bk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/impl/bk;

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/yandex/metrica/impl/bh;->a:Ljava/lang/IllegalStateException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 137
    :cond_0
    :try_start_1
    sget-object v0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/impl/bk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/yandex/metrica/impl/bk;
    .locals 1

    .prologue
    .line 143
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;)V

    .line 145
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->b()Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    .locals 4

    .prologue
    .line 124
    const-class v1, Lcom/yandex/metrica/impl/bk;

    monitor-enter v1

    :try_start_0
    const-string v0, "App Context"

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/impl/bk;

    if-nez v0, :cond_1

    .line 126
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    new-instance v2, Lcom/yandex/metrica/impl/bk;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/yandex/metrica/impl/bk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    sput-object v2, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/impl/bk;

    .line 4161
    iget-object v0, v2, Lcom/yandex/metrica/impl/bk;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/v;->a(Landroid/content/Context;)V

    .line 4167
    if-eqz p1, :cond_0

    .line 4168
    iget-object v0, v2, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/dk;->a(Ljava/lang/String;)V

    .line 4169
    iget-object v0, v2, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->e()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/dk;->a(Ljava/util/Map;)V

    .line 4170
    iget-object v0, v2, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/dk;->b(Ljava/lang/String;)V

    .line 4172
    :cond_0
    iget-object v0, v2, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->d()V

    .line 4163
    iget-object v0, v2, Lcom/yandex/metrica/impl/bk;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/yandex/metrica/impl/utils/g$a;

    iget-object v2, v2, Lcom/yandex/metrica/impl/bk;->c:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/yandex/metrica/impl/utils/g$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 129
    sget-object v0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/impl/bk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_1
    monitor-exit v1

    return-void

    .line 126
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->g()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->d(Z)V

    .line 219
    return-void
.end method

.method public static declared-synchronized c()Lcom/yandex/metrica/impl/z;
    .locals 3

    .prologue
    .line 149
    const-class v1, Lcom/yandex/metrica/impl/bk;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->b()Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    .line 150
    iget-object v2, v0, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;

    if-nez v2, :cond_0

    .line 151
    sget-object v0, Lcom/yandex/metrica/impl/bh;->a:Ljava/lang/IllegalStateException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 153
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->g()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->a(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static c(Z)V
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->g()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->b(Z)V

    .line 227
    return-void
.end method

.method public static d(Z)V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->g()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->a(Z)V

    .line 235
    return-void
.end method

.method static declared-synchronized d()Z
    .locals 2

    .prologue
    .line 157
    const-class v1, Lcom/yandex/metrica/impl/bk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/impl/bk;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yandex/metrica/impl/bk;->a:Lcom/yandex/metrica/impl/bk;

    iget-object v0, v0, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->g()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ac;->h()Z

    move-result v0

    return v0
.end method

.method private static g()Lcom/yandex/metrica/impl/ac;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/yandex/metrica/impl/bk;->b()Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/metrica/impl/bk;->e:Lcom/yandex/metrica/impl/z;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/bk;->b:Lcom/yandex/metrica/impl/n;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/b;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->d:Lcom/yandex/metrica/impl/at;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/at;->a(Ljava/lang/String;)Lcom/yandex/metrica/b;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 2313
    new-instance v1, Lcom/yandex/metrica/impl/ae;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ae;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 2315
    new-instance v0, Lcom/yandex/metrica/impl/ar;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bk;->d:Lcom/yandex/metrica/impl/at;

    const-string v3, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/at;->a(Ljava/lang/String;)Lcom/yandex/metrica/b;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/bk$2;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/bk$2;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/yandex/metrica/impl/ar;-><init>(Lcom/yandex/metrica/IReporter;Lcom/yandex/metrica/impl/i$a;)V

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ae;->a(Lcom/yandex/metrica/impl/i;)V

    .line 100
    iput-object v1, p0, Lcom/yandex/metrica/impl/bk;->f:Lcom/yandex/metrica/impl/ae;

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->f:Lcom/yandex/metrica/impl/ae;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 102
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 290
    packed-switch p1, :pswitch_data_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/dk;->a(Landroid/os/Bundle;)V

    .line 293
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->j:Lcom/yandex/metrica/impl/g;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->j:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/g;->a()V

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/dk;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dk;->a(Lcom/yandex/metrica/IIdentifierCallback;)V

    .line 279
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->i:Lcom/yandex/metrica/impl/an;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/an;->a(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
