.class Lcom/chartboost/sdk/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/chartboost/sdk/impl/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    .line 21
    iput-object p2, p0, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/chartboost/sdk/impl/a;->d:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/chartboost/sdk/impl/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/a;)I
    .locals 2

    .prologue
    .line 31
    iget v0, p1, Lcom/chartboost/sdk/impl/a;->a:I

    iget v1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5
    check-cast p1, Lcom/chartboost/sdk/impl/a;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/a;->a(Lcom/chartboost/sdk/impl/a;)I

    move-result v0

    return v0
.end method
