.class public Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const/16 v1, 0x400

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "VPAIDActivity"

    const-string v1, "finishVPAID"

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/vpaid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity$2;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity$2;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;)V

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->finish()V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->e()V

    :cond_0
    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->b()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    :try_start_0
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ao$b;

    sget-object v2, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity$3;->a:[I

    invoke-virtual {v0}, Lcom/appodeal/ads/ao$b;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "videoClass"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/ah;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/g/aa;

    invoke-virtual {v0}, Lcom/appodeal/ads/g/aa;->g()Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/aj;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/aj;->a()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "videoClass"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/e/ae;

    invoke-virtual {v0}, Lcom/appodeal/ads/e/ae;->g()Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/am;->a()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/am;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a()V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity$1;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;)V

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->setListener(Lcom/appodeal/ads/networks/vpaid/VPAIDView$a;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/view/ViewManager;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
