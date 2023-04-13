.class public Lcom/appodeal/ads/utils/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appodeal/ads/t$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "refresh"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-wide v2, Lcom/appodeal/ads/n;->g:J

    sput-wide v2, Lcom/appodeal/ads/ah;->g:J

    sput-wide v2, Lcom/appodeal/ads/ak;->g:J

    sput-wide v2, Lcom/appodeal/ads/g;->f:J

    sput-wide v2, Lcom/appodeal/ads/v;->f:J

    sput-wide v2, Lcom/appodeal/ads/Native;->f:J

    :cond_0
    return-void
.end method
