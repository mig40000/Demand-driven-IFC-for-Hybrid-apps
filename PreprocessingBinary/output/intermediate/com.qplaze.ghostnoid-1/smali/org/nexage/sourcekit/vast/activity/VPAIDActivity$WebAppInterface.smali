.class public Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$2;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$2;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finish()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$1;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$1;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$4;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$4;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public started()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;->this$0:Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;

    new-instance v1, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$3;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface$3;-><init>(Lorg/nexage/sourcekit/vast/activity/VPAIDActivity$WebAppInterface;)V

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/activity/VPAIDActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
