.class Lcom/appodeal/ads/n$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/n$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/n$1;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/n$1;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/n$1$1;->a:Lcom/appodeal/ads/n$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/n$1$1;->a:Lcom/appodeal/ads/n$1;

    iget v0, v0, Lcom/appodeal/ads/n$1;->b:I

    iget-object v1, p0, Lcom/appodeal/ads/n$1$1;->a:Lcom/appodeal/ads/n$1;

    iget v1, v1, Lcom/appodeal/ads/n$1;->c:I

    invoke-static {}, Lcom/appodeal/ads/b/c;->f()Lcom/appodeal/ads/o;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/appodeal/ads/q;->b(IILcom/appodeal/ads/o;Z)V

    return-void
.end method
