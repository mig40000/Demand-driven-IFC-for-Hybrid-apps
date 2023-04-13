.class Lcom/chartboost/sdk/impl/ar;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ar$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/as;

.field private final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/chartboost/sdk/impl/ac",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/as;Ljava/util/concurrent/PriorityBlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/as;",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/chartboost/sdk/impl/ac",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ar;->c:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Z

    .line 44
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ar;->a:Lcom/chartboost/sdk/impl/as;

    .line 45
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ar;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 46
    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/ac;)Lcom/chartboost/sdk/impl/ah;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ac",
            "<*>;)",
            "Lcom/chartboost/sdk/impl/ah;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/16 v1, 0x2710

    .line 107
    const/4 v0, 0x0

    .line 111
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/impl/ac;I)Lcom/chartboost/sdk/impl/ah;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    throw v0

    .line 114
    :catch_1
    move-exception v2

    .line 115
    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    .line 116
    mul-int/lit8 v1, v1, 0x2

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    throw v2

    .line 121
    :catch_2
    move-exception v0

    .line 122
    new-instance v1, Lcom/chartboost/sdk/impl/av;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/av;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private a(Lcom/chartboost/sdk/impl/ac;I)Lcom/chartboost/sdk/impl/ah;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ac",
            "<*>;I)",
            "Lcom/chartboost/sdk/impl/ah;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ac;->a()Lcom/chartboost/sdk/impl/aq;

    move-result-object v3

    .line 130
    iget-object v4, v3, Lcom/chartboost/sdk/impl/aq;->a:Ljava/util/Map;

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->a:Lcom/chartboost/sdk/impl/as;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/as;->a(Lcom/chartboost/sdk/impl/ac;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 133
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 134
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 135
    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 136
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 139
    if-eqz v4, :cond_0

    .line 140
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 145
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ac;->b:Lcom/chartboost/sdk/impl/ac$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ac$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ac;->b:Lcom/chartboost/sdk/impl/ac$a;

    sget-object v1, Lcom/chartboost/sdk/impl/ac$a;->b:Lcom/chartboost/sdk/impl/ac$a;

    if-ne v0, v1, :cond_2

    .line 147
    iget-object v0, v3, Lcom/chartboost/sdk/impl/aq;->b:[B

    if-eqz v0, :cond_2

    .line 148
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 149
    iget-object v0, v3, Lcom/chartboost/sdk/impl/aq;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "Content-Type"

    iget-object v1, v3, Lcom/chartboost/sdk/impl/aq;->c:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 152
    :try_start_2
    iget-object v1, v3, Lcom/chartboost/sdk/impl/aq;->b:[B

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 153
    if-eqz v4, :cond_2

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 158
    const/4 v0, -0x1

    if-ne v1, v0, :cond_6

    .line 161
    new-instance v0, Lcom/chartboost/sdk/impl/av;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/av;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 153
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :goto_3
    :try_start_7
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_3

    .line 165
    :cond_6
    invoke-static {v1}, Lcom/chartboost/sdk/impl/ar;->a(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 166
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ac;->f:Ljava/io/File;

    if-eqz v0, :cond_10

    .line 167
    new-instance v3, Ljava/io/File;

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ac;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/chartboost/sdk/impl/ac;->f:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".tmp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 170
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    const/4 v6, 0x0

    .line 171
    :try_start_8
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 170
    const/4 v8, 0x0

    .line 172
    :try_start_9
    invoke-static {v4, v7}, Lcom/chartboost/sdk/impl/br;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 173
    if-eqz v7, :cond_7

    if-eqz v2, :cond_a

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    if-eqz v2, :cond_d

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 174
    :cond_8
    :goto_5
    :try_start_c
    iget-object v2, p1, Lcom/chartboost/sdk/impl/ac;->f:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 175
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_f

    .line 176
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after failing to rename to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ac;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 173
    :catch_3
    move-exception v7

    :try_start_d
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_4

    .line 170
    :catch_4
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 173
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6
    if-eqz v4, :cond_9

    if-eqz v2, :cond_e

    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_9
    :goto_7
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_a
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 170
    :catch_5
    move-exception v1

    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 173
    :catchall_4
    move-exception v0

    :goto_8
    if-eqz v7, :cond_b

    if-eqz v1, :cond_c

    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :cond_b
    :goto_9
    :try_start_14
    throw v0

    :catch_6
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_9

    :catch_7
    move-exception v2

    :try_start_15
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_8
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .line 177
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to move "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ac;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 183
    :cond_10
    :try_start_16
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    move-result-object v2

    .line 187
    :goto_a
    if-eqz v2, :cond_12

    .line 188
    :try_start_17
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/br;->b(Ljava/io/InputStream;)[B
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    move-result-object v0

    .line 193
    :goto_b
    if-eqz v2, :cond_11

    .line 194
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 201
    :cond_11
    :goto_c
    new-instance v2, Lcom/chartboost/sdk/impl/au;

    invoke-direct {v2, v1, v0}, Lcom/chartboost/sdk/impl/au;-><init>(I[B)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 203
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    .line 184
    :catch_9
    move-exception v0

    .line 185
    :try_start_19
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_a

    .line 190
    :cond_12
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto :goto_b

    .line 193
    :catchall_5
    move-exception v0

    if-eqz v2, :cond_13

    .line 194
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_13
    throw v0

    .line 198
    :cond_14
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_c

    .line 173
    :catchall_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    .line 153
    :catchall_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2
.end method

.method private a(Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ae;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/chartboost/sdk/impl/ac",
            "<TT;>;",
            "Lcom/chartboost/sdk/impl/ah;",
            "Lcom/chartboost/sdk/impl/ae",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/chartboost/sdk/impl/ar$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/ar$a;-><init>(Lcom/chartboost/sdk/impl/ar;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ae;)V

    .line 227
    iget v1, p1, Lcom/chartboost/sdk/impl/ac;->h:I

    packed-switch v1, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ar;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 232
    :pswitch_1
    invoke-static {}, Lcom/chartboost/sdk/impl/aa;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    const/16 v2, 0x64

    if-gt v2, p0, :cond_0

    const/16 v2, 0xc8

    if-ge p0, v2, :cond_0

    move v2, v0

    .line 218
    :goto_0
    if-nez v2, :cond_1

    const/16 v2, 0xcc

    if-eq p0, v2, :cond_1

    const/16 v2, 0x130

    if-eq p0, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 217
    goto :goto_0

    :cond_1
    move v0, v1

    .line 218
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/g;->b(I)V

    .line 57
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ar;->d:Z

    if-nez v0, :cond_4

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ac;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 66
    iget-object v1, v0, Lcom/chartboost/sdk/impl/ac;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/chartboost/sdk/impl/ac;->g:J

    .line 74
    :try_start_1
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/impl/ac;)Lcom/chartboost/sdk/impl/ah;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 75
    :try_start_2
    invoke-interface {v2}, Lcom/chartboost/sdk/impl/ah;->b()I

    move-result v1

    .line 76
    const/16 v4, 0xc8

    if-lt v1, v4, :cond_1

    const/16 v4, 0x12c

    if-ge v1, v4, :cond_1

    .line 77
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ac;->a(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/impl/ae;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    move-object v2, v3

    .line 100
    :goto_1
    invoke-direct {p0, v0, v2, v1}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ae;)V

    goto :goto_0

    .line 92
    :cond_1
    const/16 v4, 0x191

    if-eq v1, v4, :cond_2

    const/16 v4, 0x193

    if-ne v1, v4, :cond_3

    .line 93
    :cond_2
    :try_start_3
    new-instance v1, Lcom/chartboost/sdk/impl/ao;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/ao;-><init>()V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Exception;)Lcom/chartboost/sdk/impl/ae;

    move-result-object v1

    goto :goto_1

    .line 95
    :cond_3
    new-instance v1, Lcom/chartboost/sdk/impl/ax;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/ax;-><init>()V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Exception;)Lcom/chartboost/sdk/impl/ae;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 98
    :goto_2
    :try_start_4
    invoke-static {v1}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/Exception;)Lcom/chartboost/sdk/impl/ae;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 100
    invoke-direct {p0, v0, v2, v1}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ae;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_3
    invoke-direct {p0, v0, v2, v3}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/ah;Lcom/chartboost/sdk/impl/ae;)V

    throw v1

    .line 103
    :cond_4
    return-void

    .line 100
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 97
    :catch_1
    move-exception v1

    goto :goto_2

    .line 62
    :catch_2
    move-exception v0

    goto :goto_0
.end method
