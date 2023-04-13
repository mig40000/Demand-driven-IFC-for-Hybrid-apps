.class Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->expand(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finalUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    iput-object p2, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->val$finalUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->val$finalUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$1700(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->this$0:Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;->access$800(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;

    invoke-direct {v2, p0, v1}, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7$1;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load part 2 expanded content for URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDVideoAddendumView$7;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/nexage/sourcekit/mraid/internal/MRAIDLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
