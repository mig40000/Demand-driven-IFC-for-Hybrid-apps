.class Lcom/amazon/device/ads/NativeCloseButton$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/NativeCloseButton;->createButtonIfNeeded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/NativeCloseButton;

.field final synthetic val$closeNormal:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$closePressed:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/NativeCloseButton;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton$3;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    iput-object p2, p0, Lcom/amazon/device/ads/NativeCloseButton$3;->val$closeNormal:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/amazon/device/ads/NativeCloseButton$3;->val$closePressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton$3;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    iget-object v1, p0, Lcom/amazon/device/ads/NativeCloseButton$3;->val$closeNormal:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/amazon/device/ads/NativeCloseButton$3;->val$closePressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, p2, v1, v2}, Lcom/amazon/device/ads/NativeCloseButton;->access$300(Lcom/amazon/device/ads/NativeCloseButton;Landroid/view/MotionEvent;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    const/4 v0, 0x0

    return v0
.end method
