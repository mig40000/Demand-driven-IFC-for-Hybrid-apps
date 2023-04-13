.class Lcom/cmcm/utils/l$1;
.super Landroid/os/Handler;
.source "ParseWebViewUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/utils/l;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/utils/l;


# direct methods
.method constructor <init>(Lcom/cmcm/utils/l;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmcm/utils/l$1;->a:Lcom/cmcm/utils/l;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/cmcm/utils/l$1;->a:Lcom/cmcm/utils/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmcm/utils/l;->a(Lcom/cmcm/utils/l;Z)Z

    .line 54
    iget-object v1, p0, Lcom/cmcm/utils/l$1;->a:Lcom/cmcm/utils/l;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cmcm/utils/l;->a(Lcom/cmcm/utils/l;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/cmcm/utils/l$1;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->a(Lcom/cmcm/utils/l;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/cmcm/utils/l$1;->a:Lcom/cmcm/utils/l;

    invoke-static {v0}, Lcom/cmcm/utils/l;->a(Lcom/cmcm/utils/l;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
