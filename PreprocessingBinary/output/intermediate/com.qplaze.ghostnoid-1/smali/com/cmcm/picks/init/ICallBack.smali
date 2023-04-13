.class public interface abstract Lcom/cmcm/picks/init/ICallBack;
.super Ljava/lang/Object;
.source "ICallBack.java"


# virtual methods
.method public abstract onLoadError()V
.end method

.method public abstract onLoadSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/loader/Ad;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPreExecute()V
.end method
