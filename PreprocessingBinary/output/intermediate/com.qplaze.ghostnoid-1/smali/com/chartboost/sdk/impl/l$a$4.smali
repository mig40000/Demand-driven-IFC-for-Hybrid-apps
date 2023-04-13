.class Lcom/chartboost/sdk/impl/l$a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/l$a;->e(Z)V
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
    .line 390
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l$a$4;->a:Lcom/chartboost/sdk/impl/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$4;->a:Lcom/chartboost/sdk/impl/l$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->a(Z)V

    .line 393
    return-void
.end method
