.class final Lcom/chartboost/sdk/Chartboost$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->showRewardedVideoAIR(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/i;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/i;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$14;->a:Lcom/chartboost/sdk/impl/i;

    iput-object p2, p0, Lcom/chartboost/sdk/Chartboost$14;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/chartboost/sdk/Chartboost$14;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$14;->a:Lcom/chartboost/sdk/impl/i;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$14;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/chartboost/sdk/Chartboost$14;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/i;->b(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :goto_0
    return-void

    .line 973
    :catch_0
    move-exception v0

    .line 974
    const-class v1, Lcom/chartboost/sdk/Chartboost;

    const-string v2, "showRewardedVideoAIR"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
