.class Lcom/appodeal/ads/e/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/networks/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/e/a;->a(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/e/a;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/e/a$1;->a:Lcom/appodeal/ads/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/e/a;->g()Lcom/appodeal/ads/ap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e/a$1;->a:Lcom/appodeal/ads/e/a;

    invoke-static {v0, p1, p2, p3}, Lcom/appodeal/ads/e/a;->a(Lcom/appodeal/ads/e/a;Landroid/app/Activity;II)V

    return-void
.end method
