.class Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->a(Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

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
    .locals 4

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

    invoke-static {}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage$MessageLevel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->f(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;->c()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->g(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;->b()V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const-string v0, "JS alert"

    invoke-static {v0, p3}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;->a(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const-string v0, "JS confirm"

    invoke-static {v0, p3}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;->a(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    const-string v0, "JS prompt"

    invoke-static {v0, p3}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$4;->a(Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method
