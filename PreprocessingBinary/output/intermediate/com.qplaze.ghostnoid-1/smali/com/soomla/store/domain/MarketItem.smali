.class public Lcom/soomla/store/domain/MarketItem;
.super Ljava/lang/Object;
.source "MarketItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soomla/store/domain/MarketItem$Managed;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA MarketItem"


# instance fields
.field private mManaged:Lcom/soomla/store/domain/MarketItem$Managed;

.field private mMarketCurrencyCode:Ljava/lang/String;

.field private mMarketDescription:Ljava/lang/String;

.field private mMarketPriceAndCurrency:Ljava/lang/String;

.field private mMarketPriceMicros:J

.field private mMarketTitle:Ljava/lang/String;

.field private mPrice:D

.field private mProductId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/soomla/store/domain/MarketItem$Managed;D)V
    .locals 1
    .param p1, "mProductId"    # Ljava/lang/String;
    .param p2, "mManaged"    # Lcom/soomla/store/domain/MarketItem$Managed;
    .param p3, "mPrice"    # D

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/soomla/store/domain/MarketItem;->mProductId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/soomla/store/domain/MarketItem;->mManaged:Lcom/soomla/store/domain/MarketItem$Managed;

    .line 42
    iput-wide p3, p0, Lcom/soomla/store/domain/MarketItem;->mPrice:D

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "consumable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/soomla/store/domain/MarketItem$Managed;->values()[Lcom/soomla/store/domain/MarketItem$Managed;

    move-result-object v0

    const-string v1, "consumable"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mManaged:Lcom/soomla/store/domain/MarketItem$Managed;

    .line 59
    :goto_0
    const-string v0, "androidId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "androidId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mProductId:Ljava/lang/String;

    .line 64
    :goto_1
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/soomla/store/domain/MarketItem;->mPrice:D

    .line 66
    const-string v0, "marketPrice"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceAndCurrency:Ljava/lang/String;

    .line 67
    const-string v0, "marketTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketTitle:Ljava/lang/String;

    .line 68
    const-string v0, "marketDesc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketDescription:Ljava/lang/String;

    .line 69
    const-string v0, "marketCurrencyCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketCurrencyCode:Ljava/lang/String;

    .line 70
    const-string v0, "marketPriceMicros"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceMicros:J

    .line 71
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/soomla/store/domain/MarketItem$Managed;->UNMANAGED:Lcom/soomla/store/domain/MarketItem$Managed;

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mManaged:Lcom/soomla/store/domain/MarketItem$Managed;

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "productId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mProductId:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getManaged()Lcom/soomla/store/domain/MarketItem$Managed;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mManaged:Lcom/soomla/store/domain/MarketItem$Managed;

    return-object v0
.end method

.method public getMarketCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketPrice()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/soomla/store/domain/MarketItem;->getMarketPriceAndCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarketPriceAndCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceAndCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketPriceMicros()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceMicros:J

    return-wide v0
.end method

.method public getMarketTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/soomla/store/domain/MarketItem;->mPrice:D

    return-wide v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public setManaged(Lcom/soomla/store/domain/MarketItem$Managed;)V
    .locals 0
    .param p1, "managed"    # Lcom/soomla/store/domain/MarketItem$Managed;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/soomla/store/domain/MarketItem;->mManaged:Lcom/soomla/store/domain/MarketItem$Managed;

    .line 132
    return-void
.end method

.method public setMarketInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "marketPriceAndCurrency"    # Ljava/lang/String;
    .param p2, "marketTitle"    # Ljava/lang/String;
    .param p3, "marketDescription"    # Ljava/lang/String;
    .param p4, "marketCurrencyCode"    # Ljava/lang/String;
    .param p5, "marketPriceMicros"    # J

    .prologue
    .line 115
    iput-object p1, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceAndCurrency:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/soomla/store/domain/MarketItem;->mMarketTitle:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/soomla/store/domain/MarketItem;->mMarketDescription:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/soomla/store/domain/MarketItem;->mMarketCurrencyCode:Ljava/lang/String;

    .line 119
    iput-wide p5, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceMicros:J

    .line 120
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 79
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "className"

    invoke-static {p0}, Lcom/soomla/SoomlaUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "consumable"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mManaged:Lcom/soomla/store/domain/MarketItem$Managed;

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem$Managed;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    const-string v2, "androidId"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v2, "price"

    iget-wide v4, p0, Lcom/soomla/store/domain/MarketItem;->mPrice:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v2, "marketPrice"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceAndCurrency:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v2, "marketTitle"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mMarketTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v2, "marketDesc"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mMarketDescription:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v2, "marketCurrencyCode"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mMarketCurrencyCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v2, "marketPriceMicros"

    iget-wide v4, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceMicros:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "SOOMLA MarketItem"

    const-string v3, "An error occurred while generating JSON object."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
