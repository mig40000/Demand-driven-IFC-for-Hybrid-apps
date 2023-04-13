.class Lcom/soomla/store/SoomlaStore$5;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$IabInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore;->buyWithMarket(Lcom/soomla/store/domain/MarketItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/SoomlaStore;

.field final synthetic val$marketItem:Lcom/soomla/store/domain/MarketItem;

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$pvi:Lcom/soomla/store/domain/PurchasableVirtualItem;


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore;Lcom/soomla/store/domain/MarketItem;Ljava/lang/String;Lcom/soomla/store/domain/PurchasableVirtualItem;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    iput-object p2, p0, Lcom/soomla/store/SoomlaStore$5;->val$marketItem:Lcom/soomla/store/domain/MarketItem;

    iput-object p3, p0, Lcom/soomla/store/SoomlaStore$5;->val$payload:Ljava/lang/String;

    iput-object p4, p0, Lcom/soomla/store/SoomlaStore$5;->val$pvi:Lcom/soomla/store/domain/PurchasableVirtualItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0, p1}, Lcom/soomla/store/SoomlaStore;->access$400(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public success(Z)V
    .locals 4
    .param p1, "alreadyInBg"    # Z

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v1}, Lcom/soomla/store/SoomlaStore;->access$000(Lcom/soomla/store/SoomlaStore;)V

    .line 343
    :cond_0
    new-instance v0, Lcom/soomla/store/SoomlaStore$5$1;

    invoke-direct {v0, p0}, Lcom/soomla/store/SoomlaStore$5$1;-><init>(Lcom/soomla/store/SoomlaStore$5;)V

    .line 389
    .local v0, "purchaseListener":Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;
    iget-object v1, p0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v1}, Lcom/soomla/store/SoomlaStore;->access$300(Lcom/soomla/store/SoomlaStore;)Lcom/soomla/store/billing/IIabService;

    move-result-object v1

    iget-object v2, p0, Lcom/soomla/store/SoomlaStore$5;->val$marketItem:Lcom/soomla/store/domain/MarketItem;

    invoke-virtual {v2}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/soomla/store/SoomlaStore$5;->val$payload:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/soomla/store/billing/IIabService;->launchPurchaseFlow(Ljava/lang/String;Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/store/events/MarketPurchaseStartedEvent;

    iget-object v3, p0, Lcom/soomla/store/SoomlaStore$5;->val$pvi:Lcom/soomla/store/domain/PurchasableVirtualItem;

    invoke-direct {v2, v3}, Lcom/soomla/store/events/MarketPurchaseStartedEvent;-><init>(Lcom/soomla/store/domain/PurchasableVirtualItem;)V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 392
    return-void
.end method
