.class Lcom/chartboost/sdk/impl/c;
.super Lcom/chartboost/sdk/impl/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/ac",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/a;

.field private final i:Lcom/chartboost/sdk/impl/d;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/impl/a;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/chartboost/sdk/impl/ac$a;->a:Lcom/chartboost/sdk/impl/ac$a;

    iget-object v1, p2, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/chartboost/sdk/impl/ac;-><init>(Lcom/chartboost/sdk/impl/ac$a;Ljava/lang/String;Lcom/chartboost/sdk/impl/ab;Ljava/io/File;)V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/c;->h:I

    .line 21
    iput-object p1, p0, Lcom/chartboost/sdk/impl/c;->i:Lcom/chartboost/sdk/impl/d;

    .line 22
    iput-object p2, p0, Lcom/chartboost/sdk/impl/c;->a:Lcom/chartboost/sdk/impl/a;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/impl/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ah;",
            ")",
            "Lcom/chartboost/sdk/impl/ae",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->b()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/chartboost/sdk/impl/aq;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/chartboost/sdk/impl/aq;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->i:Lcom/chartboost/sdk/impl/d;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/d;->a:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ak;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/chartboost/sdk/impl/aq;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/impl/ad;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->i:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v0, p0, p1}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/ad;)V

    .line 42
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/c;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->i:Lcom/chartboost/sdk/impl/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/ad;)V

    .line 38
    return-void
.end method
