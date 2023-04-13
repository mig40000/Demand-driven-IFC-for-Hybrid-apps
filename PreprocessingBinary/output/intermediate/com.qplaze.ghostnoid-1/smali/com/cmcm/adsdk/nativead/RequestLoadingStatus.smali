.class Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;
.super Ljava/lang/Object;
.source "RequestLoadingStatus.java"


# instance fields
.field private final mLoadingStatus:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mSize:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mSize:I

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mLoadingStatus:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getWaitingBeansNumber()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mLoadingStatus:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mSize:I

    if-eq v1, v2, :cond_0

    .line 50
    :goto_0
    return v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mLoadingStatus:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 48
    goto :goto_1

    :cond_1
    move v0, v1

    .line 50
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public isBeanLoading(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 23
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mLoadingStatus:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mLoadingStatus:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetLoadingStatus(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 14
    iput p1, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mSize:I

    .line 15
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mLoadingStatus:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    move v0, v1

    .line 16
    :goto_0
    iget v2, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mSize:I

    if-ge v0, v2, :cond_0

    .line 17
    iget-object v2, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mLoadingStatus:Ljava/util/Vector;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setBeanLoading(IZ)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # Z

    .prologue
    .line 31
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mLoadingStatus:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/RequestLoadingStatus;->mLoadingStatus:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
