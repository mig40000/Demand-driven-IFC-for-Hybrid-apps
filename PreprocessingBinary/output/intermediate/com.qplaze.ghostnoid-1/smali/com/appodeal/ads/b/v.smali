.class Lcom/appodeal/ads/b/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;


# instance fields
.field private final a:Lcom/appodeal/ads/o;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/o;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/b/v;->a:Lcom/appodeal/ads/o;

    iput p2, p0, Lcom/appodeal/ads/b/v;->b:I

    iput p3, p0, Lcom/appodeal/ads/b/v;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/b/v;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/b/v;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1}, Lcom/appodeal/ads/q;->b(ILcom/appodeal/ads/o;)V

    return-void
.end method

.method public onDismiss(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/b/v;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/b/v;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1}, Lcom/appodeal/ads/q;->c(ILcom/appodeal/ads/o;)V

    return-void
.end method

.method public onDisplay(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/b/v;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/b/v;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1}, Lcom/appodeal/ads/q;->a(ILcom/appodeal/ads/o;)V

    return-void
.end method

.method public onLoad(Lcom/my/target/ads/InterstitialAd;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/b/v;->b:I

    iget v1, p0, Lcom/appodeal/ads/b/v;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/b/v;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/q;->a(IILcom/appodeal/ads/o;)V

    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/ads/InterstitialAd;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/b/v;->b:I

    iget v1, p0, Lcom/appodeal/ads/b/v;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/b/v;->a:Lcom/appodeal/ads/o;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;)V

    return-void
.end method

.method public onVideoCompleted(Lcom/my/target/ads/InterstitialAd;)V
    .locals 0

    return-void
.end method
