.class Lcom/chartboost/sdk/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/h;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/chartboost/sdk/e;

.field final synthetic c:Lcom/chartboost/sdk/impl/d;

.field final synthetic d:Lcom/chartboost/sdk/impl/b;

.field final synthetic e:Lcom/chartboost/sdk/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;Landroid/app/Activity;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/impl/b;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iput-object p2, p0, Lcom/chartboost/sdk/h$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/chartboost/sdk/h$3;->b:Lcom/chartboost/sdk/e;

    iput-object p4, p0, Lcom/chartboost/sdk/h$3;->c:Lcom/chartboost/sdk/impl/d;

    iput-object p5, p0, Lcom/chartboost/sdk/h$3;->d:Lcom/chartboost/sdk/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 195
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    iget-object v1, p0, Lcom/chartboost/sdk/h$3;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-object v1, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->c(Lcom/chartboost/sdk/Libraries/j;)V

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-object v1, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-object v1, p0, Lcom/chartboost/sdk/h$3;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/h;->a(Landroid/app/Activity;Z)V

    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-object v1, p0, Lcom/chartboost/sdk/h$3;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    .line 205
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->b()V

    .line 207
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/b;->b(Landroid/app/Activity;)Z

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-boolean v0, v0, Lcom/chartboost/sdk/h;->l:Z

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->b:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->c:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/d;->c()V

    .line 216
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->e:Lcom/chartboost/sdk/h;

    iget-object v1, p0, Lcom/chartboost/sdk/h$3;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->d(Landroid/app/Activity;)V

    .line 221
    :goto_1
    return-void

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/h$3;->d:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/b;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-class v1, Lcom/chartboost/sdk/h;

    const-string v2, "onStartCallback Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
