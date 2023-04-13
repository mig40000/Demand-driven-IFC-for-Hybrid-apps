.class final Lcom/appodeal/ads/g$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/g;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/g$6;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/g;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/g;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/appodeal/ads/g;->p:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/g;->a(Landroid/view/View;ZZ)V

    invoke-static {}, Lcom/appodeal/ads/g;->a()Lcom/appodeal/ads/l;

    move-result-object v0

    sget-boolean v1, Lcom/appodeal/ads/g;->l:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/l;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/appodeal/ads/l;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/g$6;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appodeal/ads/g;->b(Landroid/app/Activity;)V
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
