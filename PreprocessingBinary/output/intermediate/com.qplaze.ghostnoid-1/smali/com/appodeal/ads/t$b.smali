.class Lcom/appodeal/ads/t$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/t;


# direct methods
.method private constructor <init>(Lcom/appodeal/ads/t;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/t;Lcom/appodeal/ads/t$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/t$b;-><init>(Lcom/appodeal/ads/t;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 9

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v1, v1, Lcom/appodeal/ads/t;->b:Landroid/content/Context;

    const-string v2, "appodeal"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    invoke-virtual {v2, v1}, Lcom/appodeal/ads/t;->a(Landroid/content/SharedPreferences;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    invoke-virtual {v1}, Lcom/appodeal/ads/t;->b()Ljava/net/URL;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v2, v2, Lcom/appodeal/ads/t;->b:Landroid/content/Context;

    const-string v5, "Appodeal"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    :try_start_2
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v6, "https"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    iget-object v6, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    invoke-static {v6}, Lcom/appodeal/ads/t;->a(Lcom/appodeal/ads/t;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    iget-object v1, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-boolean v1, v1, Lcom/appodeal/ads/t;->y:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v1, v1, Lcom/appodeal/ads/t;->d:Ljava/lang/String;

    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x2710

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x2710

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :goto_1
    const/16 v1, 0x4e20

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x4e20

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v1, "Content-Type"

    const-string v6, "text/plain; charset=UTF-8"

    invoke-virtual {v2, v1, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "UTF-8"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/appodeal/ads/an;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/an;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v4, v4, Lcom/appodeal/ads/t;->d:Ljava/lang/String;

    const-string v6, "stats"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object v1, v3

    :cond_3
    if-eqz v2, :cond_4

    :try_start_6
    instance-of v4, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_9

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4
    :goto_3
    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-boolean v1, v1, Lcom/appodeal/ads/t;->y:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v1, v1, Lcom/appodeal/ads/t;->d:Ljava/lang/String;

    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lcom/appodeal/ads/utils/b/a;

    const-string v2, "/get error, using saved waterfall"

    invoke-direct {v1, v2}, Lcom/appodeal/ads/utils/b/a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v1, v1, Lcom/appodeal/ads/t;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    move-object v2, v1

    :goto_4
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-boolean v4, v4, Lcom/appodeal/ads/t;->y:Z

    if-eqz v4, :cond_11

    sget-object v4, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v2, v4}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_5
    :try_start_8
    const-string v2, "user_data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sput-object v2, Lcom/appodeal/ads/UserSettings;->userData:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    invoke-static {v2, v1}, Lcom/appodeal/ads/t;->a(Lcom/appodeal/ads/t;Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_9
    invoke-static {v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    move-object v1, v3

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x4e20

    :try_start_a
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x4e20

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    :goto_6
    :try_start_b
    invoke-static {v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "No valid pins found in chain!"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.security.cert.CertPathValidatorException: Trust anchor for certification path not found."

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result v2

    if-eqz v2, :cond_b

    :cond_6
    if-eqz v1, :cond_7

    :try_start_c
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_a

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :cond_7
    :goto_7
    move-object v1, v3

    goto/16 :goto_0

    :catch_3
    move-exception v4

    :try_start_d
    invoke-static {v4}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    :goto_8
    if-eqz v1, :cond_8

    :try_start_e
    instance-of v4, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_d

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_8
    :goto_9
    throw v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :catchall_1
    move-exception v1

    :try_start_f
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_a
    :try_start_10
    throw v1

    :catch_4
    move-exception v4

    invoke-static {v4}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_a

    :cond_9
    :try_start_11
    instance-of v4, v2, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_4

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    :cond_a
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7

    :cond_b
    if-eqz v1, :cond_12

    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_c

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v1, v3

    goto/16 :goto_3

    :cond_c
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_12

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v3

    goto/16 :goto_3

    :cond_d
    instance-of v4, v1, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_8

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9

    :cond_e
    move-object v1, v3

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-boolean v2, v2, Lcom/appodeal/ads/t;->y:Z

    if-eqz v2, :cond_10

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v4, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v4, v4, Lcom/appodeal/ads/t;->d:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    :cond_10
    move-object v2, v1

    goto/16 :goto_4

    :cond_11
    :try_start_12
    invoke-static {v2}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_5

    :catch_5
    move-exception v1

    :try_start_13
    invoke-static {v1}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    move-object v1, v3

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    goto :goto_8

    :catchall_3
    move-exception v2

    goto :goto_8

    :catch_6
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_6

    :cond_12
    move-object v1, v3

    goto/16 :goto_3
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v0, v0, Lcom/appodeal/ads/t;->a:Lcom/appodeal/ads/t$a;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v0, v0, Lcom/appodeal/ads/t;->a:Lcom/appodeal/ads/t$a;

    iget-object v1, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget v1, v1, Lcom/appodeal/ads/t;->c:I

    invoke-interface {v0, v1}, Lcom/appodeal/ads/t$a;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v0, v0, Lcom/appodeal/ads/t;->a:Lcom/appodeal/ads/t$a;

    iget-object v1, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget v1, v1, Lcom/appodeal/ads/t;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/t$b;->a:Lcom/appodeal/ads/t;

    iget-object v2, v2, Lcom/appodeal/ads/t;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/appodeal/ads/t$a;->a(Lorg/json/JSONObject;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/t$b;->a([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/t$b;->a(Lorg/json/JSONObject;)V

    return-void
.end method
