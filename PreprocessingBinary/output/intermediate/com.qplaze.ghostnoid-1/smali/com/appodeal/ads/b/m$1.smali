.class Lcom/appodeal/ads/b/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/b/m;->a(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:I

.field final synthetic c:Lcom/appodeal/ads/b/m;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/b/m;Landroid/widget/RelativeLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/b/m$1;->c:Lcom/appodeal/ads/b/m;

    iput-object p2, p0, Lcom/appodeal/ads/b/m$1;->a:Landroid/widget/RelativeLayout;

    iput p3, p0, Lcom/appodeal/ads/b/m$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/appodeal/ads/b/m$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appodeal/ads/b/m$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/utils/u;

    iget v2, v0, Lcom/appodeal/ads/utils/u;->a:I

    sget-object v1, Lcom/appodeal/ads/n;->p:Ljava/util/ArrayList;

    iget v3, p0, Lcom/appodeal/ads/b/m$1;->b:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/s;

    iget-object v1, v1, Lcom/appodeal/ads/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, v2, v1

    if-gez v1, :cond_0

    iget v0, v0, Lcom/appodeal/ads/utils/u;->a:I

    iget v1, p0, Lcom/appodeal/ads/b/m$1;->b:I

    invoke-static {v0, v4, v1}, Lcom/appodeal/ads/n;->a(IZI)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/appodeal/ads/b/m$1;->b:I

    invoke-static {v1, v4, v0}, Lcom/appodeal/ads/n;->b(IZI)V

    goto :goto_0
.end method
