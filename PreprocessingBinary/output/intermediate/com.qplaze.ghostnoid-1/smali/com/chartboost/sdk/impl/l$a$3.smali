.class Lcom/chartboost/sdk/impl/l$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/l$a;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/l$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/l$a;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l$a$3;->a:Lcom/chartboost/sdk/impl/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 342
    const-string v3, "InterstitialVideoViewProtocol"

    const-string v4, "controls %s automatically from timer"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$3;->a:Lcom/chartboost/sdk/impl/l$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->z:Z

    if-eqz v0, :cond_0

    const-string v0, "hidden"

    :goto_0
    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$3;->a:Lcom/chartboost/sdk/impl/l$a;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$3;->a:Lcom/chartboost/sdk/impl/l$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->z:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/chartboost/sdk/impl/r;->a(ZZ)V

    .line 345
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$3;->a:Lcom/chartboost/sdk/impl/l$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/l;->h:Ljava/util/Map;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$3;->a:Lcom/chartboost/sdk/impl/l$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l$a$3;->a:Lcom/chartboost/sdk/impl/l$a;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/l$a;->h:Lcom/chartboost/sdk/impl/r;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    return-void

    .line 342
    :cond_0
    const-string v0, "shown"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 343
    goto :goto_1

    .line 347
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
