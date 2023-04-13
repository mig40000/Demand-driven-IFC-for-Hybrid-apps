.class final Lcom/chartboost/sdk/Chartboost$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->forwardTouchEventsAIR(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/h;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;Z)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$15;->a:Lcom/chartboost/sdk/h;

    iput-boolean p2, p0, Lcom/chartboost/sdk/Chartboost$15;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$15;->a:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_0

    .line 998
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost$15;->b:Z

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$15;->a:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$15;->a:Lcom/chartboost/sdk/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/h;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBImpressionActivity;->forwardTouchEvents(Landroid/app/Activity;)V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$15;->a:Lcom/chartboost/sdk/h;

    iget-object v0, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBImpressionActivity;->forwardTouchEvents(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    const-class v1, Lcom/chartboost/sdk/Chartboost;

    const-string v2, "forwardTouchEventsAIR"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
