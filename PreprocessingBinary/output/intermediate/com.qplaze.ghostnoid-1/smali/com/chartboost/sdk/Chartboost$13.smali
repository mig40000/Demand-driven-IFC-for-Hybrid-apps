.class final Lcom/chartboost/sdk/Chartboost$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->showMoreAppsAIR(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/y;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/y;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$13;->a:Lcom/chartboost/sdk/impl/y;

    iput-object p2, p0, Lcom/chartboost/sdk/Chartboost$13;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/chartboost/sdk/Chartboost$13;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$13;->a:Lcom/chartboost/sdk/impl/y;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$13;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/chartboost/sdk/Chartboost$13;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/y;->b(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :goto_0
    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 946
    const-class v1, Lcom/chartboost/sdk/Chartboost;

    const-string v2, "showMoreAppsAIR Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
