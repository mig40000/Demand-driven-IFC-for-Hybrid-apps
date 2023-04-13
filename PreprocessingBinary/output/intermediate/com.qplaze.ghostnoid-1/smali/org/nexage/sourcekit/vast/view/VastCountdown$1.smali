.class Lorg/nexage/sourcekit/vast/view/VastCountdown$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/view/VastCountdown;->changePercentage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/vast/view/VastCountdown;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/view/VastCountdown;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown$1;->this$0:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/view/VastCountdown$1;->this$0:Lorg/nexage/sourcekit/vast/view/VastCountdown;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/vast/view/VastCountdown;->invalidate()V

    return-void
.end method
