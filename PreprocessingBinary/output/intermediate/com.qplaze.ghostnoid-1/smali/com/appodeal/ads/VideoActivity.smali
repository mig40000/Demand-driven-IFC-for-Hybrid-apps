.class public Lcom/appodeal/ads/VideoActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Landroid/widget/ProgressBar;

.field private c:Lcom/appodeal/ads/ao$b;

.field private d:I

.field private e:Lcom/appodeal/ads/ap;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/VideoActivity;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/VideoActivity;->f:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/VideoActivity;->f:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/appodeal/ads/VideoActivity;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    invoke-virtual {p0, v1, v1}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/VideoActivity;->d:I

    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ao$b;

    iput-object v0, p0, Lcom/appodeal/ads/VideoActivity;->c:Lcom/appodeal/ads/ao$b;

    sget-object v0, Lcom/appodeal/ads/VideoActivity$1;->a:[I

    iget-object v1, p0, Lcom/appodeal/ads/VideoActivity;->c:Lcom/appodeal/ads/ao$b;

    invoke-virtual {v1}, Lcom/appodeal/ads/ao$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videoClass"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/ah;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/appodeal/ads/VideoActivity;->e:Lcom/appodeal/ads/ap;

    iget-object v0, p0, Lcom/appodeal/ads/VideoActivity;->e:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/VideoActivity;->d:I

    invoke-virtual {v0, p0, v1}, Lcom/appodeal/ads/aq;->a(Lcom/appodeal/ads/VideoActivity;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/aj;->a()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videoClass"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appodeal/ads/ak;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/appodeal/ads/ap;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/appodeal/ads/VideoActivity;->e:Lcom/appodeal/ads/ap;

    iget-object v0, p0, Lcom/appodeal/ads/VideoActivity;->e:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/VideoActivity;->d:I

    invoke-virtual {v0, p0, v1}, Lcom/appodeal/ads/aq;->a(Lcom/appodeal/ads/VideoActivity;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/appodeal/ads/am;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/appodeal/ads/VideoActivity;->c:Lcom/appodeal/ads/ao$b;

    iget v1, p0, Lcom/appodeal/ads/VideoActivity;->d:I

    iget-object v2, p0, Lcom/appodeal/ads/VideoActivity;->e:Lcom/appodeal/ads/ap;

    invoke-static {p0, v0, v1, v2}, Lcom/appodeal/ads/as;->a(Lcom/appodeal/ads/VideoActivity;Lcom/appodeal/ads/ao$b;ILcom/appodeal/ads/ap;)V

    return-void
.end method
