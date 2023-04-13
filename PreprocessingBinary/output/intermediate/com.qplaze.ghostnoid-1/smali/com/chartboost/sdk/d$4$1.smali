.class Lcom/chartboost/sdk/d$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/d$4;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/aj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/chartboost/sdk/d$4;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/d$4;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iput-object p2, p0, Lcom/chartboost/sdk/d$4$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->a:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/d$4$1;->a:Lorg/json/JSONObject;

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v1, v1, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 449
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->i:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v1, v1, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    invoke-virtual {v1}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v2, v2, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status Code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/chartboost/sdk/d$4$1;->a:Lorg/json/JSONObject;

    const-string v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 468
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/Model/a;->z:Z

    .line 454
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->a:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v1, v1, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/a$b;)V

    .line 459
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v1, v1, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v2, p0, Lcom/chartboost/sdk/d$4$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    const-class v1, Lcom/chartboost/sdk/d;

    const-string v2, "sendRequest onSuccess"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 466
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v1, v1, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 458
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v1, v1, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/a$b;)V

    goto :goto_1

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->i:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v1, v1, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    invoke-virtual {v1}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v2, v2, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    const-string v3, "No response body"

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 462
    iget-object v0, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v0, v0, Lcom/chartboost/sdk/d$4;->b:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/d$4$1;->b:Lcom/chartboost/sdk/d$4;

    iget-object v1, v1, Lcom/chartboost/sdk/d$4;->a:Lcom/chartboost/sdk/Model/a;

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
