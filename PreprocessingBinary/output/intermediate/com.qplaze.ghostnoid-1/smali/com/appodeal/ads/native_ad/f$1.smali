.class Lcom/appodeal/ads/native_ad/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/native_ad/f;->a(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:I

.field final synthetic c:Lcom/appodeal/ads/native_ad/f;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/native_ad/f;Landroid/widget/RelativeLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/native_ad/f$1;->c:Lcom/appodeal/ads/native_ad/f;

    iput-object p2, p0, Lcom/appodeal/ads/native_ad/f$1;->a:Landroid/widget/RelativeLayout;

    iput p3, p0, Lcom/appodeal/ads/native_ad/f$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/f$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/f$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/utils/u;

    iget v0, v0, Lcom/appodeal/ads/utils/u;->a:I

    const/4 v1, 0x1

    iget v2, p0, Lcom/appodeal/ads/native_ad/f$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/Native;->a(IZI)V

    return-void
.end method
