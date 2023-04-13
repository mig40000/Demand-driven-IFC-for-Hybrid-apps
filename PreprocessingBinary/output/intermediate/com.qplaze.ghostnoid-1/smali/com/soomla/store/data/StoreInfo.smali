.class public Lcom/soomla/store/data/StoreInfo;
.super Ljava/lang/Object;
.source "StoreInfo.java"


# static fields
.field public static final DB_NONCONSUMABLE_KEY_PREFIX:Ljava/lang/String; = "nonconsumable."

.field private static final TAG:Ljava/lang/String; = "SOOMLA StoreInfo"

.field private static mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/VirtualCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrencyPacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentAssetsVersion:I

.field private static mGoods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/virtualGoods/VirtualGood;",
            ">;"
        }
    .end annotation
.end field

.field private static mGoodsCategories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/soomla/store/domain/VirtualCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static mGoodsUpgrades:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/virtualGoods/UpgradeVG;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mNonConsumableMigrationNeeded:Z

.field private static mPurchasableItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/soomla/store/domain/PurchasableVirtualItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mVirtualItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/soomla/store/domain/VirtualItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 749
    sput-boolean v0, Lcom/soomla/store/data/StoreInfo;->mNonConsumableMigrationNeeded:Z

    .line 775
    sput v0, Lcom/soomla/store/data/StoreInfo;->mCurrentAssetsVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addVG(Lcom/soomla/store/domain/virtualGoods/VirtualGood;)V
    .locals 3
    .param p0, "g"    # Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .prologue
    .line 463
    sget-object v1, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v1, Lcom/soomla/store/data/StoreInfo;->mVirtualItems:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;

    move-result-object v0

    .line 468
    .local v0, "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    instance-of v1, v0, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    if-eqz v1, :cond_0

    .line 469
    sget-object v1, Lcom/soomla/store/data/StoreInfo;->mPurchasableItems:Ljava/util/HashMap;

    check-cast v0, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    .end local v0    # "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    invoke-virtual {v0}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->getMarketItem()Lcom/soomla/store/domain/MarketItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_0
    return-void
.end method

.method private static checkAndResetMetadata()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x4

    const/4 v6, 0x0

    .line 692
    const-string v8, "SOOMLA StoreInfo"

    const-string v9, "checking metadata version ..."

    invoke-static {v8, v9}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "store.prefs"

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 695
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    .line 697
    .local v4, "resetMeta":Z
    :try_start_0
    const-string v8, "MT_VER"

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 698
    .local v2, "mt_ver":I
    const-string v8, "SA_VER_OLD"

    const/4 v9, -0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 700
    .local v5, "sa_ver_old":I
    if-ge v2, v10, :cond_0

    .line 701
    const/4 v8, 0x1

    sput-boolean v8, Lcom/soomla/store/data/StoreInfo;->mNonConsumableMigrationNeeded:Z

    .line 704
    :cond_0
    if-lt v2, v10, :cond_1

    sget v8, Lcom/soomla/store/data/StoreInfo;->mCurrentAssetsVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v5, v8, :cond_3

    :cond_1
    move v4, v7

    .line 710
    .end local v2    # "mt_ver":I
    .end local v5    # "sa_ver_old":I
    :goto_0
    if-eqz v4, :cond_2

    .line 711
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 712
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v6, "MT_VER"

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 713
    const-string v6, "SA_VER_OLD"

    sget v7, Lcom/soomla/store/data/StoreInfo;->mCurrentAssetsVersion:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 714
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 716
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->keyMetaStoreInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/soomla/data/KeyValueStorage;->deleteKeyValue(Ljava/lang/String;)V

    .line 718
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    .restart local v2    # "mt_ver":I
    .restart local v5    # "sa_ver_old":I
    :cond_3
    move v4, v6

    .line 704
    goto :goto_0

    .line 705
    .end local v2    # "mt_ver":I
    .end local v5    # "sa_ver_old":I
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "SOOMLA StoreInfo"

    const-string v7, "This is probably an older (obfuscated) sharedPrefs"

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static fromJSONObject(Lorg/json/JSONObject;)V
    .locals 24
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    sput-object v22, Lcom/soomla/store/data/StoreInfo;->mVirtualItems:Ljava/util/HashMap;

    .line 336
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    sput-object v22, Lcom/soomla/store/data/StoreInfo;->mPurchasableItems:Ljava/util/HashMap;

    .line 337
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    sput-object v22, Lcom/soomla/store/data/StoreInfo;->mGoodsCategories:Ljava/util/HashMap;

    .line 338
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    sput-object v22, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    .line 339
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    sput-object v22, Lcom/soomla/store/data/StoreInfo;->mCurrencyPacks:Ljava/util/List;

    .line 340
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    sput-object v22, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    .line 341
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    sput-object v22, Lcom/soomla/store/data/StoreInfo;->mCategories:Ljava/util/List;

    .line 342
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    sput-object v22, Lcom/soomla/store/data/StoreInfo;->mCurrencies:Ljava/util/List;

    .line 344
    const-string v22, "currencies"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 345
    const-string v22, "currencies"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 346
    .local v20, "virtualCurrencies":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_0

    .line 347
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 348
    .local v12, "o":Lorg/json/JSONObject;
    new-instance v3, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    invoke-direct {v3, v12}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;-><init>(Lorg/json/JSONObject;)V

    .line 349
    .local v3, "c":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    sget-object v22, Lcom/soomla/store/data/StoreInfo;->mCurrencies:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v22, Lcom/soomla/store/data/StoreInfo;->mVirtualItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 355
    .end local v3    # "c":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    .end local v9    # "i":I
    .end local v12    # "o":Lorg/json/JSONObject;
    .end local v20    # "virtualCurrencies":Lorg/json/JSONArray;
    :cond_0
    const-string v22, "currencyPacks"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 356
    const-string v22, "currencyPacks"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 357
    .local v5, "currencyPacks":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_2

    .line 358
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 359
    .restart local v12    # "o":Lorg/json/JSONObject;
    new-instance v14, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;

    invoke-direct {v14, v12}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;-><init>(Lorg/json/JSONObject;)V

    .line 360
    .local v14, "pack":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
    sget-object v22, Lcom/soomla/store/data/StoreInfo;->mCurrencyPacks:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v22, Lcom/soomla/store/data/StoreInfo;->mVirtualItems:Ljava/util/HashMap;

    invoke-virtual {v14}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->getItemId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {v14}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;

    move-result-object v15

    .line 365
    .local v15, "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    instance-of v0, v15, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 366
    sget-object v22, Lcom/soomla/store/data/StoreInfo;->mPurchasableItems:Ljava/util/HashMap;

    check-cast v15, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    .end local v15    # "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    invoke-virtual {v15}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->getMarketItem()Lcom/soomla/store/domain/MarketItem;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 374
    .end local v5    # "currencyPacks":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v12    # "o":Lorg/json/JSONObject;
    .end local v14    # "pack":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
    :cond_2
    const-string v22, "goods"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 375
    const-string v22, "goods"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 377
    .local v21, "virtualGoods":Lorg/json/JSONObject;
    const-string v22, "singleUse"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 378
    const-string v22, "singleUse"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 379
    .local v16, "suGoods":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_3

    .line 380
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 381
    .restart local v12    # "o":Lorg/json/JSONObject;
    new-instance v7, Lcom/soomla/store/domain/virtualGoods/SingleUseVG;

    invoke-direct {v7, v12}, Lcom/soomla/store/domain/virtualGoods/SingleUseVG;-><init>(Lorg/json/JSONObject;)V

    .line 382
    .local v7, "g":Lcom/soomla/store/domain/virtualGoods/SingleUseVG;
    invoke-static {v7}, Lcom/soomla/store/data/StoreInfo;->addVG(Lcom/soomla/store/domain/virtualGoods/VirtualGood;)V

    .line 379
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 387
    .end local v7    # "g":Lcom/soomla/store/domain/virtualGoods/SingleUseVG;
    .end local v9    # "i":I
    .end local v12    # "o":Lorg/json/JSONObject;
    .end local v16    # "suGoods":Lorg/json/JSONArray;
    :cond_3
    const-string v22, "lifetime"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 388
    const-string v22, "lifetime"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 389
    .local v11, "ltGoods":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_4

    .line 390
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 391
    .restart local v12    # "o":Lorg/json/JSONObject;
    new-instance v7, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;

    invoke-direct {v7, v12}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;-><init>(Lorg/json/JSONObject;)V

    .line 392
    .local v7, "g":Lcom/soomla/store/domain/virtualGoods/LifetimeVG;
    invoke-static {v7}, Lcom/soomla/store/data/StoreInfo;->addVG(Lcom/soomla/store/domain/virtualGoods/VirtualGood;)V

    .line 389
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 397
    .end local v7    # "g":Lcom/soomla/store/domain/virtualGoods/LifetimeVG;
    .end local v9    # "i":I
    .end local v11    # "ltGoods":Lorg/json/JSONArray;
    .end local v12    # "o":Lorg/json/JSONObject;
    :cond_4
    const-string v22, "equippable"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 398
    const-string v22, "equippable"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 399
    .local v6, "eqGoods":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 400
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 401
    .restart local v12    # "o":Lorg/json/JSONObject;
    new-instance v7, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    invoke-direct {v7, v12}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;-><init>(Lorg/json/JSONObject;)V

    .line 402
    .local v7, "g":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    invoke-static {v7}, Lcom/soomla/store/data/StoreInfo;->addVG(Lcom/soomla/store/domain/virtualGoods/VirtualGood;)V

    .line 399
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 406
    .end local v6    # "eqGoods":Lorg/json/JSONArray;
    .end local v7    # "g":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    .end local v9    # "i":I
    .end local v12    # "o":Lorg/json/JSONObject;
    :cond_5
    const-string v22, "goodPacks"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 407
    const-string v22, "goodPacks"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 408
    .local v13, "paGoods":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_6

    .line 409
    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 410
    .restart local v12    # "o":Lorg/json/JSONObject;
    new-instance v7, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;

    invoke-direct {v7, v12}, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;-><init>(Lorg/json/JSONObject;)V

    .line 411
    .local v7, "g":Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;
    invoke-static {v7}, Lcom/soomla/store/data/StoreInfo;->addVG(Lcom/soomla/store/domain/virtualGoods/VirtualGood;)V

    .line 408
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 416
    .end local v7    # "g":Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;
    .end local v9    # "i":I
    .end local v12    # "o":Lorg/json/JSONObject;
    .end local v13    # "paGoods":Lorg/json/JSONArray;
    :cond_6
    const-string v22, "goodUpgrades"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 417
    const-string v22, "goodUpgrades"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 418
    .local v17, "upGoods":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_8

    .line 419
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 420
    .restart local v12    # "o":Lorg/json/JSONObject;
    new-instance v7, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    invoke-direct {v7, v12}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;-><init>(Lorg/json/JSONObject;)V

    .line 421
    .local v7, "g":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    invoke-static {v7}, Lcom/soomla/store/data/StoreInfo;->addVG(Lcom/soomla/store/domain/virtualGoods/VirtualGood;)V

    .line 423
    sget-object v22, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getGoodItemId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 424
    .local v18, "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    if-nez v18, :cond_7

    .line 425
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .restart local v18    # "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    sget-object v22, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getGoodItemId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_7
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 435
    .end local v7    # "g":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    .end local v9    # "i":I
    .end local v12    # "o":Lorg/json/JSONObject;
    .end local v17    # "upGoods":Lorg/json/JSONArray;
    .end local v18    # "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    .end local v21    # "virtualGoods":Lorg/json/JSONObject;
    :cond_8
    const-string v22, "categories"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 436
    const-string v22, "categories"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 437
    .local v19, "virtualCategories":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_a

    .line 438
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 439
    .restart local v12    # "o":Lorg/json/JSONObject;
    new-instance v4, Lcom/soomla/store/domain/VirtualCategory;

    invoke-direct {v4, v12}, Lcom/soomla/store/domain/VirtualCategory;-><init>(Lorg/json/JSONObject;)V

    .line 440
    .local v4, "category":Lcom/soomla/store/domain/VirtualCategory;
    sget-object v22, Lcom/soomla/store/data/StoreInfo;->mCategories:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v4}, Lcom/soomla/store/domain/VirtualCategory;->getGoodsItemIds()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 442
    .local v8, "goodItemId":Ljava/lang/String;
    sget-object v22, Lcom/soomla/store/data/StoreInfo;->mGoodsCategories:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 437
    .end local v8    # "goodItemId":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 449
    .end local v4    # "category":Lcom/soomla/store/domain/VirtualCategory;
    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "o":Lorg/json/JSONObject;
    .end local v19    # "virtualCategories":Lorg/json/JSONArray;
    :cond_a
    sget-boolean v22, Lcom/soomla/store/data/StoreInfo;->mNonConsumableMigrationNeeded:Z

    if-eqz v22, :cond_b

    .line 450
    const-string v22, "SOOMLA StoreInfo"

    const-string v23, "NonConsumables balance migration is required. Doing it now."

    invoke-static/range {v22 .. v23}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->nonConsBalancesToLTVGs()V

    .line 453
    :cond_b
    return-void
.end method

.method public static getAllProductIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/soomla/store/data/StoreInfo;->mPurchasableItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/VirtualCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    sget-object v0, Lcom/soomla/store/data/StoreInfo;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method public static getCategory(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualCategory;
    .locals 3
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 245
    sget-object v1, Lcom/soomla/store/data/StoreInfo;->mGoodsCategories:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/VirtualCategory;

    .line 246
    .local v0, "item":Lcom/soomla/store/domain/VirtualCategory;
    if-nez v0, :cond_0

    .line 247
    new-instance v1, Lcom/soomla/store/exceptions/VirtualItemNotFoundException;

    const-string v2, "goodItemId"

    invoke-direct {v1, v2, p0}, Lcom/soomla/store/exceptions/VirtualItemNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_0
    return-object v0
.end method

.method public static getCurrencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/soomla/store/data/StoreInfo;->mCurrencies:Ljava/util/List;

    return-object v0
.end method

.method public static getCurrencyPacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lcom/soomla/store/data/StoreInfo;->mCurrencyPacks:Ljava/util/List;

    return-object v0
.end method

.method public static getGoodFirstUpgrade(Ljava/lang/String;)Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    .locals 4
    .param p0, "goodItemId"    # Ljava/lang/String;

    .prologue
    .line 262
    sget-object v3, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 263
    .local v2, "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 265
    .local v1, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getPrevItemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getGoodLastUpgrade(Ljava/lang/String;)Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    .locals 4
    .param p0, "goodItemId"    # Ljava/lang/String;

    .prologue
    .line 282
    sget-object v3, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 283
    .local v2, "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    if-eqz v2, :cond_1

    .line 284
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 285
    .local v1, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getNextItemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getGoodUpgrades(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/virtualGoods/UpgradeVG;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    sget-object v0, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getGoods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/virtualGoods/VirtualGood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    sget-object v0, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    return-object v0
.end method

.method public static getPurchasableItem(Ljava/lang/String;)Lcom/soomla/store/domain/PurchasableVirtualItem;
    .locals 3
    .param p0, "productId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v1, Lcom/soomla/store/data/StoreInfo;->mPurchasableItems:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/PurchasableVirtualItem;

    .line 228
    .local v0, "item":Lcom/soomla/store/domain/PurchasableVirtualItem;
    if-nez v0, :cond_0

    .line 229
    new-instance v1, Lcom/soomla/store/exceptions/VirtualItemNotFoundException;

    const-string v2, "productId"

    invoke-direct {v1, v2, p0}, Lcom/soomla/store/exceptions/VirtualItemNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    return-object v0
.end method

.method public static getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;
    .locals 3
    .param p0, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 207
    sget-object v1, Lcom/soomla/store/data/StoreInfo;->mVirtualItems:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/VirtualItem;

    .line 208
    .local v0, "item":Lcom/soomla/store/domain/VirtualItem;
    if-nez v0, :cond_0

    .line 209
    new-instance v1, Lcom/soomla/store/exceptions/VirtualItemNotFoundException;

    const-string v2, "itemId"

    invoke-direct {v1, v2, p0}, Lcom/soomla/store/exceptions/VirtualItemNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    return-object v0
.end method

.method public static hasUpgrades(Ljava/lang/String;)Z
    .locals 1
    .param p0, "goodItemId"    # Ljava/lang/String;

    .prologue
    .line 182
    sget-object v0, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static initializeWithStoreAssets(Lcom/soomla/store/IStoreAssets;)V
    .locals 9
    .param p0, "storeAssets"    # Lcom/soomla/store/IStoreAssets;

    .prologue
    .line 632
    new-instance v7, Ljava/util/LinkedList;

    invoke-interface {p0}, Lcom/soomla/store/IStoreAssets;->getCurrencies()[Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v7, Lcom/soomla/store/data/StoreInfo;->mCurrencies:Ljava/util/List;

    .line 633
    new-instance v7, Ljava/util/LinkedList;

    invoke-interface {p0}, Lcom/soomla/store/IStoreAssets;->getCurrencyPacks()[Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v7, Lcom/soomla/store/data/StoreInfo;->mCurrencyPacks:Ljava/util/List;

    .line 634
    new-instance v7, Ljava/util/LinkedList;

    invoke-interface {p0}, Lcom/soomla/store/IStoreAssets;->getGoods()[Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v7, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    .line 635
    new-instance v7, Ljava/util/LinkedList;

    invoke-interface {p0}, Lcom/soomla/store/IStoreAssets;->getCategories()[Lcom/soomla/store/domain/VirtualCategory;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v7, Lcom/soomla/store/data/StoreInfo;->mCategories:Ljava/util/List;

    .line 637
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/soomla/store/data/StoreInfo;->mVirtualItems:Ljava/util/HashMap;

    .line 638
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/soomla/store/data/StoreInfo;->mPurchasableItems:Ljava/util/HashMap;

    .line 639
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/soomla/store/data/StoreInfo;->mGoodsCategories:Ljava/util/HashMap;

    .line 640
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    .line 642
    sget-object v7, Lcom/soomla/store/data/StoreInfo;->mCurrencies:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    .line 643
    .local v6, "vi":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    sget-object v7, Lcom/soomla/store/data/StoreInfo;->mVirtualItems:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 646
    .end local v6    # "vi":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    :cond_0
    sget-object v7, Lcom/soomla/store/data/StoreInfo;->mCurrencyPacks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;

    .line 647
    .local v6, "vi":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
    sget-object v7, Lcom/soomla/store/data/StoreInfo;->mVirtualItems:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-virtual {v6}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;

    move-result-object v4

    .line 650
    .local v4, "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    instance-of v7, v4, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    if-eqz v7, :cond_1

    .line 651
    sget-object v7, Lcom/soomla/store/data/StoreInfo;->mPurchasableItems:Ljava/util/HashMap;

    check-cast v4, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    .end local v4    # "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    invoke-virtual {v4}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->getMarketItem()Lcom/soomla/store/domain/MarketItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 656
    .end local v6    # "vi":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
    :cond_2
    sget-object v7, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 657
    .local v6, "vi":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    sget-object v7, Lcom/soomla/store/data/StoreInfo;->mVirtualItems:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    instance-of v7, v6, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    if-eqz v7, :cond_5

    .line 660
    sget-object v8, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    move-object v7, v6

    check-cast v7, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    invoke-virtual {v7}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getGoodItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 661
    .local v5, "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    if-nez v5, :cond_4

    .line 662
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .restart local v5    # "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    sget-object v8, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    move-object v7, v6

    check-cast v7, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    invoke-virtual {v7}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getGoodItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v7, v6

    .line 665
    check-cast v7, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v5    # "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    :cond_5
    invoke-virtual {v6}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;

    move-result-object v4

    .line 669
    .restart local v4    # "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    instance-of v7, v4, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    if-eqz v7, :cond_3

    .line 670
    sget-object v7, Lcom/soomla/store/data/StoreInfo;->mPurchasableItems:Ljava/util/HashMap;

    check-cast v4, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    .end local v4    # "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    invoke-virtual {v4}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->getMarketItem()Lcom/soomla/store/domain/MarketItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 675
    .end local v6    # "vi":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    :cond_6
    sget-object v7, Lcom/soomla/store/data/StoreInfo;->mCategories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/VirtualCategory;

    .line 676
    .local v0, "category":Lcom/soomla/store/domain/VirtualCategory;
    invoke-virtual {v0}, Lcom/soomla/store/domain/VirtualCategory;->getGoodsItemIds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 677
    .local v1, "goodItemId":Ljava/lang/String;
    sget-object v7, Lcom/soomla/store/data/StoreInfo;->mGoodsCategories:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 683
    .end local v0    # "category":Lcom/soomla/store/domain/VirtualCategory;
    .end local v1    # "goodItemId":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    sget-boolean v7, Lcom/soomla/store/data/StoreInfo;->mNonConsumableMigrationNeeded:Z

    if-eqz v7, :cond_9

    .line 684
    const-string v7, "SOOMLA StoreInfo"

    const-string v8, "NonConsumables balance migration is required. Doing it now."

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->nonConsBalancesToLTVGs()V

    .line 688
    :cond_9
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->save()V

    .line 689
    return-void
.end method

.method public static isItemNonConsumable(Lcom/soomla/store/domain/PurchasableVirtualItem;)Z
    .locals 1
    .param p0, "pvi"    # Lcom/soomla/store/domain/PurchasableVirtualItem;

    .prologue
    .line 192
    instance-of v0, p0, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;

    move-result-object v0

    instance-of v0, v0, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static keyMetaStoreInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    const-string v0, "meta.storeinfo"

    return-object v0
.end method

.method public static loadFromDB()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->checkAndResetMetadata()V

    .line 139
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->keyMetaStoreInfo()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/soomla/data/KeyValueStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "val":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    :cond_0
    const-string v4, "SOOMLA StoreInfo"

    const-string v5, "store json is not in DB yet."

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    return v3

    .line 149
    :cond_1
    const-string v4, "jsonType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    const-string v4, "SOOMLA StoreInfo"

    const-string v5, "the StoreInfo JSON is from an older version. we need to delete and let it be recreated."

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {v1}, Lcom/soomla/data/KeyValueStorage;->deleteKeyValue(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    const-string v4, "SOOMLA StoreInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the metadata-economy json (from DB) is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/soomla/store/data/StoreInfo;->fromJSONObject(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v3, 0x1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "SOOMLA StoreInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t parse metadata json. Going to return false and make StoreInfo load from static data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static nonConsBalancesToLTVGs()V
    .locals 5

    .prologue
    .line 726
    sget-object v3, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 727
    .local v0, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    instance-of v3, v0, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;

    move-result-object v3

    instance-of v3, v3, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    if-eqz v3, :cond_0

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nonconsumable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "keyNonConsExist":Ljava/lang/String;
    invoke-static {v2}, Lcom/soomla/data/KeyValueStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 730
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->give(I)I

    .line 731
    invoke-static {v2}, Lcom/soomla/data/KeyValueStorage;->deleteKeyValue(Ljava/lang/String;)V

    goto :goto_0

    .line 735
    .end local v0    # "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    .end local v2    # "keyNonConsExist":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    sput-boolean v3, Lcom/soomla/store/data/StoreInfo;->mNonConsumableMigrationNeeded:Z

    .line 736
    return-void
.end method

.method public static replaceVirtualItem(Lcom/soomla/store/domain/VirtualItem;)V
    .locals 7
    .param p0, "virtualItem"    # Lcom/soomla/store/domain/VirtualItem;

    .prologue
    .line 566
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mVirtualItems:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/soomla/store/domain/VirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    instance-of v5, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    if-eqz v5, :cond_1

    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mCurrencies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 570
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mCurrencies:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    invoke-virtual {v5}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/soomla/store/domain/VirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 571
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mCurrencies:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 575
    :cond_0
    sget-object v6, Lcom/soomla/store/data/StoreInfo;->mCurrencies:Ljava/util/List;

    move-object v5, p0

    check-cast v5, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v0    # "i":I
    :cond_1
    instance-of v5, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;

    if-eqz v5, :cond_4

    move-object v3, p0

    .line 579
    check-cast v3, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;

    .line 580
    .local v3, "vcp":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;

    move-result-object v1

    .line 581
    .local v1, "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    instance-of v5, v1, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    if-eqz v5, :cond_2

    .line 582
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mPurchasableItems:Ljava/util/HashMap;

    check-cast v1, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    .end local v1    # "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    invoke-virtual {v1}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->getMarketItem()Lcom/soomla/store/domain/MarketItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mCurrencyPacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 587
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mCurrencyPacks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;

    invoke-virtual {v5}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 588
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mCurrencyPacks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 592
    :cond_3
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mCurrencyPacks:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v0    # "i":I
    .end local v3    # "vcp":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
    :cond_4
    instance-of v5, p0, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    if-eqz v5, :cond_9

    move-object v4, p0

    .line 596
    check-cast v4, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 598
    .local v4, "vg":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    instance-of v5, v4, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    if-eqz v5, :cond_6

    .line 599
    sget-object v6, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    move-object v5, v4

    check-cast v5, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    invoke-virtual {v5}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getGoodItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 600
    .local v2, "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    if-nez v2, :cond_5

    .line 601
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .restart local v2    # "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    sget-object v6, Lcom/soomla/store/data/StoreInfo;->mGoodsUpgrades:Ljava/util/HashMap;

    move-object v5, v4

    check-cast v5, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    invoke-virtual {v5}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getGoodItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v5, v4

    .line 604
    check-cast v5, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    .end local v2    # "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    :cond_6
    invoke-virtual {v4}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;

    move-result-object v1

    .line 608
    .restart local v1    # "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    instance-of v5, v1, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    if-eqz v5, :cond_7

    .line 609
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mPurchasableItems:Ljava/util/HashMap;

    check-cast v1, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    .end local v1    # "purchaseType":Lcom/soomla/store/purchaseTypes/PurchaseType;
    invoke-virtual {v1}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->getMarketItem()Lcom/soomla/store/domain/MarketItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 614
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    invoke-virtual {v5}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 615
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 619
    :cond_8
    sget-object v5, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    .end local v0    # "i":I
    .end local v4    # "vg":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    :cond_9
    return-void

    .line 569
    .restart local v0    # "i":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 586
    .restart local v3    # "vcp":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 613
    .end local v3    # "vcp":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
    .restart local v4    # "vg":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static save()V
    .locals 5

    .prologue
    .line 540
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "store_json":Ljava/lang/String;
    const-string v2, "SOOMLA StoreInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saving StoreInfo to DB. json is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->keyMetaStoreInfo()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/soomla/data/KeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public static save(Lcom/soomla/store/domain/VirtualItem;)V
    .locals 0
    .param p0, "virtualItem"    # Lcom/soomla/store/domain/VirtualItem;

    .prologue
    .line 552
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->replaceVirtualItem(Lcom/soomla/store/domain/VirtualItem;)V

    .line 553
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->save()V

    .line 554
    return-void
.end method

.method public static setStoreAssets(ILjava/lang/String;)V
    .locals 5
    .param p0, "version"    # I
    .param p1, "storeMetaJSON"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v2, "SOOMLA StoreInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trying to set json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const-string v2, "SOOMLA StoreInfo"

    const-string v3, "The given store assets JSON can\'t be empty or null!"

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    sput p0, Lcom/soomla/store/data/StoreInfo;->mCurrentAssetsVersion:I

    .line 116
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->loadFromDB()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const-string v2, "SOOMLA StoreInfo"

    const-string v3, "didn\'t find anything in DB to load. continuing with store assets json."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/soomla/store/data/StoreInfo;->fromJSONObject(Lorg/json/JSONObject;)V

    .line 120
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->save()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t parse store metadata json. That\'s a major issue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "err":Ljava/lang/String;
    const-string v2, "SOOMLA StoreInfo"

    invoke-static {v2, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;

    invoke-direct {v3, v1}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setStoreAssets(Lcom/soomla/store/IStoreAssets;)V
    .locals 2
    .param p0, "storeAssets"    # Lcom/soomla/store/IStoreAssets;

    .prologue
    .line 78
    if-nez p0, :cond_1

    .line 79
    const-string v0, "SOOMLA StoreInfo"

    const-string v1, "The given store assets can\'t be null!"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-interface {p0}, Lcom/soomla/store/IStoreAssets;->getVersion()I

    move-result v0

    sput v0, Lcom/soomla/store/data/StoreInfo;->mCurrentAssetsVersion:I

    .line 90
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->loadFromDB()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->initializeWithStoreAssets(Lcom/soomla/store/IStoreAssets;)V

    goto :goto_0
.end method

.method public static toJSONObject()Lorg/json/JSONObject;
    .locals 20

    .prologue
    .line 481
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 482
    .local v5, "currencies":Lorg/json/JSONArray;
    sget-object v18, Lcom/soomla/store/data/StoreInfo;->mCurrencies:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    .line 483
    .local v2, "c":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 486
    .end local v2    # "c":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    :cond_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 487
    .local v6, "currencyPacks":Lorg/json/JSONArray;
    sget-object v18, Lcom/soomla/store/data/StoreInfo;->mCurrencyPacks:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;

    .line 488
    .local v15, "pack":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
    invoke-virtual {v15}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 491
    .end local v15    # "pack":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
    :cond_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 492
    .local v10, "goods":Lorg/json/JSONObject;
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 493
    .local v16, "suGoods":Lorg/json/JSONArray;
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 494
    .local v13, "ltGoods":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 495
    .local v8, "eqGoods":Lorg/json/JSONArray;
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 496
    .local v14, "paGoods":Lorg/json/JSONArray;
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 497
    .local v17, "upGoods":Lorg/json/JSONArray;
    sget-object v18, Lcom/soomla/store/data/StoreInfo;->mGoods:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 498
    .local v9, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    instance-of v0, v9, Lcom/soomla/store/domain/virtualGoods/SingleUseVG;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 499
    invoke-virtual {v9}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 500
    :cond_3
    instance-of v0, v9, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 501
    invoke-virtual {v9}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 502
    :cond_4
    instance-of v0, v9, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 503
    invoke-virtual {v9}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 504
    :cond_5
    instance-of v0, v9, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 505
    invoke-virtual {v9}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 506
    :cond_6
    instance-of v0, v9, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 507
    invoke-virtual {v9}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 512
    .end local v9    # "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    :cond_7
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 513
    .local v4, "categories":Lorg/json/JSONArray;
    sget-object v18, Lcom/soomla/store/data/StoreInfo;->mCategories:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/soomla/store/domain/VirtualCategory;

    .line 514
    .local v3, "cat":Lcom/soomla/store/domain/VirtualCategory;
    invoke-virtual {v3}, Lcom/soomla/store/domain/VirtualCategory;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 517
    .end local v3    # "cat":Lcom/soomla/store/domain/VirtualCategory;
    :cond_8
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 519
    .local v12, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v18, "singleUse"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v18, "lifetime"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v18, "equippable"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v18, "goodPacks"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string v18, "goodUpgrades"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string v18, "categories"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string v18, "currencies"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string v18, "goods"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    const-string v18, "currencyPacks"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_4
    return-object v12

    .line 529
    :catch_0
    move-exception v7

    .line 530
    .local v7, "e":Lorg/json/JSONException;
    const-string v18, "SOOMLA StoreInfo"

    const-string v19, "An error occurred while generating JSON object."

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
