.class Lcom/appodeal/ads/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/AdListener;


# instance fields
.field private final a:Lcom/appodeal/ads/w;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/w;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/c/k;->a:Lcom/appodeal/ads/w;

    iput p2, p0, Lcom/appodeal/ads/c/k;->b:I

    iput p3, p0, Lcom/appodeal/ads/c/k;->c:I

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/c/k;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/c/k;->a:Lcom/appodeal/ads/w;

    invoke-static {v0, v1}, Lcom/appodeal/ads/y;->c(ILcom/appodeal/ads/w;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/c/k;->b:I

    iget v1, p0, Lcom/appodeal/ads/c/k;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/c/k;->a:Lcom/appodeal/ads/w;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/y;->a(IILcom/appodeal/ads/w;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->destroy()V

    iget v0, p0, Lcom/appodeal/ads/c/k;->b:I

    iget v1, p0, Lcom/appodeal/ads/c/k;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/c/k;->a:Lcom/appodeal/ads/w;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/y;->b(IILcom/appodeal/ads/w;)V

    return-void
.end method
