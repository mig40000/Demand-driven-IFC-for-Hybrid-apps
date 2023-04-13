.class Lcom/appodeal/ads/z$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/utils/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/z;->a(Landroid/app/Activity;Lcom/appodeal/ads/w;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/appodeal/ads/w;

.field final synthetic c:Lcom/appodeal/ads/z;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/z;ILcom/appodeal/ads/w;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/z$1;->c:Lcom/appodeal/ads/z;

    iput p2, p0, Lcom/appodeal/ads/z$1;->a:I

    iput-object p3, p0, Lcom/appodeal/ads/z$1;->b:Lcom/appodeal/ads/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/z$1;->a:I

    iget-object v1, p0, Lcom/appodeal/ads/z$1;->b:Lcom/appodeal/ads/w;

    invoke-static {v0, v1}, Lcom/appodeal/ads/y;->a(ILcom/appodeal/ads/w;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lcom/appodeal/ads/z$1;->a:I

    iget-object v1, p0, Lcom/appodeal/ads/z$1;->b:Lcom/appodeal/ads/w;

    invoke-static {v0, v1}, Lcom/appodeal/ads/y;->b(ILcom/appodeal/ads/w;)V

    return-void
.end method
