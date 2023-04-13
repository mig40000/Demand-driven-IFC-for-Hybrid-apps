.class public Lcom/appodeal/ads/as;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;)V
    .locals 4

    const/4 v2, -0x2

    instance-of v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    const-string v1, "Appodeal Spinner View"

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    check-cast p0, Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static a(Lcom/appodeal/ads/InterstitialActivity;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->a:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/appodeal/ads/InterstitialActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->a:Landroid/widget/RelativeLayout;

    const-string v1, "#7F000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/InterstitialActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static a(Lcom/appodeal/ads/InterstitialActivity;Lcom/appodeal/ads/o;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appodeal/ads/InterstitialActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/InterstitialActivity;->finish()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/InterstitialActivity;->overridePendingTransition(II)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {p2, p1}, Lcom/appodeal/ads/q;->c(ILcom/appodeal/ads/o;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/appodeal/ads/VideoActivity;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/VideoActivity;->a:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/appodeal/ads/VideoActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/VideoActivity;->a:Landroid/widget/RelativeLayout;

    const-string v1, "#7F000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appodeal/ads/VideoActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/VideoActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static a(Lcom/appodeal/ads/VideoActivity;Lcom/appodeal/ads/ao$b;ILcom/appodeal/ads/ap;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/VideoActivity;->finish()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/VideoActivity;->overridePendingTransition(II)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/VideoActivity;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/VideoActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/appodeal/ads/as$1;->a:[I

    invoke-virtual {p1}, Lcom/appodeal/ads/ao$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p2, p3}, Lcom/appodeal/ads/aj;->d(ILcom/appodeal/ads/ap;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p2, p3}, Lcom/appodeal/ads/am;->d(ILcom/appodeal/ads/ap;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroid/view/View;)V
    .locals 5

    instance-of v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDView;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    check-cast v0, Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/nexage/sourcekit/mraid/MRAIDView;

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "Appodeal Spinner View"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static b(Lcom/appodeal/ads/InterstitialActivity;)V
    .locals 3

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->b:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/appodeal/ads/InterstitialActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appodeal/ads/InterstitialActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appodeal/ads/InterstitialActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static b(Lcom/appodeal/ads/VideoActivity;)V
    .locals 3

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/VideoActivity;->b:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/appodeal/ads/VideoActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/VideoActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appodeal/ads/VideoActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appodeal/ads/VideoActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method
