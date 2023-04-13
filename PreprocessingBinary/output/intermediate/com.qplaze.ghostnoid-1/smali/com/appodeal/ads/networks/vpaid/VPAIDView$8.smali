.class Lcom/appodeal/ads/networks/vpaid/VPAIDView$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/vpaid/VPAIDView;->o()V
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

    iput-object p1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$8;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$8;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->d(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Lcom/appodeal/ads/networks/vpaid/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$8;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->d(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Lcom/appodeal/ads/networks/vpaid/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/networks/vpaid/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$8;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->f(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)V

    return-void
.end method
