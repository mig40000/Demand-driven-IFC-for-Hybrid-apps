.class final Lcom/my/target/core/engines/g$10;
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
    .line 438
    iput-object p1, p0, Lcom/my/target/core/engines/g$10;->a:Lcom/my/target/core/engines/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/my/target/core/communication/js/events/f;)V
    .locals 2

    .prologue
    .line 443
    check-cast p1, Lcom/my/target/core/communication/js/events/c;

    .line 444
    iget-object v0, p0, Lcom/my/target/core/engines/g$10;->a:Lcom/my/target/core/engines/g;

    invoke-static {v0}, Lcom/my/target/core/engines/g;->e(Lcom/my/target/core/engines/g;)Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/my/target/core/communication/js/events/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->a(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/my/target/core/engines/g$10;->a:Lcom/my/target/core/engines/g;

    invoke-static {v0}, Lcom/my/target/core/engines/g;->b(Lcom/my/target/core/engines/g;)Lcom/my/target/ads/MyTargetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/g$10;->a:Lcom/my/target/core/engines/g;

    invoke-static {v0}, Lcom/my/target/core/engines/g;->b(Lcom/my/target/core/engines/g;)Lcom/my/target/ads/MyTargetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/g$10;->a:Lcom/my/target/core/engines/g;

    invoke-static {v1}, Lcom/my/target/core/engines/g;->b(Lcom/my/target/core/engines/g;)Lcom/my/target/ads/MyTargetView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onClick(Lcom/my/target/ads/MyTargetView;)V

    .line 446
    :cond_0
    return-void
.end method
