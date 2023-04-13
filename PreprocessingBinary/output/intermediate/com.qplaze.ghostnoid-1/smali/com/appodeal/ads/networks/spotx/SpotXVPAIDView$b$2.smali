.class Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->duration(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iput p2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->a:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->l(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    iget v1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->a:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->a(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;I)I

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    iget v1, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->a:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->b(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;I)I

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->m(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->n(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b$2;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;

    iget-object v0, v0, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$b;->b:Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;

    invoke-static {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;->d(Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView;)Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/networks/spotx/SpotXVPAIDView$a;->b()V

    goto :goto_0
.end method
