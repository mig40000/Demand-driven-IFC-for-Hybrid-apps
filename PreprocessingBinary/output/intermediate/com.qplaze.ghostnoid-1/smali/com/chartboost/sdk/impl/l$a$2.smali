.class Lcom/chartboost/sdk/impl/l$a$2;
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
    .line 135
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l$a$2;->b:Lcom/chartboost/sdk/impl/l$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/l$a$2;->a:Lcom/chartboost/sdk/impl/l;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bf;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l$a$2;->b:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l$a;->e()V

    .line 139
    return-void
.end method
