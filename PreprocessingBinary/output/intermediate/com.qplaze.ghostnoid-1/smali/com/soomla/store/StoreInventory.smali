.class public Lcom/soomla/store/StoreInventory;
.super Ljava/lang/Object;
.source "StoreInventory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA StoreInventory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allItemsBalances()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v3, "itemsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->getCurrencies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    .line 310
    .local v0, "currency":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v4, "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "balance"

    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualCurrencyStorage()Lcom/soomla/store/data/VirtualCurrencyStorage;

    move-result-object v7

    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/soomla/store/data/VirtualCurrencyStorage;->getBalance(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 316
    .end local v0    # "currency":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    .end local v4    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->getGoods()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 317
    .local v1, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    instance-of v6, v1, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    if-nez v6, :cond_1

    .line 319
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 321
    .restart local v4    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "balance"

    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v7

    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/soomla/store/data/VirtualGoodsStorage;->getBalance(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    instance-of v6, v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    if-eqz v6, :cond_2

    .line 324
    const-string v6, "equipped"

    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v7

    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/soomla/store/data/VirtualGoodsStorage;->isEquipped(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_2
    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/soomla/store/data/StoreInfo;->hasUpgrades(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 328
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v6

    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "vguId":Ljava/lang/String;
    const-string v6, "currentUpgrade"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v5, "none"

    .end local v5    # "vguId":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_4
    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 335
    .end local v1    # "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    .end local v4    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    return-object v3
.end method

.method public static buy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/InsufficientFundsException;,
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/PurchasableVirtualItem;

    .line 61
    .local v0, "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    invoke-virtual {v0, p1}, Lcom/soomla/store/domain/PurchasableVirtualItem;->buy(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private static clearCurrentState()V
    .locals 4

    .prologue
    .line 418
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getEncryptedKeys()Ljava/util/List;

    move-result-object v0

    .line 420
    .local v0, "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 421
    .local v2, "key":Ljava/lang/String;
    const-string v3, "nonconsumable."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "currency."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "good."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    :cond_1
    invoke-static {v2}, Lcom/soomla/data/KeyValueStorage;->deleteKeyValue(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static equipVirtualGood(Ljava/lang/String;)V
    .locals 4
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;,
            Ljava/lang/ClassCastException;,
            Lcom/soomla/store/exceptions/NotEnoughGoodsException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    .line 127
    .local v1, "good":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    :try_start_0
    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->equip()V
    :try_end_0
    .catch Lcom/soomla/store/exceptions/NotEnoughGoodsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lcom/soomla/store/exceptions/NotEnoughGoodsException;
    const-string v2, "StoreInventory"

    const-string v3, "UNEXPECTED! Couldn\'t equip something"

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    throw v0
.end method

.method public static forceUpgrade(Ljava/lang/String;)V
    .locals 4
    .param p0, "upgradeItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 283
    :try_start_0
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 284
    .local v1, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->give(I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1    # "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v2, "SOOMLA StoreInventory"

    const-string v3, "The given itemId was of a non UpgradeVG VirtualItem. Can\'t force it."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getGoodCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 218
    .local v2, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v5

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "upgradeVGItemId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 221
    .local v3, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :try_start_0
    invoke-static {v4}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-object v3, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    if-nez v3, :cond_0

    .line 227
    const-string v5, ""

    .line 229
    :goto_1
    return-object v5

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v5, "SOOMLA StoreInventory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This is BAD! Can\'t find the current upgrade ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :cond_0
    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getItemId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static getGoodUpgradeLevel(Ljava/lang/String;)I
    .locals 10
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v3

    check-cast v3, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 184
    .local v3, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v7

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "upgradeVGItemId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 187
    .local v5, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :try_start_0
    invoke-static {v6}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-object v5, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    if-nez v5, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v4

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v7, "SOOMLA StoreInventory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This is BAD! Can\'t find the current upgrade ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") of: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :cond_1
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getGoodFirstUpgrade(Ljava/lang/String;)Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-result-object v2

    .line 197
    .local v2, "first":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    const/4 v4, 0x1

    .line 198
    .local v4, "level":I
    :goto_1
    invoke-virtual {v2, v5}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 199
    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getNextItemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v2

    .end local v2    # "first":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    check-cast v2, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 200
    .restart local v2    # "first":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getVirtualItemBalance(Ljava/lang/String;)I
    .locals 3
    .param p0, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    .line 75
    .local v0, "item":Lcom/soomla/store/domain/VirtualItem;
    invoke-static {v0}, Lcom/soomla/store/data/StorageManager;->getVirtualItemStorage(Lcom/soomla/store/domain/VirtualItem;)Lcom/soomla/store/data/VirtualItemStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/soomla/store/domain/VirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/soomla/store/data/VirtualItemStorage;->getBalance(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static giveVirtualItem(Ljava/lang/String;I)V
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "amount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    .line 93
    .local v0, "item":Lcom/soomla/store/domain/VirtualItem;
    invoke-virtual {v0, p1}, Lcom/soomla/store/domain/VirtualItem;->give(I)I

    .line 94
    return-void
.end method

.method public static isVirtualGoodEquipped(Ljava/lang/String;)Z
    .locals 3
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    .line 162
    .local v0, "good":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/soomla/store/data/VirtualGoodsStorage;->isEquipped(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static removeUpgrades(Ljava/lang/String;)V
    .locals 7
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 298
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getGoodUpgrades(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 299
    .local v3, "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 300
    .local v2, "upgrade":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v4

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v6}, Lcom/soomla/store/data/VirtualGoodsStorage;->remove(Ljava/lang/String;IZ)I

    goto :goto_0

    .line 302
    .end local v2    # "upgrade":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :cond_0
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 303
    .local v0, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v4

    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/soomla/store/data/VirtualGoodsStorage;->removeUpgrades(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public static resetAllItemsBalances(Ljava/util/HashMap;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "replaceBalances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez p0, :cond_0

    .line 340
    const/16 v17, 0x0

    .line 414
    :goto_0
    return v17

    .line 343
    :cond_0
    const-string v17, "SOOMLA StoreInventory"

    const-string v18, "Resetting balances"

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/soomla/store/StoreInventory;->clearCurrentState()V

    .line 347
    const-string v17, "SOOMLA StoreInventory"

    const-string v18, "Current state was cleared"

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 351
    .local v10, "itemId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    .local v15, "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 355
    .local v9, "item":Lcom/soomla/store/domain/VirtualItem;
    :try_start_1
    invoke-static {v10}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;
    :try_end_1
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 361
    :try_start_2
    const-string v17, "balance"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 362
    .local v11, "rawBalance":Ljava/lang/Object;
    if-eqz v11, :cond_2

    .line 363
    move-object v0, v11

    check-cast v0, Ljava/lang/Integer;

    move-object v14, v0

    .line 364
    .local v14, "updatedBalance":Ljava/lang/Integer;
    if-eqz v9, :cond_2

    .line 365
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/soomla/store/domain/VirtualItem;->resetBalance(IZ)I

    .line 366
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished balance sync for itemId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v14    # "updatedBalance":Ljava/lang/Integer;
    :cond_2
    const-string v17, "equipped"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    .line 371
    .local v13, "rawEquippedState":Ljava/lang/Object;
    if-eqz v13, :cond_4

    .line 373
    :try_start_3
    move-object v0, v9

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    move-object v5, v0

    .line 374
    .local v5, "equippableItem":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    if-eqz v5, :cond_3

    .line 375
    move-object v0, v13

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 376
    .local v4, "equipState":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 377
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->equip(Z)V

    .line 382
    .end local v4    # "equipState":Ljava/lang/Boolean;
    :cond_3
    :goto_2
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished equip balance sync for itemId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/soomla/store/exceptions/NotEnoughGoodsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 390
    .end local v5    # "equippableItem":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    :cond_4
    :goto_3
    :try_start_4
    const-string v17, "currentUpgrade"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 391
    .local v12, "rawCurrentUpgrade":Ljava/lang/Object;
    if-eqz v12, :cond_1

    .line 392
    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 393
    .local v2, "currentUpgradeId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v17

    if-nez v17, :cond_1

    .line 395
    :try_start_5
    invoke-static {v2}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v16

    check-cast v16, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 396
    .local v16, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->give(IZ)I

    .line 398
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished upgrade balance sync for itemId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 399
    .end local v16    # "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :catch_0
    move-exception v6

    .line 400
    .local v6, "ex":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :try_start_6
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The given upgradeId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " was not found. Can\'t force it."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 410
    .end local v2    # "currentUpgradeId":Ljava/lang/String;
    .end local v6    # "ex":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Lcom/soomla/store/domain/VirtualItem;
    .end local v10    # "itemId":Ljava/lang/String;
    .end local v11    # "rawBalance":Ljava/lang/Object;
    .end local v12    # "rawCurrentUpgrade":Ljava/lang/Object;
    .end local v13    # "rawEquippedState":Ljava/lang/Object;
    .end local v15    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v3

    .line 411
    .local v3, "e":Ljava/lang/Exception;
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown error has occurred while resetting item balances "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 356
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "item":Lcom/soomla/store/domain/VirtualItem;
    .restart local v10    # "itemId":Ljava/lang/String;
    .restart local v15    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_2
    move-exception v3

    .line 357
    .local v3, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :try_start_7
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The given itemId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " was not found. Can\'t force it."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 379
    .end local v3    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .restart local v4    # "equipState":Ljava/lang/Boolean;
    .restart local v5    # "equippableItem":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    .restart local v11    # "rawBalance":Ljava/lang/Object;
    .restart local v13    # "rawEquippedState":Ljava/lang/Object;
    :cond_5
    const/16 v17, 0x0

    :try_start_8
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->unequip(Z)V
    :try_end_8
    .catch Lcom/soomla/store/exceptions/NotEnoughGoodsException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 383
    .end local v4    # "equipState":Ljava/lang/Boolean;
    .end local v5    # "equippableItem":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    :catch_3
    move-exception v3

    .line 384
    .local v3, "e":Lcom/soomla/store/exceptions/NotEnoughGoodsException;
    :try_start_9
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "the item "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " was not purchased, so cannot be equipped"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 385
    .end local v3    # "e":Lcom/soomla/store/exceptions/NotEnoughGoodsException;
    :catch_4
    move-exception v7

    .line 386
    .local v7, "exx":Ljava/lang/ClassCastException;
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "tried to equip a non-equippable item: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 401
    .end local v7    # "exx":Ljava/lang/ClassCastException;
    .restart local v2    # "currentUpgradeId":Ljava/lang/String;
    .restart local v12    # "rawCurrentUpgrade":Ljava/lang/Object;
    :catch_5
    move-exception v6

    .line 402
    .local v6, "ex":Ljava/lang/ClassCastException;
    const-string v17, "SOOMLA StoreInventory"

    const-string v18, "The given upgradeId was of a non UpgradeVG VirtualItem. Can\'t force it."

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 408
    .end local v2    # "currentUpgradeId":Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/ClassCastException;
    .end local v9    # "item":Lcom/soomla/store/domain/VirtualItem;
    .end local v10    # "itemId":Ljava/lang/String;
    .end local v11    # "rawBalance":Ljava/lang/Object;
    .end local v12    # "rawCurrentUpgrade":Ljava/lang/Object;
    .end local v13    # "rawEquippedState":Ljava/lang/Object;
    .end local v15    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public static takeVirtualItem(Ljava/lang/String;I)V
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "amount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    .line 107
    .local v0, "item":Lcom/soomla/store/domain/VirtualItem;
    invoke-virtual {v0, p1}, Lcom/soomla/store/domain/VirtualItem;->take(I)I

    .line 108
    return-void
.end method

.method public static unEquipVirtualGood(Ljava/lang/String;)V
    .locals 1
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    .line 147
    .local v0, "good":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->unequip()V

    .line 148
    return-void
.end method

.method public static upgradeVirtualGood(Ljava/lang/String;)V
    .locals 11
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;,
            Lcom/soomla/store/exceptions/InsufficientFundsException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v3

    check-cast v3, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 249
    .local v3, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v8

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "upgradeVGItemId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 252
    .local v5, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :try_start_0
    invoke-static {v6}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-object v5, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    if-eqz v5, :cond_2

    .line 258
    invoke-virtual {v5}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getNextItemId()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "nextItemId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 270
    .end local v4    # "nextItemId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v8, "SOOMLA StoreInventory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This is BAD! Can\'t find the current upgrade ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") of: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .restart local v4    # "nextItemId":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v7

    check-cast v7, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 263
    .local v7, "vgu":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->buy(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v4    # "nextItemId":Ljava/lang/String;
    .end local v7    # "vgu":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :cond_2
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getGoodFirstUpgrade(Ljava/lang/String;)Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-result-object v2

    .line 266
    .local v2, "first":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    if-eqz v2, :cond_0

    .line 267
    const-string v8, ""

    invoke-virtual {v2, v8}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->buy(Ljava/lang/String;)V

    goto :goto_1
.end method
