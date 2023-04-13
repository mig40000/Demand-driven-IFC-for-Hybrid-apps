.class Lcom/appodeal/ads/networks/vpaid/VPAIDView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/vpaid/VPAIDView;-><init>(Landroid/content/Context;Lcom/appodeal/ads/networks/vpaid/a;ZLjava/lang/String;Lorg/nexage/sourcekit/vast/model/VASTModel;Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;)V
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

    iput-object p1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$1;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$1;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->a(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$1;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->b(Lcom/appodeal/ads/networks/vpaid/VPAIDView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/networks/vpaid/VPAIDView$1;->a:Lcom/appodeal/ads/networks/vpaid/VPAIDView;

    invoke-virtual {v1, v0}, Lcom/appodeal/ads/networks/vpaid/VPAIDView;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Ad was complained before"

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
