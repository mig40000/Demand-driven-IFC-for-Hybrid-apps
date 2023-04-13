.class Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/vpaid/VPAIDView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->h(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7$1;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)F

    move-result v0

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->m(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v2}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)F

    move-result v2

    iget-object v3, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v3}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->m(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v2}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->k(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)F

    move-result v2

    iget-object v3, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v3}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->j(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Lcom/appodeal/ads/networks/vpaid/VPAIDView;I)I

    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->l(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->h(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7$2;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7$2;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->cancel()Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->n(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->h(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7$3;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView$7$3;-><init>(Lcom/appodeal/ads/networks/vpaid/VPAIDView$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
