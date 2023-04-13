.class public Lcom/chartboost/sdk/Libraries/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/c$a;
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/ak;

.field final b:Landroid/content/SharedPreferences;

.field private c:Lcom/chartboost/sdk/Libraries/c$a;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ak;Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/c;->d:I

    .line 47
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/c;->e:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/c;->f:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/c;->a:Lcom/chartboost/sdk/impl/ak;

    .line 57
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/c;->b:Landroid/content/SharedPreferences;

    .line 58
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 183
    .line 185
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/g;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    move-object v1, v0

    .line 200
    :goto_0
    if-nez v1, :cond_0

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/c;->d:I

    .line 202
    iput-object v2, p0, Lcom/chartboost/sdk/Libraries/c;->e:Ljava/lang/String;

    .line 209
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 199
    goto :goto_0

    .line 189
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 199
    goto :goto_0

    .line 191
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 199
    goto :goto_0

    .line 193
    :catch_3
    move-exception v0

    .line 194
    const-string v1, "CBIdentity"

    const-string v3, "Security Exception when retrieving AD id"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 199
    goto :goto_0

    .line 195
    :catch_4
    move-exception v0

    .line 197
    const-string v1, "CBIdentity"

    const-string v3, "General Exception when retrieving AD id"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getAdvertisingIdClientInfo"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v1, v2

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    iput v0, p0, Lcom/chartboost/sdk/Libraries/c;->d:I

    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->e:Ljava/lang/String;

    goto :goto_1

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    const-string v1, "limit_ad_tracking"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 221
    if-nez v1, :cond_0

    .line 223
    const/4 v1, 0x0

    iput v1, p0, Lcom/chartboost/sdk/Libraries/c;->d:I

    .line 224
    const-string v1, "advertising_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->e:Ljava/lang/String;

    .line 236
    :goto_0
    return-void

    .line 226
    :cond_0
    if-ne v1, v2, :cond_1

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/c;->d:I

    .line 229
    iput-object v3, p0, Lcom/chartboost/sdk/Libraries/c;->e:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/c;->d:I

    .line 234
    iput-object v3, p0, Lcom/chartboost/sdk/Libraries/c;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "cbUUID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->f:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->f:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    const-string v1, "cbUUID"

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    :try_start_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 70
    :goto_0
    if-nez v0, :cond_0

    .line 72
    :try_start_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "Google play services library is missing. Unable to find class com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 77
    const-string v0, "CBIdentity"

    const-string v1, "WARNING: It looks like you\'ve forgotten to include the Google Play Services library in your project. Please review the SDK documentation for more details."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void

    .line 68
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized b()Lcom/chartboost/sdk/Libraries/c$a;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 101
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/c$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/c$a;->c:Ljava/lang/String;

    move-object v3, v0

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/c;->d()V

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/c$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/c$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/c$a;->d:Ljava/lang/String;

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    .line 124
    :goto_1
    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    iget v4, v4, Lcom/chartboost/sdk/Libraries/c$a;->a:I

    iget v5, p0, Lcom/chartboost/sdk/Libraries/c;->d:I

    if-eq v4, v5, :cond_0

    move v0, v1

    .line 128
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    if-nez v0, :cond_4

    .line 130
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 131
    if-eqz v3, :cond_2

    .line 132
    const-string v1, "uuid"

    invoke-static {v0, v1, v3}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :cond_2
    if-eqz v2, :cond_3

    .line 135
    const-string v1, "gaid"

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_3
    new-instance v1, Lcom/chartboost/sdk/Libraries/c$a;

    iget v4, p0, Lcom/chartboost/sdk/Libraries/c;->d:I

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/chartboost/sdk/Libraries/c$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->c:Lcom/chartboost/sdk/Libraries/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 108
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_6

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 110
    :cond_6
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/c;->e()Ljava/lang/String;

    move-result-object v0

    :cond_7
    move-object v3, v0

    move v2, v1

    .line 111
    goto :goto_0

    .line 120
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/c;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    move v0, v1

    .line 121
    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 173
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 175
    const-string v1, "Amazon"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/c;->b(Landroid/content/Context;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/c;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
