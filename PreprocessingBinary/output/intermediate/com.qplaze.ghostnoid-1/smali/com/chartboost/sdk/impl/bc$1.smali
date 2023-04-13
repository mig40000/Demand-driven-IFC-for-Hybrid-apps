.class Lcom/chartboost/sdk/impl/bc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/chartboost/sdk/impl/bc$b;

.field final synthetic c:Lcom/chartboost/sdk/Model/a;

.field final synthetic d:Lcom/chartboost/sdk/impl/bc$a;

.field final synthetic e:Z

.field final synthetic f:Lcom/chartboost/sdk/impl/bc;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bc;Landroid/view/View;Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;Z)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc$1;->f:Lcom/chartboost/sdk/impl/bc;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/bc$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/bc$1;->b:Lcom/chartboost/sdk/impl/bc$b;

    iput-object p4, p0, Lcom/chartboost/sdk/impl/bc$1;->c:Lcom/chartboost/sdk/Model/a;

    iput-object p5, p0, Lcom/chartboost/sdk/impl/bc$1;->d:Lcom/chartboost/sdk/impl/bc$a;

    iput-boolean p6, p0, Lcom/chartboost/sdk/impl/bc$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$1;->f:Lcom/chartboost/sdk/impl/bc;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$1;->b:Lcom/chartboost/sdk/impl/bc$b;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$1;->c:Lcom/chartboost/sdk/Model/a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bc$1;->d:Lcom/chartboost/sdk/impl/bc$a;

    iget-boolean v4, p0, Lcom/chartboost/sdk/impl/bc$1;->e:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;Z)V

    .line 96
    return-void
.end method
