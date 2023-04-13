.class Lcom/appodeal/ads/af$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/utils/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/af;->b(Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/ab;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/appodeal/ads/ac;

.field final synthetic e:Lcom/appodeal/ads/af;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/af;Lcom/appodeal/ads/ab;IILcom/appodeal/ads/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/af$2;->e:Lcom/appodeal/ads/af;

    iput-object p2, p0, Lcom/appodeal/ads/af$2;->a:Lcom/appodeal/ads/ab;

    iput p3, p0, Lcom/appodeal/ads/af$2;->b:I

    iput p4, p0, Lcom/appodeal/ads/af$2;->c:I

    iput-object p5, p0, Lcom/appodeal/ads/af$2;->d:Lcom/appodeal/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/af$2;->a:Lcom/appodeal/ads/ab;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/ab;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/appodeal/ads/af$2;->e:Lcom/appodeal/ads/af;

    invoke-static {v0}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/af;)I

    iget-object v0, p0, Lcom/appodeal/ads/af$2;->e:Lcom/appodeal/ads/af;

    iget v1, p0, Lcom/appodeal/ads/af$2;->b:I

    iget v2, p0, Lcom/appodeal/ads/af$2;->c:I

    iget-object v3, p0, Lcom/appodeal/ads/af$2;->d:Lcom/appodeal/ads/ac;

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/af;->a(Lcom/appodeal/ads/af;IILcom/appodeal/ads/ac;)V

    return-void
.end method
