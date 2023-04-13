.class Lorg/nexage/sourcekit/vast/activity/VASTActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VASTActivity;->createCompanion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$6;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$6;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->close:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$700(Lorg/nexage/sourcekit/vast/activity/VASTActivity;Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VASTActivity$6;->this$0:Lorg/nexage/sourcekit/vast/activity/VASTActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VASTActivity;->access$600(Lorg/nexage/sourcekit/vast/activity/VASTActivity;)V

    return-void
.end method
