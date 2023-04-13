.class public Lcom/chartboost/sdk/Libraries/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/g$a;
    }
.end annotation


# static fields
.field private static a:Lcom/chartboost/sdk/Libraries/h;

.field private static b:Lcom/chartboost/sdk/Libraries/h;

.field private static c:Ljava/io/File;

.field private static d:Ljava/io/File;

.field private static e:Lcom/chartboost/sdk/impl/g;


# instance fields
.field private final f:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-boolean p1, p0, Lcom/chartboost/sdk/Libraries/g;->f:Z

    .line 130
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->e()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/h;->g:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/chartboost/sdk/Model/c;)V
    .locals 21

    .prologue
    .line 66
    const-class v6, Lcom/chartboost/sdk/Libraries/g;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v2

    sput-object v2, Lcom/chartboost/sdk/Libraries/g;->e:Lcom/chartboost/sdk/impl/g;

    .line 68
    new-instance v2, Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/io/File;)V

    sput-object v2, Lcom/chartboost/sdk/Libraries/g;->a:Lcom/chartboost/sdk/Libraries/h;

    .line 69
    new-instance v2, Lcom/chartboost/sdk/Libraries/h;

    sget-object v3, Lcom/chartboost/sdk/Libraries/g;->e:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/g;->b()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/io/File;)V

    sput-object v2, Lcom/chartboost/sdk/Libraries/g;->b:Lcom/chartboost/sdk/Libraries/h;

    .line 72
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/chartboost/sdk/Libraries/g;->a:Lcom/chartboost/sdk/Libraries/h;

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    sget-object v4, Lcom/chartboost/sdk/Libraries/g$a;->i:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    .line 73
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/chartboost/sdk/Libraries/g;->a:Lcom/chartboost/sdk/Libraries/h;

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    sget-object v4, Lcom/chartboost/sdk/Libraries/g$a;->h:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/g$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/chartboost/sdk/Libraries/g;->c:Ljava/io/File;

    .line 81
    const/4 v2, 0x2

    new-array v7, v2, [Lcom/chartboost/sdk/Libraries/h;

    const/4 v2, 0x0

    sget-object v3, Lcom/chartboost/sdk/Libraries/g;->a:Lcom/chartboost/sdk/Libraries/h;

    aput-object v3, v7, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/chartboost/sdk/Libraries/g;->b:Lcom/chartboost/sdk/Libraries/h;

    aput-object v3, v7, v2

    .line 82
    array-length v8, v7

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v8, :cond_9

    aget-object v9, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    sget-object v2, Lcom/chartboost/sdk/Libraries/g;->a:Lcom/chartboost/sdk/Libraries/h;

    if-ne v9, v2, :cond_3

    const/4 v2, 0x1

    move v4, v2

    .line 85
    :goto_1
    if-nez v4, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/chartboost/sdk/Model/c;->s:I

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    sub-long v10, v2, v10

    .line 87
    new-instance v2, Ljava/io/File;

    iget-object v3, v9, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    const-string v12, "templates"

    invoke-direct {v2, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 90
    if-eqz v12, :cond_6

    .line 91
    array-length v13, v12

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v13, :cond_6

    aget-object v14, v12, v3

    .line 92
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    .line 94
    if-eqz v15, :cond_4

    .line 95
    array-length v0, v15

    move/from16 v16, v0

    const/4 v2, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v2, v0, :cond_4

    aget-object v17, v15, v2

    .line 96
    if-nez v4, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    cmp-long v18, v18, v10

    if-gez v18, :cond_2

    .line 97
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    move-result v18

    if-nez v18, :cond_2

    .line 98
    const-string v18, "CBFileCache"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to delete "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 84
    :cond_3
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_1

    .line 102
    :cond_4
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_5

    array-length v2, v2

    if-nez v2, :cond_5

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_5

    .line 106
    const-string v2, "CBFileCache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to delete "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    .line 113
    :cond_6
    new-instance v2, Ljava/io/File;

    iget-object v3, v9, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    const-string v12, ".adId"

    invoke-direct {v2, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v4, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-gez v3, :cond_8

    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_8

    .line 117
    const-string v3, "CBFileCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to delete "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :cond_8
    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_0

    .line 120
    :catch_0
    move-exception v2

    .line 121
    :try_start_2
    const-string v3, "CBFileCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while cleaning up templates directory at "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v9, Lcom/chartboost/sdk/Libraries/h;->f:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 66
    :catchall_0
    move-exception v2

    monitor-exit v6

    throw v2

    .line 125
    :cond_9
    monitor-exit v6

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/chartboost/sdk/Libraries/g;->e:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/g;->c()Ljava/lang/String;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->n:Z

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 219
    :cond_0
    const-string v0, "CBFileCache"

    const-string v1, "External Storage unavailable"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/io/File;)J
    .locals 7

    .prologue
    .line 258
    const-wide/16 v0, 0x0

    .line 260
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 262
    if-eqz v3, :cond_1

    .line 263
    array-length v6, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v4, v3, v2

    .line 264
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/g;->c(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 263
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    .line 267
    :cond_0
    if-eqz p0, :cond_1

    .line 268
    invoke-virtual {p0}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 273
    :cond_1
    :goto_1
    return-wide v0

    .line 270
    :catch_0
    move-exception v2

    .line 271
    const-class v3, Lcom/chartboost/sdk/Libraries/g;

    const-string v4, "getFolderSize"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static d(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 299
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 300
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 301
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 302
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 303
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    .line 305
    const-string v1, "CBFileCache"

    const-string v2, "File not found when attempting to touch"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 304
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 306
    :catch_2
    move-exception v0

    .line 307
    const-string v1, "CBFileCache"

    const-string v2, "IOException when attempting to touch file"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 299
    :catch_3
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 304
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_2
    :try_start_7
    throw v0

    :catch_4
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static e()Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/chartboost/sdk/Libraries/g;->b:Lcom/chartboost/sdk/Libraries/h;

    .line 254
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/g;->a:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_0
.end method

.method public static f()Lorg/json/JSONObject;
    .locals 10

    .prologue
    .line 277
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 278
    const-string v1, ".chartboost-external-folder-size"

    sget-object v2, Lcom/chartboost/sdk/Libraries/g;->b:Lcom/chartboost/sdk/Libraries/h;

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->c(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string v1, ".chartboost-internal-folder-size"

    sget-object v2, Lcom/chartboost/sdk/Libraries/g;->a:Lcom/chartboost/sdk/Libraries/h;

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->c(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->e()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    iget-object v3, v1, Lcom/chartboost/sdk/Libraries/h;->a:Ljava/io/File;

    .line 281
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 283
    if-eqz v4, :cond_1

    array-length v1, v4

    if-lez v1, :cond_1

    .line 284
    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 285
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v1

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v7}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/chartboost/sdk/Libraries/g;->c(Ljava/io/File;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 289
    if-eqz v7, :cond_0

    .line 290
    const-string v8, "count"

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v8, v7}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 294
    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 174
    monitor-enter p0

    const/4 v0, 0x0

    .line 176
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/chartboost/sdk/impl/bq;->b(Ljava/io/File;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 177
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 182
    :goto_0
    monitor-exit p0

    return-object v0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    :try_start_1
    const-string v2, "CBFileCache"

    const-string v3, "Error loading cache from disk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "readJSONObject"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/io/File;Ljava/io/File;[B)V
    .locals 4

    .prologue
    .line 153
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 166
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 156
    :cond_1
    if-nez p2, :cond_2

    .line 157
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_2
    :try_start_1
    invoke-static {p2, p3}, Lcom/chartboost/sdk/impl/bq;->a(Ljava/io/File;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    :try_start_2
    const-string v1, "CBFileCache"

    const-string v2, "IOException attempting to write cache to disk"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "writeToDisk(File, File, byte[])"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/io/File;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 139
    const/4 v0, 0x0

    .line 140
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/io/File;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/chartboost/sdk/Libraries/g;->c:Ljava/io/File;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/g;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 226
    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    .line 227
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/g;->c()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/io/File;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 190
    monitor-enter p0

    if-nez p1, :cond_0

    .line 200
    :goto_0
    monitor-exit p0

    return-object v0

    .line 195
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/chartboost/sdk/impl/bq;->b(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    :try_start_1
    const-string v2, "CBFileCache"

    const-string v3, "Error loading cache from disk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "readByteArrayFromDisk"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/g;->d()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/h;->d:Ljava/io/File;

    return-object v0
.end method

.method public d()Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/chartboost/sdk/Libraries/g;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/chartboost/sdk/Libraries/g;->b:Lcom/chartboost/sdk/Libraries/h;

    .line 247
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/g;->a:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_0
.end method
