.class public Lcom/cmcm/adsdk/config/RequestUFS;
.super Ljava/lang/Object;
.source "RequestUFS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/config/RequestUFS$UfsRunnable;
    }
.end annotation


# static fields
.field private static final AGE21:Ljava/lang/String; = "1"

.field private static final AGE27:Ljava/lang/String; = "2"

.field private static final AGE35:Ljava/lang/String; = "3"

.field private static final AGE41:Ljava/lang/String; = "4"

.field private static final AGE_21:Ljava/lang/String; = "21"

.field private static final AGE_27:Ljava/lang/String; = "27"

.field private static final AGE_35:Ljava/lang/String; = "35"

.field private static final AGE_44:Ljava/lang/String; = "44"

.field private static final AGE_DEFAULT:Ljava/lang/String; = "-1"

.field private static final SEX_M:Ljava/lang/String; = "1"

.field private static final SEX_MAN:Ljava/lang/String; = "M"

.field private static final SEX_U:Ljava/lang/String; = "3"

.field private static final SEX_UNKNOW:Ljava/lang/String; = "U"

.field private static final SEX_W:Ljava/lang/String; = "2"

.field private static final SEX_WOMAN:Ljava/lang/String; = "F"

.field private static final TAG:Ljava/lang/String; = "RequestUFS"

.field private static final UFS_REQUESTTIME_DEFAULT:I = 0x5265c00

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/cmcm/adsdk/config/RequestUFS;

.field private static sSharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private final PREFS_NAME:Ljava/lang/String;

.field private mConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mMid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->sInstance:Lcom/cmcm/adsdk/config/RequestUFS;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "cmcmadsdk_config"

    iput-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->PREFS_NAME:Ljava/lang/String;

    .line 86
    const-string v0, "cmcmadsdk_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 88
    sget-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/cmcm/adsdk/config/RequestUFS;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Lcom/cmcm/adsdk/config/RequestUFS;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/cmcm/adsdk/config/RequestUFS;->getUfsInfoFromNet(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmcm/adsdk/config/RequestUFS;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/cmcm/adsdk/config/RequestUFS;
    .param p1, "x1"    # [B

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/config/RequestUFS;->decryptCore([B)V

    return-void
.end method

.method private buildParamsUFS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mId"    # Ljava/lang/String;
    .param p2, "androidId"    # Ljava/lang/String;
    .param p3, "gaId"    # Ljava/lang/String;

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestUFS;->isGetC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&gaid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&androidid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestUFS;->isGetSk1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcm/adsdk/config/RequestUFS;->getUFSRrequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&sig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decryptCore([B)V
    .locals 6
    .param p1, "result"    # [B

    .prologue
    const/4 v0, 0x0

    .line 201
    .line 203
    :try_start_0
    const-string v1, "AES/CBC/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 204
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestUFS;->isGetSk2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 205
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 206
    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_0

    .line 207
    const/4 v5, 0x0

    aput-byte v5, v3, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 210
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 211
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/config/RequestUFS;->saveUFSInfo(Lorg/json/JSONObject;)V

    .line 216
    :cond_1
    const-string v0, "RequestUFS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultJson="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_2
    :goto_1
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cmcm/adsdk/config/RequestUFS;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->sInstance:Lcom/cmcm/adsdk/config/RequestUFS;

    if-nez v0, :cond_0

    .line 79
    sput-object p0, Lcom/cmcm/adsdk/config/RequestUFS;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/cmcm/adsdk/config/RequestUFS;

    invoke-direct {v0, p0}, Lcom/cmcm/adsdk/config/RequestUFS;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->sInstance:Lcom/cmcm/adsdk/config/RequestUFS;

    .line 82
    :cond_0
    sget-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->sInstance:Lcom/cmcm/adsdk/config/RequestUFS;

    return-object v0
.end method

.method private getUFSRrequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 302
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 304
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUfsInfoFromNet(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 151
    .line 152
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_0
    const-string v0, "RequestTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get Url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 159
    const/16 v2, 0x3a98

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 160
    const/16 v2, 0x3a98

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 161
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 162
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 164
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 165
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/adsdk/config/RequestUFS;->readInputSream(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "RequestUFS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get response error..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGetC()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 388
    :try_start_0
    sget-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/cmcm/adsdk/config/RequestUFS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 391
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "c"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 403
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 396
    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_1

    .line 400
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    .line 403
    goto :goto_0
.end method

.method private isGetSk1()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 368
    :try_start_0
    sget-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/cmcm/adsdk/config/RequestUFS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 371
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "sk1"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 376
    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    .line 383
    goto :goto_0
.end method

.method private isGetSk2()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 408
    :try_start_0
    sget-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/cmcm/adsdk/config/RequestUFS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 411
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "sk2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 423
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 416
    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    sget-boolean v2, Lcom/cmcm/utils/g;->a:Z

    if-eqz v2, :cond_1

    .line 420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    .line 423
    goto :goto_0
.end method

.method private isRequestUFS()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/adsdk/config/RequestUFS;->getInstance(Landroid/content/Context;)Lcom/cmcm/adsdk/config/RequestUFS;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/cmcm/adsdk/config/RequestUFS;->isUSFConfig(Ljava/util/Map;)Z

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUSFConfig(Ljava/util/Map;)Z
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;>;"
    const/4 v2, 0x0

    .line 341
    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestUFS;->isGetSk1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestUFS;->isGetSk2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestUFS;->isGetC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 342
    const-string v0, "RequestUFS"

    const-string v1, "report person infomation mainfase is exit sk1 sk2 c"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 345
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;

    .line 348
    iget-object v4, v0, Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;->orders:Ljava/util/List;

    move v1, v2

    .line 349
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 350
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/config/PosBean;

    .line 351
    iget-object v5, v0, Lcom/cmcm/adsdk/config/PosBean;->name:Ljava/lang/String;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    const-string v6, "mp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 352
    iget-object v0, v0, Lcom/cmcm/adsdk/config/PosBean;->weight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 353
    const-string v0, "RequestUFS"

    const-string v1, "report person infomation mainfase is exit sk1 sk2 c and mp ad  weight is > 0"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v2, 0x1

    .line 363
    :cond_1
    :goto_1
    return v2

    .line 349
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 360
    :cond_3
    const-string v0, "RequestUFS"

    const-string v1, "report person infomation mainfase is not exit sk1 sk2 c"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readInputSream(Ljava/io/InputStream;)[B
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    if-eqz p1, :cond_1

    .line 181
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 184
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 185
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 188
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 190
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private saveUFSInfo(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 225
    const-string v0, "RequestUFS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUFSInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :try_start_0
    const-string v0, "age"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    const-string v0, "interests"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 230
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 231
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 233
    const-string v5, "m_interests:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_0

    .line 235
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "interests"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v0, "U"

    .line 242
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 243
    const-string v0, "M"

    .line 249
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "gender"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string v0, "-1"

    .line 251
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    const-string v0, "21"

    .line 262
    :goto_2
    iget-object v1, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "age"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_a

    .line 265
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    :goto_3
    const-string v0, "RequestUFS"

    const-string v1, "save success"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_3
    :goto_4
    return-void

    .line 244
    :cond_4
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 245
    const-string v0, "F"

    goto :goto_1

    .line 246
    :cond_5
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    const-string v0, "U"

    goto :goto_1

    .line 253
    :cond_6
    const-string v0, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    const-string v0, "27"

    goto :goto_2

    .line 255
    :cond_7
    const-string v0, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 256
    const-string v0, "35"

    goto :goto_2

    .line 257
    :cond_8
    const-string v0, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 258
    const-string v0, "44"

    goto :goto_2

    .line 260
    :cond_9
    const-string v0, "-1"

    goto :goto_2

    .line 267
    :cond_a
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 270
    :catch_0
    move-exception v0

    .line 271
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_3

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public getConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUFSInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Lcom/cmcm/adsdk/config/RequestUFS;->isRequestUFS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    sget-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->sSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "interests"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "m_age:%s,m_gender:%s,"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/cmcm/adsdk/config/RequestUFS;->sSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "age"

    const-string v6, "U"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/cmcm/adsdk/config/RequestUFS;->sSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "gender"

    const-string v6, "-1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "RequestUFS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyWords ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/cmcm/adsdk/config/RequestUFS;->requestUFSInfo()V

    .line 103
    return-object v0
.end method

.method public isOpenUFSSetting(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/cmcm/adsdk/config/ConfigResponse$AdPosInfo;>;"
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mConfigMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mConfigMap:Ljava/util/Map;

    .line 328
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cmcm/adsdk/config/RequestUFS;->isUSFConfig(Ljava/util/Map;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 336
    :goto_0
    return v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    :cond_1
    const-string v0, "RequestUFS"

    const-string v1, "report person infomation mainfase is exit sk1 sk2 c and mp ad  weight is < = 0"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestUFSInfo()V
    .locals 4

    .prologue
    .line 116
    sget-object v0, Lcom/cmcm/adsdk/config/RequestUFS;->sSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 117
    const-string v1, "RequestUFS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestufs lasttime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    :goto_0
    invoke-static {}, Lcom/cmcm/utils/Commons;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mMid:Ljava/lang/String;

    invoke-static {}, Lcom/cmcm/picks/gaid/a;->c()Lcom/cmcm/picks/gaid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/gaid/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v2, v1, v0}, Lcom/cmcm/adsdk/config/RequestUFS;->buildParamsUFS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cmcm/adsdk/config/RequestUFS$UfsRunnable;

    invoke-direct {v2, p0, v0}, Lcom/cmcm/adsdk/config/RequestUFS$UfsRunnable;-><init>(Lcom/cmcm/adsdk/config/RequestUFS;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 132
    :cond_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {}, Lcom/cmcm/picks/gaid/a;->c()Lcom/cmcm/picks/gaid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/gaid/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cmcm/adsdk/config/RequestUFS;->mMid:Ljava/lang/String;

    .line 92
    return-void
.end method
