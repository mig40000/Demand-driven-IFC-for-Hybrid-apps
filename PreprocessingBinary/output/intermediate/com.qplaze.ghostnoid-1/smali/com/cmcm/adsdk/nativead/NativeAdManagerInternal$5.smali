.class Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$5;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->asyncIssueNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$5;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$5;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    iget-boolean v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mIsFinished:Z

    if-nez v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$5;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    iget-boolean v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mOptimizeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$5;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    iget-boolean v0, v0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->mHighPriorityLoaded:Z

    if-nez v0, :cond_2

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal$5;->this$0:Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;->access$200(Lcom/cmcm/adsdk/nativead/NativeAdManagerInternal;)Z

    .line 469
    :cond_1
    :goto_0
    return-void

    .line 466
    :cond_2
    const-string v0, "CMCMADSDK"

    const-string v1, "optimized skip issueNext"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
