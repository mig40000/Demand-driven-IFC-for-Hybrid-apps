.class Lcom/cmcm/utils/l$2;
.super Landroid/webkit/WebViewClient;
.source "ParseWebViewUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/utils/l;


# direct methods
.method constructor <init>(Lcom/cmcm/utils/l;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->b(Lcom/cmcm/utils/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v1}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 149
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->b(Lcom/cmcm/utils/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    if-eqz p1, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0, v1}, Lcom/cmcm/utils/l;->a(Lcom/cmcm/utils/l;Z)Z

    .line 111
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v1}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {p2}, Lcom/cmcm/picks/market/MarketUtils;->isGooglePlayUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    if-eqz p1, :cond_4

    .line 116
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0, v1}, Lcom/cmcm/utils/l;->a(Lcom/cmcm/utils/l;Z)Z

    .line 119
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v1}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v1}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 131
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->b(Lcom/cmcm/utils/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0, v2}, Lcom/cmcm/utils/l;->a(Lcom/cmcm/utils/l;Z)Z

    .line 135
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v0, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/cmcm/utils/l$2;->a:Lcom/cmcm/utils/l;

    invoke-static {v1}, Lcom/cmcm/utils/l;->c(Lcom/cmcm/utils/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
