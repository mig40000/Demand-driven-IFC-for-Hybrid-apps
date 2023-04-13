.class public Lcom/soomla/store/StoreForeground;
.super Ljava/lang/Object;
.source "StoreForeground.java"


# static fields
.field private static sInstance:Lcom/soomla/store/StoreForeground;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 17
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/AndroidBus;->register(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method

.method public static declared-synchronized get()Lcom/soomla/store/StoreForeground;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/soomla/store/StoreForeground;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/soomla/store/StoreForeground;->sInstance:Lcom/soomla/store/StoreForeground;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/soomla/store/StoreForeground;

    invoke-direct {v0}, Lcom/soomla/store/StoreForeground;-><init>()V

    sput-object v0, Lcom/soomla/store/StoreForeground;->sInstance:Lcom/soomla/store/StoreForeground;

    .line 25
    :cond_0
    sget-object v0, Lcom/soomla/store/StoreForeground;->sInstance:Lcom/soomla/store/StoreForeground;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onMarketPurchaseCancelledEvent(Lcom/soomla/store/events/MarketPurchaseCancelledEvent;)V
    .locals 2
    .param p1, "marketPurchaseCancelledEvent"    # Lcom/soomla/store/events/MarketPurchaseCancelledEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/soomla/SoomlaApp;->ForegroundService:Lcom/soomla/Foreground;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/soomla/SoomlaApp;->ForegroundService:Lcom/soomla/Foreground;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/soomla/Foreground;->OutsideOperation:Z

    .line 43
    :cond_0
    return-void
.end method

.method public onMarketPurchaseEvent(Lcom/soomla/store/events/MarketPurchaseEvent;)V
    .locals 2
    .param p1, "marketPurchaseEvent"    # Lcom/soomla/store/events/MarketPurchaseEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/soomla/SoomlaApp;->ForegroundService:Lcom/soomla/Foreground;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/soomla/SoomlaApp;->ForegroundService:Lcom/soomla/Foreground;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/soomla/Foreground;->OutsideOperation:Z

    .line 36
    :cond_0
    return-void
.end method

.method public onMarketPurchaseStartedEvent(Lcom/soomla/store/events/MarketPurchaseStartedEvent;)V
    .locals 2
    .param p1, "marketPurchaseStartedEvent"    # Lcom/soomla/store/events/MarketPurchaseStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/soomla/SoomlaApp;->ForegroundService:Lcom/soomla/Foreground;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/soomla/SoomlaApp;->ForegroundService:Lcom/soomla/Foreground;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/soomla/Foreground;->OutsideOperation:Z

    .line 51
    :cond_0
    return-void
.end method

.method public onUnexpectedStoreErrorEvent(Lcom/soomla/store/events/UnexpectedStoreErrorEvent;)V
    .locals 2
    .param p1, "unexpectedStoreErrorEvent"    # Lcom/soomla/store/events/UnexpectedStoreErrorEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/soomla/SoomlaApp;->ForegroundService:Lcom/soomla/Foreground;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/soomla/SoomlaApp;->ForegroundService:Lcom/soomla/Foreground;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/soomla/Foreground;->OutsideOperation:Z

    .line 58
    :cond_0
    return-void
.end method
