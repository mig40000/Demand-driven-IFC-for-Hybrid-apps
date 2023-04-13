.class Lcom/chartboost/sdk/impl/l$a$1;
.super Lcom/chartboost/sdk/impl/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/l$a;-><init>(Lcom/chartboost/sdk/impl/l;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/l;

.field final synthetic b:Lcom/chartboost/sdk/impl/l$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/l$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l$a$1;->b:Lcom/chartboost/sdk/impl/l$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/l$a$1;->a:Lcom/chartboost/sdk/impl/l;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bf;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$1;->b:Lcom/chartboost/sdk/impl/l$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$1;->b:Lcom/chartboost/sdk/impl/l$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->i:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/m;->a(Z)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$1;->b:Lcom/chartboost/sdk/impl/l$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->j:Lcom/chartboost/sdk/impl/l;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l;->s:Lcom/chartboost/sdk/impl/l$b;

    sget-object v1, Lcom/chartboost/sdk/impl/l$b;->b:Lcom/chartboost/sdk/impl/l$b;

    if-ne v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$1;->b:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/l$a;->c(Z)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$1;->b:Lcom/chartboost/sdk/impl/l$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l$a;->b(Z)V

    .line 129
    return-void
.end method
