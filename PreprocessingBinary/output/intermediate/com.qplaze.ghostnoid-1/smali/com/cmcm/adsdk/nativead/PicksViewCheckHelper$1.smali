.class Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper$1;
.super Ljava/lang/Object;
.source "PicksViewCheckHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper$1;->this$0:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper$1;->this$0:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->access$000(Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper$1;->this$0:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    invoke-static {v0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->access$100(Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;)V

    .line 123
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper$1;->this$0:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper$1;->this$0:Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    iget-object v0, v0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :cond_0
    return-void
.end method
