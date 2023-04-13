.class public Lcom/soomla/store/billing/IabPurchase;
.super Ljava/lang/Object;
.source "IabPurchase.java"


# instance fields
.field private mDeveloperPayload:Ljava/lang/String;

.field private mItemType:Ljava/lang/String;

.field private mOrderId:Ljava/lang/String;

.field private mOriginalJson:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPurchaseState:I

.field private mPurchaseTime:J

.field private mSignature:Ljava/lang/String;

.field private mSku:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "jsonPurchaseInfo"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/soomla/store/billing/IabPurchase;->mItemType:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/soomla/store/billing/IabPurchase;->mOriginalJson:Ljava/lang/String;

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mOrderId:Ljava/lang/String;

    .line 50
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mPackageName:Ljava/lang/String;

    .line 51
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mSku:Ljava/lang/String;

    .line 52
    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/soomla/store/billing/IabPurchase;->mPurchaseTime:J

    .line 53
    const-string v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/soomla/store/billing/IabPurchase;->mPurchaseState:I

    .line 54
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 55
    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mToken:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/soomla/store/billing/IabPurchase;->mSignature:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "purchaseToken"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "purchaseState"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/soomla/store/billing/IabPurchase;->mItemType:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/soomla/store/billing/IabPurchase;->mSku:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/soomla/store/billing/IabPurchase;->mToken:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/soomla/store/billing/IabPurchase;->mOrderId:Ljava/lang/String;

    .line 42
    iput p5, p0, Lcom/soomla/store/billing/IabPurchase;->mPurchaseState:I

    .line 43
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/soomla/store/billing/IabPurchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/soomla/store/billing/IabPurchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setDeveloperPayload(Ljava/lang/String;)V
    .locals 0
    .param p1, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/soomla/store/billing/IabPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
