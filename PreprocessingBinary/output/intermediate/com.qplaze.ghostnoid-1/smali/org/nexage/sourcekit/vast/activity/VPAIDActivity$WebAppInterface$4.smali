.class Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->loaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$4;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adsManager loaded"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$4;->this$1:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;

    iget-object v0, v0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->access$400(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:startAd()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
