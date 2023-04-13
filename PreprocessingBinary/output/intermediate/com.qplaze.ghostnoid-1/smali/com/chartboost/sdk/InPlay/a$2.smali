.class Lcom/chartboost/sdk/InPlay/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/InPlay/a;->b(Lcom/chartboost/sdk/InPlay/CBInPlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;

.field final synthetic b:Lcom/chartboost/sdk/InPlay/CBInPlay;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lcom/chartboost/sdk/InPlay/a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/InPlay/CBInPlay;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/a$2;->d:Lcom/chartboost/sdk/InPlay/a;

    iput-object p2, p0, Lcom/chartboost/sdk/InPlay/a$2;->a:Lcom/chartboost/sdk/c;

    iput-object p3, p0, Lcom/chartboost/sdk/InPlay/a$2;->b:Lcom/chartboost/sdk/InPlay/CBInPlay;

    iput-object p4, p0, Lcom/chartboost/sdk/InPlay/a$2;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/a$2;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/impl/aj;

    move-result-object v0

    .line 263
    const-string v1, "location"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->b:Lcom/chartboost/sdk/InPlay/CBInPlay;

    invoke-virtual {v2}, Lcom/chartboost/sdk/InPlay/CBInPlay;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    const-string v1, "to"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 265
    const-string v1, "cgn"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 266
    const-string v1, "creative"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 267
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 268
    const-string v1, "type"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 269
    const-string v1, "more_type"

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$2;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/aj;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 270
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj;->j()V

    .line 271
    return-void
.end method
