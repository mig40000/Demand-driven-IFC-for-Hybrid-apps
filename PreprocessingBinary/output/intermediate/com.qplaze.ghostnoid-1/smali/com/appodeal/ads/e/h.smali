.class public Lcom/appodeal/ads/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/android/ads/FlurryAdInterstitialListener;


# instance fields
.field private final a:Lcom/appodeal/ads/ap;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/e/h;->a:Lcom/appodeal/ads/ap;

    iput p2, p0, Lcom/appodeal/ads/e/h;->b:I

    iput p3, p0, Lcom/appodeal/ads/e/h;->c:I

    return-void
.end method


# virtual methods
.method public onAppExit(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 0

    return-void
.end method

.method public onClicked(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 0

    return-void
.end method

.method public onClose(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/e/h;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/h;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->d(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onDisplay(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/e/h;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/h;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->a(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onError(Lcom/flurry/android/ads/FlurryAdInterstitial;Lcom/flurry/android/ads/FlurryAdErrorType;I)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/e/h;->b:I

    iget v1, p0, Lcom/appodeal/ads/e/h;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/e/h;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onFetched(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/e/h;->b:I

    iget v1, p0, Lcom/appodeal/ads/e/h;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/e/h;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->a(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public onRendered(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 0

    return-void
.end method

.method public onVideoCompleted(Lcom/flurry/android/ads/FlurryAdInterstitial;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/e/h;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/h;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->b(ILcom/appodeal/ads/ap;)V

    return-void
.end method
