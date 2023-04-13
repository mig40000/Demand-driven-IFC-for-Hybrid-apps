.class public Lcom/appodeal/ads/AppodealSettings;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Lcom/appodeal/ads/utils/Log$LogLevel;

.field public static d:Z

.field public static e:Z

.field public static f:I

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/appodeal/ads/AppodealSettings;->a:Z

    sput-boolean v2, Lcom/appodeal/ads/AppodealSettings;->b:Z

    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->none:Lcom/appodeal/ads/utils/Log$LogLevel;

    sput-object v0, Lcom/appodeal/ads/AppodealSettings;->c:Lcom/appodeal/ads/utils/Log$LogLevel;

    sput-boolean v1, Lcom/appodeal/ads/AppodealSettings;->d:Z

    sput-boolean v1, Lcom/appodeal/ads/AppodealSettings;->e:Z

    const/4 v0, -0x1

    sput v0, Lcom/appodeal/ads/AppodealSettings;->f:I

    sput-boolean v1, Lcom/appodeal/ads/AppodealSettings;->g:Z

    sput-boolean v1, Lcom/appodeal/ads/AppodealSettings;->h:Z

    sput-boolean v1, Lcom/appodeal/ads/AppodealSettings;->i:Z

    sput-boolean v2, Lcom/appodeal/ads/AppodealSettings;->j:Z

    sput-boolean v2, Lcom/appodeal/ads/AppodealSettings;->k:Z

    sput-boolean v2, Lcom/appodeal/ads/AppodealSettings;->l:Z

    sput-boolean v1, Lcom/appodeal/ads/AppodealSettings;->m:Z

    sput-boolean v1, Lcom/appodeal/ads/AppodealSettings;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Integer;)I
    .locals 1

    if-nez p0, :cond_0

    const v0, 0x927c0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "ach"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ach"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ach"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/appodeal/ads/m;->a()Lcom/appodeal/ads/m;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/m;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "for_kids"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "for_kids"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/appodeal/ads/AppodealSettings;->d:Z

    :cond_1
    sget-boolean v0, Lcom/appodeal/ads/AppodealSettings;->j:Z

    if-eqz v0, :cond_2

    const-string v0, "disable_rtb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/appodeal/ads/AppodealSettings;->i:Z

    :cond_2
    const-string v0, "randomize_offers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "randomize_offers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/appodeal/ads/AppodealSettings;->l:Z

    :cond_3
    const-string v0, "send_apps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "send_apps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/appodeal/ads/AppodealSettings;->m:Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v0, "ach"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/appodeal/ads/m;->a()Lcom/appodeal/ads/m;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/appodeal/ads/m;->a()Lcom/appodeal/ads/m;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/m;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static disableWebViewCacheClear()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appodeal/ads/AppodealSettings;->k:Z

    return-void
.end method

.method public static muteVideosIfCallsMuted(Z)V
    .locals 0

    sput-boolean p0, Lcom/appodeal/ads/AppodealSettings;->e:Z

    return-void
.end method
