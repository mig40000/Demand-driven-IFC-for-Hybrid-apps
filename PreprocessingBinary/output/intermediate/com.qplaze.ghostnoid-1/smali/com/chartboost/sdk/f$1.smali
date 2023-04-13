.class Lcom/chartboost/sdk/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/chartboost/sdk/f;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/f;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/chartboost/sdk/f$1;->c:Lcom/chartboost/sdk/f;

    iput-boolean p2, p0, Lcom/chartboost/sdk/f$1;->a:Z

    iput-object p3, p0, Lcom/chartboost/sdk/f$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/chartboost/sdk/f$1;->a:Z

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/chartboost/sdk/f$1;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/chartboost/sdk/f$1;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/f$1;->c:Lcom/chartboost/sdk/f;

    iget-object v1, v0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/f$1;->c:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/f$1;->b:Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
