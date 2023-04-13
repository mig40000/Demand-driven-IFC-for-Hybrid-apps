.class Lcom/chartboost/sdk/impl/bf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bf;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bf;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/impl/bf;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 62
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 47
    :pswitch_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/bf;->c:Lcom/chartboost/sdk/impl/bf$a;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf$a;->a(Z)V

    goto :goto_1

    .line 50
    :pswitch_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/bf;->c:Lcom/chartboost/sdk/impl/bf$a;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf$a;->a(Z)V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bf;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bf;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/impl/bf;->a(Landroid/view/MotionEvent;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bf;->c:Lcom/chartboost/sdk/impl/bf$a;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bf$a;->a(Z)V

    goto :goto_0

    .line 59
    :pswitch_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$1;->a:Lcom/chartboost/sdk/impl/bf;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bf;->c:Lcom/chartboost/sdk/impl/bf$a;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bf$a;->a(Z)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
