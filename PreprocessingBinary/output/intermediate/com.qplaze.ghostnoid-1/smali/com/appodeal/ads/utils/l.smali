.class public Lcom/appodeal/ads/utils/l;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/appodeal/ads/utils/l$a;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Landroid/net/Uri;",
        "Lorg/nexage/sourcekit/vast/model/VASTModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/appodeal/ads/utils/l$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/utils/l$a;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    iput-object v0, p0, Lcom/appodeal/ads/utils/l;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/appodeal/ads/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/utils/g;->d()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-interface {p2}, Lcom/appodeal/ads/utils/l$a;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p2, p0, Lcom/appodeal/ads/utils/l;->b:Lcom/appodeal/ads/utils/l$a;

    iput-object p3, p0, Lcom/appodeal/ads/utils/l;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/native_video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/appodeal/ads/utils/l;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lcom/appodeal/ads/utils/l$a;->a()V

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/net/URLConnection;)V
    .locals 2

    :try_start_0
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/utils/o;

    invoke-direct {v1, v0}, Lcom/appodeal/ads/utils/o;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a([B)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const/16 v2, 0x4e20

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/utils/l;->a(Ljava/net/URLConnection;)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Lcom/appodeal/ads/utils/l$a;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/appodeal/ads/utils/l$a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Lorg/nexage/sourcekit/vast/model/VASTModel;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->b:Lcom/appodeal/ads/utils/l$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->d:Ljava/io/File;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    new-instance v0, Lorg/nexage/sourcekit/util/DefaultMediaPicker;

    sget-object v2, Lcom/appodeal/ads/Appodeal;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lorg/nexage/sourcekit/util/DefaultMediaPicker;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;

    invoke-direct {v2, v0}, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;-><init>(Lorg/nexage/sourcekit/vast/processor/VASTMediaPicker;)V

    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;->process(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;->getModel()Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v3

    invoke-virtual {v3}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getPickedMediaFileType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/appodeal/ads/utils/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getPickedMediaFileURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/appodeal/ads/utils/l;->b(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/appodeal/ads/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/appodeal/ads/utils/l;->d:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_1
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, v2}, Lcom/appodeal/ads/utils/l;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/util/Pair;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-direct {p0, v0}, Lcom/appodeal/ads/utils/l;->a(Ljava/io/InputStream;)V

    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    :cond_4
    invoke-direct {p0, v0}, Lcom/appodeal/ads/utils/l;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-direct {p0, v1}, Lcom/appodeal/ads/utils/l;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/utils/l;->a([B)[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Lorg/nexage/sourcekit/vast/model/VASTModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->b:Lcom/appodeal/ads/utils/l$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/appodeal/ads/utils/l;->b:Lcom/appodeal/ads/utils/l$a;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/nexage/sourcekit/vast/model/VASTModel;

    invoke-interface {v2, v0, v1}, Lcom/appodeal/ads/utils/l$a;->a(Landroid/net/Uri;Lorg/nexage/sourcekit/vast/model/VASTModel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->b:Lcom/appodeal/ads/utils/l$a;

    invoke-interface {v0}, Lcom/appodeal/ads/utils/l$a;->a()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/appodeal/ads/utils/l$a;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/utils/l;->a([Lcom/appodeal/ads/utils/l$a;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/utils/l;->a(Landroid/util/Pair;)V

    return-void
.end method
