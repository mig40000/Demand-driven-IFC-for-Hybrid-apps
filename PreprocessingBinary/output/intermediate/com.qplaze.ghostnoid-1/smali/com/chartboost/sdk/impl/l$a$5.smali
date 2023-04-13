.class Lcom/chartboost/sdk/impl/l$a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/l$a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/l$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/l$a;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l$a$5;->a:Lcom/chartboost/sdk/impl/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$5;->a:Lcom/chartboost/sdk/impl/l$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    const-class v1, Lcom/chartboost/sdk/impl/l$a;

    const-string v2, "onCloseButton Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
