.class public Lcom/cmcm/picks/mixad/MixController;
.super Ljava/lang/Object;
.source "MixController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReddotListener:Lcom/cmcm/picks/mixad/IMixBoxReddotListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/cmcm/picks/mixad/MixController;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method getReddotListener()Lcom/cmcm/picks/mixad/IMixBoxReddotListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixController;->mReddotListener:Lcom/cmcm/picks/mixad/IMixBoxReddotListener;

    return-object v0
.end method

.method public setReddotListener(Lcom/cmcm/picks/mixad/IMixBoxReddotListener;)Lcom/cmcm/picks/mixad/MixController;
    .locals 0
    .param p1, "listener"    # Lcom/cmcm/picks/mixad/IMixBoxReddotListener;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cmcm/picks/mixad/MixController;->mReddotListener:Lcom/cmcm/picks/mixad/IMixBoxReddotListener;

    .line 17
    return-object p0
.end method
