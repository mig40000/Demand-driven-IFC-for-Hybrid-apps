.class Lcom/amazon/device/ads/ViewabilityInfo;
.super Ljava/lang/Object;


# instance fields
.field private isAdOnScreen:Z

.field private jsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(ZLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/device/ads/ViewabilityInfo;->jsonObject:Lorg/json/JSONObject;

    iput-boolean p1, p0, Lcom/amazon/device/ads/ViewabilityInfo;->isAdOnScreen:Z

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityInfo;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public isAdOnScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/device/ads/ViewabilityInfo;->isAdOnScreen:Z

    return v0
.end method
