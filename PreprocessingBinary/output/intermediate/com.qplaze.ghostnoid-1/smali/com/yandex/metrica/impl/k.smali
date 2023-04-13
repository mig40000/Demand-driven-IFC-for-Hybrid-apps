.class public final Lcom/yandex/metrica/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/ContentValues;

.field private c:Lcom/yandex/metrica/impl/ob/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/k;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/k;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    .line 45
    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/u;)Lcom/yandex/metrica/impl/k;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/u;

    .line 50
    return-object p0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 54
    .line 1059
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/u;->h()Lcom/yandex/metrica/impl/aw;

    move-result-object v1

    .line 1060
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1064
    :try_start_0
    const-string v2, "dId"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1065
    const-string v2, "uId"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    const-string v2, "appVer"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1067
    const-string v2, "appBuild"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1068
    const-string v2, "kitVer"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1069
    const-string v2, "clientKitVer"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1070
    const-string v2, "kitBuildNumber"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1071
    const-string v2, "kitBuildType"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1072
    const-string v2, "osVer"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1073
    const-string v2, "osApiLev"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1074
    const-string v2, "lang"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1075
    const-string v2, "root"

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/aw;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v2, "report_request_parameters"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 1078
    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method a(Lcom/yandex/metrica/impl/bi;)V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/bi;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/bi;->c(Landroid/content/Context;)I

    move-result v1

    .line 227
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 228
    const-string v3, "ssid"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v0, "state"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v1, "wifi_access_point"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/a$a;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v3, "name"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v3, "value"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v3, "type"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v3, "custom_type"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v3, "error_environment"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v3, "user_info"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v3, "truncated"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    iget-object v3, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v4, "connection_type"

    iget-object v5, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    .line 1247
    const-string v0, "connectivity"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2051
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v5, v6}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 1249
    if-eqz v5, :cond_2

    .line 1250
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_2

    .line 1253
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v1, :cond_1

    move v0, v1

    .line 208
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2179
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v1, "app_environment"

    iget-object v3, p2, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v1, "app_environment_revision"

    iget-wide v4, p2, Lcom/yandex/metrica/impl/a$a;->b:J

    .line 2185
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2183
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3109
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/k;->b()Landroid/location/Location;

    move-result-object v1

    .line 3111
    if-eqz v1, :cond_0

    .line 4087
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 4090
    const-string v0, "lat"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4091
    const-string v0, "lon"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4094
    const-string v0, "timestamp"

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4095
    const-string v4, "precision"

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4096
    const-string v4, "direction"

    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4097
    const-string v4, "speed"

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4098
    const-string v4, "altitude"

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4099
    const-string v0, "provider"

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/be;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4101
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v1, "location_info"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5190
    :cond_0
    :goto_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/du;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/du;

    move-result-object v0

    .line 5191
    new-instance v1, Lcom/yandex/metrica/impl/k$2;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/k$2;-><init>(Lcom/yandex/metrica/impl/k;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dn;->a(Lcom/yandex/metrica/impl/ob/dw;)V

    .line 6150
    new-instance v1, Lcom/yandex/metrica/impl/k$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/k$1;-><init>(Lcom/yandex/metrica/impl/k;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dn;->a(Lcom/yandex/metrica/impl/ob/dp;)V

    .line 4217
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bi;

    move-result-object v0

    .line 7137
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->g()Lorg/json/JSONArray;

    move-result-object v1

    .line 7138
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bi;->a()Lorg/json/JSONArray;

    move-result-object v2

    .line 7141
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v3, v4, :cond_7

    .line 7142
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v3, "wifi_network_info"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    :goto_6
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/bi;)V

    .line 213
    return-void

    .line 1256
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 1257
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1261
    :cond_2
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    .line 4095
    goto/16 :goto_1

    :cond_4
    move-object v0, v2

    .line 4096
    goto/16 :goto_2

    :cond_5
    move-object v0, v2

    .line 4097
    goto :goto_3

    :cond_6
    move-object v0, v2

    .line 4098
    goto :goto_4

    .line 7144
    :cond_7
    iget-object v2, p0, Lcom/yandex/metrica/impl/k;->b:Landroid/content/ContentValues;

    const-string v3, "wifi_network_info"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5
.end method

.method b()Landroid/location/Location;
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/u;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/CounterConfiguration;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->c:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/u;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->t()Landroid/location/Location;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/y;->c()Landroid/location/Location;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/y;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/y;->d()Landroid/location/Location;

    move-result-object v0

    .line 132
    :cond_0
    return-object v0
.end method
