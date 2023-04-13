.class Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    iget-object v1, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setPlacementType(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$600(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "interstitial"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$3900(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$4000(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$4200(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$4500(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    const-string v0, "MRAIDVideoAddendumView"

    const-string v1, "calling fireStateChangeEvent 2"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$2700(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$4600(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$4700(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient$1;->this$1:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;

    iget-object v0, v0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$MRAIDWebViewClient;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$4800(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "inline"

    goto :goto_0
.end method
