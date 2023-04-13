.class public abstract Lcom/cmcm/adsdk/CMAdManager;
.super Ljava/lang/Object;
.source "CMAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/adsdk/CMAdManager$Age;,
        Lcom/cmcm/adsdk/CMAdManager$Gender;
    }
.end annotation


# static fields
.field public static final DEFAULT_SSPID:I = -0x1

.field public static final NATIVEAD_RP:I = 0x1

.field public static final THIRD_RP:I = 0x2

.field public static isSetDebugCounutry:Z

.field public static mAdResource:I

.field private static mAge:Lcom/cmcm/adsdk/CMAdManager$Age;

.field private static mContext:Landroid/content/Context;

.field private static mGender:Lcom/cmcm/adsdk/CMAdManager$Gender;

.field private static mMid:Ljava/lang/String;

.field private static sAdFactory:Lcom/cmcm/adsdk/CMBaseFactory;

.field private static sChannelId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager;->sAdFactory:Lcom/cmcm/adsdk/CMBaseFactory;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmcm/adsdk/CMAdManager;->isSetDebugCounutry:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static applicationInit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/cmcm/adsdk/CMAdManager;->applicationInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static applicationInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PublisherID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/cmcm/adsdk/CMAdManager;->mAdResource:I

    .line 67
    sput-object p0, Lcom/cmcm/adsdk/CMAdManager;->mContext:Landroid/content/Context;

    .line 68
    sput-object p1, Lcom/cmcm/adsdk/CMAdManager;->mMid:Ljava/lang/String;

    .line 69
    sput-object p2, Lcom/cmcm/adsdk/CMAdManager;->sChannelId:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/cmcm/picks/init/PicksMob;->getInstance()Lcom/cmcm/picks/init/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/init/a;->init()V

    .line 71
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->freshConfig()V

    .line 72
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/utils/ReceiverUtils;->a(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/cmcm/adsdk/CMAdManager;->getFactory()Lcom/cmcm/adsdk/CMBaseFactory;

    .line 74
    return-void
.end method

.method public static enableLog()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmcm/utils/g;->a:Z

    .line 103
    return-void
.end method

.method public static enableTestCountry()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmcm/adsdk/CMAdManager;->isSetDebugCounutry:Z

    return-void
.end method

.method private static freshConfig()V
    .locals 4

    .prologue
    .line 78
    const-string v0, "config_last_save_time"

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v2, v3}, Lcom/cmcm/picks/loader/g;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/cmcm/adsdk/CMAdManager$1;

    invoke-direct {v0}, Lcom/cmcm/adsdk/CMAdManager$1;-><init>()V

    invoke-static {v0}, Lcom/cmcm/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static getAge()Lcom/cmcm/adsdk/CMAdManager$Age;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager;->mAge:Lcom/cmcm/adsdk/CMAdManager$Age;

    return-object v0
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager;->sChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getFactory()Lcom/cmcm/adsdk/CMBaseFactory;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager;->sAdFactory:Lcom/cmcm/adsdk/CMBaseFactory;

    if-nez v0, :cond_0

    .line 135
    :try_start_0
    const-string v0, "com.cmcm.adsdk.CMAdManagerFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/cmcm/adsdk/CMAdManager;->sAdFactory:Lcom/cmcm/adsdk/CMBaseFactory;

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/CMBaseFactory;

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager;->sAdFactory:Lcom/cmcm/adsdk/CMBaseFactory;

    .line 138
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager;->sAdFactory:Lcom/cmcm/adsdk/CMBaseFactory;

    invoke-virtual {v0}, Lcom/cmcm/adsdk/CMBaseFactory;->initConfig()V

    .line 139
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager;->sAdFactory:Lcom/cmcm/adsdk/CMBaseFactory;

    sget-object v1, Lcom/cmcm/adsdk/CMAdManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmcm/adsdk/CMBaseFactory;->clearVastCache(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager;->sAdFactory:Lcom/cmcm/adsdk/CMBaseFactory;

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getGender()Lcom/cmcm/adsdk/CMAdManager$Gender;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager;->mGender:Lcom/cmcm/adsdk/CMAdManager$Gender;

    return-object v0
.end method

.method public static getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager;->mMid:Ljava/lang/String;

    return-object v0
.end method

.method public static setAge(I)V
    .locals 1
    .param p0, "nAge"    # I

    .prologue
    .line 114
    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    .line 115
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_FOUR:Lcom/cmcm/adsdk/CMAdManager$Age;

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager;->mAge:Lcom/cmcm/adsdk/CMAdManager$Age;

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_0
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_1

    .line 117
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_THREE:Lcom/cmcm/adsdk/CMAdManager$Age;

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager;->mAge:Lcom/cmcm/adsdk/CMAdManager$Age;

    goto :goto_0

    .line 118
    :cond_1
    const/16 v0, 0x19

    if-lt p0, v0, :cond_2

    .line 119
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_TWO:Lcom/cmcm/adsdk/CMAdManager$Age;

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager;->mAge:Lcom/cmcm/adsdk/CMAdManager$Age;

    goto :goto_0

    .line 120
    :cond_2
    const/16 v0, 0x12

    if-lt p0, v0, :cond_3

    .line 121
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_ONE:Lcom/cmcm/adsdk/CMAdManager$Age;

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager;->mAge:Lcom/cmcm/adsdk/CMAdManager$Age;

    goto :goto_0

    .line 123
    :cond_3
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_FIVE:Lcom/cmcm/adsdk/CMAdManager$Age;

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager;->mAge:Lcom/cmcm/adsdk/CMAdManager$Age;

    goto :goto_0
.end method

.method public static setGender(Lcom/cmcm/adsdk/CMAdManager$Gender;)V
    .locals 0
    .param p0, "gender"    # Lcom/cmcm/adsdk/CMAdManager$Gender;

    .prologue
    .line 108
    sput-object p0, Lcom/cmcm/adsdk/CMAdManager;->mGender:Lcom/cmcm/adsdk/CMAdManager$Gender;

    .line 109
    return-void
.end method
