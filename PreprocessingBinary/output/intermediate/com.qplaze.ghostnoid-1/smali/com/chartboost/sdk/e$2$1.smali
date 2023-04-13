.class Lcom/chartboost/sdk/e$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/bc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/e$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/e$2;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/e$2;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/chartboost/sdk/e$2$1;->a:Lcom/chartboost/sdk/e$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/e$2$1;->a:Lcom/chartboost/sdk/e$2;

    iget-object v0, v0, Lcom/chartboost/sdk/e$2;->c:Lcom/chartboost/sdk/e;

    iget-object v1, p0, Lcom/chartboost/sdk/e$2$1;->a:Lcom/chartboost/sdk/e$2;

    iget-object v1, v1, Lcom/chartboost/sdk/e$2;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Landroid/app/Activity;)V

    .line 163
    return-void
.end method
