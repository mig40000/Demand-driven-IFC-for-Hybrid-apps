.class Lcom/chartboost/sdk/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/h;->h(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/chartboost/sdk/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/chartboost/sdk/h$2;->b:Lcom/chartboost/sdk/h;

    iput-object p2, p0, Lcom/chartboost/sdk/h$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lcom/chartboost/sdk/h$2;->b:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/h$2;->b:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    iget-object v1, p0, Lcom/chartboost/sdk/h$2;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/h$2;->b:Lcom/chartboost/sdk/h;

    new-instance v1, Lcom/chartboost/sdk/h$b;

    iget-object v2, p0, Lcom/chartboost/sdk/h$2;->b:Lcom/chartboost/sdk/h;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/h$b;-><init>(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/h$1;)V

    iput-object v1, v0, Lcom/chartboost/sdk/h;->o:Ljava/lang/Runnable;

    .line 504
    iget-object v0, p0, Lcom/chartboost/sdk/h$2;->b:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/h$2;->b:Lcom/chartboost/sdk/h;

    iget-object v1, p0, Lcom/chartboost/sdk/h$2;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->i(Landroid/app/Activity;)V

    .line 508
    return-void
.end method
