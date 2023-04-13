.class Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7$1;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->o(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->p(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->p(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v0

    iget-object v1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->o(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->q(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v0

    iget-object v1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->r(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v1

    iget-object v2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v2}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->p(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v2

    iget-object v3, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v3}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->o(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    iget-object v1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->r(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v1

    iget-object v2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v2}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->p(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v2

    iget-object v3, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v3}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->o(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;I)I

    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->q(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7$2;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7$2;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->cancel()Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->s(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7$3;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7$3;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
