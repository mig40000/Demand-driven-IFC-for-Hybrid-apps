.class Lcom/appodeal/ads/k$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/k;->a(Landroid/app/Activity;Lcom/appodeal/ads/h;ILcom/appodeal/ads/g$b;ZLcom/appodeal/ads/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/appodeal/ads/g$b;

.field final synthetic d:Z

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/appodeal/ads/k;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/k;Landroid/view/View;Landroid/view/View;Lcom/appodeal/ads/g$b;ZLandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/k$2;->f:Lcom/appodeal/ads/k;

    iput-object p2, p0, Lcom/appodeal/ads/k$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/appodeal/ads/k$2;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/appodeal/ads/k$2;->c:Lcom/appodeal/ads/g$b;

    iput-boolean p5, p0, Lcom/appodeal/ads/k$2;->d:Z

    iput-object p6, p0, Lcom/appodeal/ads/k$2;->e:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/appodeal/ads/k$2;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/appodeal/ads/k$2;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/k$2;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/appodeal/ads/k$2;->c:Lcom/appodeal/ads/g$b;

    sget-object v2, Lcom/appodeal/ads/g$b;->c:Lcom/appodeal/ads/g$b;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/appodeal/ads/k$2;->d:Z

    invoke-static {v1, v0, v2}, Lcom/appodeal/ads/g;->a(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/appodeal/ads/k$2;->f:Lcom/appodeal/ads/k;

    iget-object v1, p0, Lcom/appodeal/ads/k$2;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/appodeal/ads/k$2;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/k;->a(Lcom/appodeal/ads/k;Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
