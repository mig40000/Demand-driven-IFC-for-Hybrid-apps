.class public Lcom/appodeal/ads/InterstitialActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Landroid/widget/ProgressBar;

.field private c:I

.field private d:Lcom/appodeal/ads/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/InterstitialActivity;->c:I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/appodeal/ads/InterstitialActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/appodeal/ads/InterstitialActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appodeal/ads/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/InterstitialActivity;->finish()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/InterstitialActivity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/InterstitialActivity;->c:I

    invoke-static {p0}, Lcom/appodeal/ads/an;->j(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/InterstitialActivity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/appodeal/ads/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "interstitialClass"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/o;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->d:Lcom/appodeal/ads/o;

    iget-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->d:Lcom/appodeal/ads/o;

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/InterstitialActivity;->c:I

    invoke-virtual {v0, p0, v1}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/InterstitialActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/InterstitialActivity;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/appodeal/ads/InterstitialActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/q;->a()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/appodeal/ads/InterstitialActivity;->finish()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/InterstitialActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/q;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->d:Lcom/appodeal/ads/o;

    iget v1, p0, Lcom/appodeal/ads/InterstitialActivity;->c:I

    invoke-static {p0, v0, v1}, Lcom/appodeal/ads/as;->a(Lcom/appodeal/ads/InterstitialActivity;Lcom/appodeal/ads/o;I)V

    return-void
.end method
