.class Lcom/cmcm/picks/mixad/MixBeans$2;
.super Ljava/lang/Thread;
.source "MixBeans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/picks/mixad/MixBeans;->savePkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/picks/mixad/MixBeans;

.field final synthetic val$adTitle:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$posId:Ljava/lang/String;

.field final synthetic val$showTime:J


# direct methods
.method constructor <init>(Lcom/cmcm/picks/mixad/MixBeans;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->this$0:Lcom/cmcm/picks/mixad/MixBeans;

    iput-object p3, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->val$pkg:Ljava/lang/String;

    iput-wide p4, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->val$showTime:J

    iput-object p6, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->val$posId:Ljava/lang/String;

    iput-object p7, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->val$adTitle:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 385
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 386
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->val$pkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->val$showTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->val$posId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->val$adTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/cmcm/picks/mixad/MixBeans$2;->val$showTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/picks/mixad/MixSPUtil;->putLong(Ljava/lang/String;Ljava/lang/String;J)V

    .line 389
    :cond_0
    return-void
.end method
