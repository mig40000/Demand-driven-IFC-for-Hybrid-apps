.class Lcom/appodeal/ads/networks/m$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/m;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/appodeal/ads/networks/m;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;

    iput-object p2, p0, Lcom/appodeal/ads/networks/m$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/networks/m$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;

    invoke-static {v2}, Lcom/appodeal/ads/networks/m;->c(Lcom/appodeal/ads/networks/m;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/m;->a(Lcom/appodeal/ads/networks/m;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;

    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->d(Lcom/appodeal/ads/networks/m;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;

    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->d(Lcom/appodeal/ads/networks/m;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/networks/m$b;

    iget-object v2, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;

    invoke-direct {v1, v2}, Lcom/appodeal/ads/networks/m$b;-><init>(Lcom/appodeal/ads/networks/m;)V

    const-string v2, "HTMLOUT"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;

    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->d(Lcom/appodeal/ads/networks/m;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/networks/m$2$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/m$2$1;-><init>(Lcom/appodeal/ads/networks/m$2;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/m$2;->c:Lcom/appodeal/ads/networks/m;

    invoke-static {v0}, Lcom/appodeal/ads/networks/m;->d(Lcom/appodeal/ads/networks/m;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/networks/m$2;->b:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
