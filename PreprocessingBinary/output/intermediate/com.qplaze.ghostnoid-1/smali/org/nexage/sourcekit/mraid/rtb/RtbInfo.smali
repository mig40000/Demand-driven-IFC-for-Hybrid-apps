.class public Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private adContent:Ljava/lang/String;

.field private adNetwork:Ljava/lang/String;

.field private appodealAdType:I

.field private encryptedAdUnitInfo:Ljava/lang/String;

.field private encryptedSessionInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->adContent:Ljava/lang/String;

    iput-object p2, p0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->encryptedAdUnitInfo:Ljava/lang/String;

    iput-object p3, p0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->encryptedSessionInfo:Ljava/lang/String;

    iput-object p4, p0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->adNetwork:Ljava/lang/String;

    iput p5, p0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->appodealAdType:I

    return-void
.end method


# virtual methods
.method public getReportInfo(ILandroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->adNetwork:Ljava/lang/String;

    iget v2, p0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->appodealAdType:I

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->adContent:Ljava/lang/String;

    iget-object v4, p0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->encryptedAdUnitInfo:Ljava/lang/String;

    iget-object v5, p0, Lorg/nexage/sourcekit/mraid/rtb/RtbInfo;->encryptedSessionInfo:Ljava/lang/String;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/appodeal/ads/utils/b;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string v0, "inappropriate"

    :goto_0
    const-string v2, "reason"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "contentType"

    const-string v3, "image/jpeg"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "body"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "screenshot"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    return-object v1

    :pswitch_0
    const-string v0, "irrelevant"

    goto :goto_0

    :pswitch_1
    const-string v0, "repetitive"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
