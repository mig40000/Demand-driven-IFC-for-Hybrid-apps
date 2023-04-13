.class Lcom/cmcm/adsdk/banner/CMAdView$2;
.super Landroid/content/BroadcastReceiver;
.source "CMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/adsdk/banner/CMAdView;->registerScreenStateBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/banner/CMAdView;


# direct methods
.method constructor <init>(Lcom/cmcm/adsdk/banner/CMAdView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cmcm/adsdk/banner/CMAdView$2;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$2;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    iget-object v1, p0, Lcom/cmcm/adsdk/banner/CMAdView$2;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    invoke-static {v1}, Lcom/cmcm/adsdk/banner/CMAdView;->access$000(Lcom/cmcm/adsdk/banner/CMAdView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/banner/CMAdView;->access$100(Lcom/cmcm/adsdk/banner/CMAdView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$2;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/banner/CMAdView;->access$200(Lcom/cmcm/adsdk/banner/CMAdView;I)V

    goto :goto_0

    .line 158
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/cmcm/adsdk/banner/CMAdView$2;->this$0:Lcom/cmcm/adsdk/banner/CMAdView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/cmcm/adsdk/banner/CMAdView;->access$200(Lcom/cmcm/adsdk/banner/CMAdView;I)V

    goto :goto_0
.end method
