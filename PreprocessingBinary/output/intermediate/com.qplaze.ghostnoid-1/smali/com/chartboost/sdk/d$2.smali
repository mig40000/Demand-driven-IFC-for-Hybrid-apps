.class Lcom/chartboost/sdk/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Model/a;

.field final synthetic b:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field final synthetic c:Lcom/chartboost/sdk/d;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/chartboost/sdk/d$2;->c:Lcom/chartboost/sdk/d;

    iput-object p2, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    iput-object p3, p0, Lcom/chartboost/sdk/d$2;->b:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d$2;->c:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->n(Lcom/chartboost/sdk/Model/a;)V

    .line 246
    iget-object v0, p0, Lcom/chartboost/sdk/d$2;->c:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 252
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/d$2;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v2, p0, Lcom/chartboost/sdk/d$2;->b:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 253
    iget-object v0, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/chartboost/sdk/d$2;->c:Lcom/chartboost/sdk/d;

    iget-object v1, v1, Lcom/chartboost/sdk/d;->i:Lcom/chartboost/sdk/Tracking/a;

    iget-object v2, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v3, v3, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, ""

    :cond_1
    iget-object v4, p0, Lcom/chartboost/sdk/d$2;->b:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 258
    :goto_1
    return-void

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    sget-object v2, Lcom/chartboost/sdk/Model/a$e;->c:Lcom/chartboost/sdk/Model/a$e;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/chartboost/sdk/d$2;->a:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-class v1, Lcom/chartboost/sdk/d;

    const-string v2, "handleError Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
