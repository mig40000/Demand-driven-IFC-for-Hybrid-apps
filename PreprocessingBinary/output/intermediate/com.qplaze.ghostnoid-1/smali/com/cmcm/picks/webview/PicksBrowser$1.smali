.class Lcom/cmcm/picks/webview/PicksBrowser$1;
.super Landroid/webkit/WebChromeClient;
.source "PicksBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/webview/PicksBrowser;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/webview/PicksBrowser;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/webview/PicksBrowser;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cmcm/picks/webview/PicksBrowser$1;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser$1;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/webview/PicksBrowser;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser$1;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/webview/PicksBrowser;->setProgress(I)V

    .line 107
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/cmcm/picks/webview/PicksBrowser$1;->a:Lcom/cmcm/picks/webview/PicksBrowser;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/picks/webview/PicksBrowser;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method
