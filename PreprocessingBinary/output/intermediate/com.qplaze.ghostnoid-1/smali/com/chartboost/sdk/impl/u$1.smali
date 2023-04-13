.class Lcom/chartboost/sdk/impl/u$1;
.super Lcom/chartboost/sdk/impl/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/u;-><init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/u;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/u;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bf;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u;->b:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 114
    return-void
.end method
