.class Lcom/appodeal/ads/ak$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/ak$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/ak$1;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/ak$1;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/ak$1$1;->a:Lcom/appodeal/ads/ak$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/ak$1$1;->a:Lcom/appodeal/ads/ak$1;

    iget v0, v0, Lcom/appodeal/ads/ak$1;->a:I

    iget-object v1, p0, Lcom/appodeal/ads/ak$1$1;->a:Lcom/appodeal/ads/ak$1;

    iget v1, v1, Lcom/appodeal/ads/ak$1;->d:I

    iget-object v2, p0, Lcom/appodeal/ads/ak$1$1;->a:Lcom/appodeal/ads/ak$1;

    iget-object v2, v2, Lcom/appodeal/ads/ak$1;->b:Lcom/appodeal/ads/ap;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/am;->b(IILcom/appodeal/ads/ap;)V

    return-void
.end method
