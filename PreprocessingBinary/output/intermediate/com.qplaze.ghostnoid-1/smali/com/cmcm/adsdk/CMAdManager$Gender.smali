.class public final enum Lcom/cmcm/adsdk/CMAdManager$Gender;
.super Ljava/lang/Enum;
.source "CMAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/CMAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmcm/adsdk/CMAdManager$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmcm/adsdk/CMAdManager$Gender;

.field public static final enum FEMAL:Lcom/cmcm/adsdk/CMAdManager$Gender;

.field public static final enum MALE:Lcom/cmcm/adsdk/CMAdManager$Gender;


# instance fields
.field private gender:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/cmcm/adsdk/CMAdManager$Gender;

    const-string v1, "MALE"

    const-string v2, "M"

    invoke-direct {v0, v1, v3, v2}, Lcom/cmcm/adsdk/CMAdManager$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager$Gender;->MALE:Lcom/cmcm/adsdk/CMAdManager$Gender;

    new-instance v0, Lcom/cmcm/adsdk/CMAdManager$Gender;

    const-string v1, "FEMAL"

    const-string v2, "F"

    invoke-direct {v0, v1, v4, v2}, Lcom/cmcm/adsdk/CMAdManager$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager$Gender;->FEMAL:Lcom/cmcm/adsdk/CMAdManager$Gender;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cmcm/adsdk/CMAdManager$Gender;

    sget-object v1, Lcom/cmcm/adsdk/CMAdManager$Gender;->MALE:Lcom/cmcm/adsdk/CMAdManager$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cmcm/adsdk/CMAdManager$Gender;->FEMAL:Lcom/cmcm/adsdk/CMAdManager$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager$Gender;->$VALUES:[Lcom/cmcm/adsdk/CMAdManager$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "gender"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/cmcm/adsdk/CMAdManager$Gender;->gender:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcm/adsdk/CMAdManager$Gender;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/cmcm/adsdk/CMAdManager$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/CMAdManager$Gender;

    return-object v0
.end method

.method public static values()[Lcom/cmcm/adsdk/CMAdManager$Gender;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager$Gender;->$VALUES:[Lcom/cmcm/adsdk/CMAdManager$Gender;

    invoke-virtual {v0}, [Lcom/cmcm/adsdk/CMAdManager$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcm/adsdk/CMAdManager$Gender;

    return-object v0
.end method


# virtual methods
.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cmcm/adsdk/CMAdManager$Gender;->gender:Ljava/lang/String;

    return-object v0
.end method
