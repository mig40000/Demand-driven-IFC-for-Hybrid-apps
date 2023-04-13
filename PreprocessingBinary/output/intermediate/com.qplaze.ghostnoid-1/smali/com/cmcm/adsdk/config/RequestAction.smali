.class public Lcom/cmcm/adsdk/config/RequestAction;
.super Ljava/lang/Object;
.source "RequestAction.java"

# interfaces
.implements Lcom/cmcm/adsdk/config/RequestTask$ResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/config/RequestAction$RequestListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestAction"


# instance fields
.field private mListener:Lcom/cmcm/adsdk/config/RequestAction$RequestListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestAction;->mListener:Lcom/cmcm/adsdk/config/RequestAction$RequestListener;

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/adsdk/config/RequestAction;->mListener:Lcom/cmcm/adsdk/config/RequestAction$RequestListener;

    .line 27
    :cond_0
    return-void
.end method

.method public requestConfig(Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestAction$RequestListener;)V
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/cmcm/adsdk/config/RequestAction$RequestListener;

    .prologue
    .line 11
    if-nez p3, :cond_0

    .line 16
    :goto_0
    return-void

    .line 14
    :cond_0
    iput-object p3, p0, Lcom/cmcm/adsdk/config/RequestAction;->mListener:Lcom/cmcm/adsdk/config/RequestAction$RequestListener;

    .line 15
    new-instance v0, Lcom/cmcm/adsdk/config/RequestTask;

    invoke-direct {v0, p1, p2, p0}, Lcom/cmcm/adsdk/config/RequestTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/adsdk/config/RequestTask$ResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/config/RequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public result([B)V
    .locals 2
    .param p1, "result"    # [B

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestAction;->mListener:Lcom/cmcm/adsdk/config/RequestAction$RequestListener;

    if-eqz v0, :cond_0

    .line 32
    if-eqz p1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestAction;->mListener:Lcom/cmcm/adsdk/config/RequestAction$RequestListener;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/config/RequestAction$RequestListener;->onSuccess(Ljava/lang/String;)V

    .line 34
    const-string v0, "RequestAction"

    const-string v1, "onSuccess..."

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestAction;->mListener:Lcom/cmcm/adsdk/config/RequestAction$RequestListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cmcm/adsdk/config/RequestAction$RequestListener;->onFailed(Ljava/lang/String;)V

    .line 37
    const-string v0, "RequestAction"

    const-string v1, "failed..."

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
