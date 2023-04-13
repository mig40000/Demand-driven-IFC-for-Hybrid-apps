.class Lcom/chartboost/sdk/impl/bc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bc$a;

.field final synthetic b:Lcom/chartboost/sdk/Model/a;

.field final synthetic c:Lcom/chartboost/sdk/impl/bc;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/bc$a;Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc$2;->c:Lcom/chartboost/sdk/impl/bc;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bc$2;->a:Lcom/chartboost/sdk/impl/bc$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/bc$2;->b:Lcom/chartboost/sdk/Model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$2;->a:Lcom/chartboost/sdk/impl/bc$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$2;->b:Lcom/chartboost/sdk/Model/a;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 284
    return-void
.end method
