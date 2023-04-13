.class Lcom/chartboost/sdk/impl/bo$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bo;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/bo;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/bo;Lcom/chartboost/sdk/impl/bo$1;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bo$a;-><init>(Lcom/chartboost/sdk/impl/bo;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/bo;->r:Z

    .line 217
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/bo;->q:J

    .line 218
    const-string v0, "CBWebViewProtocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total web view load response time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    iget-wide v2, v2, Lcom/chartboost/sdk/impl/bo;->q:J

    iget-object v4, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    iget-wide v4, v4, Lcom/chartboost/sdk/impl/bo;->p:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 225
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    iput-boolean v5, v0, Lcom/chartboost/sdk/impl/bo;->r:Z

    .line 226
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bo;->l:Lcom/chartboost/sdk/e;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 227
    const-string v4, "Webview seems to have some issues loading html, onRecievedError callback triggered"

    .line 228
    const-string v0, "CBWebViewProtocol"

    invoke-static {v0, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bo;->k:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bo$a;->a:Lcom/chartboost/sdk/impl/bo;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method
