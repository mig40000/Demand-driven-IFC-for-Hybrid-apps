.class Lorg/nexage/sourcekit/mraid/MRAIDBrowser$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->setButtonListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/mraid/MRAIDBrowser;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$6;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDBrowser;

    invoke-virtual {v0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->finish()V

    return-void
.end method
