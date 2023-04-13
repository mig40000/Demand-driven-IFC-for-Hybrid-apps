.class Lcom/appodeal/ads/g$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/g$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/g$2;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/g$2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/g$2$1;->a:Lcom/appodeal/ads/g$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/g$2$1;->a:Lcom/appodeal/ads/g$2;

    iget v0, v0, Lcom/appodeal/ads/g$2;->a:I

    iget-object v1, p0, Lcom/appodeal/ads/g$2$1;->a:Lcom/appodeal/ads/g$2;

    iget v1, v1, Lcom/appodeal/ads/g$2;->d:I

    iget-object v2, p0, Lcom/appodeal/ads/g$2$1;->a:Lcom/appodeal/ads/g$2;

    iget-object v2, v2, Lcom/appodeal/ads/g$2;->b:Lcom/appodeal/ads/h;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/j;->b(IILcom/appodeal/ads/h;)V

    return-void
.end method
