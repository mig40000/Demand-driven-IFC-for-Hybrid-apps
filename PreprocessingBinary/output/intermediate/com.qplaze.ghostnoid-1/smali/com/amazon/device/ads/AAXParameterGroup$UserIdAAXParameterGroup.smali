.class final Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;
.super Lcom/amazon/device/ads/AAXParameterGroup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameterGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserIdAAXParameterGroup"
.end annotation


# instance fields
.field private final adIdParameter:Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;

.field private final directedIdParameter:Lcom/amazon/device/ads/DirectedIdAAXParameter;

.field private final idfaParameter:Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;

.field private final sha1udidParameter:Lcom/amazon/device/ads/SHA1UDIDAAXParameter;


# direct methods
.method constructor <init>()V
    .locals 4

    sget-object v0, Lcom/amazon/device/ads/AAXParameterGroupParameter;->DIRECTED_ID:Lcom/amazon/device/ads/DirectedIdAAXParameter;

    sget-object v1, Lcom/amazon/device/ads/AAXParameterGroupParameter;->ADVERTISING_IDENTIFIER:Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;

    sget-object v2, Lcom/amazon/device/ads/AAXParameterGroupParameter;->SIS_DEVICE_IDENTIFIER:Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;

    sget-object v3, Lcom/amazon/device/ads/AAXParameterGroupParameter;->SHA1_UDID:Lcom/amazon/device/ads/SHA1UDIDAAXParameter;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;-><init>(Lcom/amazon/device/ads/DirectedIdAAXParameter;Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;Lcom/amazon/device/ads/SHA1UDIDAAXParameter;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/DirectedIdAAXParameter;Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;Lcom/amazon/device/ads/SHA1UDIDAAXParameter;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/AAXParameterGroup;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;->directedIdParameter:Lcom/amazon/device/ads/DirectedIdAAXParameter;

    iput-object p2, p0, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;->idfaParameter:Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;

    iput-object p3, p0, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;->adIdParameter:Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;

    iput-object p4, p0, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;->sha1udidParameter:Lcom/amazon/device/ads/SHA1UDIDAAXParameter;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;->directedIdParameter:Lcom/amazon/device/ads/DirectedIdAAXParameter;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/DirectedIdAAXParameter;->evaluate(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;->idfaParameter:Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdvertisingIdentifierAAXParameter;->evaluate(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;->sha1udidParameter:Lcom/amazon/device/ads/SHA1UDIDAAXParameter;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/SHA1UDIDAAXParameter;->evaluate(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONObject;)Z

    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameterGroup$UserIdAAXParameterGroup;->adIdParameter:Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;->evaluate(Lcom/amazon/device/ads/AAXParameter$ParameterData;Lorg/json/JSONObject;)Z

    goto :goto_0
.end method
