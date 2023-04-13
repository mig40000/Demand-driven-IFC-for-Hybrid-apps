.class Lcom/my/target/ads/MyTargetVideoView$1;
.super Ljava/lang/Object;
.source "MyTargetVideoView.java"

# interfaces
.implements Lcom/my/target/core/facades/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/MyTargetVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/MyTargetVideoView;


# direct methods
.method constructor <init>(Lcom/my/target/ads/MyTargetVideoView;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Lcom/my/target/core/facades/d;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetVideoView;->access$000(Lcom/my/target/ads/MyTargetVideoView;)Lcom/my/target/core/facades/d;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetVideoView;->access$100(Lcom/my/target/ads/MyTargetVideoView;)Lcom/my/target/core/engines/f;

    move-result-object v0

    if-nez v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    iget-object v1, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    .line 55
    invoke-virtual {v1}, Lcom/my/target/ads/MyTargetVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/my/target/core/factories/c;->a(Lcom/my/target/core/facades/g;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/my/target/core/engines/b;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/my/target/core/engines/f;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    check-cast v0, Lcom/my/target/core/engines/f;

    invoke-static {v1, v0}, Lcom/my/target/ads/MyTargetVideoView;->access$102(Lcom/my/target/ads/MyTargetVideoView;Lcom/my/target/core/engines/f;)Lcom/my/target/core/engines/f;

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetVideoView;->access$200(Lcom/my/target/ads/MyTargetVideoView;)Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetVideoView;->access$200(Lcom/my/target/ads/MyTargetVideoView;)Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    invoke-interface {v0, v1}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onLoad(Lcom/my/target/ads/MyTargetVideoView;)V

    .line 70
    :cond_1
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetVideoView;->access$100(Lcom/my/target/ads/MyTargetVideoView;)Lcom/my/target/core/engines/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/facades/g;)V

    goto :goto_0
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/d;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetVideoView;->access$200(Lcom/my/target/ads/MyTargetVideoView;)Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    invoke-static {v0}, Lcom/my/target/ads/MyTargetVideoView;->access$200(Lcom/my/target/ads/MyTargetVideoView;)Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/MyTargetVideoView$1;->this$0:Lcom/my/target/ads/MyTargetVideoView;

    invoke-interface {v0, p1, v1}, Lcom/my/target/ads/MyTargetVideoView$MyTargetVideoViewListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetVideoView;)V

    .line 76
    :cond_0
    return-void
.end method
