.class Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;
.super Ljava/lang/Object;
.source "MixBoxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->resultPostMainThread(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

.field final synthetic val$adList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->this$1:Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    iput-object p2, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->val$adList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->this$1:Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    iget-object v0, v0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->this$0:Lcom/cmcm/picks/mixad/MixBoxManager;

    invoke-static {v0, v2}, Lcom/cmcm/picks/mixad/MixBoxManager;->access$202(Lcom/cmcm/picks/mixad/MixBoxManager;Z)Z

    .line 121
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->this$1:Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    invoke-static {v0}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->access$300(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Lcom/cmcm/picks/mixad/IMixBoxListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->val$adList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->val$adList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->this$1:Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    invoke-static {v0}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->access$400(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->this$1:Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    invoke-static {v0}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->access$500(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->this$1:Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    invoke-static {v0}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->access$600(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->this$1:Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    invoke-static {v0}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->access$300(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Lcom/cmcm/picks/mixad/IMixBoxListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->val$adList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/cmcm/picks/mixad/IMixBoxListener;->onAdListLoaded(Ljava/util/List;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->this$1:Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    invoke-static {v0}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->access$300(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Lcom/cmcm/picks/mixad/IMixBoxListener;

    move-result-object v1

    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->val$adList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/picks/mixad/IAd;

    invoke-interface {v1, v0}, Lcom/cmcm/picks/mixad/IMixBoxListener;->onAdLoaded(Lcom/cmcm/picks/mixad/IAd;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask$1;->this$1:Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;

    invoke-static {v0}, Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;->access$300(Lcom/cmcm/picks/mixad/MixBoxManager$ParseTask;)Lcom/cmcm/picks/mixad/IMixBoxListener;

    move-result-object v0

    const-string v1, "no valid config"

    invoke-interface {v0, v1}, Lcom/cmcm/picks/mixad/IMixBoxListener;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
