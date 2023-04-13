.class Lcom/appodeal/ads/c/b;
.super Lcom/google/android/gms/ads/AdListener;


# instance fields
.field private final a:Lcom/appodeal/ads/w;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/w;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/c/b;->a:Lcom/appodeal/ads/w;

    iput p2, p0, Lcom/appodeal/ads/c/b;->b:I

    iput p3, p0, Lcom/appodeal/ads/c/b;->c:I

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/c/b;->b:I

    iget v1, p0, Lcom/appodeal/ads/c/b;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/c/b;->a:Lcom/appodeal/ads/w;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/c/b;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/c/b;->a:Lcom/appodeal/ads/w;

    invoke-static {v0, v1}, Lcom/appodeal/ads/y;->c(ILcom/appodeal/ads/w;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/c/b;->b:I

    iget v1, p0, Lcom/appodeal/ads/c/b;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/c/b;->a:Lcom/appodeal/ads/w;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/y;->a(IILcom/appodeal/ads/w;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 0

    return-void
.end method
