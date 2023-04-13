.class Lcom/appodeal/ads/c/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/c/i;->a(Landroid/app/Activity;Lcom/appodeal/ads/w;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appodeal/ads/c/i;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/c/i$2;->a:Lcom/appodeal/ads/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/utils/h;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/h;->a()V

    const/4 v0, 0x1

    return v0
.end method
