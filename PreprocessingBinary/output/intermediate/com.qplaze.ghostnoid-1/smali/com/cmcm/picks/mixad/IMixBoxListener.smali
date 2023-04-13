.class public interface abstract Lcom/cmcm/picks/mixad/IMixBoxListener;
.super Ljava/lang/Object;
.source "IMixBoxListener.java"


# virtual methods
.method public abstract onAdListLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/mixad/IAd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoaded(Lcom/cmcm/picks/mixad/IAd;)V
.end method

.method public abstract onFailed(Ljava/lang/String;)V
.end method
