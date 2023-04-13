.class public Lcom/soomla/unity/StoreEventHandler;
.super Ljava/lang/Object;
.source "StoreEventHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mLocalEventHandler:Lcom/soomla/unity/StoreEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "SOOMLA Unity StoreEventHandler"

    sput-object v0, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/AndroidBus;->register(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/soomla/unity/StoreEventHandler;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/soomla/unity/StoreEventHandler;->mLocalEventHandler:Lcom/soomla/unity/StoreEventHandler;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/soomla/unity/StoreEventHandler;

    invoke-direct {v0}, Lcom/soomla/unity/StoreEventHandler;-><init>()V

    sput-object v0, Lcom/soomla/unity/StoreEventHandler;->mLocalEventHandler:Lcom/soomla/unity/StoreEventHandler;

    .line 49
    :cond_0
    sget-object v0, Lcom/soomla/unity/StoreEventHandler;->mLocalEventHandler:Lcom/soomla/unity/StoreEventHandler;

    return-object v0
.end method

.method public static initialize()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "SOOMLA Unity StoreEventHandler"

    const-string v1, "Initializing StoreEventHandler ..."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/soomla/unity/StoreEventHandler;->getInstance()Lcom/soomla/unity/StoreEventHandler;

    .line 43
    return-void
.end method


# virtual methods
.method public onBillingNotSupported(Lcom/soomla/store/events/BillingNotSupportedEvent;)V
    .locals 3
    .param p1, "billingNotSupportedEvent"    # Lcom/soomla/store/events/BillingNotSupportedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p1, Lcom/soomla/store/events/BillingNotSupportedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onBillingNotSupported"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBillingSupported(Lcom/soomla/store/events/BillingSupportedEvent;)V
    .locals 3
    .param p1, "billingSupportedEvent"    # Lcom/soomla/store/events/BillingSupportedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p1, Lcom/soomla/store/events/BillingSupportedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onBillingSupported"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCurrencyBalanceChanged(Lcom/soomla/store/events/CurrencyBalanceChangedEvent;)V
    .locals 5
    .param p1, "currencyBalanceChangedEvent"    # Lcom/soomla/store/events/CurrencyBalanceChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 90
    iget-object v2, p1, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 94
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->getCurrencyItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v2, "balance"

    invoke-virtual {p1}, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->getBalance()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string v2, "amountAdded"

    invoke-virtual {p1}, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->getAmountAdded()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    const-string v2, "StoreEvents"

    const-string v3, "onCurrencyBalanceChanged"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onCurrencyBalanceChanged event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGoodBalanceChanged(Lcom/soomla/store/events/GoodBalanceChangedEvent;)V
    .locals 5
    .param p1, "goodBalanceChangedEvent"    # Lcom/soomla/store/events/GoodBalanceChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 107
    iget-object v2, p1, Lcom/soomla/store/events/GoodBalanceChangedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodBalanceChangedEvent;->getGoodItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v2, "balance"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodBalanceChangedEvent;->getBalance()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    const-string v2, "amountAdded"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodBalanceChangedEvent;->getAmountAdded()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    const-string v2, "StoreEvents"

    const-string v3, "onGoodBalanceChanged"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onGoodBalanceChanged event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGoodEquipped(Lcom/soomla/store/events/GoodEquippedEvent;)V
    .locals 5
    .param p1, "goodEquippedEvent"    # Lcom/soomla/store/events/GoodEquippedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 124
    iget-object v2, p1, Lcom/soomla/store/events/GoodEquippedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodEquippedEvent;->getGoodItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v2, "StoreEvents"

    const-string v3, "onGoodEquipped"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onGoodEquipped event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGoodUnequipped(Lcom/soomla/store/events/GoodUnEquippedEvent;)V
    .locals 5
    .param p1, "goodUnEquippedEvent"    # Lcom/soomla/store/events/GoodUnEquippedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 139
    iget-object v2, p1, Lcom/soomla/store/events/GoodUnEquippedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodUnEquippedEvent;->getGoodItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v2, "StoreEvents"

    const-string v3, "onGoodUnequipped"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onGoodUnequipped event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGoodUpgrade(Lcom/soomla/store/events/GoodUpgradeEvent;)V
    .locals 5
    .param p1, "goodUpgradeEvent"    # Lcom/soomla/store/events/GoodUpgradeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 154
    iget-object v2, p1, Lcom/soomla/store/events/GoodUpgradeEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 158
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodUpgradeEvent;->getGoodItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v2, "upgradeItemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodUpgradeEvent;->getCurrentUpgrade()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v2, "StoreEvents"

    const-string v3, "onGoodUpgrade"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onGoodUpgrade event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIabServiceStarted(Lcom/soomla/store/events/IabServiceStartedEvent;)V
    .locals 3
    .param p1, "iabServiceStartedEvent"    # Lcom/soomla/store/events/IabServiceStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p1, Lcom/soomla/store/events/IabServiceStartedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onIabServiceStarted"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIabServiceStopped(Lcom/soomla/store/events/IabServiceStoppedEvent;)V
    .locals 3
    .param p1, "iabServiceStoppedEvent"    # Lcom/soomla/store/events/IabServiceStoppedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p1, Lcom/soomla/store/events/IabServiceStoppedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onIabServiceStopped"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemPurchaseStarted(Lcom/soomla/store/events/ItemPurchaseStartedEvent;)V
    .locals 5
    .param p1, "itemPurchaseStartedEvent"    # Lcom/soomla/store/events/ItemPurchaseStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 186
    iget-object v2, p1, Lcom/soomla/store/events/ItemPurchaseStartedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 191
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/ItemPurchaseStartedEvent;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v2, "StoreEvents"

    const-string v3, "onItemPurchaseStarted"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onItemPurchaseStarted event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemPurchased(Lcom/soomla/store/events/ItemPurchasedEvent;)V
    .locals 5
    .param p1, "itemPurchasedEvent"    # Lcom/soomla/store/events/ItemPurchasedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 170
    iget-object v2, p1, Lcom/soomla/store/events/ItemPurchasedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 174
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/ItemPurchasedEvent;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v2, "payload"

    invoke-virtual {p1}, Lcom/soomla/store/events/ItemPurchasedEvent;->getPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v2, "StoreEvents"

    const-string v3, "onItemPurchased"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onItemPurchased event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarketItemsRefreshFinished(Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;)V
    .locals 8
    .param p1, "marketItemsRefreshFinishedEvent"    # Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 297
    iget-object v5, p1, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;->Sender:Ljava/lang/Object;

    if-ne v5, p0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 301
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 303
    .local v1, "eventJSON":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;->getMarketItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/soomla/store/domain/MarketItem;

    .line 304
    .local v3, "mi":Lcom/soomla/store/domain/MarketItem;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 305
    .local v4, "micJSON":Lorg/json/JSONObject;
    const-string v5, "className"

    invoke-static {v3}, Lcom/soomla/SoomlaUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v5, "productId"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v5, "marketPrice"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getMarketPriceAndCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v5, "marketTitle"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getMarketTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v5, "marketDesc"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getMarketDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v5, "marketCurrencyCode"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getMarketCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v5, "marketPriceMicros"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getMarketPriceMicros()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 313
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 317
    .end local v1    # "eventJSON":Lorg/json/JSONArray;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mi":Lcom/soomla/store/domain/MarketItem;
    .end local v4    # "micJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "This is BAD! couldn\'t create JSON for onMarketItemsRefreshFinished event."

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "eventJSON":Lorg/json/JSONArray;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v5, "StoreEvents"

    const-string v6, "onMarketItemsRefreshFinished"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onMarketItemsRefreshStarted(Lcom/soomla/store/events/MarketItemsRefreshStartedEvent;)V
    .locals 3
    .param p1, "marketItemsRefreshStartedEvent"    # Lcom/soomla/store/events/MarketItemsRefreshStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 289
    iget-object v0, p1, Lcom/soomla/store/events/MarketItemsRefreshStartedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onMarketItemsRefreshStarted"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarketPurchase(Lcom/soomla/store/events/MarketPurchaseEvent;)V
    .locals 6
    .param p1, "playPurchaseEvent"    # Lcom/soomla/store/events/MarketPurchaseEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 216
    iget-object v3, p1, Lcom/soomla/store/events/MarketPurchaseEvent;->Sender:Ljava/lang/Object;

    if-ne v3, p0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 220
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 221
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v3, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/MarketPurchaseEvent;->getPurchasableVirtualItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v3, "payload"

    invoke-virtual {p1}, Lcom/soomla/store/events/MarketPurchaseEvent;->getPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 224
    .local v2, "extraJSON":Lorg/json/JSONObject;
    const-string v3, "purchaseToken"

    invoke-virtual {p1}, Lcom/soomla/store/events/MarketPurchaseEvent;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v3, "orderId"

    invoke-virtual {p1}, Lcom/soomla/store/events/MarketPurchaseEvent;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v3, "extra"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v3, "StoreEvents"

    const-string v4, "onMarketPurchase"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    .end local v2    # "extraJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "This is BAD! couldn\'t create JSON for onMarketPurchase event."

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarketPurchaseCancelled(Lcom/soomla/store/events/MarketPurchaseCancelledEvent;)V
    .locals 5
    .param p1, "playPurchaseCancelledEvent"    # Lcom/soomla/store/events/MarketPurchaseCancelledEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 201
    iget-object v2, p1, Lcom/soomla/store/events/MarketPurchaseCancelledEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 205
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 206
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/MarketPurchaseCancelledEvent;->getPurchasableVirtualItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v2, "StoreEvents"

    const-string v3, "onMarketPurchaseCancelled"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onMarketPurchaseCancelled event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarketPurchaseStarted(Lcom/soomla/store/events/MarketPurchaseStartedEvent;)V
    .locals 5
    .param p1, "playPurchaseStartedEvent"    # Lcom/soomla/store/events/MarketPurchaseStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 236
    iget-object v2, p1, Lcom/soomla/store/events/MarketPurchaseStartedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 240
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/MarketPurchaseStartedEvent;->getPurchasableVirtualItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v2, "StoreEvents"

    const-string v3, "onMarketPurchaseStarted"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onMarketPurchaseStarted event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarketRefund(Lcom/soomla/store/events/MarketRefundEvent;)V
    .locals 5
    .param p1, "playRefundEvent"    # Lcom/soomla/store/events/MarketRefundEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 251
    iget-object v2, p1, Lcom/soomla/store/events/MarketRefundEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 255
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 256
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/MarketRefundEvent;->getPurchasableVirtualItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v2, "StoreEvents"

    const-string v3, "onMarketRefund"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onMarketRefund event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreTransactionsFinished(Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;)V
    .locals 5
    .param p1, "restoreTransactionsFinishedEvent"    # Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 266
    iget-object v2, p1, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 270
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 271
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "success"

    invoke-virtual {p1}, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;->isSuccess()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 273
    const-string v2, "StoreEvents"

    const-string v3, "onRestoreTransactionsFinished"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onRestoreTransactionsFinished event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreTransactionsStarted(Lcom/soomla/store/events/RestoreTransactionsStartedEvent;)V
    .locals 3
    .param p1, "restoreTransactionsStartedEvent"    # Lcom/soomla/store/events/RestoreTransactionsStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 281
    iget-object v0, p1, Lcom/soomla/store/events/RestoreTransactionsStartedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onRestoreTransactionsStarted"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSoomlaStoreInitialized(Lcom/soomla/store/events/SoomlaStoreInitializedEvent;)V
    .locals 3
    .param p1, "soomlaStoreInitializedEvent"    # Lcom/soomla/store/events/SoomlaStoreInitializedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 324
    iget-object v0, p1, Lcom/soomla/store/events/SoomlaStoreInitializedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onSoomlaStoreInitialized"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnexpectedStoreError(Lcom/soomla/store/events/UnexpectedStoreErrorEvent;)V
    .locals 3
    .param p1, "unexpectedStoreErrorEvent"    # Lcom/soomla/store/events/UnexpectedStoreErrorEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 332
    iget-object v1, p1, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;->Sender:Ljava/lang/Object;

    if-ne v1, p0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p1}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "StoreEvents"

    const-string v2, "onUnexpectedErrorInStore"

    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventCurrencyBalanceChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 353
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 355
    .local v3, "eventJSON":Lorg/json/JSONObject;
    const-string v4, "balance"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 356
    .local v1, "balance":I
    const-string v4, "amountAdded"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, "amountAdded":I
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v4

    new-instance v5, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;

    const-string v6, "itemId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1, v0, p0}, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v0    # "amountAdded":I
    .end local v1    # "balance":I
    .end local v3    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v2

    .line 360
    .local v2, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "(when pushing event) This is BAD! couldn\'t create JSON for onGoodBalanceChanged event."

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventGoodBalanceChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 366
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 368
    .local v3, "eventJSON":Lorg/json/JSONObject;
    const-string v4, "balance"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 369
    .local v1, "balance":I
    const-string v4, "amountAdded"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 370
    .local v0, "amountAdded":I
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v4

    new-instance v5, Lcom/soomla/store/events/GoodBalanceChangedEvent;

    const-string v6, "itemId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1, v0, p0}, Lcom/soomla/store/events/GoodBalanceChangedEvent;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0    # "amountAdded":I
    .end local v1    # "balance":I
    .end local v3    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v2

    .line 372
    .local v2, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "(when pushing event) This is BAD! couldn\'t create JSON for onGoodBalanceChanged event."

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventGoodEquipped(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 378
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, "eventJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/GoodEquippedEvent;

    const-string v4, "itemId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/soomla/store/events/GoodEquippedEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "(when pushing event) This is BAD! couldn\'t create JSON for onGoodEquipped event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventGoodUnequipped(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 388
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, "eventJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/GoodUnEquippedEvent;

    const-string v4, "itemId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/soomla/store/events/GoodUnEquippedEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "(when pushing event) This is BAD! couldn\'t create JSON for onGoodUnequipped event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventGoodUpgrade(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 398
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, "eventJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/GoodUpgradeEvent;

    const-string v4, "itemId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "upgradeItemId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p0}, Lcom/soomla/store/events/GoodUpgradeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "(when pushing event) This is BAD! couldn\'t create JSON for onGoodUpgrade event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventItemPurchaseStarted(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 418
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 420
    .local v1, "eventJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/ItemPurchaseStartedEvent;

    const-string v4, "itemId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/soomla/store/events/ItemPurchaseStartedEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "(when pushing event) This is BAD! couldn\'t create JSON for onItemPurchaseStarted event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventItemPurchased(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 408
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 410
    .local v1, "eventJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/ItemPurchasedEvent;

    const-string v4, "itemId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "payload"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p0}, Lcom/soomla/store/events/ItemPurchasedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "(when pushing event) This is BAD! couldn\'t create JSON for onItemPurchased event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventSoomlaStoreInitialized(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/SoomlaStoreInitializedEvent;

    invoke-direct {v1, p0}, Lcom/soomla/store/events/SoomlaStoreInitializedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public pushEventUnexpectedStoreError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;

    invoke-direct {v1, p1, p0}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 349
    return-void
.end method
