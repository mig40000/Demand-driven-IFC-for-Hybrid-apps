.class Lcom/amazon/device/ads/AdListenerExecutor;
.super Ljava/lang/Object;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adListener:Lcom/amazon/device/ads/AdListener;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private onAdEventCommand:Lcom/amazon/device/ads/OnAdEventCommand;

.field private onAdExpiredCommand:Lcom/amazon/device/ads/OnAdExpiredCommand;

.field private onAdReceivedCommand:Lcom/amazon/device/ads/OnAdReceivedCommand;

.field private onAdResizedCommand:Lcom/amazon/device/ads/OnAdResizedCommand;

.field private onSpecialUrlClickedCommand:Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdListenerExecutor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/device/ads/AdListenerExecutor;-><init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->adListener:Lcom/amazon/device/ads/AdListener;

    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutor;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    sget-object v0, Lcom/amazon/device/ads/AdListenerExecutor;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method protected execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method getAdListener()Lcom/amazon/device/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->adListener:Lcom/amazon/device/ads/AdListener;

    return-object v0
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutor$4;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutor$5;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdEventCommand:Lcom/amazon/device/ads/OnAdEventCommand;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad listener called - Ad Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdEventCommand:Lcom/amazon/device/ads/OnAdEventCommand;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/OnAdEventCommand;->onAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    goto :goto_0
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutor$3;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdExpiredCommand:Lcom/amazon/device/ads/OnAdExpiredCommand;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Ad Expired."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdExpiredCommand:Lcom/amazon/device/ads/OnAdExpiredCommand;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/OnAdExpiredCommand;->onAdExpired(Lcom/amazon/device/ads/Ad;)V

    goto :goto_0
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 1

    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor$2;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 1

    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor$1;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdData;)Lcom/amazon/device/ads/ActionCode;
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdReceivedCommand:Lcom/amazon/device/ads/OnAdReceivedCommand;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Ad Received."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/device/ads/ActionCode;->DISPLAY:Lcom/amazon/device/ads/ActionCode;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdReceivedCommand:Lcom/amazon/device/ads/OnAdReceivedCommand;

    invoke-interface {v0, p1, p2}, Lcom/amazon/device/ads/OnAdReceivedCommand;->onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdData;)Lcom/amazon/device/ads/ActionCode;

    move-result-object v0

    goto :goto_0
.end method

.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdResizedCommand:Lcom/amazon/device/ads/OnAdResizedCommand;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Ad Resized."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdResizedCommand:Lcom/amazon/device/ads/OnAdResizedCommand;

    invoke-interface {v0, p1, p2}, Lcom/amazon/device/ads/OnAdResizedCommand;->onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onSpecialUrlClickedCommand:Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Special Url Clicked."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onSpecialUrlClickedCommand:Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;

    invoke-interface {v0, p1, p2}, Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;->onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnAdEventCommand(Lcom/amazon/device/ads/OnAdEventCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdEventCommand:Lcom/amazon/device/ads/OnAdEventCommand;

    return-void
.end method

.method public setOnAdExpiredCommand(Lcom/amazon/device/ads/OnAdExpiredCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdExpiredCommand:Lcom/amazon/device/ads/OnAdExpiredCommand;

    return-void
.end method

.method public setOnAdReceivedCommand(Lcom/amazon/device/ads/OnAdReceivedCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdReceivedCommand:Lcom/amazon/device/ads/OnAdReceivedCommand;

    return-void
.end method

.method public setOnAdResizedCommand(Lcom/amazon/device/ads/OnAdResizedCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdResizedCommand:Lcom/amazon/device/ads/OnAdResizedCommand;

    return-void
.end method

.method public setOnSpecialUrlClickedCommand(Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onSpecialUrlClickedCommand:Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;

    return-void
.end method
