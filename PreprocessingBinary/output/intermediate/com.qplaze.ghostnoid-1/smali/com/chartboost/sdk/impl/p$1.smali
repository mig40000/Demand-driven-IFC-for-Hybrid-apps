.class Lcom/chartboost/sdk/impl/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/p;->a(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/chartboost/sdk/impl/p;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/p;Z)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p$1;->b:Lcom/chartboost/sdk/impl/p;

    iput-boolean p2, p0, Lcom/chartboost/sdk/impl/p$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p$1;->a:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$1;->b:Lcom/chartboost/sdk/impl/p;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/p;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$1;->b:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->clearAnimation()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$1;->b:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->a:Lcom/chartboost/sdk/impl/l;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/l;->h:Ljava/util/Map;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$1;->b:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->a:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p$1;->b:Lcom/chartboost/sdk/impl/p;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
