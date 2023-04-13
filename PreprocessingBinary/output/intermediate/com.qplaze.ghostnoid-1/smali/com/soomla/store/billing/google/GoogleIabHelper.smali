.class public Lcom/soomla/store/billing/google/GoogleIabHelper;
.super Lcom/soomla/store/billing/IabHelper;
.source "GoogleIabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;,
        Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;
    }
.end annotation


# static fields
.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field private static final RC_REQUEST:I = 0x2711

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field public static final SKU_QUERY_MAX_CHUNK_SIZE:I = 0x13

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mPurchasingItemSku:Ljava/lang/String;

.field private mPurchasingItemType:Ljava/lang/String;

.field private mService:Lcom/android/vending/billing/IInAppBillingService;

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 740
    const-string v0, "SOOMLA GoogleIabHelper"

    sput-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/soomla/store/billing/IabHelper;-><init>()V

    .line 86
    sget-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v1, "GoogleIabHelper helper created."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/soomla/store/billing/google/GoogleIabHelper;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 1
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabInventory;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabInventory;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->fetchSkusDetailsSuccess(Lcom/soomla/store/billing/IabInventory;)V

    return-void
.end method

.method static synthetic access$102(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;
    .param p1, "x1"    # Lcom/android/vending/billing/IInAppBillingService;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/soomla/store/billing/google/GoogleIabHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GoogleIabHelper;->flagEndAsync()V

    return-void
.end method

.method static synthetic access$200(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabResult;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->setupFailed(Lcom/soomla/store/billing/IabResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/soomla/store/billing/google/GoogleIabHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GoogleIabHelper;->setupSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabResult;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->setupFailed(Lcom/soomla/store/billing/IabResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/soomla/store/billing/google/GoogleIabHelper;)Lcom/soomla/store/billing/IabInventory;
    .locals 1
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/billing/IabException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/soomla/store/billing/google/GoogleIabHelper;->restorePurchases()Lcom/soomla/store/billing/IabInventory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabResult;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->restorePurchasesFailed(Lcom/soomla/store/billing/IabResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabInventory;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabInventory;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->restorePurchasesSuccess(Lcom/soomla/store/billing/IabInventory;)V

    return-void
.end method

.method static synthetic access$800(Lcom/soomla/store/billing/google/GoogleIabHelper;Ljava/util/List;)Lcom/soomla/store/billing/IabInventory;
    .locals 1
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;
    .param p1, "x1"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/billing/IabException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->fetchSkusDetails(Ljava/util/List;)Lcom/soomla/store/billing/IabInventory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GoogleIabHelper;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabResult;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->fetchSkusDetailsFailed(Lcom/soomla/store/billing/IabResult;)V

    return-void
.end method

.method private consumeAsyncInternal(Ljava/util/List;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/billing/IabPurchase;",
            ">;",
            "Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;",
            "Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabPurchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 468
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/soomla/store/billing/google/GoogleIabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 469
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/soomla/store/billing/google/GoogleIabHelper$4;-><init>(Lcom/soomla/store/billing/google/GoogleIabHelper;Ljava/util/List;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 500
    return-void
.end method

.method private fetchSkusDetails(Ljava/util/List;)Lcom/soomla/store/billing/IabInventory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/soomla/store/billing/IabInventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/billing/IabException;
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "fetchSkusDetails"

    invoke-virtual {p0, v3}, Lcom/soomla/store/billing/google/GoogleIabHelper;->checkSetupDoneAndThrow(Ljava/lang/String;)V

    .line 512
    :try_start_0
    new-instance v1, Lcom/soomla/store/billing/IabInventory;

    invoke-direct {v1}, Lcom/soomla/store/billing/IabInventory;-><init>()V

    .line 513
    .local v1, "inv":Lcom/soomla/store/billing/IabInventory;
    const-string v3, "inapp"

    invoke-direct {p0, v3, v1, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->querySkuDetails(Ljava/lang/String;Lcom/soomla/store/billing/IabInventory;Ljava/util/List;)I

    move-result v2

    .line 514
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 515
    new-instance v3, Lcom/soomla/store/billing/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/soomla/store/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 520
    .end local v1    # "inv":Lcom/soomla/store/billing/IabInventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/soomla/store/billing/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/soomla/store/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 524
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/soomla/store/billing/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/soomla/store/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 518
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/soomla/store/billing/IabInventory;
    .restart local v2    # "r":I
    :cond_0
    return-object v1
.end method

.method private getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 706
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 707
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 708
    sget-object v1, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v2, "Bundle with null response code, assuming OK (known issue)"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v1, 0x0

    .line 712
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 711
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 712
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 714
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    sget-object v1, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected type for bundle response code."

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    sget-object v1, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 724
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 725
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 726
    sget-object v1, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v2, "Intent with no response code, assuming OK (known issue)"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v1, 0x0

    .line 730
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 729
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 730
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 732
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    sget-object v1, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected type for intent response code."

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    sget-object v1, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private queryPurchases(Lcom/soomla/store/billing/IabInventory;Ljava/lang/String;)I
    .locals 21
    .param p1, "inv"    # Lcom/soomla/store/billing/IabInventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Querying owned items, item type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/16 v17, 0x0

    .line 539
    .local v17, "verificationFailed":Z
    const/4 v4, 0x0

    .line 542
    .local v4, "continueToken":Ljava/lang/String;
    :cond_0
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Calling getPurchases with continuation token: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 546
    .local v6, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/soomla/store/billing/google/GoogleIabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v13

    .line 547
    .local v13, "response":I
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Owned items response: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    if-eqz v13, :cond_1

    .line 549
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getPurchases() failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v13}, Lcom/soomla/store/billing/IabResult;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .end local v13    # "response":I
    :goto_0
    return v13

    .line 552
    .restart local v13    # "response":I
    :cond_1
    const-string v18, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "INAPP_PURCHASE_DATA_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "INAPP_DATA_SIGNATURE_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 555
    :cond_2
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v19, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/16 v13, -0x3ea

    goto :goto_0

    .line 559
    :cond_3
    const-string v18, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 561
    .local v7, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v18, "INAPP_PURCHASE_DATA_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 563
    .local v12, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v18, "INAPP_DATA_SIGNATURE_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 566
    .local v15, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "store.prefs"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 568
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v18, "PO#SU#SO#GU"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 569
    .local v9, "publicKey":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_6

    .line 570
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 571
    .local v11, "purchaseData":Ljava/lang/String;
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 572
    .local v14, "signature":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 573
    .local v16, "sku":Ljava/lang/String;
    invoke-static {v9, v11, v14}, Lcom/soomla/store/billing/google/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 574
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Sku is owned: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v10, Lcom/soomla/store/billing/IabPurchase;

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v11, v14}, Lcom/soomla/store/billing/IabPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .local v10, "purchase":Lcom/soomla/store/billing/IabPurchase;
    invoke-virtual {v10}, Lcom/soomla/store/billing/IabPurchase;->getToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 578
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v19, "BUG: empty/null token!"

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "IabPurchase data: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/soomla/store/billing/IabInventory;->addPurchase(Lcom/soomla/store/billing/IabPurchase;)V

    .line 569
    .end local v10    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 586
    :cond_5
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v19, "IabPurchase signature verification **FAILED**. Not adding item."

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "   IabPurchase data: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "   Signature: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/16 v17, 0x1

    goto :goto_2

    .line 593
    .end local v11    # "purchaseData":Ljava/lang/String;
    .end local v14    # "signature":Ljava/lang/String;
    .end local v16    # "sku":Ljava/lang/String;
    :cond_6
    const-string v18, "INAPP_CONTINUATION_TOKEN"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 594
    sget-object v18, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Continuation token: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 597
    if-eqz v17, :cond_7

    const/16 v18, -0x3eb

    :goto_3
    move/from16 v13, v18

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x0

    goto :goto_3
.end method

.method private querySkuDetails(Ljava/lang/String;Lcom/soomla/store/billing/IabInventory;Ljava/util/List;)I
    .locals 10
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/soomla/store/billing/IabInventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/soomla/store/billing/IabInventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 631
    sget-object v6, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v7, "Querying SKU details."

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 639
    .local v3, "skuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 641
    .local v2, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 642
    sget-object v6, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v7, "queryPrices: nothing to do because there are no SKUs."

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 663
    :goto_0
    return v1

    .line 647
    :cond_0
    const/4 v0, 0x1

    .line 648
    .local v0, "chunkIndex":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 649
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0x13

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 651
    .local v4, "skuSubList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 652
    invoke-direct {p0, p1, p2, v4}, Lcom/soomla/store/billing/google/GoogleIabHelper;->querySkuDetailsChunk(Ljava/lang/String;Lcom/soomla/store/billing/IabInventory;Ljava/util/ArrayList;)I

    move-result v1

    .line 653
    .local v1, "chunkResponse":I
    if-eqz v1, :cond_1

    .line 656
    sget-object v6, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v7, "querySkuDetails[chunk=%d] failed: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x1

    invoke-static {v1}, Lcom/soomla/store/billing/IabResult;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 661
    goto :goto_1

    .end local v1    # "chunkResponse":I
    .end local v4    # "skuSubList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move v1, v5

    .line 663
    goto :goto_0
.end method

.method private querySkuDetailsChunk(Ljava/lang/String;Lcom/soomla/store/billing/IabInventory;Ljava/util/ArrayList;)I
    .locals 10
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/soomla/store/billing/IabInventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/soomla/store/billing/IabInventory;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 673
    .local p3, "chunkSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 674
    .local v2, "querySkus":Landroid/os/Bundle;
    const-string v7, "ITEM_ID_LIST"

    invoke-virtual {v2, v7, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 675
    iget-object v7, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v8, 0x3

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 678
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string v7, "DETAILS_LIST"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 679
    invoke-direct {p0, v5}, Lcom/soomla/store/billing/google/GoogleIabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    .line 680
    .local v3, "response":I
    if-eqz v3, :cond_0

    .line 681
    sget-object v7, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "querySkuDetailsChunk() failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/soomla/store/billing/IabResult;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .end local v3    # "response":I
    :goto_0
    return v3

    .line 685
    .restart local v3    # "response":I
    :cond_0
    sget-object v7, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v8, "querySkuDetailsChunk() returned a bundle with neither an error nor a detail list."

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/16 v3, -0x3ea

    goto :goto_0

    .line 690
    .end local v3    # "response":I
    :cond_1
    const-string v7, "DETAILS_LIST"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 693
    .local v4, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 694
    .local v6, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/soomla/store/billing/IabSkuDetails;

    invoke-direct {v0, p1, v6}, Lcom/soomla/store/billing/IabSkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .local v0, "d":Lcom/soomla/store/billing/IabSkuDetails;
    sget-object v7, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got sku details: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2, v0}, Lcom/soomla/store/billing/IabInventory;->addSkuDetails(Lcom/soomla/store/billing/IabSkuDetails;)V

    goto :goto_1

    .line 699
    .end local v0    # "d":Lcom/soomla/store/billing/IabSkuDetails;
    .end local v6    # "thisResponse":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private restorePurchases()Lcom/soomla/store/billing/IabInventory;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/billing/IabException;
        }
    .end annotation

    .prologue
    .line 606
    const-string v3, "restorePurchases"

    invoke-virtual {p0, v3}, Lcom/soomla/store/billing/google/GoogleIabHelper;->checkSetupDoneAndThrow(Ljava/lang/String;)V

    .line 608
    :try_start_0
    new-instance v1, Lcom/soomla/store/billing/IabInventory;

    invoke-direct {v1}, Lcom/soomla/store/billing/IabInventory;-><init>()V

    .line 609
    .local v1, "inv":Lcom/soomla/store/billing/IabInventory;
    const-string v3, "inapp"

    invoke-direct {p0, v1, v3}, Lcom/soomla/store/billing/google/GoogleIabHelper;->queryPurchases(Lcom/soomla/store/billing/IabInventory;Ljava/lang/String;)I

    move-result v2

    .line 610
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 611
    new-instance v3, Lcom/soomla/store/billing/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/soomla/store/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 615
    .end local v1    # "inv":Lcom/soomla/store/billing/IabInventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/soomla/store/billing/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/soomla/store/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 618
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 619
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/soomla/store/billing/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/soomla/store/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 613
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/soomla/store/billing/IabInventory;
    .restart local v2    # "r":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public consume(Lcom/soomla/store/billing/IabPurchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/soomla/store/billing/IabPurchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/billing/IabException;
        }
    .end annotation

    .prologue
    .line 268
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/soomla/store/billing/google/GoogleIabHelper;->checkSetupDoneAndThrow(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getItemType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 271
    new-instance v4, Lcom/soomla/store/billing/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Items of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getItemType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/soomla/store/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 276
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    :cond_1
    sget-object v4, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t consume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". No token."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v4, Lcom/soomla/store/billing/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/soomla/store/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/soomla/store/billing/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/soomla/store/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v4, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Consuming sku: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v4, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 286
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 287
    sget-object v4, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully consumed sku: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void

    .line 290
    :cond_3
    sget-object v4, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/soomla/store/billing/IabResult;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v4, Lcom/soomla/store/billing/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/soomla/store/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;
    .param p2, "listener"    # Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;

    .prologue
    .line 310
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->checkSetupDoneAndThrow(Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabPurchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;)V

    .line 314
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/billing/IabPurchase;",
            ">;",
            "Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabPurchase;>;"
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/soomla/store/billing/google/GoogleIabHelper;->checkSetupDoneAndThrow(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/soomla/store/billing/google/GoogleIabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;)V

    .line 324
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    sget-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v1, "Disposing."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-super {p0}, Lcom/soomla/store/billing/IabHelper;->dispose()V

    .line 146
    iget-object v0, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 147
    sget-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unbinding from service."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 149
    :cond_0
    iput-object v2, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 150
    iput-object v2, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 152
    :cond_1
    return-void
.end method

.method protected fetchSkusDetailsAsyncInner(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/soomla/store/billing/google/GoogleIabHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper$3;-><init>(Lcom/soomla/store/billing/google/GoogleIabHelper;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 398
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 169
    const/16 v11, 0x2711

    if-eq p1, v11, :cond_0

    const/4 v11, 0x0

    .line 255
    :goto_0
    return v11

    .line 171
    :cond_0
    const-string v11, "handleActivityResult"

    invoke-virtual {p0, v11}, Lcom/soomla/store/billing/google/GoogleIabHelper;->checkSetupDoneAndThrow(Ljava/lang/String;)V

    .line 174
    if-nez p2, :cond_1

    .line 175
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v12, "IabPurchase canceled."

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :try_start_0
    new-instance v5, Lcom/soomla/store/billing/IabPurchase;

    iget-object v11, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mPurchasingItemType:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "{\"productId\":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mPurchasingItemSku:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v5, v11, v12, v13}, Lcom/soomla/store/billing/IabPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v5, "purchase":Lcom/soomla/store/billing/IabPurchase;
    new-instance v9, Lcom/soomla/store/billing/IabResult;

    const/4 v11, 0x1

    const-string v12, "User canceled."

    invoke-direct {v9, v11, v12}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 179
    .local v9, "result":Lcom/soomla/store/billing/IabResult;
    invoke-virtual {p0, v9, v5}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v11, 0x1

    goto :goto_0

    .line 181
    .end local v5    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    .end local v9    # "result":Lcom/soomla/store/billing/IabResult;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Lorg/json/JSONException;
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v12, "Failed to generate canceled purchase."

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 184
    new-instance v9, Lcom/soomla/store/billing/IabResult;

    const/16 v11, -0x3ea

    const-string v12, "Failed to generate canceled purchase."

    invoke-direct {v9, v11, v12}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 185
    .restart local v9    # "result":Lcom/soomla/store/billing/IabResult;
    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    .line 186
    const/4 v11, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v9    # "result":Lcom/soomla/store/billing/IabResult;
    :cond_1
    if-nez p3, :cond_2

    .line 191
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v12, "Null data in IAB activity result."

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v9, Lcom/soomla/store/billing/IabResult;

    const/16 v11, -0x3ea

    const-string v12, "Null data in IAB result"

    invoke-direct {v9, v11, v12}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 193
    .restart local v9    # "result":Lcom/soomla/store/billing/IabResult;
    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    .line 194
    const/4 v11, 0x1

    goto :goto_0

    .line 197
    .end local v9    # "result":Lcom/soomla/store/billing/IabResult;
    :cond_2
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/soomla/store/billing/google/GoogleIabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v8

    .line 198
    .local v8, "responseCode":I
    const-string v11, "INAPP_PURCHASE_DATA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, "purchaseData":Ljava/lang/String;
    const-string v11, "INAPP_DATA_SIGNATURE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "dataSignature":Ljava/lang/String;
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_6

    if-nez v8, :cond_6

    .line 202
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v12, "Successful resultcode from purchase activity."

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IabPurchase data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Data signature: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Extras: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected item type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-eqz v7, :cond_3

    if-nez v1, :cond_4

    .line 209
    :cond_3
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v12, "BUG: either purchaseData or dataSignature is null."

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Extras: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v9, Lcom/soomla/store/billing/IabResult;

    const/16 v11, -0x3f0

    const-string v12, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v9, v11, v12}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 212
    .restart local v9    # "result":Lcom/soomla/store/billing/IabResult;
    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    .line 213
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 216
    .end local v9    # "result":Lcom/soomla/store/billing/IabResult;
    :cond_4
    const/4 v5, 0x0

    .line 218
    .restart local v5    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    :try_start_1
    new-instance v6, Lcom/soomla/store/billing/IabPurchase;

    iget-object v11, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v6, v11, v7, v1}, Lcom/soomla/store/billing/IabPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    .end local v5    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    .local v6, "purchase":Lcom/soomla/store/billing/IabPurchase;
    :try_start_2
    invoke-virtual {v6}, Lcom/soomla/store/billing/IabPurchase;->getSku()Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, "sku":Ljava/lang/String;
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "store.prefs"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 223
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v11, "PO#SU#SO#GU"

    const-string v12, ""

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "publicKey":Ljava/lang/String;
    invoke-static {v4, v7, v1}, Lcom/soomla/store/billing/google/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 227
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IabPurchase signature verification FAILED for sku "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v9, Lcom/soomla/store/billing/IabResult;

    const/16 v11, -0x3eb

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Signature verification failed for sku "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 229
    .restart local v9    # "result":Lcom/soomla/store/billing/IabResult;
    invoke-virtual {p0, v9, v6}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    .line 230
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 232
    .end local v9    # "result":Lcom/soomla/store/billing/IabResult;
    :cond_5
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v12, "IabPurchase signature successfully verified."

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 242
    invoke-virtual {p0, v6}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseSucceeded(Lcom/soomla/store/billing/IabPurchase;)V

    .line 255
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "publicKey":Ljava/lang/String;
    .end local v6    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    .end local v10    # "sku":Ljava/lang/String;
    :goto_1
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 234
    .restart local v5    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    :catch_1
    move-exception v2

    .line 235
    .restart local v2    # "e":Lorg/json/JSONException;
    :goto_2
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v12, "Failed to parse purchase data."

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 237
    new-instance v9, Lcom/soomla/store/billing/IabResult;

    const/16 v11, -0x3ea

    const-string v12, "Failed to parse purchase data."

    invoke-direct {v9, v11, v12}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 238
    .restart local v9    # "result":Lcom/soomla/store/billing/IabResult;
    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    .line 239
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 243
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v5    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    .end local v9    # "result":Lcom/soomla/store/billing/IabResult;
    :cond_6
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_7

    .line 245
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Lcom/soomla/store/billing/IabResult;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v9, Lcom/soomla/store/billing/IabResult;

    const-string v11, "Problem purchashing item."

    invoke-direct {v9, v8, v11}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 247
    .restart local v9    # "result":Lcom/soomla/store/billing/IabResult;
    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    goto :goto_1

    .line 250
    .end local v9    # "result":Lcom/soomla/store/billing/IabResult;
    :cond_7
    sget-object v11, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IabPurchase failed. Result code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Response: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Lcom/soomla/store/billing/IabResult;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v9, Lcom/soomla/store/billing/IabResult;

    const/16 v11, -0x3ee

    const-string v12, "Unknown purchase response."

    invoke-direct {v9, v11, v12}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 253
    .restart local v9    # "result":Lcom/soomla/store/billing/IabResult;
    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    goto/16 :goto_1

    .line 234
    .end local v9    # "result":Lcom/soomla/store/billing/IabResult;
    .restart local v6    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    .restart local v5    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    goto/16 :goto_2
.end method

.method protected launchPurchaseFlowInner(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;

    .prologue
    .line 408
    :try_start_0
    sget-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inapp"

    move-object v3, p2

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 410
    .local v7, "buyIntentBundle":Landroid/os/Bundle;
    const-string v0, "PURCHASE_SKU"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, v7}, Lcom/soomla/store/billing/google/GoogleIabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v11

    .line 412
    .local v11, "response":I
    if-eqz v11, :cond_0

    .line 413
    sget-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Lcom/soomla/store/billing/IabResult;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v9, Lcom/soomla/store/billing/IabPurchase;

    const-string v0, "inapp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"productId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v9, v0, v1, v2}, Lcom/soomla/store/billing/IabPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .local v9, "failPurchase":Lcom/soomla/store/billing/IabPurchase;
    new-instance v12, Lcom/soomla/store/billing/IabResult;

    const-string v0, "Unable to buy item"

    invoke-direct {v12, v11, v0}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 417
    .local v12, "result":Lcom/soomla/store/billing/IabResult;
    invoke-virtual {p0, v12, v9}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    .line 418
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 452
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v9    # "failPurchase":Lcom/soomla/store/billing/IabPurchase;
    .end local v11    # "response":I
    .end local v12    # "result":Lcom/soomla/store/billing/IabResult;
    :goto_0
    return-void

    .line 422
    .restart local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v11    # "response":I
    :cond_0
    const-string v0, "BUY_INTENT"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 423
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iput-object p2, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mPurchasingItemSku:Ljava/lang/String;

    .line 425
    const-string v0, "inapp"

    iput-object v0, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 427
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x2711

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 431
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "response":I
    :catch_0
    move-exception v8

    .line 432
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    sget-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v8}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 435
    new-instance v12, Lcom/soomla/store/billing/IabResult;

    const/16 v0, -0x3ec

    const-string v1, "Failed to send intent."

    invoke-direct {v12, v0, v1}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 436
    .restart local v12    # "result":Lcom/soomla/store/billing/IabResult;
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    goto/16 :goto_0

    .line 437
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v12    # "result":Lcom/soomla/store/billing/IabResult;
    :catch_1
    move-exception v8

    .line 438
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 441
    new-instance v12, Lcom/soomla/store/billing/IabResult;

    const/16 v0, -0x3e9

    const-string v1, "Remote exception while starting purchase flow"

    invoke-direct {v12, v0, v1}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 442
    .restart local v12    # "result":Lcom/soomla/store/billing/IabResult;
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    goto/16 :goto_0

    .line 443
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v12    # "result":Lcom/soomla/store/billing/IabResult;
    :catch_2
    move-exception v8

    .line 444
    .local v8, "e":Lorg/json/JSONException;
    sget-object v0, Lcom/soomla/store/billing/google/GoogleIabHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to generate failing purchase."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 447
    new-instance v12, Lcom/soomla/store/billing/IabResult;

    const/16 v0, -0x3ea

    const-string v1, "Failed to generate failing purchase."

    invoke-direct {v12, v0, v1}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 448
    .restart local v12    # "result":Lcom/soomla/store/billing/IabResult;
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/soomla/store/billing/google/GoogleIabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    goto/16 :goto_0
.end method

.method protected restorePurchasesAsyncInner()V
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/soomla/store/billing/google/GoogleIabHelper$2;

    invoke-direct {v1, p0}, Lcom/soomla/store/billing/google/GoogleIabHelper$2;-><init>(Lcom/soomla/store/billing/google/GoogleIabHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 376
    return-void
.end method

.method protected startSetupInner()V
    .locals 4

    .prologue
    .line 93
    new-instance v1, Lcom/soomla/store/billing/google/GoogleIabHelper$1;

    invoke-direct {v1, p0}, Lcom/soomla/store/billing/google/GoogleIabHelper$1;-><init>(Lcom/soomla/store/billing/google/GoogleIabHelper;)V

    iput-object v1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/soomla/store/billing/google/GoogleIabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v1, Lcom/soomla/store/billing/IabResult;

    const/4 v2, 0x3

    const-string v3, "Billing service unavailable on device."

    invoke-direct {v1, v2, v3}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->setupFailed(Lcom/soomla/store/billing/IabResult;)V

    goto :goto_0
.end method
