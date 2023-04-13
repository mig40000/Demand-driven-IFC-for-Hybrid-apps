.class public final Lcom/chartboost/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Model/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-nez v0, :cond_0

    .line 255
    const-string v0, "native"

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "web"

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/b$a;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/h;",
            "Lcom/chartboost/sdk/b$a;",
            "Lcom/chartboost/sdk/impl/ak;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 83
    iput-boolean v2, p0, Lcom/chartboost/sdk/h;->j:Z

    .line 84
    new-instance v0, Lcom/chartboost/sdk/impl/aj;

    const-string v1, "/api/config"

    invoke-direct {v0, v1, p2}, Lcom/chartboost/sdk/impl/aj;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/ak;)V

    .line 85
    sget-object v1, Lcom/chartboost/sdk/impl/ac$b;->c:Lcom/chartboost/sdk/impl/ac$b;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/ac$b;)V

    .line 86
    new-array v1, v2, [Lcom/chartboost/sdk/Libraries/f$k;

    const/4 v2, 0x0

    const-string v3, "status"

    sget-object v4, Lcom/chartboost/sdk/Libraries/a;->b:Lcom/chartboost/sdk/Libraries/f$a;

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/f$a;)Lcom/chartboost/sdk/Libraries/f$k;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/f;->a([Lcom/chartboost/sdk/Libraries/f$k;)Lcom/chartboost/sdk/Libraries/f$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/Libraries/f$a;)V

    .line 88
    new-instance v1, Lcom/chartboost/sdk/b$1;

    invoke-direct {v1, p0, p3, p4, p1}, Lcom/chartboost/sdk/b$1;-><init>(Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/b$a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/impl/aj$a;)V

    .line 124
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "CBConfig"

    const-string v1, "Set a valid CBFramework first"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "CBConfig"

    const-string v1, "Invalid Version String"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    sput-object p0, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 156
    if-nez p0, :cond_0

    .line 158
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid activity context: Host Activity object is null, Please send a valid activity object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;",
            "Lorg/json/JSONObject;",
            "Landroid/content/SharedPreferences;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Lcom/chartboost/sdk/Model/c;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Model/c;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-class v1, Lcom/chartboost/sdk/b;

    const-string v2, "updateConfig"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 138
    if-nez v1, :cond_0

    .line 149
    :goto_0
    return v0

    .line 141
    :cond_0
    iget-object v1, v1, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    if-nez v1, :cond_1

    .line 143
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Chartboost Weak Activity reference is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    if-nez p0, :cond_1

    .line 190
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid activity context passed during intitalization"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 224
    :cond_0
    return v0

    .line 196
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    .line 198
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 199
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 200
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 201
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    move v2, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v7

    .line 210
    :goto_0
    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    sput-boolean v2, Lcom/chartboost/sdk/i;->n:Z

    .line 211
    if-eqz v5, :cond_4

    move v2, v0

    :goto_2
    sput-boolean v2, Lcom/chartboost/sdk/i;->o:Z

    .line 212
    if-eqz v6, :cond_5

    move v2, v0

    :goto_3
    sput-boolean v2, Lcom/chartboost/sdk/i;->p:Z

    .line 213
    if-eqz v4, :cond_6

    move v2, v0

    :goto_4
    sput-boolean v2, Lcom/chartboost/sdk/i;->q:Z

    .line 214
    if-eqz v3, :cond_7

    move v2, v0

    :goto_5
    sput-boolean v2, Lcom/chartboost/sdk/i;->r:Z

    .line 216
    sget-boolean v2, Lcom/chartboost/sdk/i;->o:Z

    if-eqz v2, :cond_8

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Please add the permission : android.permission.INTERNET in your android manifest.xml"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_2
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    .line 204
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 205
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 206
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 207
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    move v2, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v7

    goto :goto_0

    :cond_3
    move v2, v1

    .line 210
    goto :goto_1

    :cond_4
    move v2, v1

    .line 211
    goto :goto_2

    :cond_5
    move v2, v1

    .line 212
    goto :goto_3

    :cond_6
    move v2, v1

    .line 213
    goto :goto_4

    :cond_7
    move v2, v1

    .line 214
    goto :goto_5

    .line 218
    :cond_8
    sget-boolean v2, Lcom/chartboost/sdk/i;->p:Z

    if-eqz v2, :cond_0

    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Please add the permission : android.permission.ACCESS_NETWORK_STATE in your android manifest.xml"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. SDK seems to be not initialized properly, check for any integration issues"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    .line 174
    :cond_0
    :try_start_1
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. Activity context seems to be not initialized properly, host activity or application context is being sent as null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. AppId is missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/i;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. AppSignature is missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    .line 234
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please add             <activity android:name=\"com.chartboost.sdk.CBImpressionActivity\"\n                  android:excludeFromRecents=\"true\"\n                  android:theme=\"@android:style/Theme.Translucent.NoTitleBar.Fullscreen\"\n                  android:configChanges=\"keyboardHidden|orientation|screenSize\"/> in your android manifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 245
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
