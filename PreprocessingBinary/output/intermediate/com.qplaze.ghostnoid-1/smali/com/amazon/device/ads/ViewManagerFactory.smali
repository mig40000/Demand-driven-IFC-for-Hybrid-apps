.class Lcom/amazon/device/ads/ViewManagerFactory;
.super Ljava/lang/Object;


# instance fields
.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createViewManager()Lcom/amazon/device/ads/ViewManager;
    .locals 2

    new-instance v0, Lcom/amazon/device/ads/ViewManager;

    iget-object v1, p0, Lcom/amazon/device/ads/ViewManagerFactory;->viewGroup:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/ViewManager;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public withViewGroup(Landroid/view/ViewGroup;)Lcom/amazon/device/ads/ViewManagerFactory;
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/ViewManagerFactory;->viewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method
