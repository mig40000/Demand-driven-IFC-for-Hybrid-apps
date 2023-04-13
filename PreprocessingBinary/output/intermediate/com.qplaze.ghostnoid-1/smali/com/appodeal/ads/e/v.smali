.class public Lcom/appodeal/ads/e/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;


# instance fields
.field private final a:Lcom/appodeal/ads/ap;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/e/v;->a:Lcom/appodeal/ads/ap;

    iput p2, p0, Lcom/appodeal/ads/e/v;->b:I

    iput p3, p0, Lcom/appodeal/ads/e/v;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/e/v;->b:I

    iget v1, p0, Lcom/appodeal/ads/e/v;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/e/v;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->a(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/e/v;->b:I

    iget v1, p0, Lcom/appodeal/ads/e/v;->c:I

    iget-object v2, p0, Lcom/appodeal/ads/e/v;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/e/v;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/v;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->d(ILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/e/v;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/e/v;->a:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1}, Lcom/appodeal/ads/am;->b(ILcom/appodeal/ads/ap;)V

    return-void
.end method
