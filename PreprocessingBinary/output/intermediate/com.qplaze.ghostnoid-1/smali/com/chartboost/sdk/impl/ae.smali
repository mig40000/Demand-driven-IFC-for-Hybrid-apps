.class public Lcom/chartboost/sdk/impl/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Exception;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ae;->a:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ae;->b:Ljava/lang/Exception;

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/Exception;)Lcom/chartboost/sdk/impl/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/chartboost/sdk/impl/ae",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/chartboost/sdk/impl/ae;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/chartboost/sdk/impl/ae;-><init>(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/chartboost/sdk/impl/ae",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/chartboost/sdk/impl/ae;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/ae;-><init>(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static b()Lcom/chartboost/sdk/impl/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/chartboost/sdk/impl/ae",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 16
    new-instance v0, Lcom/chartboost/sdk/impl/ae;

    invoke-direct {v0, v1, v1}, Lcom/chartboost/sdk/impl/ae;-><init>(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ae;->b:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
