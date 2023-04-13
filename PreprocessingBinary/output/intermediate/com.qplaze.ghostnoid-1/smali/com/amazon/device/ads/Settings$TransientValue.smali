.class Lcom/amazon/device/ads/Settings$TransientValue;
.super Lcom/amazon/device/ads/Settings$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransientValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/Settings;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amazon/device/ads/Settings$TransientValue;->this$0:Lcom/amazon/device/ads/Settings;

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/Settings$TransientValue;->isTransientData:Z

    return-void
.end method
