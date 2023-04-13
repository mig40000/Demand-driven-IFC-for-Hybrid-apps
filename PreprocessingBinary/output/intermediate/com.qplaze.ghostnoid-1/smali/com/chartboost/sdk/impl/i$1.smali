.class Lcom/chartboost/sdk/impl/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/i;->h(Lcom/chartboost/sdk/Model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/chartboost/sdk/Model/a;

.field final synthetic c:Lcom/chartboost/sdk/impl/i;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/i;Lorg/json/JSONObject;Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i$1;->c:Lcom/chartboost/sdk/impl/i;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/i$1;->b:Lcom/chartboost/sdk/Model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/bg$a;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/bg$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bg$a;

    .line 142
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i$1;->a:Lorg/json/JSONObject;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bg$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/i$1;->a:Lorg/json/JSONObject;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bg$a;->b(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/i$1;->a:Lorg/json/JSONObject;

    const-string v3, "confirm"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bg$a;->d(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/i$1;->a:Lorg/json/JSONObject;

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bg$a;->c(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    .line 146
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i$1;->c:Lcom/chartboost/sdk/impl/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/i;->c()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/i$1$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/i$1$1;-><init>(Lcom/chartboost/sdk/impl/i$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bg$a;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/bg$b;)Lcom/chartboost/sdk/impl/bg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-class v1, Lcom/chartboost/sdk/impl/i;

    const-string v2, "preShow Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
