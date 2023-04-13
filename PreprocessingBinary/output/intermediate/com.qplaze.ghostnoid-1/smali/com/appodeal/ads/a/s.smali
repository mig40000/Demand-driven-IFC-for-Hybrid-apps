.class Lcom/appodeal/ads/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/my/target/ads/MyTargetView$MyTargetViewListener;


# instance fields
.field private final a:Lcom/appodeal/ads/h;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/h;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/a/s;->a:Lcom/appodeal/ads/h;

    iput p2, p0, Lcom/appodeal/ads/a/s;->b:I

    iput p3, p0, Lcom/appodeal/ads/a/s;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/MyTargetView;)V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/a/s;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/a/s;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1}, Lcom/appodeal/ads/j;->c(ILcom/appodeal/ads/h;)V

    return-void
.end method

.method public onLoad(Lcom/my/target/ads/MyTargetView;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/a/s;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/s;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/s;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->a(IILcom/appodeal/ads/h;)V

    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/a/s;->b:I

    iget v1, p0, Lcom/appodeal/ads/a/s;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/a/s;->a:Lcom/appodeal/ads/h;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    return-void
.end method
