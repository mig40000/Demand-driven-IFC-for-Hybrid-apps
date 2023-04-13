.class Lcom/chartboost/sdk/impl/bo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bo;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bo$c;

.field final synthetic b:Lcom/chartboost/sdk/impl/bo;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bo;Lcom/chartboost/sdk/impl/bo$c;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bo$2;->b:Lcom/chartboost/sdk/impl/bo;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bo$2;->a:Lcom/chartboost/sdk/impl/bo$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$2;->a:Lcom/chartboost/sdk/impl/bo$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$2;->a:Lcom/chartboost/sdk/impl/bo$c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "javascript:Chartboost.EventHandler.handleNativeEvent(\"onBackground\", \"\")"

    .line 284
    const-string v1, "CBWebViewProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling native to javascript: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$2;->a:Lcom/chartboost/sdk/impl/bo$c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/bo$c;->c:Lcom/chartboost/sdk/impl/bn;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bn;->loadUrl(Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void
.end method
