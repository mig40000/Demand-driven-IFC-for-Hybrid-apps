.class public Lcom/appodeal/ads/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/android/ads/FlurryAdBannerListener;


# instance fields
.field private final a:Lcom/appodeal/ads/h;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/h;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/a/n;->a:Lcom/appodeal/ads/h;

    iput p2, p0, Lcom/appodeal/ads/a/n;->b:I

    iput p3, p0, Lcom/appodeal/ads/a/n;->c:I

    return-void
.end method


# virtual methods
.method public onAppExit(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    return-void
.end method

.method public onClicked(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/a/n;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/a/n;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1}, Lcom/appodeal/ads/j;->c(ILcom/appodeal/ads/h;)V

    return-void
.end method

.method public onCloseFullscreen(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/flurry/android/ads/FlurryAdBanner;Lcom/flurry/android/ads/FlurryAdErrorType;I)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/a/n;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/n;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/n;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    return-void
.end method

.method public onFetched(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/a/n;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/n;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/n;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->a(IILcom/appodeal/ads/h;)V

    return-void
.end method

.method public onRendered(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    return-void
.end method

.method public onShowFullscreen(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    return-void
.end method

.method public onVideoCompleted(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    return-void
.end method
