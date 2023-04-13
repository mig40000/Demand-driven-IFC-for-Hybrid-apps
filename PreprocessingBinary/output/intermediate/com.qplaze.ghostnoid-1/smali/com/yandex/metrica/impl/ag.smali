.class Lcom/yandex/metrica/impl/ag;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ag$a;,
        Lcom/yandex/metrica/impl/ag$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/yandex/metrica/impl/ag$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private volatile e:Lcom/yandex/metrica/impl/ag$b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ag;->c:Ljava/util/concurrent/BlockingQueue;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ag;->d:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/yandex/metrica/impl/ag;->a:Ljava/util/concurrent/Executor;

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/ch;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ch;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ag;->b:Ljava/util/concurrent/Executor;

    .line 47
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ag$b;)Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->e:Lcom/yandex/metrica/impl/ag$b;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ag$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ag;->e:Lcom/yandex/metrica/impl/ag$b;

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 69
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ag;->interrupt()V

    .line 70
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ah;)V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/ag;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ag$b;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/yandex/metrica/impl/ag$b;-><init>(Lcom/yandex/metrica/impl/ah;B)V

    .line 56
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ag$b;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/yandex/metrica/impl/ag;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/yandex/metrica/impl/ah;)Z
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/yandex/metrica/impl/ag$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ag$b;-><init>(Lcom/yandex/metrica/impl/ah;B)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ag$b;)Z

    move-result v0

    return v0
.end method

.method c(Lcom/yandex/metrica/impl/ah;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->b()Z

    move-result v0

    .line 122
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->d()Lcom/yandex/metrica/impl/ob/ck;

    move-result-object v2

    .line 124
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ck;->b()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    move v2, v1

    .line 133
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    .line 134
    add-int/lit8 v2, v2, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ag;->d(Lcom/yandex/metrica/impl/ah;)V

    .line 143
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->c()Z

    move-result v0

    .line 144
    const/4 v4, 0x3

    if-gt v2, v4, :cond_1

    if-nez v0, :cond_1

    move v0, v3

    .line 145
    :goto_1
    const/16 v4, 0x190

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->k()I

    move-result v5

    if-eq v4, v5, :cond_2

    move v4, v3

    :goto_2
    and-int/2addr v0, v4

    .line 147
    if-eqz v0, :cond_0

    .line 148
    rem-int/lit8 v4, v2, 0x3

    if-eqz v4, :cond_3

    sget-wide v4, Lcom/yandex/metrica/impl/ah$a;->a:J

    .line 156
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 144
    goto :goto_1

    :cond_2
    move v4, v1

    .line 145
    goto :goto_2

    .line 148
    :cond_3
    sget-wide v4, Lcom/yandex/metrica/impl/ah$a;->b:J

    goto :goto_3

    .line 160
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->f()V

    .line 161
    return-void

    :cond_5
    move v2, v1

    goto :goto_0
.end method

.method d(Lcom/yandex/metrica/impl/ah;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 165
    .line 173
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->e()V

    .line 174
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->d()Lcom/yandex/metrica/impl/ob/ck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ck;->a()Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 176
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->i()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 177
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->j()[B

    move-result-object v3

    .line 179
    if-eqz v3, :cond_2

    array-length v0, v3

    if-lez v0, :cond_2

    .line 180
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->m()Ljava/lang/String;

    move-result-object v0

    .line 1217
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1218
    const-string v2, "Accept-Encoding"

    invoke-virtual {v4, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string v2, "Content-Encoding"

    invoke-virtual {v4, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 183
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    array-length v3, v3

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 185
    :try_start_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->j()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 186
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 188
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v3, v0

    move-object v5, v2

    .line 192
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 193
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ah;->a(I)V

    .line 194
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ah;->a(Ljava/util/Map;)V

    .line 1225
    const/16 v2, 0x190

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1f4

    if-eq v0, v2, :cond_0

    move v0, v6

    .line 198
    :goto_1
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v0

    .line 200
    :try_start_5
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v6, 0x1f40

    invoke-direct {v2, v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 201
    :try_start_6
    invoke-static {v2}, Lcom/yandex/metrica/impl/r;->b(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ah;->b([B)V

    .line 202
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object v1, v2

    .line 208
    :goto_2
    invoke-static {v5}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 209
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v3}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 211
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 212
    invoke-static {v4}, Lcom/yandex/metrica/impl/bg;->a(Ljava/net/HttpURLConnection;)V

    .line 213
    :goto_3
    return-void

    .line 1225
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 206
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_4
    :try_start_7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ah;->g()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 208
    invoke-static {v3}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 209
    invoke-static {v4}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 211
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 212
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_3

    .line 208
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v2, v1

    :goto_5
    invoke-static {v5}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 209
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 210
    invoke-static {v3}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 211
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 212
    invoke-static {v4}, Lcom/yandex/metrica/impl/bg;->a(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 208
    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v5, v1

    move-object v2, v1

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v5, v1

    move-object v0, v2

    move-object v2, v1

    goto :goto_5

    :catchall_3
    move-exception v3

    move-object v5, v2

    move-object v2, v1

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_5
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catchall_6
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catchall_7
    move-exception v5

    move-object v7, v5

    move-object v5, v3

    move-object v3, v0

    move-object v0, v7

    move-object v8, v2

    move-object v2, v4

    move-object v4, v8

    goto :goto_5

    .line 206
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v4

    move-object v3, v1

    move-object v4, v1

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v2, v4

    move-object v3, v1

    move-object v4, v1

    goto :goto_4

    :catch_3
    move-exception v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v1

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v5

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v5

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_4

    :cond_1
    move-object v0, v1

    goto/16 :goto_2

    :cond_2
    move-object v3, v1

    move-object v5, v1

    goto/16 :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ag$b;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ag;->e:Lcom/yandex/metrica/impl/ag$b;

    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->e:Lcom/yandex/metrica/impl/ag$b;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ag$b;->a(Lcom/yandex/metrica/impl/ag$b;)Lcom/yandex/metrica/impl/ah;

    move-result-object v1

    .line 1097
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ah;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->a:Ljava/util/concurrent/Executor;

    .line 1107
    :goto_1
    new-instance v2, Lcom/yandex/metrica/impl/ag$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/yandex/metrica/impl/ag$a;-><init>(Lcom/yandex/metrica/impl/ag;Lcom/yandex/metrica/impl/ah;B)V

    .line 83
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iput-object v4, p0, Lcom/yandex/metrica/impl/ag;->e:Lcom/yandex/metrica/impl/ag$b;

    goto :goto_0

    .line 1102
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ag;->b:Ljava/util/concurrent/Executor;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    iput-object v4, p0, Lcom/yandex/metrica/impl/ag;->e:Lcom/yandex/metrica/impl/ag$b;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/yandex/metrica/impl/ag;->e:Lcom/yandex/metrica/impl/ag$b;

    throw v0

    .line 94
    :cond_1
    return-void
.end method
