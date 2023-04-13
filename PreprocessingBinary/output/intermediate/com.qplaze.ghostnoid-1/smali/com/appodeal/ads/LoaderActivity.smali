.class public Lcom/appodeal/ads/LoaderActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/appodeal/ads/n;->a()Lcom/appodeal/ads/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lcom/appodeal/ads/s;->x:Z

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/ah;->a()Lcom/appodeal/ads/ar;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Lcom/appodeal/ads/ar;->v:Z

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/ak;->a()Lcom/appodeal/ads/ar;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-boolean v1, v0, Lcom/appodeal/ads/ar;->v:Z

    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/LoaderActivity;->finish()V

    invoke-virtual {p0, v1, v1}, Lcom/appodeal/ads/LoaderActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/Appodeal;->c:Lcom/appodeal/ads/LoaderActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/Appodeal;->c:Lcom/appodeal/ads/LoaderActivity;

    invoke-virtual {v0}, Lcom/appodeal/ads/LoaderActivity;->finish()V

    sget-object v0, Lcom/appodeal/ads/Appodeal;->c:Lcom/appodeal/ads/LoaderActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/LoaderActivity;->overridePendingTransition(II)V

    :cond_0
    sput-object p0, Lcom/appodeal/ads/Appodeal;->c:Lcom/appodeal/ads/LoaderActivity;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#7F000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/LoaderActivity;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appodeal/ads/LoaderActivity$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/LoaderActivity$1;-><init>(Lcom/appodeal/ads/LoaderActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/appodeal/ads/LoaderActivity;->finish()V

    invoke-virtual {p0, v5, v5}, Lcom/appodeal/ads/LoaderActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Lcom/appodeal/ads/n;->a()Lcom/appodeal/ads/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lcom/appodeal/ads/s;->x:Z

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/ah;->a()Lcom/appodeal/ads/ar;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Lcom/appodeal/ads/ar;->v:Z

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/ak;->a()Lcom/appodeal/ads/ar;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-boolean v1, v0, Lcom/appodeal/ads/ar;->v:Z

    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/LoaderActivity;->finish()V

    invoke-virtual {p0, v1, v1}, Lcom/appodeal/ads/LoaderActivity;->overridePendingTransition(II)V

    return-void
.end method
