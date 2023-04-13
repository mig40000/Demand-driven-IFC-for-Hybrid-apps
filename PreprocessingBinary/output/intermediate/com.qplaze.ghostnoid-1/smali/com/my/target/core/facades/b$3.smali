.class final Lcom/my/target/core/facades/b$3;
.super Ljava/lang/Object;
.source "AbstractNativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/facades/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/facades/b;


# direct methods
.method constructor <init>(Lcom/my/target/core/facades/b;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 436
    const-string v0, "Click received by native ad"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-nez v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$300(Lcom/my/target/core/facades/b;)Lcom/my/target/core/facades/b$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$300(Lcom/my/target/core/facades/b;)Lcom/my/target/core/facades/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-interface {v0, v1}, Lcom/my/target/core/facades/b$a;->onClick(Lcom/my/target/core/facades/b;)V

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v1, v1, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/f;

    iget-object v2, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v2, v2, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/c;Landroid/content/Context;)V

    goto :goto_0
.end method
