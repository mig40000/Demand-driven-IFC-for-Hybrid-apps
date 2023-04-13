.class public Lcom/chartboost/sdk/impl/as;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/at;Ljava/util/concurrent/PriorityBlockingQueue;)Lcom/chartboost/sdk/impl/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/at;",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/chartboost/sdk/impl/ac",
            "<*>;>;)",
            "Lcom/chartboost/sdk/impl/ar;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/chartboost/sdk/impl/ar;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/impl/ar;-><init>(Lcom/chartboost/sdk/impl/as;Ljava/util/concurrent/PriorityBlockingQueue;)V

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/impl/ac;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/ac",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ac;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method
