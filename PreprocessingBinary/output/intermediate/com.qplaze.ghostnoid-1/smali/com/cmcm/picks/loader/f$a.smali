.class public Lcom/cmcm/picks/loader/f$a;
.super Lcom/cmcm/picks/loader/c;
.source "CmMarketHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/loader/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 76
    invoke-direct {p0}, Lcom/cmcm/picks/loader/c;-><init>()V

    .line 197
    const-string v2, "https"

    iput-object v2, p0, Lcom/cmcm/picks/loader/f$a;->d:Ljava/lang/String;

    .line 198
    const-string v2, "http"

    iput-object v2, p0, Lcom/cmcm/picks/loader/f$a;->e:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 78
    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 80
    const-string v5, "mid"

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v5, "sdkt"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v5, "lan"

    const-string v6, "%s_%s"

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v4, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v3, "brand"

    const-string v4, "ro.product.brand"

    const-string v5, "unknow"

    invoke-static {v4, v5}, Lcom/cmcm/utils/Commons;->SP2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v3, "model"

    const-string v4, "ro.product.model"

    const-string v5, "unknow"

    invoke-static {v4, v5}, Lcom/cmcm/utils/Commons;->SP2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v3, "androidid"

    invoke-static {}, Lcom/cmcm/utils/Commons;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v3, "cver"

    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getAppVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v3, "mcc"

    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v3, "mnc"

    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v3, "ov"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v3, "nt"

    invoke-static {v2}, Lcom/cmcm/utils/i;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "ch"

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string v0, "resolution"

    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v0, "dpi"

    invoke-static {v2}, Lcom/cmcm/utils/Commons;->getScreenDensity(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v0, "gaid"

    invoke-static {}, Lcom/cmcm/picks/gaid/a;->c()Lcom/cmcm/picks/gaid/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcm/picks/gaid/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v0, "pl"

    const-string v2, "2"

    invoke-direct {p0, v0, v2}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v0, "sdkv"

    const-string v2, "3.4.7"

    invoke-direct {p0, v0, v2}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v0, "tz"

    invoke-direct {p0}, Lcom/cmcm/picks/loader/f$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v0, "sspid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    sget-boolean v0, Lcom/cmcm/adsdk/CMAdManager;->isSetDebugCounutry:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "test_country"

    const-string v1, "us"

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    :cond_0
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getGender()Lcom/cmcm/adsdk/CMAdManager$Gender;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "gender"

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getGender()Lcom/cmcm/adsdk/CMAdManager$Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/adsdk/CMAdManager$Gender;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    :cond_1
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getAge()Lcom/cmcm/adsdk/CMAdManager$Age;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    const-string v0, "age"

    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getAge()Lcom/cmcm/adsdk/CMAdManager$Age;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/adsdk/CMAdManager$Age;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 90
    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/cmcm/picks/loader/f$a;->c:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, p1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    return-void

    .line 193
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 118
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 119
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/cmcm/picks/loader/f$a;
    .locals 1

    .prologue
    .line 141
    const-string v0, "posid"

    invoke-direct {p0, v0, p1}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-object p0
.end method

.method public a()Ljava/net/URI;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 201
    :try_start_0
    const-string v0, "http"

    .line 202
    iget-object v1, p0, Lcom/cmcm/picks/loader/f$a;->a:Ljava/lang/String;

    .line 203
    const-string v3, "/b/"

    .line 206
    invoke-static {}, Lcom/cmcm/picks/loader/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v2, p0, Lcom/cmcm/picks/loader/f$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cmcm/picks/loader/f$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    const-string v0, "https"

    .line 212
    :cond_0
    iget v2, p0, Lcom/cmcm/picks/loader/f$a;->b:I

    iget-object v4, p0, Lcom/cmcm/picks/loader/f$a;->c:Ljava/util/List;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 215
    goto :goto_0
.end method

.method public b(I)Lcom/cmcm/picks/loader/f$a;
    .locals 2

    .prologue
    .line 150
    const-string v0, "adn"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-object p0
.end method

.method public c(I)Lcom/cmcm/picks/loader/f$a;
    .locals 2

    .prologue
    .line 158
    const-string v0, "pg"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    return-object p0
.end method

.method public d(I)Lcom/cmcm/picks/loader/f$a;
    .locals 2

    .prologue
    .line 186
    const-string v0, "offset"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/picks/loader/f$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/cmcm/picks/loader/f$a;->a()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
