.class Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigChangeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/config/ConfigChangeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmcm/adsdk/config/ConfigChangeMonitor;


# direct methods
.method private constructor <init>(Lcom/cmcm/adsdk/config/ConfigChangeMonitor;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;->this$0:Lcom/cmcm/adsdk/config/ConfigChangeMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/adsdk/config/ConfigChangeMonitor;Lcom/cmcm/adsdk/config/ConfigChangeMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cmcm/adsdk/config/ConfigChangeMonitor;
    .param p2, "x1"    # Lcom/cmcm/adsdk/config/ConfigChangeMonitor$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/config/ConfigChangeMonitor$AlarmReceiver;-><init>(Lcom/cmcm/adsdk/config/ConfigChangeMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cmcm.adsdk.ConfigMonitor_Action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "ConfigChangeMonitor"

    const-string v1, "monitor requestConfig..."

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/cmcm/adsdk/config/RequestConfig;->getInstance()Lcom/cmcm/adsdk/config/RequestConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/config/RequestConfig;->requestConfig(Z)V

    .line 103
    :cond_0
    return-void
.end method
