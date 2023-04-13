.class Lcom/chartboost/sdk/impl/l$1;
.super Lcom/chartboost/sdk/impl/bg$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/l;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/l;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/l;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l$1;->a:Lcom/chartboost/sdk/impl/l;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bg$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/bg;)V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$1;->a:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    .line 597
    if-eqz v0, :cond_0

    .line 598
    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->e()V

    .line 599
    :cond_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/bg;I)V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$1;->a:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    .line 604
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 605
    if-eqz v0, :cond_0

    .line 606
    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->e()V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    if-eqz v0, :cond_2

    .line 610
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l$a;->c(Z)V

    .line 611
    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r;->h()V

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$1;->a:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->h()V

    goto :goto_0
.end method
