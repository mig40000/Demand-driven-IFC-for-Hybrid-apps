.class Lorg/nexage/sourcekit/vast/VASTPlayer$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/VASTPlayer;->sendError(ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

.field final synthetic val$error:I

.field final synthetic val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/VASTPlayer;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;I)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$4;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iput-object p2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$4;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    iput p3, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$4;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$4;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    iget v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$4;->val$error:I

    invoke-interface {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    return-void
.end method
