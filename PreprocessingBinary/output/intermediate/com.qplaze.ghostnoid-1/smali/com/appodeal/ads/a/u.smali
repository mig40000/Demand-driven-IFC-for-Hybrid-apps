.class Lcom/appodeal/ads/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# instance fields
.field private final a:Lcom/appodeal/ads/h;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/h;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/a/u;->a:Lcom/appodeal/ads/h;

    iput p2, p0, Lcom/appodeal/ads/a/u;->b:I

    iput p3, p0, Lcom/appodeal/ads/a/u;->c:I

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/a/u;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/a/u;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1}, Lcom/appodeal/ads/j;->c(ILcom/appodeal/ads/h;)V

    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/a/u;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/u;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/u;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getmAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getmAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getmAdResponse()Lcom/mopub/network/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getmAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getmAdResponse()Lcom/mopub/network/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getStringBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/a/u;->a:Lcom/appodeal/ads/h;

    invoke-virtual {v0}, Lcom/appodeal/ads/h;->f()Lcom/appodeal/ads/k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getmAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdViewController;->getmAdResponse()Lcom/mopub/network/AdResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getStringBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/k;->a(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/a/u;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/u;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/u;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->a(IILcom/appodeal/ads/h;)V

    return-void
.end method
