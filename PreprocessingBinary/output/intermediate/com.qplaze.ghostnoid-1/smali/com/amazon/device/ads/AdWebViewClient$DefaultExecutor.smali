.class Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultExecutor"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final isInterstitial:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;->isInterstitial:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;->isInterstitial:Z

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
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/amazon/device/ads/WebUtils;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    const/4 v0, 0x1

    return v0

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

    goto :goto_0
.end method
