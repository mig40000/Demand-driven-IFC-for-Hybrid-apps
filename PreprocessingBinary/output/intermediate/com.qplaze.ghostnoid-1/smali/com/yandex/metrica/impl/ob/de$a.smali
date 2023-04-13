.class Lcom/yandex/metrica/impl/ob/de$a;
.super Lcom/yandex/metrica/impl/ob/de$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/de;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/de;Landroid/net/Uri;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/de$a;->a:Lcom/yandex/metrica/impl/ob/de;

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/de$b;-><init>(Lcom/yandex/metrica/impl/ob/de;Landroid/net/Uri;Ljava/net/Socket;)V

    .line 171
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de$a;->b:Landroid/net/Uri;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de$a;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/de;->c(Lcom/yandex/metrica/impl/ob/de;)Lcom/yandex/metrica/impl/ob/dh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "HTTP/1.1 200 OK"

    new-instance v1, Lcom/yandex/metrica/impl/ob/de$a$1;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/de$a$1;-><init>()V

    .line 184
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/de$a;->b()[B

    move-result-object v2

    .line 177
    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/de$a;->a(Ljava/lang/String;Ljava/util/Map;[B)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de$a;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/de;->a(Lcom/yandex/metrica/impl/ob/de;)Landroid/content/Context;

    move-result-object v0

    .line 1022
    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {v0, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 186
    const-string v1, "socket_request_with_wrong_token"

    invoke-interface {v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/utils/b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/b;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de$a;->a:Lcom/yandex/metrica/impl/ob/de;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/de;->d(Lcom/yandex/metrica/impl/ob/de;)Lcom/yandex/metrica/impl/ob/df;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/df;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/b;->a([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-array v0, v2, [B

    goto :goto_0
.end method
