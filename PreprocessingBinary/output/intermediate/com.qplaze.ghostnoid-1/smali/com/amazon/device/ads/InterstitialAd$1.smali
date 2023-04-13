.class Lcom/amazon/device/ads/InterstitialAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/InterstitialAd;->showAdInActivity()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAd$1;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/b/e;->f()Lcom/appodeal/ads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/o;->g()Lcom/appodeal/ads/r;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/b/e;

    iget-object v0, v0, Lcom/appodeal/ads/b/e;->b:Lcom/appodeal/ads/b/f;

    invoke-virtual {v0}, Lcom/appodeal/ads/b/f;->a()V

    return-void
.end method
