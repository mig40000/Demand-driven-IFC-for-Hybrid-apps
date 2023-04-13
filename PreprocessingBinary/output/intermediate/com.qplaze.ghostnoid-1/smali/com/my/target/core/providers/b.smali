.class public final Lcom/my/target/core/providers/b;
.super Lcom/my/target/core/providers/a;
.source "DeviceParamsDataProvider.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lcom/my/target/core/providers/a;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/my/target/core/providers/b;->a:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->b:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->d:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->e:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->f:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->g:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->h:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->i:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->j:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->k:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->l:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/my/target/core/providers/b;->m:I

    .line 64
    iput v1, p0, Lcom/my/target/core/providers/b;->n:I

    .line 65
    iput v1, p0, Lcom/my/target/core/providers/b;->o:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/providers/b;->p:F

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->q:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->r:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->s:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->t:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->u:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    .line 178
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 303
    .line 307
    :try_start_0
    invoke-static {}, Lcom/my/target/core/utils/k;->a()Lcom/my/target/core/utils/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/utils/k;->a(Landroid/content/Context;)Lcom/my/target/core/utils/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 308
    :try_start_1
    invoke-virtual {v0}, Lcom/my/target/core/utils/k;->b()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 315
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 319
    :goto_1
    const-string v2, ""

    .line 1348
    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 1349
    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 320
    :goto_2
    if-eqz v3, :cond_0

    .line 321
    invoke-static {p1}, Lcom/my/target/core/providers/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 322
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/k;->a(Ljava/lang/String;)V

    .line 328
    :cond_1
    return-object v1

    .line 309
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 311
    :goto_3
    const-string v3, "PreferencesManager error"

    invoke-static {v3}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 317
    :cond_2
    const-string v1, "sdk < 9"

    goto :goto_1

    .line 1349
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 309
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 336
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 341
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 343
    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/my/target/core/providers/b;->m:I

    return v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/my/target/core/providers/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 267
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    const-string v1, "collect application info..."

    invoke-static {v1}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 188
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, p0, Lcom/my/target/core/providers/b;->b:Ljava/lang/String;

    .line 189
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, p0, Lcom/my/target/core/providers/b;->h:Ljava/lang/String;

    .line 190
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/my/target/core/providers/b;->i:Ljava/lang/String;

    .line 192
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/my/target/core/providers/b;->d:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->e:Ljava/lang/String;

    .line 194
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/providers/b;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 198
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/my/target/core/providers/b;->f:Ljava/lang/String;

    .line 199
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->g:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_1

    .line 207
    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 210
    const-string v1, ""

    iput-object v1, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->k:Ljava/lang/String;

    .line 214
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 215
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/core/providers/b;->l:Ljava/lang/String;

    .line 216
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/core/providers/b;->q:Ljava/lang/String;

    .line 217
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/core/providers/b;->r:Ljava/lang/String;

    .line 219
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->s:Ljava/lang/String;

    .line 221
    :cond_2
    invoke-virtual {p0, p1}, Lcom/my/target/core/providers/b;->b(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 224
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/my/target/core/providers/b;->o:I

    .line 225
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/my/target/core/providers/b;->p:F

    .line 227
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->t:Ljava/lang/String;

    .line 230
    invoke-direct {p0, p1}, Lcom/my/target/core/providers/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->u:Ljava/lang/String;

    .line 232
    const-string v1, "android_id"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    const-string v1, "device"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    const-string v1, "manufacture"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    const-string v1, "osver"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    const-string v1, "app"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    const-string v1, "appver"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    const-string v1, "appbuild"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    const-string v1, "lang"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->j:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    const-string v1, "app_lang"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->k:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 242
    const-string v1, "sim_loc"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->l:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    const-string v1, "euname"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->i:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    const-string v1, "w"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/my/target/core/providers/b;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    const-string v1, "h"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/my/target/core/providers/b;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    const-string v1, "dpi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/my/target/core/providers/b;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    const-string v1, "density"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/my/target/core/providers/b;->p:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 248
    const-string v1, "operator_id"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->q:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    const-string v1, "operator_name"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->r:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    const-string v1, "sim_operator_id"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->s:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    const-string v1, "timezone"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->t:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 252
    const-string v1, "mrgs_device_id"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->u:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    iget-object v1, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    const-string v2, "android_id"

    iget-object v3, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    const-string v2, "euname"

    iget-object v3, p0, Lcom/my/target/core/providers/b;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    const-string v2, "os"

    const-string v3, "Android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    const-string v2, "osver"

    iget-object v3, p0, Lcom/my/target/core/providers/b;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v1, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    const-string v2, "manufacture"

    iget-object v3, p0, Lcom/my/target/core/providers/b;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {p0}, Lcom/my/target/core/providers/b;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 265
    :cond_3
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/my/target/core/providers/b;->a:Z

    .line 266
    const-string v1, "collected"

    invoke-static {v1}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/my/target/core/providers/b;->n:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/my/target/core/providers/b;->a:Z

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 273
    :cond_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 274
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 276
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 278
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 292
    :goto_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/my/target/core/providers/b;->m:I

    .line 293
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/my/target/core/providers/b;->n:I

    goto :goto_0

    .line 282
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_2

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_1

    .line 288
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 289
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method
