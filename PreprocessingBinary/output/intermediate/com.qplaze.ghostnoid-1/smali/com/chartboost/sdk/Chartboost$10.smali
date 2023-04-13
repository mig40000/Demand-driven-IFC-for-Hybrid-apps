.class final Lcom/chartboost/sdk/Chartboost$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->setShouldPrefetchVideoContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/chartboost/sdk/impl/e;


# direct methods
.method constructor <init>(ZLcom/chartboost/sdk/impl/e;)V
    .locals 0

    .prologue
    .line 839
    iput-boolean p1, p0, Lcom/chartboost/sdk/Chartboost$10;->a:Z

    iput-object p2, p0, Lcom/chartboost/sdk/Chartboost$10;->b:Lcom/chartboost/sdk/impl/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 843
    :try_start_0
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost$10;->a:Z

    sput-boolean v0, Lcom/chartboost/sdk/i;->v:Z

    .line 845
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost$10;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$10;->b:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e;->a()V

    .line 853
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$10;->b:Lcom/chartboost/sdk/impl/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    const-class v1, Lcom/chartboost/sdk/Chartboost;

    const-string v2, "setShouldPrefetchVideoContent Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
