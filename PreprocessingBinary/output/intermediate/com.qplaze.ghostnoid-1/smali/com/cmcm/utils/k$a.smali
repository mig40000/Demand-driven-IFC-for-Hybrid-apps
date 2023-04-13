.class public Lcom/cmcm/utils/k$a;
.super Landroid/os/AsyncTask;
.source "ParseUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/utils/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/cmcm/utils/k;


# direct methods
.method public constructor <init>(Lcom/cmcm/utils/k;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cmcm/utils/k$a;->d:Lcom/cmcm/utils/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/utils/k$a;->a:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/utils/k$a;->b:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/utils/k$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 42
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/cmcm/utils/f;->a(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 43
    if-nez v1, :cond_2

    .line 62
    :cond_1
    :goto_0
    return-object v0

    .line 45
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 48
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 50
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_1

    .line 51
    :cond_3
    const-string v0, "Location"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 58
    invoke-static {v0}, Lcom/cmcm/picks/market/MarketUtils;->isGooglePlayUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/cmcm/utils/k$a$1;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/utils/k$a$1;-><init>(Lcom/cmcm/utils/k$a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cmcm/utils/k$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cmcm/utils/k$a;->a(Ljava/lang/String;)V

    return-void
.end method
