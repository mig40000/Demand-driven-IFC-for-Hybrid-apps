.class public Lcom/cmcm/utils/ReceiverUtils;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverUtils.java"


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/cmcm/utils/ReceiverUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmcm/utils/ReceiverUtils;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/cmcm/utils/ReceiverUtils;->b:Lcom/cmcm/utils/ReceiverUtils;

    if-nez v1, :cond_1

    .line 54
    new-instance v1, Lcom/cmcm/utils/ReceiverUtils;

    invoke-direct {v1}, Lcom/cmcm/utils/ReceiverUtils;-><init>()V

    sput-object v1, Lcom/cmcm/utils/ReceiverUtils;->b:Lcom/cmcm/utils/ReceiverUtils;

    .line 56
    :cond_1
    sget-object v1, Lcom/cmcm/utils/ReceiverUtils;->b:Lcom/cmcm/utils/ReceiverUtils;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_0
    invoke-static {}, Lcom/cmcm/utils/j;->a()Lcom/cmcm/utils/j;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/cmcm/utils/j;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 41
    :cond_0
    :goto_1
    return-void

    .line 26
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 28
    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_2
    invoke-static {}, Lcom/cmcm/utils/j;->a()Lcom/cmcm/utils/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcm/utils/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 32
    :cond_4
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    sget-object v0, Lcom/cmcm/utils/ReceiverUtils;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    .line 34
    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->onScreenOn()V

    goto :goto_3

    .line 36
    :cond_5
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/cmcm/utils/ReceiverUtils;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;

    .line 38
    invoke-virtual {v0}, Lcom/cmcm/adsdk/nativead/PicksViewCheckHelper;->onScreenOff()V

    goto :goto_4
.end method
