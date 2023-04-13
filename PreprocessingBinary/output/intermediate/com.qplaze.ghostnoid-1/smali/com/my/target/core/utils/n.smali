.class public final Lcom/my/target/core/utils/n;
.super Ljava/lang/Object;
.source "VideoUtils.java"


# direct methods
.method public static a(Ljava/util/List;I)Lcom/my/target/nativeads/models/VideoData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/VideoData;",
            ">;I)",
            "Lcom/my/target/nativeads/models/VideoData;"
        }
    .end annotation

    .prologue
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/VideoData;

    .line 17
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/VideoData;->getHeight()I

    move-result v2

    .line 18
    if-eqz v3, :cond_2

    if-gt v2, p1, :cond_0

    if-gt v1, p1, :cond_2

    :cond_0
    if-gt v2, p1, :cond_1

    if-gt v2, v1, :cond_2

    :cond_1
    if-le v2, p1, :cond_4

    if-ge v2, v1, :cond_4

    :cond_2
    move-object v1, v0

    move v0, v2

    :goto_1
    move-object v3, v1

    move v1, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Accepted videoData quality = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 29
    return-object v3

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method
