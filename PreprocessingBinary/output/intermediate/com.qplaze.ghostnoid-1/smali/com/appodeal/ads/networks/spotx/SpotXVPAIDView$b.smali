.class public Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkTimer(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$3;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$3;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$4;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$4;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public complete()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$1;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$1;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public duration(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$5;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$5;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$6;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$6;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$10;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$10;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$8;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$8;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playing()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$11;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$11;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showHTML(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$9;

    invoke-direct {v1, p0, p1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$9;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->i(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;-><init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
