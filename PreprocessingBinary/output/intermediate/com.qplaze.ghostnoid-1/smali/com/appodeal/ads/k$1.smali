.class Lcom/appodeal/ads/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/utils/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/k;->a(Landroid/app/Activity;Lcom/appodeal/ads/h;ILcom/appodeal/ads/g$b;ZLcom/appodeal/ads/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/appodeal/ads/h;

.field final synthetic c:Lcom/appodeal/ads/k;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/k;ILcom/appodeal/ads/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/k$1;->c:Lcom/appodeal/ads/k;

    iput p2, p0, Lcom/appodeal/ads/k$1;->a:I

    iput-object p3, p0, Lcom/appodeal/ads/k$1;->b:Lcom/appodeal/ads/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/k$1;->a:I

    iget-object v1, p0, Lcom/appodeal/ads/k$1;->b:Lcom/appodeal/ads/h;

    invoke-static {v0, v1}, Lcom/appodeal/ads/j;->a(ILcom/appodeal/ads/h;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/k$1;->a:I

    iget-object v1, p0, Lcom/appodeal/ads/k$1;->b:Lcom/appodeal/ads/h;

    invoke-static {v0, v1}, Lcom/appodeal/ads/j;->b(ILcom/appodeal/ads/h;)V

    return-void
.end method
