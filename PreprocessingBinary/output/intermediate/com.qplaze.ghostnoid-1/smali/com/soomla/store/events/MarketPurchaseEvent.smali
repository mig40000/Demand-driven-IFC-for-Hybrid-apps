.class public Lcom/soomla/store/events/MarketPurchaseEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "MarketPurchaseEvent.java"


# instance fields
.field private mOrderId:Ljava/lang/String;

.field private mPayload:Ljava/lang/String;

.field private mPurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "purchasableVirtualItem"    # Lcom/soomla/store/domain/PurchasableVirtualItem;
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/soomla/store/events/MarketPurchaseEvent;-><init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "purchasableVirtualItem"    # Lcom/soomla/store/domain/PurchasableVirtualItem;
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "sender"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0, p5}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mPurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

    .line 43
    iput-object p2, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mPayload:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mToken:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mOrderId:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasableVirtualItem()Lcom/soomla/store/domain/PurchasableVirtualItem;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mPurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mToken:Ljava/lang/String;

    return-object v0
.end method
