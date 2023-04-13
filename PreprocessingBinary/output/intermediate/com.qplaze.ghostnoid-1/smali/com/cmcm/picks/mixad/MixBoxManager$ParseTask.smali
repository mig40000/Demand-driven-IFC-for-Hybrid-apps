.class Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;
.super Ljava/lang/Object;
.source "MixBoxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/mixad/MixBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseTask"
.end annotation


# instance fields
.field private mAdCount:I

.field private mCallback:Lcom/cmcm/picks/mixad/IMixBoxListener;

.field private mContext:Landroid/content/Context;

.field private mDays:I

.field private mIsList:Z

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

.field final synthetic this$0:Lcom/cmcm/picks/mixad/MixBoxManager;


# direct methods
.method private constructor <init>(Lcom/cmcm/picks/mixad/MixBoxManager;Landroid/content/Context;ZILjava/lang/String;Ljava/util/List;Lcom/cmcm/picks/mixad/IMixBoxListener;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isList"    # Z
    .param p4, "count"    # I
    .param p5, "posId"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/cmcm/picks/mixad/IMixBoxListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cmcm/picks/mixad/IMixBoxListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p6, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->this$0:Lcom/cmcm/picks/mixad/MixBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p5, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mPosId:Ljava/lang/String;

    .line 97
    iput p4, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mAdCount:I

    .line 98
    iput-object p2, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mContext:Landroid/content/Context;

    .line 99
    iput-boolean p3, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mIsList:Z

    .line 100
    iput-object p6, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mListData:Ljava/util/List;

    .line 101
    iput-object p7, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mCallback:Lcom/cmcm/picks/mixad/IMixBoxListener;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/picks/mixad/MixBoxManager;Landroid/content/Context;ZILjava/lang/String;Ljava/util/List;Lcom/cmcm/picks/mixad/IMixBoxListener;Lcom/cmcm/picks/mixad/MixBoxManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cmcm/picks/mixad/MixBoxManager;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Z
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/util/List;
    .param p7, "x6"    # Lcom/cmcm/picks/mixad/IMixBoxListener;
    .param p8, "x7"    # Lcom/cmcm/picks/mixad/MixBoxManager$1;

    .prologue
    .line 86
    invoke-direct/range {p0 .. p7}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;-><init>(Lcom/cmcm/picks/mixad/MixBoxManager;Landroid/content/Context;ZILjava/lang/String;Ljava/util/List;Lcom/cmcm/picks/mixad/IMixBoxListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->setDays(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Lcom/cmcm/picks/mixad/IMixBoxListener;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mCallback:Lcom/cmcm/picks/mixad/IMixBoxListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mPosId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mIsList:Z

    return v0
.end method

.method private cleanInvalidAd(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .param p2, "adCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/mixad/MixBeans;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/mixad/IAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "listAd":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/picks/mixad/MixBeans;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    const/4 v0, 0x0

    .line 141
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/mixad/MixBeans;

    .line 143
    if-eqz v0, :cond_0

    .line 146
    iget-object v4, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->this$0:Lcom/cmcm/picks/mixad/MixBoxManager;

    invoke-static {v4}, Lcom/cmcm/picks/mixad/MixBoxManager;->access$700(Lcom/cmcm/picks/mixad/MixBoxManager;)Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;

    move-result-object v4

    iget v5, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mDays:I

    invoke-virtual {v0, v4, v5}, Lcom/cmcm/picks/mixad/MixBeans;->isValid(Lcom/cmcm/picks/mixad/MixBoxManager$POS_TYPE;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    new-instance v4, Lcom/cmcm/picks/mixad/IMixBoxAd;

    iget-object v5, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mPosId:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v0}, Lcom/cmcm/picks/mixad/IMixBoxAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/picks/mixad/MixBeans;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    if-ltz p2, :cond_2

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    if-lt v1, p2, :cond_2

    .line 157
    :cond_1
    return-object v2

    :cond_2
    move v0, v1

    move v1, v0

    .line 155
    goto :goto_0
.end method

.method private setDays(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mDays:I

    .line 106
    return-void
.end method


# virtual methods
.method protected resultPostMainThread(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/picks/mixad/IAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "adList":Ljava/util/List;, "Ljava/util/List<Lcom/cmcm/picks/mixad/IAd;>;"
    new-instance v0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;-><init>(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;Ljava/util/List;)V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mPosId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mListData:Ljava/util/List;

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/cmcm/picks/mixad/MixBoxAdHelper;->analyzeListStr(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mPosId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cmcm/picks/mixad/MixBoxAdHelper;->clearUselessPkg(Ljava/lang/String;Ljava/util/List;)V

    .line 112
    iget v1, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->mAdCount:I

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->cleanInvalidAd(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->resultPostMainThread(Ljava/util/List;)V

    .line 114
    return-void
.end method
