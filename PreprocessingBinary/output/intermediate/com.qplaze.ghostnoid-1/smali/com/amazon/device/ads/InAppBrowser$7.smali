.class Lcom/amazon/device/ads/InAppBrowser$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/InAppBrowser;->initializeButtons(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InAppBrowser;

.field final synthetic val$originalUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iput-object p2, p0, Lcom/amazon/device/ads/InAppBrowser$7;->val$originalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$500(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "The current URL is null. Reverting to the original URL for external browser."

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$000(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "The current URL is null. Reverting to the original URL for external browser."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$7;->val$originalUrl:Ljava/lang/String;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$200(Lcom/amazon/device/ads/InAppBrowser;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/b/e;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/b/e;

    iget-object v0, v0, Lcom/appodeal/ads/b/e;->b:Lcom/appodeal/ads/b/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/b/e;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/b/e;

    iget-object v0, v0, Lcom/appodeal/ads/b/e;->b:Lcom/appodeal/ads/b/f;

    invoke-virtual {v0}, Lcom/appodeal/ads/b/f;->b()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$100(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/WebUtils2;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v2}, Lcom/amazon/device/ads/InAppBrowser;->access$500(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebUtils2;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/a/e;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/h;->f()Lcom/appodeal/ads/k;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/a/e;

    iget-object v0, v0, Lcom/appodeal/ads/a/e;->c:Lcom/appodeal/ads/a/f;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/appodeal/ads/a/e;->h()Lcom/appodeal/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/h;->f()Lcom/appodeal/ads/k;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/a/e;

    iget-object v0, v0, Lcom/appodeal/ads/a/e;->c:Lcom/appodeal/ads/a/f;

    invoke-virtual {v0}, Lcom/appodeal/ads/a/f;->a()V

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/c/e;->h()Lcom/appodeal/ads/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/c/e;

    iget-object v0, v0, Lcom/appodeal/ads/c/e;->b:Lcom/appodeal/ads/c/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/c/e;->h()Lcom/appodeal/ads/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/w;->f()Lcom/appodeal/ads/z;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/c/e;

    iget-object v0, v0, Lcom/appodeal/ads/c/e;->b:Lcom/appodeal/ads/c/f;

    invoke-virtual {v0}, Lcom/appodeal/ads/c/f;->a()V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
