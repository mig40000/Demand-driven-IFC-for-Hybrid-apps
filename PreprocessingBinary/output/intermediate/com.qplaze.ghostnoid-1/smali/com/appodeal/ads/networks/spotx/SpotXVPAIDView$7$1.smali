.class Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7$1;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7$1;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$7;->a:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    const-string v1, "if(typeof vpaid !== \'undefined\' && vpaid != null) Android.checkTimer(vpaid.getAdRemainingTime());"

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->a(Ljava/lang/String;)V

    return-void
.end method
