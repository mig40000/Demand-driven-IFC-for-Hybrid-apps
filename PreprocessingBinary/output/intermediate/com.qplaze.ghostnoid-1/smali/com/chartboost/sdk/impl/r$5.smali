.class Lcom/chartboost/sdk/impl/r$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/r;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/r;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/r;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/chartboost/sdk/impl/r$5;->a:Lcom/chartboost/sdk/impl/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r$5;->a:Lcom/chartboost/sdk/impl/r;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bb;->setVisibility(I)V

    .line 401
    return-void
.end method
