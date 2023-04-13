.class Lcom/appodeal/ads/e/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;


# instance fields
.field private final a:Lcom/appodeal/ads/ap;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/e/n;->a:Lcom/appodeal/ads/ap;

    iput p2, p0, Lcom/appodeal/ads/e/n;->b:I

    iput p3, p0, Lcom/appodeal/ads/e/n;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/e/n;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/n;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->c(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onDismiss(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/e/n;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/n;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->d(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onDisplay(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/e/n;->a:Lcom/appodeal/ads/ap;

    invoke-virtual {v0}, Lcom/appodeal/ads/ap;->g()Lcom/appodeal/ads/aq;

    move-result-object v0

    invoke-static {p1}, Lcom/appodeal/ads/networks/n;->a(Lcom/my/target/ads/InterstitialAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/aq;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/appodeal/ads/e/n;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/n;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->a(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onLoad(Lcom/my/target/ads/InterstitialAd;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/e/n;->b:I

    iget v1, p0, Lcom/appodeal/ads/e/n;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/e/n;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->a(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/ads/InterstitialAd;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/e/n;->b:I

    iget v1, p0, Lcom/appodeal/ads/e/n;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/e/n;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onVideoCompleted(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/e/n;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/n;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->b(ILcom/appodeal/ads/ap;)V

    return-void
.end method
