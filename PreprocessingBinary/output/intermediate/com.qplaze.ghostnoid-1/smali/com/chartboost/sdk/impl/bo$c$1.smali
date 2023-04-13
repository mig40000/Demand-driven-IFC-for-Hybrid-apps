.class Lcom/chartboost/sdk/impl/bo$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bo$c;-><init>(Lcom/chartboost/sdk/impl/bo;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bo;

.field final synthetic b:Lcom/chartboost/sdk/impl/bo$c;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bo$c;Lcom/chartboost/sdk/impl/bo;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bo$c$1;->b:Lcom/chartboost/sdk/impl/bo$c;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bo$c$1;->a:Lcom/chartboost/sdk/impl/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$c$1;->b:Lcom/chartboost/sdk/impl/bo$c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bo$c;->g:Lcom/chartboost/sdk/impl/bo;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/bo;->r:Z

    if-nez v0, :cond_0

    .line 104
    const-string v4, "Webview seems to be taking more time loading the html content, so closing the view."

    .line 105
    const-string v0, "CBWebViewProtocol"

    invoke-static {v0, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$c$1;->b:Lcom/chartboost/sdk/impl/bo$c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bo$c;->g:Lcom/chartboost/sdk/impl/bo;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bo;->k:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bo$c$1;->b:Lcom/chartboost/sdk/impl/bo$c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/bo$c;->g:Lcom/chartboost/sdk/impl/bo;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bo$c$1;->b:Lcom/chartboost/sdk/impl/bo$c;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/bo$c;->g:Lcom/chartboost/sdk/impl/bo;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bo$c$1;->b:Lcom/chartboost/sdk/impl/bo$c;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/bo$c;->g:Lcom/chartboost/sdk/impl/bo;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/bo;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bo$c$1;->b:Lcom/chartboost/sdk/impl/bo$c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bo$c;->g:Lcom/chartboost/sdk/impl/bo;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bo;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 109
    :cond_0
    return-void
.end method
