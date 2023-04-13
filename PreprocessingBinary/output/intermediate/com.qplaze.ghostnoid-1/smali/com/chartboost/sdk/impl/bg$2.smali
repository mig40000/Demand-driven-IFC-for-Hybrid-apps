.class Lcom/chartboost/sdk/impl/bg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bg;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/chartboost/sdk/impl/bg$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bg;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bg;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bg$2;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$2;->a:Lcom/chartboost/sdk/impl/bg;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/bg;->a:Lcom/chartboost/sdk/impl/bg$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg$2;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bg$b;->a(Lcom/chartboost/sdk/impl/bg;)V

    .line 115
    return-void
.end method
