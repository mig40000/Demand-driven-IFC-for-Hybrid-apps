.class Lcom/chartboost/sdk/impl/r$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/r;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/r;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/chartboost/sdk/impl/r$3;->a:Lcom/chartboost/sdk/impl/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$3;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$3;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$3;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->N:Z

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$3;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->f:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/n;->setVisibility(I)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$3;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$3;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$3;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 297
    :cond_2
    return-void
.end method
