.class Lcom/soomla/store/SoomlaStore$4$1;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore$4;->success(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/soomla/store/SoomlaStore$4;


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore$4;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$4$1;->this$1:Lcom/soomla/store/SoomlaStore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 284
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/billing/IabSkuDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "skuDetails":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabSkuDetails;>;"
    const-string v14, "SOOMLA SoomlaStore"

    const-string v15, "Market items details refreshed"

    invoke-static {v14, v15}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v10, "marketItems":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/MarketItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 249
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/soomla/store/billing/IabSkuDetails;

    .line 250
    .local v9, "iabSkuDetails":Lcom/soomla/store/billing/IabSkuDetails;
    invoke-virtual {v9}, Lcom/soomla/store/billing/IabSkuDetails;->getSku()Ljava/lang/String;

    move-result-object v12

    .line 251
    .local v12, "productId":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/soomla/store/billing/IabSkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "price":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/soomla/store/billing/IabSkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/soomla/store/billing/IabSkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "desc":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/soomla/store/billing/IabSkuDetails;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "currencyCode":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/soomla/store/billing/IabSkuDetails;->getPriceMicros()J

    move-result-wide v6

    .line 257
    .local v6, "priceMicros":J
    const-string v14, "SOOMLA SoomlaStore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Got item details: \ntitle:\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/soomla/store/billing/IabSkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\nprice:\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/soomla/store/billing/IabSkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\nproductId:\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/soomla/store/billing/IabSkuDetails;->getSku()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\ndesc:\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/soomla/store/billing/IabSkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :try_start_0
    invoke-static {v12}, Lcom/soomla/store/data/StoreInfo;->getPurchasableItem(Ljava/lang/String;)Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v13

    .line 266
    .local v13, "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    invoke-virtual {v13}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;

    move-result-object v14

    check-cast v14, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    invoke-virtual {v14}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->getMarketItem()Lcom/soomla/store/domain/MarketItem;

    move-result-object v1

    .line 268
    .local v1, "mi":Lcom/soomla/store/domain/MarketItem;
    invoke-virtual/range {v1 .. v7}, Lcom/soomla/store/domain/MarketItem;->setMarketInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 270
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v1    # "mi":Lcom/soomla/store/domain/MarketItem;
    .end local v13    # "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(refreshInventory) Couldn\'t find a purchasable item associated with: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 274
    .local v11, "msg":Ljava/lang/String;
    const-string v14, "SOOMLA SoomlaStore"

    invoke-static {v14, v11}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    .end local v0    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .end local v2    # "price":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "desc":Ljava/lang/String;
    .end local v5    # "currencyCode":Ljava/lang/String;
    .end local v6    # "priceMicros":J
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "iabSkuDetails":Lcom/soomla/store/billing/IabSkuDetails;
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "productId":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v14

    new-instance v15, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;

    invoke-direct {v15, v10}, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v14, v15}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 279
    return-void
.end method
