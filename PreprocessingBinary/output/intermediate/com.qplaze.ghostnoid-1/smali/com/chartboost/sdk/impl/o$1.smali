.class Lcom/chartboost/sdk/impl/o$1;
.super Lcom/chartboost/sdk/impl/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/o;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/o;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/o;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o$1;->a:Lcom/chartboost/sdk/impl/o;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bf;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$1;->a:Lcom/chartboost/sdk/impl/o;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$1;->a:Lcom/chartboost/sdk/impl/o;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l$a;->h()V

    .line 79
    return-void
.end method
