.class Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->pause()V
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

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$8;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad paused"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$8;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->f(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$8;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->j(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$8;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    const-string v1, "if(typeof vpaid !== \'undefined\' && vpaid != null) vpaid.resumeAd();"

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
