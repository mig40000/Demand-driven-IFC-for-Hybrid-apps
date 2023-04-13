.class Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$3;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->createWebView(Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$3;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$3;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$400(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$3;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$500(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$3;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$600(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$3;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$400(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:requestAds()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$3;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "about:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$3;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
