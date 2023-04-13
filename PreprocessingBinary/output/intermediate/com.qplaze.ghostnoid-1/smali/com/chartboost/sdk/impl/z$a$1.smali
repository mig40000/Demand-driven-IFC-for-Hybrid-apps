.class Lcom/chartboost/sdk/impl/z$a$1;
.super Lcom/chartboost/sdk/impl/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/z$a;-><init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/z;

.field final synthetic b:Lcom/chartboost/sdk/impl/z$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/z$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/z;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/chartboost/sdk/impl/z$a$1;->b:Lcom/chartboost/sdk/impl/z$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/z$a$1;->a:Lcom/chartboost/sdk/impl/z;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bf;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a$1;->b:Lcom/chartboost/sdk/impl/z$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/z;->h()V

    .line 112
    return-void
.end method
