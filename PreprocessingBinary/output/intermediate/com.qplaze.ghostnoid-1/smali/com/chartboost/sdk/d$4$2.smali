.class Lcom/chartboost/sdk/d$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/d$4;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/aj;

.field final synthetic b:Lcom/chartboost/sdk/Model/CBError;

.field final synthetic c:Lcom/chartboost/sdk/d$4;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/d$4;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/chartboost/sdk/d$4$2;->c:Lcom/chartboost/sdk/d$4;

    iput-object p2, p0, Lcom/chartboost/sdk/d$4$2;->a:Lcom/chartboost/sdk/impl/aj;

    iput-object p3, p0, Lcom/chartboost/sdk/d$4$2;->b:Lcom/chartboost/sdk/Model/CBError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$2;->c:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/Model/a;->z:Z

    .line 479
    const-string v1, "network failure"

    const-string v2, "request %s failed with error %s: %s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/chartboost/sdk/d$4$2;->a:Lcom/chartboost/sdk/impl/aj;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/aj;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/chartboost/sdk/d$4$2;->b:Lcom/chartboost/sdk/Model/CBError;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Model/CBError;->a()Lcom/chartboost/sdk/Model/CBError$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/sdk/Model/CBError$a;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/chartboost/sdk/d$4$2;->b:Lcom/chartboost/sdk/Model/CBError;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/d$4$2;->b:Lcom/chartboost/sdk/Model/CBError;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/CBError;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$2;->c:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$4$2;->c:Lcom/chartboost/sdk/d$4;

    iget-object v1, v1, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v2, p0, Lcom/chartboost/sdk/d$4$2;->b:Lcom/chartboost/sdk/Model/CBError;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/CBError;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 485
    :goto_1
    return-void

    .line 479
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    const-class v1, Lcom/chartboost/sdk/d;

    const-string v2, "sendRequest callback onFailure Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
