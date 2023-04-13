.class public Lcom/cmcm/picks/mixad/MixBoxManager;
.super Ljava/lang/Object;
.source "MixBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/picks/mixad/MixBoxManager$1;,
        Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;,
        Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;
    }
.end annotation


# static fields
.field private static final MIXBOX_DEFAULT_LOAD_NUM:I = -0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataLoading:Z

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPosId:Ljava/lang/String;

.field private mPosType:Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posId"    # Ljava/lang/String;
    .param p4, "posType"    # Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mDataLoading:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mPosType:Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;

    .line 37
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context or posId can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mPosId:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mListData:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mPosType:Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;

    .line 44
    invoke-static {p1}, Lcom/cmcm/picks/mixad/MixSPUtil;->init(Landroid/content/Context;)Z

    .line 45
    return-void
.end method

.method static synthetic access$202(Lcom/cmcm/picks/mixad/MixBoxManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/picks/mixad/MixBoxManager;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mDataLoading:Z

    return p1
.end method

.method static synthetic access$700(Lcom/cmcm/picks/mixad/MixBoxManager;)Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/picks/mixad/MixBoxManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mPosType:Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;

    return-object v0
.end method

.method private getValidBean(ZIILjava/util/List;Lcom/cmcm/picks/mixad/IMixBoxListener;)V
    .locals 9
    .param p1, "isList"    # Z
    .param p2, "nAdCount"    # I
    .param p3, "days"    # I
    .param p5, "callback"    # Lcom/cmcm/picks/mixad/IMixBoxListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cmcm/picks/mixad/IMixBoxListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p4, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mDataLoading:Z

    .line 81
    new-instance v0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mPosId:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;-><init>(Lcom/cmcm/picks/mixad/MixBoxManager;Landroid/content/Context;ZILjava/lang/String;Ljava/util/List;Lcom/cmcm/picks/mixad/IMixBoxListener;Lcom/cmcm/picks/mixad/MixBoxManager$1;)V

    .line 82
    invoke-static {v0, p3}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->access$100(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;I)V

    .line 83
    sget-object v1, Lcom/cmcm/adsdk/utils/BackgroundHandler;->sBackgroudHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method private loadAd(ZIILcom/cmcm/picks/mixad/IMixBoxListener;)V
    .locals 6
    .param p1, "isList"    # Z
    .param p2, "nAdCount"    # I
    .param p3, "days"    # I
    .param p4, "callback"    # Lcom/cmcm/picks/mixad/IMixBoxListener;

    .prologue
    .line 64
    if-nez p4, :cond_0

    .line 77
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v4, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mListData:Ljava/util/List;

    .line 68
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    :cond_1
    const-string v0, "no config error"

    invoke-interface {p4, v0}, Lcom/cmcm/picks/mixad/IMixBoxListener;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-boolean v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mDataLoading:Z

    if-eqz v0, :cond_3

    .line 73
    const-string v0, "request_too_frequently"

    invoke-interface {p4, v0}, Lcom/cmcm/picks/mixad/IMixBoxListener;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/cmcm/picks/mixad/MixBoxManager;->getValidBean(ZIILjava/util/List;Lcom/cmcm/picks/mixad/IMixBoxListener;)V

    goto :goto_0
.end method


# virtual methods
.method public loadAd(Lcom/cmcm/picks/mixad/IMixBoxListener;)V
    .locals 2
    .param p1, "callback"    # Lcom/cmcm/picks/mixad/IMixBoxListener;

    .prologue
    const/4 v1, 0x0

    .line 48
    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/cmcm/picks/mixad/MixBoxManager;->loadAd(ZIILcom/cmcm/picks/mixad/IMixBoxListener;)V

    .line 49
    return-void
.end method

.method public loadAdList(IILcom/cmcm/picks/mixad/IMixBoxListener;)V
    .locals 1
    .param p1, "nAdCount"    # I
    .param p2, "days"    # I
    .param p3, "callback"    # Lcom/cmcm/picks/mixad/IMixBoxListener;

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/cmcm/picks/mixad/MixBoxManager;->loadAd(ZIILcom/cmcm/picks/mixad/IMixBoxListener;)V

    .line 57
    return-void
.end method

.method public loadAdList(ILcom/cmcm/picks/mixad/IMixBoxListener;)V
    .locals 2
    .param p1, "nAdCount"    # I
    .param p2, "callback"    # Lcom/cmcm/picks/mixad/IMixBoxListener;

    .prologue
    .line 52
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/cmcm/picks/mixad/MixBoxManager;->loadAd(ZIILcom/cmcm/picks/mixad/IMixBoxListener;)V

    .line 53
    return-void
.end method

.method public setListData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cmcm/picks/mixad/MixBoxManager;->mListData:Ljava/util/List;

    .line 61
    return-void
.end method
