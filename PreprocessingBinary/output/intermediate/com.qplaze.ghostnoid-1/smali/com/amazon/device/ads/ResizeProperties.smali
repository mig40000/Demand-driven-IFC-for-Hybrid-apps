.class Lcom/amazon/device/ads/ResizeProperties;
.super Ljava/lang/Object;


# static fields
.field private static final ALLOW_OFFSCREEN_DEFAULT:Z = true

.field private static final CUSTOM_CLOSE_POSITION_DEFAULT:Ljava/lang/String; = "top-right"

.field public static final DIMENSION_NOT_SET:I = -0x1


# instance fields
.field private allowOffscreen:Z

.field private customClosePosition:Ljava/lang/String;

.field private height:I

.field private final jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

.field private offsetX:I

.field private offsetY:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-direct {v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/ResizeProperties;-><init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->width:I

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->height:I

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetX:I

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetY:I

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->customClosePosition:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/ResizeProperties;->allowOffscreen:Z

    iput-object p1, p0, Lcom/amazon/device/ads/ResizeProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    return-void
.end method

.method private setDimensionIfSet(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areResizePropertiesSet()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/amazon/device/ads/ResizeProperties;->width:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/ResizeProperties;->height:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetX:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetY:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fromJSONObject(Lorg/json/JSONObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "width"

    iget v2, p0, Lcom/amazon/device/ads/ResizeProperties;->width:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->width:I

    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "height"

    iget v2, p0, Lcom/amazon/device/ads/ResizeProperties;->height:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->height:I

    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "offsetX"

    iget v2, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetX:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetX:I

    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "offsetY"

    iget v2, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetY:I

    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "customClosePosition"

    iget-object v2, p0, Lcom/amazon/device/ads/ResizeProperties;->customClosePosition:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->customClosePosition:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "allowOffscreen"

    iget-boolean v2, p0, Lcom/amazon/device/ads/ResizeProperties;->allowOffscreen:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/ResizeProperties;->allowOffscreen:Z

    invoke-virtual {p0}, Lcom/amazon/device/ads/ResizeProperties;->areResizePropertiesSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/ResizeProperties;->reset()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllowOffscreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/device/ads/ResizeProperties;->allowOffscreen:Z

    return v0
.end method

.method public getCustomClosePosition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->customClosePosition:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/amazon/device/ads/ResizeProperties;->height:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    iget v0, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    iget v0, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/amazon/device/ads/ResizeProperties;->width:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->width:I

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->height:I

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetX:I

    iput v0, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetY:I

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->customClosePosition:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/ResizeProperties;->allowOffscreen:Z

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    iget v2, p0, Lcom/amazon/device/ads/ResizeProperties;->width:I

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/device/ads/ResizeProperties;->setDimensionIfSet(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "height"

    iget v2, p0, Lcom/amazon/device/ads/ResizeProperties;->height:I

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/device/ads/ResizeProperties;->setDimensionIfSet(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "offsetX"

    iget v2, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetX:I

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/device/ads/ResizeProperties;->setDimensionIfSet(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "offsetY"

    iget v2, p0, Lcom/amazon/device/ads/ResizeProperties;->offsetY:I

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/device/ads/ResizeProperties;->setDimensionIfSet(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/amazon/device/ads/ResizeProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v2, "customClosePosition"

    iget-object v3, p0, Lcom/amazon/device/ads/ResizeProperties;->customClosePosition:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/device/ads/ResizeProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v2, "allowOffscreen"

    iget-boolean v3, p0, Lcom/amazon/device/ads/ResizeProperties;->allowOffscreen:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v0
.end method
