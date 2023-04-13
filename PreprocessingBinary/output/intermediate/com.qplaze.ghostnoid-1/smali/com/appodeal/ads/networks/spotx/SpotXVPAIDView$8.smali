.class Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->k()V
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

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$8;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$8;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$8;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$8;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->g(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)V

    return-void
.end method
