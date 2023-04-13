.class Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v2, v2, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v2}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->f(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->f(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;Z)Z

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    const-string v1, "if(typeof vpaid !== \'undefined\' && vpaid != null) vpaid.pauseAd();"

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
