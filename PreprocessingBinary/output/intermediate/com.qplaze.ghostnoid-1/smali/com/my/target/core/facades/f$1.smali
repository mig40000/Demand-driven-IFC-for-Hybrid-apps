.class final Lcom/my/target/core/facades/f$1;
.super Ljava/lang/Object;
.source "InterstitialPromoAd.java"

# interfaces
.implements Lcom/my/target/core/net/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/facades/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/facades/f;


# direct methods
.method constructor <init>(Lcom/my/target/core/facades/f;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-static {v0}, Lcom/my/target/core/facades/f;->a(Lcom/my/target/core/facades/f;)Lcom/my/target/core/facades/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-static {v0}, Lcom/my/target/core/facades/f;->a(Lcom/my/target/core/facades/f;)Lcom/my/target/core/facades/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-interface {v0, v1}, Lcom/my/target/core/facades/c$a;->onLoad(Lcom/my/target/core/facades/c;)V

    .line 146
    :cond_0
    return-void
.end method
