.class public Lcom/cmcm/picks/vastvideo/h;
.super Ljava/lang/Object;
.source "VideoDownLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/picks/vastvideo/h$a;,
        Lcom/cmcm/picks/vastvideo/h$b;
    }
.end annotation


# static fields
.field private static b:I

.field private static c:I


# instance fields
.field a:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Lcom/cmcm/picks/vastvideo/h$b;

.field private j:Ljava/lang/String;

.field private k:Lcom/cmcm/picks/vastvideo/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 25
    sput v0, Lcom/cmcm/picks/vastvideo/h;->b:I

    .line 27
    sput v0, Lcom/cmcm/picks/vastvideo/h;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/vastvideo/h$b;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->k:Lcom/cmcm/picks/vastvideo/h$a;

    .line 48
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/h;->h:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/cmcm/picks/vastvideo/h;->i:Lcom/cmcm/picks/vastvideo/h$b;

    .line 50
    iput-object p2, p0, Lcom/cmcm/picks/vastvideo/h;->d:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/h;)Lcom/cmcm/picks/vastvideo/h$b;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->i:Lcom/cmcm/picks/vastvideo/h$b;

    return-object v0
.end method

.method private a()Ljava/io/File;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 75
    .line 77
    :try_start_0
    invoke-static {}, Lcom/cmcm/picks/vastvideo/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lcom/cmcm/picks/vastvideo/f;->b()I

    move-result v0

    sget v2, Lcom/cmcm/picks/vastvideo/h;->b:I

    if-le v0, v2, :cond_1

    .line 80
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->h:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "VastVideo"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    invoke-static {}, Lcom/cmcm/picks/vastvideo/f;->c()J

    move-result-wide v2

    sget v0, Lcom/cmcm/picks/vastvideo/h;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->h:Landroid/content/Context;

    const-string v2, "VastVideo"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v1

    .line 98
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 100
    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 237
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-object v1

    .line 243
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    :try_start_1
    invoke-direct {p0, v2}, Lcom/cmcm/picks/vastvideo/h;->a(Ljava/io/FileOutputStream;)V

    .line 246
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 248
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 249
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    :goto_2
    :try_start_2
    sget-boolean v3, Lcom/cmcm/utils/g;->a:Z

    if-eqz v3, :cond_2

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :cond_2
    if-eqz v2, :cond_3

    .line 261
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :cond_3
    :goto_3
    :try_start_4
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    if-eqz v2, :cond_4

    .line 272
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 274
    :cond_4
    if-eqz p1, :cond_5

    .line 275
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 284
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->d()V

    .line 285
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/picks/vastvideo/h;->f:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->c()V

    goto :goto_0

    .line 251
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    if-eqz v0, :cond_10

    .line 252
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 271
    :goto_5
    if-eqz v2, :cond_7

    .line 272
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 274
    :cond_7
    if-eqz p1, :cond_8

    .line 275
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 284
    :cond_8
    :goto_6
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->d()V

    .line 285
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    if-eqz v2, :cond_f

    .line 286
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/picks/vastvideo/h;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 288
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->c()V

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    .line 278
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_9

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    :cond_9
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->c()V

    move-object v0, v1

    goto :goto_6

    .line 263
    :catch_2
    move-exception v0

    .line 264
    :try_start_8
    sget-boolean v3, Lcom/cmcm/utils/g;->a:Z

    if-eqz v3, :cond_3

    .line 265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    :goto_7
    if-eqz v2, :cond_a

    .line 272
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 274
    :cond_a
    if-eqz p1, :cond_b

    .line 275
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 284
    :cond_b
    :goto_8
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->d()V

    .line 285
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    if-eqz v1, :cond_c

    .line 286
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/picks/vastvideo/h;->f:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    .line 288
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->c()V

    :cond_c
    throw v0

    .line 277
    :catch_3
    move-exception v0

    .line 278
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_d

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    :cond_d
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->c()V

    goto/16 :goto_4

    .line 277
    :catch_4
    move-exception v1

    .line 278
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_e

    .line 279
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    :cond_e
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->c()V

    goto :goto_8

    .line 270
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_7

    .line 254
    :catch_5
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2

    :cond_f
    move-object v1, v0

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    goto :goto_5
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/FileOutputStream;)V
    .locals 4

    .prologue
    .line 302
    sget-object v0, Lcom/cmcm/picks/vastvideo/VastAd;->TAG:Ljava/lang/String;

    const-string v1, "start down load video time out task"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/cmcm/picks/vastvideo/h$a;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/picks/vastvideo/h$a;-><init>(Lcom/cmcm/picks/vastvideo/h;Ljava/io/FileOutputStream;)V

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->k:Lcom/cmcm/picks/vastvideo/h$a;

    .line 304
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/h;->k:Lcom/cmcm/picks/vastvideo/h$a;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 305
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->a()Ljava/io/File;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 110
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 112
    goto :goto_0

    .line 110
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method private b()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v3, 0x493e0

    .line 173
    .line 174
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/h;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 176
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 177
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 178
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 179
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    move-object v0, v1

    .line 187
    :goto_0
    return-object v0

    .line 182
    :cond_0
    const/high16 v3, 0x6400000

    if-le v2, v3, :cond_1

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 185
    :cond_1
    int-to-long v2, v2

    iput-wide v2, p0, Lcom/cmcm/picks/vastvideo/h;->f:J

    .line 186
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 187
    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 299
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 192
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->a()Ljava/io/File;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    const-string v1, "mp4"

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const-string v1, ".mp4"

    invoke-static {p1, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const-string v1, "3gp"

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string v1, ".3gp"

    invoke-static {p1, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    :cond_2
    const-string v0, "create file fail"

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->k:Lcom/cmcm/picks/vastvideo/h$a;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->k:Lcom/cmcm/picks/vastvideo/h$a;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/h$a;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/h;->a:Z

    if-nez v0, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->c()V

    .line 213
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->i:Lcom/cmcm/picks/vastvideo/h$b;

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lcom/cmcm/picks/vastvideo/h$1;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/picks/vastvideo/h$1;-><init>(Lcom/cmcm/picks/vastvideo/h;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/h;->a:Z

    .line 223
    :cond_1
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/cmcm/picks/vastvideo/h$2;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/picks/vastvideo/h$2;-><init>(Lcom/cmcm/picks/vastvideo/h;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 54
    .line 56
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const-string v1, "/"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 60
    :try_start_2
    const-string v0, "."

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 63
    :goto_1
    invoke-direct {p0, v2}, Lcom/cmcm/picks/vastvideo/h;->e(Ljava/lang/String;)V

    .line 64
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 62
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "url is null"

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->d(Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/h;->d:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->j:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const-string v0, "unknown video type"

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    const-string v0, "mp4"

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "3gp"

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->g:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->c(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/h;->e:Ljava/io/File;

    if-eqz v0, :cond_8

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->b()Ljava/io/InputStream;

    move-result-object v0

    .line 142
    if-nez v0, :cond_6

    .line 143
    const-string v0, "get input stream fail"

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->d(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_5

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->d(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/h;->c()V

    goto :goto_0

    .line 155
    :cond_6
    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 158
    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_7
    const-string v0, "write file fail"

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_8
    const-string v0, "create file fail"

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_9
    const-string v0, "CMCMADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vast:video type is not mp4 or 3gp, url ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "vast:video type is not mp4 or 3gp"

    invoke-direct {p0, v0}, Lcom/cmcm/picks/vastvideo/h;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
