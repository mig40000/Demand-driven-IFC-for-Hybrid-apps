.class public Lcom/yandex/metrica/impl/ob/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/de$a;,
        Lcom/yandex/metrica/impl/ob/de$c;,
        Lcom/yandex/metrica/impl/ob/de$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ServiceConnection;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/de$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private e:Z

.field private f:Ljava/net/ServerSocket;

.field private final g:Lcom/yandex/metrica/impl/ob/df;

.field private h:Lcom/yandex/metrica/impl/ob/dh;

.field private i:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/yandex/metrica/impl/ob/de$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/de$1;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->a:Landroid/content/ServiceConnection;

    .line 145
    new-instance v0, Lcom/yandex/metrica/impl/ob/de$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/de$4;-><init>(Lcom/yandex/metrica/impl/ob/de;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/os/Handler;

    .line 200
    new-instance v0, Lcom/yandex/metrica/impl/ob/de$5;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/de$5;-><init>(Lcom/yandex/metrica/impl/ob/de;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->c:Ljava/util/HashMap;

    .line 217
    new-instance v0, Lcom/yandex/metrica/impl/ob/df;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/df;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->g:Lcom/yandex/metrica/impl/ob/df;

    .line 224
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/de;->d:Landroid/content/Context;

    .line 1229
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/impl/ob/p;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/k;->a()Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/de$7;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/ob/de$7;-><init>(Lcom/yandex/metrica/impl/ob/de;)V

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/k$a;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/de$6;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/ob/de$6;-><init>(Lcom/yandex/metrica/impl/ob/de;)V

    .line 1233
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/k$a;->a(Lcom/yandex/metrica/impl/ob/h;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    .line 1237
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v2

    .line 1229
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    .line 1238
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/impl/ob/n;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/k;->a()Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/de$8;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/ob/de$8;-><init>(Lcom/yandex/metrica/impl/ob/de;)V

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/k$a;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    .line 1242
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v2

    .line 1238
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    .line 1243
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/impl/ob/l;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/k;->a()Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/de$9;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/ob/de$9;-><init>(Lcom/yandex/metrica/impl/ob/de;)V

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/k$a;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    .line 1247
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v2

    .line 1243
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    .line 1248
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/impl/ob/m;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/k;->a()Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/de$10;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/ob/de$10;-><init>(Lcom/yandex/metrica/impl/ob/de;)V

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/k$a;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    .line 1252
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v2

    .line 1248
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    .line 1253
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/impl/ob/o;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/k;->a()Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/de$11;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/ob/de$11;-><init>(Lcom/yandex/metrica/impl/ob/de;)V

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/k$a;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v2

    .line 1258
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v2

    .line 1253
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    .line 226
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/de;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/de;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->a:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/de;)Lcom/yandex/metrica/impl/ob/dh;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->h:Lcom/yandex/metrica/impl/ob/dh;

    return-object v0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/de;)Lcom/yandex/metrica/impl/ob/df;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->g:Lcom/yandex/metrica/impl/ob/df;

    return-object v0
.end method


# virtual methods
.method a(I)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/de;->b()V

    .line 269
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/de;->h:Lcom/yandex/metrica/impl/ob/dh;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dh;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 271
    :cond_0
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/dh;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/de;->h:Lcom/yandex/metrica/impl/ob/dh;

    .line 296
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    return-void
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 284
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->h:Lcom/yandex/metrica/impl/ob/dh;

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Z

    .line 287
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/de;->d()V

    .line 288
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->i:Ljava/lang/Thread;

    .line 289
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 4

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->d:Landroid/content/Context;

    const-class v2, Lcom/yandex/metrica/MetricaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    const-string v1, "com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/de;->a:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 304
    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->d:Landroid/content/Context;

    .line 2022
    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {v0, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 305
    const-string v1, "socket_bind_has_failed"

    invoke-interface {v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->d:Landroid/content/Context;

    .line 3022
    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {v0, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 309
    const-string v1, "socket_bind_has_thrown_exception"

    invoke-interface {v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized e()V
    .locals 1

    .prologue
    .line 315
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Z

    .line 316
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 317
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->f:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->i:Ljava/lang/Thread;

    .line 3262
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    .line 321
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->f:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->f:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method f()Ljava/net/ServerSocket;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 355
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->h:Lcom/yandex/metrica/impl/ob/dh;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dh;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    move-object v1, v0

    .line 358
    :goto_0
    if-nez v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    if-eqz v0, :cond_0

    .line 362
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/de;->a(I)Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :cond_0
    move-object v2, v0

    .line 375
    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 367
    :goto_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/de;->d:Landroid/content/Context;

    .line 5022
    const-string v4, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {v2, v4}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v2

    .line 367
    const-string v4, "socket_port_already_in_use"

    new-instance v5, Lcom/yandex/metrica/impl/ob/de$2;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/de$2;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v2, v4, v5}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    move-object v2, v0

    .line 375
    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_2
    move-object v2, v0

    goto :goto_0

    .line 377
    :cond_1
    return-object v1

    .line 375
    :catch_2
    move-exception v2

    goto :goto_2

    .line 366
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/de;->f()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->f:Ljava/net/ServerSocket;

    .line 332
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->f:Ljava/net/ServerSocket;

    if-eqz v0, :cond_6

    .line 333
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Z

    if-eqz v0, :cond_6

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->f:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 3387
    const/16 v0, 0x3e8

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 3389
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3391
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3392
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 3393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3394
    const-string v4, "GET /"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3395
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 3396
    const/16 v6, 0x20

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 3397
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 3400
    :goto_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 3401
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3402
    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 3403
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3424
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 3425
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 341
    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_0

    .line 343
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 346
    :catch_1
    move-exception v0

    goto :goto_0

    .line 3407
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->c:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/de$c;

    .line 3408
    if-eqz v0, :cond_4

    .line 3409
    invoke-virtual {v0, v6, v3}, Lcom/yandex/metrica/impl/ob/de$c;->a(Landroid/net/Uri;Ljava/net/Socket;)Lcom/yandex/metrica/impl/ob/de$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de$b;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3425
    :cond_3
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 341
    if-eqz v3, :cond_0

    .line 343
    :try_start_7
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 346
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 3412
    :cond_4
    :try_start_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->d:Landroid/content/Context;

    .line 4022
    const-string v5, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {v0, v5}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 3412
    const-string v5, "socket_request_to_unknown_path"

    new-instance v6, Lcom/yandex/metrica/impl/ob/de$3;

    invoke-direct {v6, v4}, Lcom/yandex/metrica/impl/ob/de$3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5, v6}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 341
    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_6
    if-eqz v3, :cond_5

    .line 343
    :try_start_9
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 346
    :cond_5
    :goto_7
    throw v0

    :catch_3
    move-exception v1

    goto :goto_7

    .line 351
    :cond_6
    return-void

    .line 341
    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_4

    .line 3424
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_7
    move-object v4, v2

    goto :goto_1
.end method
