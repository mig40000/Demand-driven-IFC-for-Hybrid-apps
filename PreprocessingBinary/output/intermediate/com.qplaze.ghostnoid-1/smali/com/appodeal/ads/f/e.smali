.class public Lcom/appodeal/ads/f/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/f/e$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/appodeal/ads/f/b;

.field c:Ljava/lang/Object;

.field d:Lcom/appodeal/ads/f/e$a;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/e;->a:Ljava/lang/String;

    const-string v0, "op"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/f/b;->a(Ljava/lang/String;)Lcom/appodeal/ads/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/e;->b:Lcom/appodeal/ads/f/b;

    iget-object v0, p0, Lcom/appodeal/ads/f/e;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/f/e;->a(Ljava/lang/String;)Lcom/appodeal/ads/f/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    invoke-direct {p0, p1}, Lcom/appodeal/ads/f/e;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/appodeal/ads/f/e$a;
    .locals 1

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/f/e$a;->d:Lcom/appodeal/ads/f/e$a;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/f/e$a;->f:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/f/e$a;->g:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/appodeal/ads/f/e$a;->b:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/appodeal/ads/f/e$a;->h:Lcom/appodeal/ads/f/e$a;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/appodeal/ads/f/e$a;
    .locals 1

    const-string v0, "app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/f/e$a;->c:Lcom/appodeal/ads/f/e$a;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/f/e$a;->a:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_1
    const-string v0, "sdk_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/f/e$a;->a:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_2
    const-string v0, "country"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/appodeal/ads/f/e$a;->c:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_3
    const-string v0, "android_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/appodeal/ads/f/e$a;->a:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_4
    const-string v0, "has_app_installed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/appodeal/ads/f/e$a;->b:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_5
    const-string v0, "session_count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/appodeal/ads/f/e$a;->d:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_6
    const-string v0, "average_session_length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/appodeal/ads/f/e$a;->f:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_7
    const-string v0, "device_model"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/appodeal/ads/f/e$a;->c:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_8
    const-string v0, "connection_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/appodeal/ads/f/e$a;->e:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_9
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/appodeal/ads/f/e$a;->e:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_a
    const-string v0, "age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/appodeal/ads/f/e$a;->d:Lcom/appodeal/ads/f/e$a;

    goto :goto_0

    :cond_b
    const-string v0, "occupation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/appodeal/ads/f/e$a;->e:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_c
    const-string v0, "relation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/appodeal/ads/f/e$a;->e:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_d
    const-string v0, "interests"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/appodeal/ads/f/e$a;->c:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_e
    const-string v0, "last_session_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/appodeal/ads/f/e$a;->d:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_f
    const-string v0, "bought_inapps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/appodeal/ads/f/e$a;->g:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_10
    const-string v0, "inapp_sum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/appodeal/ads/f/e$a;->f:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_11
    const-string v0, "inapp_sum_all_apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/appodeal/ads/f/e$a;->f:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_12
    const-string v0, "device_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/appodeal/ads/f/e$a;->c:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_13
    const-string v0, "platform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/appodeal/ads/f/e$a;->c:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_14
    const-string v0, "day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/appodeal/ads/f/e$a;->d:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_15
    const-string v0, "hour"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/appodeal/ads/f/e$a;->d:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lcom/appodeal/ads/f/e$a;->h:Lcom/appodeal/ads/f/e$a;

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/f/e$1;->a:[I

    iget-object v1, p0, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    invoke-virtual {v1}, Lcom/appodeal/ads/f/e$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/appodeal/ads/f/h;

    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appodeal/ads/f/h;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/appodeal/ads/f/e;->c(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/appodeal/ads/f/e;->b(Lorg/json/JSONObject;)[Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Double;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)[Ljava/lang/Integer;
    .locals 4

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 4

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v1, Lcom/appodeal/ads/f/e$a;->d:Lcom/appodeal/ads/f/e$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/f/e;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v1, Lcom/appodeal/ads/f/e$a;->f:Lcom/appodeal/ads/f/e$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/f/e;->b(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/f/e;->d:Lcom/appodeal/ads/f/e$a;

    sget-object v1, Lcom/appodeal/ads/f/e$a;->g:Lcom/appodeal/ads/f/e$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/f/e;->d(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/f/e;->c:Ljava/lang/Object;

    goto :goto_0
.end method
