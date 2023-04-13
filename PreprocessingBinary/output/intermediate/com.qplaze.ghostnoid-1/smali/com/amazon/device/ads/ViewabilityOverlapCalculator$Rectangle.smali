.class Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ViewabilityOverlapCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Rectangle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;",
        ">;"
    }
.end annotation


# instance fields
.field private final rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/amazon/device/ads/ViewabilityOverlapCalculator;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;IIII)V
    .locals 1

    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->this$0:Lcom/amazon/device/ads/ViewabilityOverlapCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->this$0:Lcom/amazon/device/ads/ViewabilityOverlapCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;)I
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->compareTo(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;)I

    move-result v0

    return v0
.end method

.method public contains(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;)Z
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getBottom()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getRight()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getTop()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public intersect(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;)Z
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method
