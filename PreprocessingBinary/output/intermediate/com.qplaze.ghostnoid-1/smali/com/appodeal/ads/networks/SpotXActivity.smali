.class public Lcom/appodeal/ads/networks/SpotXActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;


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

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/SpotXActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method static synthetic a(Lcom/appodeal/ads/networks/SpotXActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "SpotXActivity"

    const-string v1, "finishVPAID"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->finish()V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->getListener()Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->getListener()Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->b()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    :try_start_0
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/SpotXActivity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ao$b;

    sget-object v2, Lcom/appodeal/ads/networks/SpotXActivity$2;->a:[I

    invoke-virtual {v0}, Lcom/appodeal/ads/ao$b;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/SpotXActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/appodeal/ads/networks/SpotXActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "videoClass"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/ah;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/g/u;

    invoke-virtual {v0}, Lcom/appodeal/ads/g/u;->g()Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    iget-object v0, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/SpotXActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/aj;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/appodeal/ads/networks/SpotXActivity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/SpotXActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/aj;->a()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "videoClass"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/e/u;

    invoke-virtual {v0}, Lcom/appodeal/ads/e/u;->g()Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    iget-object v0, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/SpotXActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/am;->a()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->finish()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/appodeal/ads/networks/SpotXActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/am;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/appodeal/ads/networks/SpotXActivity;->a()V

    iget-object v0, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    new-instance v1, Lcom/appodeal/ads/networks/SpotXActivity$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/SpotXActivity$1;-><init>(Lcom/appodeal/ads/networks/SpotXActivity;)V

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->setListener(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$c;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/view/ViewManager;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lcom/appodeal/ads/networks/SpotXActivity;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/networks/SpotXActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
