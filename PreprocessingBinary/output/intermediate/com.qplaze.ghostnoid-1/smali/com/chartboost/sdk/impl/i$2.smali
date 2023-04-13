.class Lcom/chartboost/sdk/impl/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/i;->r(Lcom/chartboost/sdk/Model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/chartboost/sdk/impl/i;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/i;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i$2;->b:Lcom/chartboost/sdk/impl/i;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i$2;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/bg$a;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/bg$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bg$a;

    .line 192
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i$2;->a:Lorg/json/JSONObject;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bg$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/i$2;->a:Lorg/json/JSONObject;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bg$a;->b(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/i$2;->a:Lorg/json/JSONObject;

    const-string v3, "confirm"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bg$a;->c(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bg$a;

    .line 195
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i$2;->b:Lcom/chartboost/sdk/impl/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/i;->c()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/i$2$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/i$2$1;-><init>(Lcom/chartboost/sdk/impl/i$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bg$a;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/bg$b;)Lcom/chartboost/sdk/impl/bg;

    .line 202
    return-void
.end method
