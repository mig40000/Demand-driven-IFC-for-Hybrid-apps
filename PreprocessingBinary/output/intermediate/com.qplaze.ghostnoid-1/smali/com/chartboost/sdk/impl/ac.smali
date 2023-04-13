.class public abstract Lcom/chartboost/sdk/impl/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ac$b;,
        Lcom/chartboost/sdk/impl/ac$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/chartboost/sdk/impl/ac",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/chartboost/sdk/impl/ac$a;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/chartboost/sdk/impl/ab;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Ljava/io/File;

.field public g:J

.field public h:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ac$a;Ljava/lang/String;Lcom/chartboost/sdk/impl/ab;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ac;->b:Lcom/chartboost/sdk/impl/ac$a;

    .line 38
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ac;->c:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ac;->d:Lcom/chartboost/sdk/impl/ab;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ac;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ac;->f:Ljava/io/File;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/ac;->g:J

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/ac;->h:I

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ac;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ac",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ac;->b()Lcom/chartboost/sdk/impl/ac$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ac;->b()Lcom/chartboost/sdk/impl/ac$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ac$b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public abstract a(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/impl/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ah;",
            ")",
            "Lcom/chartboost/sdk/impl/ae",
            "<TT;>;"
        }
    .end annotation
.end method

.method public a()Lcom/chartboost/sdk/impl/aq;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    new-instance v0, Lcom/chartboost/sdk/impl/aq;

    invoke-direct {v0, v1, v1, v1}, Lcom/chartboost/sdk/impl/aq;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/impl/ad;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ac;->d:Lcom/chartboost/sdk/impl/ab;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ac;->d:Lcom/chartboost/sdk/impl/ab;

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/ad;)V

    .line 70
    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b()Lcom/chartboost/sdk/impl/ac$b;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/chartboost/sdk/impl/ac$b;->b:Lcom/chartboost/sdk/impl/ac$b;

    return-object v0
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ac;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    .local p0, "this":Lcom/chartboost/sdk/impl/ac;, "Lcom/chartboost/sdk/impl/ac<TT;>;"
    check-cast p1, Lcom/chartboost/sdk/impl/ac;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ac;->a(Lcom/chartboost/sdk/impl/ac;)I

    move-result v0

    return v0
.end method
