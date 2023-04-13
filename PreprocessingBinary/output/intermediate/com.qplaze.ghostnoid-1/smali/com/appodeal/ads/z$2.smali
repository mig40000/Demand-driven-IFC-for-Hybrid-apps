.class Lcom/appodeal/ads/z$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/z;->a(Landroid/app/Activity;Lcom/appodeal/ads/w;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/appodeal/ads/z;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/z;Landroid/view/View;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/z$2;->d:Lcom/appodeal/ads/z;

    iput-object p2, p0, Lcom/appodeal/ads/z$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/appodeal/ads/z$2;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/appodeal/ads/z$2;->c:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/appodeal/ads/z$2;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/appodeal/ads/z$2;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/z$2;->d:Lcom/appodeal/ads/z;

    iget-object v1, p0, Lcom/appodeal/ads/z$2;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/appodeal/ads/z;->a(Lcom/appodeal/ads/z;Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/z$2;->d:Lcom/appodeal/ads/z;

    iget-object v1, p0, Lcom/appodeal/ads/z$2;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/appodeal/ads/z$2;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/z;->a(Lcom/appodeal/ads/z;Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
