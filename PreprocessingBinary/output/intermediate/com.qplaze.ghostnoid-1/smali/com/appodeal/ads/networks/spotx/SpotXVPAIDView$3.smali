.class Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$3;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->a(Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$3;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$3;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$3;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-virtual {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->c()V

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$3;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    const-string v1, "if(typeof vpaid !== \'undefined\' && vpaid != null) vpaid.startAd();"

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
