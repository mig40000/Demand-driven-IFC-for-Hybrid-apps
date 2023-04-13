.class Lcom/chartboost/sdk/h$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/h;->g()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/e;

.field final synthetic b:Lcom/chartboost/sdk/c;

.field final synthetic c:Lcom/chartboost/sdk/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/c;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/chartboost/sdk/h$10;->c:Lcom/chartboost/sdk/h;

    iput-object p2, p0, Lcom/chartboost/sdk/h$10;->a:Lcom/chartboost/sdk/e;

    iput-object p3, p0, Lcom/chartboost/sdk/h$10;->b:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/chartboost/sdk/h$10;->a:Lcom/chartboost/sdk/e;

    iget-object v1, p0, Lcom/chartboost/sdk/h$10;->b:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 486
    return-void
.end method
