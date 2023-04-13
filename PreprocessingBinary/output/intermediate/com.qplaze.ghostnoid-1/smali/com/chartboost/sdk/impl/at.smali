.class public Lcom/chartboost/sdk/impl/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/af;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/as;

.field private final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/chartboost/sdk/impl/ac",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/chartboost/sdk/impl/ar;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/as;I)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at;->a:Lcom/chartboost/sdk/impl/as;

    .line 28
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/at;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/at;->c:Ljava/util/Set;

    .line 30
    iput p2, p0, Lcom/chartboost/sdk/impl/at;->d:I

    .line 32
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/at;->a()V

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/chartboost/sdk/impl/at;->d:I

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/chartboost/sdk/impl/at;->a:Lcom/chartboost/sdk/impl/as;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/at;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p0, v2}, Lcom/chartboost/sdk/impl/as;->a(Lcom/chartboost/sdk/impl/at;Ljava/util/concurrent/PriorityBlockingQueue;)Lcom/chartboost/sdk/impl/ar;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/chartboost/sdk/impl/at;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ar;->start()V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/ac;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/chartboost/sdk/impl/ac",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/at;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 66
    new-instance v0, Lcom/chartboost/sdk/impl/at$1;

    sget-object v2, Lcom/chartboost/sdk/impl/ac$a;->b:Lcom/chartboost/sdk/impl/ac$a;

    move-object v1, p0

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/at$1;-><init>(Lcom/chartboost/sdk/impl/at;Lcom/chartboost/sdk/impl/ac$a;Ljava/lang/String;Lcom/chartboost/sdk/impl/ab;Ljava/io/File;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/at;->a(Lcom/chartboost/sdk/impl/ac;)V

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/impl/ag;Lcom/chartboost/sdk/impl/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/ag",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/chartboost/sdk/impl/ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/chartboost/sdk/impl/ap;

    invoke-direct {v0, p1, p2, p3}, Lcom/chartboost/sdk/impl/ap;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ag;Lcom/chartboost/sdk/impl/ab;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/at;->a(Lcom/chartboost/sdk/impl/ac;)V

    .line 62
    return-void
.end method
