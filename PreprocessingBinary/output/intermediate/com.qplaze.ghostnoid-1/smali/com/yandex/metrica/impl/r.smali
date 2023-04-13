.class public final Lcom/yandex/metrica/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1000

    const/4 v1, 0x0

    .line 95
    new-array v2, v5, [C

    move v0, v1

    .line 100
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2, v1, v5}, Ljava/io/Reader;->read([CII)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 101
    invoke-virtual {p1, v2, v1, v4}, Ljava/io/Writer;->write([CII)V

    .line 102
    add-int/2addr v0, v4

    goto :goto_0

    .line 105
    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/r;->b(Landroid/content/Context;Ljava/io/File;)[B

    move-result-object v2

    .line 198
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-object v0

    .line 199
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 201
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 1022
    const-string v2, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p0, v2}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v2

    .line 202
    const-string v3, "read_share_file_with_unsupported_encoding"

    invoke-interface {v2, v3, v1}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 70
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 71
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/r;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 72
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 83
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/r;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 86
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2295
    const/16 v0, 0x18

    :try_start_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(I)Z

    move-result v0

    .line 251
    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yandex/metrica/impl/r;->a(Ljava/lang/String;Ljava/io/FileOutputStream;)V

    .line 253
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/r;->c(Landroid/content/Context;Ljava/io/File;)V

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yandex/metrica/impl/r;->a(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .locals 5

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 303
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 307
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 308
    array-length v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 309
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 310
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 311
    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 312
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    invoke-static {v0}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 317
    invoke-static {p1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 318
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v1

    invoke-static {v0}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 317
    invoke-static {p1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 317
    invoke-static {p1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    throw v0

    .line 316
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public static a(Ljava/nio/channels/FileLock;)V
    .locals 1

    .prologue
    .line 238
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 130
    .line 134
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    :try_start_2
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 137
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 139
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 140
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 144
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 145
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    .line 144
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 145
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 145
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    throw v0

    .line 144
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2, v0}, Lcom/yandex/metrica/impl/r;->a(Ljava/lang/String;Ljava/io/FileOutputStream;)V

    .line 269
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/r;->c(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/io/File;)[B
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 209
    .line 214
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v7, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 217
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 219
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 220
    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 221
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 222
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v2}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 232
    invoke-static {v7}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 234
    :goto_0
    return-object v0

    .line 231
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 232
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 231
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v2}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 232
    invoke-static {v7}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 227
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    .line 2022
    :goto_3
    :try_start_3
    const-string v3, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p0, v3}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v3

    .line 229
    const-string v4, "error_during_file_reading"

    invoke-interface {v3, v4, v1}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v2}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 232
    invoke-static {v7}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    :goto_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v2}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 232
    invoke-static {v7}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    throw v0

    .line 231
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 227
    :catch_3
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_3

    .line 231
    :catch_5
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    move-object v1, v0

    move-object v2, v7

    goto :goto_1

    :catch_8
    move-exception v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_1
.end method

.method public static b(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 175
    :cond_0
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 176
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 182
    const/4 v3, -0x1

    if-ne v3, v2, :cond_2

    .line 183
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 189
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 184
    :cond_2
    if-lez v2, :cond_1

    .line 185
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 189
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 153
    .line 157
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 158
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    :try_start_2
    invoke-static {v1}, Lcom/yandex/metrica/impl/r;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 165
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 166
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_1
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 166
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    .line 166
    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/io/Closeable;)V

    throw v0

    .line 165
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3295
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/yandex/metrica/impl/bg;->a(I)Z

    move-result v0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 4022
    :cond_1
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {p0, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 285
    const-string v1, "make_non_existed_world_readable"

    new-instance v2, Lcom/yandex/metrica/impl/r$1;

    invoke-direct {v2, p1, p0}, Lcom/yandex/metrica/impl/r$1;-><init>(Ljava/io/File;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
