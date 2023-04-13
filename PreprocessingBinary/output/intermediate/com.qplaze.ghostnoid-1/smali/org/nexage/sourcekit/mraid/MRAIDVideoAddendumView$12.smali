.class Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->closeFromExpanded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$12;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$12;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2700(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$12;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$3000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$12;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$3000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$12;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-interface {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumViewListener;->mraidVideoAddendumViewClose(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void
.end method
