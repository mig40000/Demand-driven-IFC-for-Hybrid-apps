.class final Lcom/my/target/core/engines/g$2;
.super Ljava/lang/Object;
.source "StandardAdEngine.java"

# interfaces
.implements Lcom/my/target/core/communication/js/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/g;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/g;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/my/target/core/engines/g$2;->a:Lcom/my/target/core/engines/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/my/target/core/communication/js/events/f;)V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/my/target/core/engines/g$2;->a:Lcom/my/target/core/engines/g;

    invoke-static {v0}, Lcom/my/target/core/engines/g;->e(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/g$2;->a:Lcom/my/target/core/engines/g;

    invoke-static {v0}, Lcom/my/target/core/engines/g;->e(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/g$2;->a:Lcom/my/target/core/engines/g;

    invoke-static {v0}, Lcom/my/target/core/engines/g;->h(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/my/target/core/engines/g$2;->a:Lcom/my/target/core/engines/g;

    iget-object v1, p0, Lcom/my/target/core/engines/g$2;->a:Lcom/my/target/core/engines/g;

    invoke-static {v1}, Lcom/my/target/core/engines/g;->e(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/core/facades/h;->h()Lcom/my/target/core/facades/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/engines/g;->a(Lcom/my/target/core/engines/g;Lcom/my/target/core/facades/h;)Lcom/my/target/core/facades/h;

    .line 467
    iget-object v0, p0, Lcom/my/target/core/engines/g$2;->a:Lcom/my/target/core/engines/g;

    invoke-static {v0}, Lcom/my/target/core/engines/g;->h(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/g$2;->a:Lcom/my/target/core/engines/g;

    invoke-static {v1}, Lcom/my/target/core/engines/g;->i(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 468
    iget-object v0, p0, Lcom/my/target/core/engines/g$2;->a:Lcom/my/target/core/engines/g;

    invoke-static {v0}, Lcom/my/target/core/engines/g;->h(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->load()V

    .line 470
    :cond_0
    return-void
.end method
