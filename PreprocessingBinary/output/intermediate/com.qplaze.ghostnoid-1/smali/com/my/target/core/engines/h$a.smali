.class final Lcom/my/target/core/engines/h$a;
.super Ljava/lang/Object;
.source "StandardAdNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/h;
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
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/my/target/core/engines/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/my/target/core/engines/h$a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/my/target/core/engines/h$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/my/target/core/engines/h$a;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/my/target/core/engines/h$a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/my/target/core/engines/h$a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/my/target/core/engines/h$a;->a:Z

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->a:Z

    .line 667
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->c:Z

    .line 672
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->c:Z

    .line 677
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->b:Z

    .line 682
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 686
    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->b:Z

    .line 687
    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->c:Z

    .line 688
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 692
    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->b:Z

    .line 693
    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->c:Z

    .line 694
    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->a:Z

    .line 695
    return-void
.end method
