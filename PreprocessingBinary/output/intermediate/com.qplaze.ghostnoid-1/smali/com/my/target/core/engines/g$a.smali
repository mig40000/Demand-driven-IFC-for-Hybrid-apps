.class final Lcom/my/target/core/engines/g$a;
.super Ljava/lang/Object;
.source "StandardAdEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/my/target/core/engines/g$a;->a:Z

    .line 524
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/my/target/core/engines/g$a;->a:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/my/target/core/engines/g$a;->b:Z

    .line 534
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/my/target/core/engines/g$a;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/my/target/core/engines/g$a;->c:Z

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/g$a;->c:Z

    .line 544
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/g$a;->c:Z

    iput-boolean v0, p0, Lcom/my/target/core/engines/g$a;->b:Z

    iput-boolean v0, p0, Lcom/my/target/core/engines/g$a;->a:Z

    .line 559
    return-void
.end method
