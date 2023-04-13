.class public Lorg/nexage/sourcekit/vast/VASTPlayer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;,
        Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;
    }
.end annotation


# static fields
.field public static final ERROR_CACHE:I = 0x8

.field public static final ERROR_EXCEEDED_WRAPPER_LIMIT:I = 0x6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_NETWORK:I = 0x1

.field public static final ERROR_POST_VALIDATION:I = 0x5

.field public static final ERROR_SCHEMA_VALIDATION:I = 0x4

.field public static final ERROR_VIDEO_PLAYBACK:I = 0x7

.field public static final ERROR_XML_OPEN_OR_READ:I = 0x2

.field public static final ERROR_XML_PARSE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VASTPlayer"

.field public static final VERSION:Ljava/lang/String; = "1.3"

.field public static listener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;


# instance fields
.field private final cacheDirectory:Ljava/lang/String;

.field private final cacheSize:I

.field private context:Landroid/content/Context;

.field private disableLongVideo:Z

.field private fileUrl:Landroid/net/Uri;

.field private maxDuration:I

.field private precache:Z

.field private rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

.field private vastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

.field private xmlUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->precache:Z

    const-string v0, "/vast_rtb_cache/"

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->cacheDirectory:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->cacheSize:I

    iput v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->maxDuration:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->disableLongVideo:Z

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getLogLevel()Lcom/appodeal/ads/utils/Log$LogLevel;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->verbose:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    invoke-static {v0}, Lorg/nexage/sourcekit/util/VASTLog;->setLoggingLevel(Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;)V

    :goto_0
    iput-object p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    return-void

    :cond_0
    sget-object v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->error:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    invoke-static {v0}, Lorg/nexage/sourcekit/util/VASTLog;->setLoggingLevel(Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/nexage/sourcekit/vast/VASTPlayer;ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->sendError(ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    return-void
.end method

.method static synthetic access$100(Lorg/nexage/sourcekit/vast/VASTPlayer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/model/VASTModel;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->vastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    return-object v0
.end method

.method static synthetic access$202(Lorg/nexage/sourcekit/vast/VASTPlayer;Lorg/nexage/sourcekit/vast/model/VASTModel;)Lorg/nexage/sourcekit/vast/model/VASTModel;
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->vastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    return-object p1
.end method

.method static synthetic access$300(Lorg/nexage/sourcekit/vast/VASTPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->precache:Z

    return v0
.end method

.method static synthetic access$400(Lorg/nexage/sourcekit/vast/VASTPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->cache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lorg/nexage/sourcekit/vast/VASTPlayer;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->fileUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lorg/nexage/sourcekit/vast/VASTPlayer;)I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->maxDuration:I

    return v0
.end method

.method static synthetic access$700(Lorg/nexage/sourcekit/vast/VASTPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->disableLongVideo:Z

    return v0
.end method

.method static synthetic access$800(Lorg/nexage/sourcekit/vast/VASTPlayer;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->sendReady(Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    return-void
.end method

.method static synthetic access$900(Lorg/nexage/sourcekit/vast/VASTPlayer;)V
    .locals 0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->clearCache()V

    return-void
.end method

.method private cache(Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->getCacheDirName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No dir for caching file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int v0, v0, 0xe6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->fileUrl:Landroid/net/Uri;

    :goto_0
    return-void

    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v8, v0

    const-wide/16 v0, 0x0

    const/16 v7, 0x400

    new-array v7, v7, [B

    :goto_1
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_3

    invoke-virtual {v6, v7, v12, v10}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v10, v10

    add-long/2addr v0, v10

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    cmp-long v0, v8, v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->fileUrl:Landroid/net/Uri;

    goto :goto_0
.end method

.method private clearCache()V
    .locals 7

    const/4 v0, 0x5

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->getCacheDirName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v2, v3

    if-le v2, v0, :cond_0

    array-length v2, v3

    new-array v4, v2, [Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;

    move v2, v1

    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_2

    new-instance v5, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;

    aget-object v6, v3, v2

    invoke-direct {v5, p0, v6}, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;-><init>(Lorg/nexage/sourcekit/vast/VASTPlayer;Ljava/io/File;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_2
    array-length v2, v3

    if-ge v1, v2, :cond_3

    aget-object v2, v4, v1

    iget-object v2, v2, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;->mFile:Ljava/io/File;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    array-length v1, v3

    if-ge v0, v1, :cond_0

    aget-object v1, v3, v0

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->fileUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "VASTPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCacheDirName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vast_rtb_cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private sendError(ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    .locals 2

    const-string v0, "VASTPlayer"

    const-string v1, "sendError"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lorg/nexage/sourcekit/vast/VASTPlayer$4;

    invoke-direct {v1, p0, p2, p1}, Lorg/nexage/sourcekit/vast/VASTPlayer$4;-><init>(Lorg/nexage/sourcekit/vast/VASTPlayer;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private sendReady(Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    .locals 2

    const-string v0, "VASTPlayer"

    const-string v1, "sendReady"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lorg/nexage/sourcekit/vast/VASTPlayer$3;

    invoke-direct {v1, p0, p1}, Lorg/nexage/sourcekit/vast/VASTPlayer$3;-><init>(Lorg/nexage/sourcekit/vast/VASTPlayer;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkFile()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->fileUrl:Landroid/net/Uri;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->fileUrl:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getXmlUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->xmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public loadVideoWithData(Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    .locals 3

    const-string v0, "VASTPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideoWithData\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->vastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/nexage/sourcekit/util/NetworkTools;->connectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/nexage/sourcekit/vast/VASTPlayer$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/nexage/sourcekit/vast/VASTPlayer$2;-><init>(Lorg/nexage/sourcekit/vast/VASTPlayer;Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->sendError(ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto :goto_0
.end method

.method public loadVideoWithUrl(Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    .locals 3

    const-string v0, "VASTPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideoWithUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->vastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/nexage/sourcekit/util/NetworkTools;->connectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/nexage/sourcekit/vast/VASTPlayer$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/nexage/sourcekit/vast/VASTPlayer$1;-><init>(Lorg/nexage/sourcekit/vast/VASTPlayer;Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->sendError(ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto :goto_0
.end method

.method public play(Lcom/appodeal/ads/ao$b;ZZLorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    .locals 3

    const-string v0, "VASTPlayer"

    const-string v1, "play"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p4, Lorg/nexage/sourcekit/vast/VASTPlayer;->listener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->vastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/nexage/sourcekit/util/NetworkTools;->connectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->vastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getPickedMediaFileType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/javascript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    const-class v2, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->getXmlUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p4}, Lorg/nexage/sourcekit/vast/VASTPlayer;->sendError(ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    :goto_0
    return-void

    :cond_1
    const-string v2, "android.net.url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.nexage.android.vast.player.vastModel"

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->vastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.nexage.android.vast.player.type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->context:Landroid/content/Context;

    const-class v2, Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.nexage.android.vast.player.vastModel"

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->vastModel:Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.nexage.android.vast.player.type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    if-eqz v1, :cond_3

    const-string v1, "com.nexage.android.vast.player.reportInfo"

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->fileUrl:Landroid/net/Uri;

    if-eqz v1, :cond_4

    const-string v1, "android.net.url"

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->fileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    const-string v1, "com.nexage.android.vast.player.woBanners"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.nexage.android.vast.player.autoClose"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.nexage.android.vast.player.maxDuration"

    iget v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->maxDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lorg/nexage/sourcekit/vast/VASTPlayer;->sendError(ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto :goto_0

    :cond_6
    const-string v0, "VASTPlayer"

    const-string v1, "vastModel is null; nothing to play"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisableLongVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->disableLongVideo:Z

    return-void
.end method

.method public setMaxDuration(I)V
    .locals 0

    iput p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->maxDuration:I

    return-void
.end method

.method public setPrecache(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->precache:Z

    return-void
.end method

.method public setRtbInfo(Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->rtbInfo:Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;

    return-void
.end method

.method public setXmlUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer;->xmlUrl:Ljava/lang/String;

    return-void
.end method
