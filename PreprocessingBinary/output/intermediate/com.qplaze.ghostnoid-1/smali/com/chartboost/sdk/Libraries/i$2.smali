.class Lcom/chartboost/sdk/Libraries/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/chartboost/sdk/f;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/chartboost/sdk/Libraries/i;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Libraries/i;Lorg/json/JSONObject;Lcom/chartboost/sdk/f;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/i$2;->e:Lcom/chartboost/sdk/Libraries/i;

    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/i$2;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/chartboost/sdk/Libraries/i$2;->b:Lcom/chartboost/sdk/f;

    iput-object p4, p0, Lcom/chartboost/sdk/Libraries/i$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/chartboost/sdk/Libraries/i$2;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i$2;->a:Lorg/json/JSONObject;

    const-string v1, "checksum"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/i$2;->b:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->k:Lcom/chartboost/sdk/impl/am;

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/i$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/i$2;->e:Lcom/chartboost/sdk/Libraries/i;

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/i;->a:Lcom/chartboost/sdk/impl/am$b;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/Libraries/i$2;->d:Landroid/os/Bundle;

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/am$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    .line 225
    :goto_1
    return-void

    .line 220
    :cond_0
    iget-object v5, p0, Lcom/chartboost/sdk/Libraries/i$2;->d:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-class v1, Lcom/chartboost/sdk/Libraries/i;

    const-string v2, "processAsset Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
