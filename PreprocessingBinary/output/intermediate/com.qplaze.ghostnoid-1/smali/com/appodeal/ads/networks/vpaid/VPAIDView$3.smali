.class Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private a(Landroid/webkit/JsResult;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VPAIDView"

    invoke-static {v1, v0}, Lcom/appodeal/ads/networks/vpaid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    sget-object v2, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->d(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Lcom/appodeal/ads/networks/vpaid/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->e(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v1, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Lcom/appodeal/ads/networks/vpaid/VPAIDView;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->f(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const-string v0, "JS alert"

    invoke-static {v0, p3}, Lcom/appodeal/ads/networks/vpaid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;->a(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const-string v0, "JS confirm"

    invoke-static {v0, p3}, Lcom/appodeal/ads/networks/vpaid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;->a(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    const-string v0, "JS prompt"

    invoke-static {v0, p3}, Lcom/appodeal/ads/networks/vpaid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$3;->a(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method
