.class final Lcom/my/target/core/ui/views/StandardNativeView$4;
.super Ljava/lang/Object;
.source "StandardNativeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/StandardNativeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/StandardNativeView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/StandardNativeView;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/my/target/core/ui/views/StandardNativeView$4;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/my/target/core/ui/views/StandardNativeView$4;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->m(Lcom/my/target/core/ui/views/StandardNativeView;)Lcom/my/target/core/engines/h;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/StandardNativeView$4;->a:Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/StandardNativeView;->l(Lcom/my/target/core/ui/views/StandardNativeView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/h;->a(Ljava/lang/String;)V

    .line 166
    return-void
.end method
