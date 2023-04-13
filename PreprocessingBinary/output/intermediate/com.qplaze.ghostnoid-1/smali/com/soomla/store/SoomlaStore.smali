.class public Lcom/soomla/store/SoomlaStore;
.super Ljava/lang/Object;
.source "SoomlaStore.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "SOOMLA SoomlaStore"

.field private static sInstance:Lcom/soomla/store/SoomlaStore;


# instance fields
.field private mInAppBillingService:Lcom/soomla/store/billing/IIabService;

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/soomla/store/SoomlaStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/soomla/store/SoomlaStore;->$assertionsDisabled:Z

    .line 605
    const/4 v0, 0x0

    sput-object v0, Lcom/soomla/store/SoomlaStore;->sInstance:Lcom/soomla/store/SoomlaStore;

    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/soomla/store/SoomlaStore;->mInitialized:Z

    .line 623
    invoke-static {}, Lcom/soomla/store/StoreForeground;->get()Lcom/soomla/store/StoreForeground;

    .line 624
    return-void
.end method

.method static synthetic access$000(Lcom/soomla/store/SoomlaStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/SoomlaStore;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/soomla/store/SoomlaStore;->notifyIabServiceStarted()V

    return-void
.end method

.method static synthetic access$100(Lcom/soomla/store/SoomlaStore;Lcom/soomla/store/billing/IabPurchase;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/SoomlaStore;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabPurchase;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/soomla/store/SoomlaStore;->handleSuccessfulPurchase(Lcom/soomla/store/billing/IabPurchase;)V

    return-void
.end method

.method static synthetic access$200(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/SoomlaStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/soomla/store/SoomlaStore;->handleErrorResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/soomla/store/SoomlaStore;)Lcom/soomla/store/billing/IIabService;
    .locals 1
    .param p0, "x0"    # Lcom/soomla/store/SoomlaStore;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/SoomlaStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/soomla/store/SoomlaStore;->reportIabInitFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/soomla/store/SoomlaStore;Lcom/soomla/store/billing/IabPurchase;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/SoomlaStore;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabPurchase;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/soomla/store/SoomlaStore;->handleCancelledPurchase(Lcom/soomla/store/billing/IabPurchase;)V

    return-void
.end method

.method static synthetic access$600(Lcom/soomla/store/SoomlaStore;Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/domain/PurchasableVirtualItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/SoomlaStore;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabPurchase;
    .param p2, "x2"    # Lcom/soomla/store/domain/PurchasableVirtualItem;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/soomla/store/SoomlaStore;->consumeIfConsumable(Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/domain/PurchasableVirtualItem;)V

    return-void
.end method

.method private consumeIfConsumable(Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/domain/PurchasableVirtualItem;)V
    .locals 4
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;
    .param p2, "pvi"    # Lcom/soomla/store/domain/PurchasableVirtualItem;

    .prologue
    .line 557
    :try_start_0
    invoke-static {p2}, Lcom/soomla/store/data/StoreInfo;->isItemNonConsumable(Lcom/soomla/store/domain/PurchasableVirtualItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    invoke-interface {v1, p1}, Lcom/soomla/store/billing/IIabService;->consume(Lcom/soomla/store/billing/IabPurchase;)V
    :try_end_0
    .catch Lcom/soomla/store/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Lcom/soomla/store/billing/IabException;
    const-string v1, "SOOMLA SoomlaStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while consuming: itemId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   productId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;

    invoke-virtual {v0}, Lcom/soomla/store/billing/IabException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/soomla/store/SoomlaStore;
    .locals 1

    .prologue
    .line 613
    sget-object v0, Lcom/soomla/store/SoomlaStore;->sInstance:Lcom/soomla/store/SoomlaStore;

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Lcom/soomla/store/SoomlaStore;

    invoke-direct {v0}, Lcom/soomla/store/SoomlaStore;-><init>()V

    sput-object v0, Lcom/soomla/store/SoomlaStore;->sInstance:Lcom/soomla/store/SoomlaStore;

    .line 616
    :cond_0
    sget-object v0, Lcom/soomla/store/SoomlaStore;->sInstance:Lcom/soomla/store/SoomlaStore;

    return-object v0
.end method

.method private handleCancelledPurchase(Lcom/soomla/store/billing/IabPurchase;)V
    .locals 6
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;

    .prologue
    .line 538
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "sku":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/soomla/store/data/StoreInfo;->getPurchasableItem(Ljava/lang/String;)Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v2

    .line 541
    .local v2, "v":Lcom/soomla/store/domain/PurchasableVirtualItem;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v3

    new-instance v4, Lcom/soomla/store/events/MarketPurchaseCancelledEvent;

    invoke-direct {v4, v2}, Lcom/soomla/store/events/MarketPurchaseCancelledEvent;-><init>(Lcom/soomla/store/domain/PurchasableVirtualItem;)V

    invoke-virtual {v3, v4}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v2    # "v":Lcom/soomla/store/domain/PurchasableVirtualItem;
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v3, "SOOMLA SoomlaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(purchaseActionResultCancelled) ERROR : Couldn\'t find the VirtualCurrencyPack OR MarketItem  with productId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". It\'s unexpected so an unexpected error is being emitted."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v3

    new-instance v4, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;

    invoke-direct {v4}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleErrorResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;

    invoke-direct {v1, p1}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 601
    const-string v0, "SOOMLA SoomlaStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: SoomlaStore failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private handleSuccessfulPurchase(Lcom/soomla/store/billing/IabPurchase;)V
    .locals 9
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;

    .prologue
    const/4 v8, 0x1

    .line 477
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getSku()Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "developerPayload":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "orderId":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/soomla/store/data/StoreInfo;->getPurchasableItem(Ljava/lang/String;)Lcom/soomla/store/domain/PurchasableVirtualItem;
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 495
    .local v3, "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getPurchaseState()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 528
    .end local v3    # "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    :cond_0
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v6, "SOOMLA SoomlaStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(handleSuccessfulPurchase - purchase or query-inventory) ERROR : Couldn\'t find the  VirtualCurrencyPack OR MarketItem  with productId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". It\'s unexpected so an unexpected error is being emitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v6

    new-instance v7, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;

    const-string v8, "Couldn\'t find the sku of a product after purchase or query-inventory."

    invoke-direct {v7, v8}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .restart local v3    # "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    :pswitch_0
    const-string v6, "SOOMLA SoomlaStore"

    const-string v7, "IabPurchase successful."

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {v3}, Lcom/soomla/store/data/StoreInfo;->isItemNonConsumable(Lcom/soomla/store/domain/PurchasableVirtualItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 504
    invoke-static {v3}, Lcom/soomla/store/data/StorageManager;->getVirtualItemStorage(Lcom/soomla/store/domain/VirtualItem;)Lcom/soomla/store/data/VirtualItemStorage;

    move-result-object v6

    invoke-virtual {v3}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/soomla/store/data/VirtualItemStorage;->getBalance(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 509
    :cond_1
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v6

    new-instance v7, Lcom/soomla/store/events/MarketPurchaseEvent;

    invoke-direct {v7, v3, v0, v5, v2}, Lcom/soomla/store/events/MarketPurchaseEvent;-><init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 511
    invoke-virtual {v3, v8}, Lcom/soomla/store/domain/PurchasableVirtualItem;->give(I)I

    .line 512
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v6

    new-instance v7, Lcom/soomla/store/events/ItemPurchasedEvent;

    invoke-virtual {v3}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/soomla/store/events/ItemPurchasedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 514
    invoke-direct {p0, p1, v3}, Lcom/soomla/store/SoomlaStore;->consumeIfConsumable(Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/domain/PurchasableVirtualItem;)V

    goto :goto_0

    .line 521
    :pswitch_1
    const-string v6, "SOOMLA SoomlaStore"

    const-string v7, "IabPurchase refunded."

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v3, v8}, Lcom/soomla/store/domain/PurchasableVirtualItem;->take(I)I

    .line 525
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v6

    new-instance v7, Lcom/soomla/store/events/MarketRefundEvent;

    invoke-direct {v7, v3, v0}, Lcom/soomla/store/events/MarketRefundEvent;-><init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private notifyIabServiceStarted()V
    .locals 2

    .prologue
    .line 452
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/BillingSupportedEvent;

    invoke-direct {v1}, Lcom/soomla/store/events/BillingSupportedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 453
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/IabServiceStartedEvent;

    invoke-direct {v1}, Lcom/soomla/store/events/IabServiceStartedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 454
    return-void
.end method

.method private reportIabInitFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no connectivity with the billing service. error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "SOOMLA SoomlaStore"

    invoke-static {v1, v0}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/store/events/BillingNotSupportedEvent;

    invoke-direct {v2}, Lcom/soomla/store/events/BillingNotSupportedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method private restoreTransactions(Z)V
    .locals 2
    .param p1, "followedByRefreshItemsDetails"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    if-nez v0, :cond_0

    .line 162
    const-string v0, "SOOMLA SoomlaStore"

    const-string v1, "Billing service is not loaded. Can\'t invoke restoreTransactions."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    new-instance v1, Lcom/soomla/store/SoomlaStore$3;

    invoke-direct {v1, p0, p1}, Lcom/soomla/store/SoomlaStore$3;-><init>(Lcom/soomla/store/SoomlaStore;Z)V

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IIabService;->initializeBillingService(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    goto :goto_0
.end method

.method private tryFetchIabService()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 575
    :try_start_0
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 577
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    sget-boolean v4, Lcom/soomla/store/SoomlaStore;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 580
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SOOMLA SoomlaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load billing service from AndroidManifest.xml, NullPointer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x0

    .line 591
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 578
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "billing.service"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 584
    .local v3, "iabServiceClassName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 586
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    const-string v4, "SOOMLA SoomlaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.soomla.store.billing."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 588
    :catch_1
    move-exception v2

    .line 589
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "SOOMLA SoomlaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed finding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public buyWithMarket(Lcom/soomla/store/domain/MarketItem;Ljava/lang/String;)V
    .locals 5
    .param p1, "marketItem"    # Lcom/soomla/store/domain/MarketItem;
    .param p2, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v3, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    if-nez v3, :cond_0

    .line 320
    const-string v3, "SOOMLA SoomlaStore"

    const-string v4, "Billing service is not loaded. Can\'t invoke buyWithMarket."

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 326
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/soomla/store/data/StoreInfo;->getPurchasableItem(Ljava/lang/String;)Lcom/soomla/store/domain/PurchasableVirtualItem;
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 334
    .local v2, "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    iget-object v3, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    new-instance v4, Lcom/soomla/store/SoomlaStore$5;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/soomla/store/SoomlaStore$5;-><init>(Lcom/soomla/store/SoomlaStore;Lcom/soomla/store/domain/MarketItem;Ljava/lang/String;Lcom/soomla/store/domain/PurchasableVirtualItem;)V

    invoke-interface {v3, v4}, Lcom/soomla/store/billing/IIabService;->initializeBillingService(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    goto :goto_0

    .line 327
    .end local v2    # "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find a purchasable item associated with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "msg":Ljava/lang/String;
    const-string v3, "SOOMLA SoomlaStore"

    invoke-static {v3, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v3

    new-instance v4, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;

    invoke-direct {v4, v1}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getInAppBillingService()Lcom/soomla/store/billing/IIabService;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    return-object v0
.end method

.method public initialize(Lcom/soomla/store/IStoreAssets;)Z
    .locals 5
    .param p1, "storeAssets"    # Lcom/soomla/store/IStoreAssets;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    iget-boolean v3, p0, Lcom/soomla/store/SoomlaStore;->mInitialized:Z

    if-eqz v3, :cond_1

    .line 72
    const-string v0, "SoomlaStore is already initialized. You can\'t initialize it twice!"

    .line 73
    .local v0, "err":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/soomla/store/SoomlaStore;->handleErrorResult(Ljava/lang/String;)V

    .line 87
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    const-string v3, "SOOMLA SoomlaStore"

    const-string v4, "SoomlaStore Initializing ..."

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/soomla/store/SoomlaStore;->loadBillingService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-static {p1}, Lcom/soomla/store/data/StoreInfo;->setStoreAssets(Lcom/soomla/store/IStoreAssets;)V

    .line 83
    invoke-virtual {p0}, Lcom/soomla/store/SoomlaStore;->refreshInventory()V

    .line 85
    iput-boolean v2, p0, Lcom/soomla/store/SoomlaStore;->mInitialized:Z

    .line 86
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v3, Lcom/soomla/store/events/SoomlaStoreInitializedEvent;

    invoke-direct {v3}, Lcom/soomla/store/events/SoomlaStoreInitializedEvent;-><init>()V

    invoke-virtual {v1, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    move v1, v2

    .line 87
    goto :goto_0
.end method

.method public loadBillingService()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 420
    iget-object v3, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    if-nez v3, :cond_1

    .line 421
    const-string v3, "SOOMLA SoomlaStore"

    const-string v5, "Searching for the attached IAB Service."

    invoke-static {v3, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/soomla/store/SoomlaStore;->tryFetchIabService()Ljava/lang/Class;

    move-result-object v0

    .line 425
    if-nez v0, :cond_0

    .line 426
    const-string v2, "You don\'t have a billing service attached. Decide which billing service you want, add it to AndroidManifest.xml and add its jar to the path."

    .line 429
    .local v2, "err":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/soomla/store/SoomlaStore;->handleErrorResult(Ljava/lang/String;)V

    move v3, v4

    .line 442
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "err":Ljava/lang/String;
    :goto_0
    return v3

    .line 434
    .restart local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    const-string v3, "SOOMLA SoomlaStore"

    const-string v5, "IAB Service found. Initializing it."

    invoke-static {v3, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/soomla/store/billing/IIabService;

    iput-object v3, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 436
    .restart local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t instantiate IIabService class. Something\'s totally wrong here."

    .line 438
    .restart local v2    # "err":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/soomla/store/SoomlaStore;->handleErrorResult(Ljava/lang/String;)V

    move v3, v4

    .line 439
    goto :goto_0
.end method

.method public refreshInventory()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/soomla/store/SoomlaStore;->restoreTransactions(Z)V

    .line 308
    return-void
.end method

.method public refreshMarketItemsDetails()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    if-nez v0, :cond_0

    .line 225
    const-string v0, "SOOMLA SoomlaStore"

    const-string v1, "Billing service is not loaded. Can\'t invoke refreshMarketItemsDetails."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    new-instance v1, Lcom/soomla/store/SoomlaStore$4;

    invoke-direct {v1, p0}, Lcom/soomla/store/SoomlaStore$4;-><init>(Lcom/soomla/store/SoomlaStore;)V

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IIabService;->initializeBillingService(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    goto :goto_0
.end method

.method public restoreTransactions()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/soomla/store/SoomlaStore;->restoreTransactions(Z)V

    .line 152
    return-void
.end method

.method public startIabServiceInBg()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "SOOMLA SoomlaStore"

    const-string v1, "Billing service is not loaded. Can\'t invoke startIabServiceInBg."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    new-instance v1, Lcom/soomla/store/SoomlaStore$1;

    invoke-direct {v1, p0}, Lcom/soomla/store/SoomlaStore$1;-><init>(Lcom/soomla/store/SoomlaStore;)V

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IIabService;->startIabServiceInBg(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    goto :goto_0
.end method

.method public stopIabServiceInBg()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "SOOMLA SoomlaStore"

    const-string v1, "Billing service is not loaded. Can\'t invoke stopIabServiceInBg."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore;->mInAppBillingService:Lcom/soomla/store/billing/IIabService;

    new-instance v1, Lcom/soomla/store/SoomlaStore$2;

    invoke-direct {v1, p0}, Lcom/soomla/store/SoomlaStore$2;-><init>(Lcom/soomla/store/SoomlaStore;)V

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IIabService;->stopIabServiceInBg(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    goto :goto_0
.end method
