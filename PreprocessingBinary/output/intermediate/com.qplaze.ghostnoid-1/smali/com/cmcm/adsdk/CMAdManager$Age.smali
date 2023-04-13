.class public final enum Lcom/cmcm/adsdk/CMAdManager$Age;
.super Ljava/lang/Enum;
.source "CMAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/adsdk/CMAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Age"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmcm/adsdk/CMAdManager$Age;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmcm/adsdk/CMAdManager$Age;

.field public static final enum AGE_RANGE_FIVE:Lcom/cmcm/adsdk/CMAdManager$Age;

.field public static final enum AGE_RANGE_FOUR:Lcom/cmcm/adsdk/CMAdManager$Age;

.field public static final enum AGE_RANGE_ONE:Lcom/cmcm/adsdk/CMAdManager$Age;

.field public static final enum AGE_RANGE_THREE:Lcom/cmcm/adsdk/CMAdManager$Age;

.field public static final enum AGE_RANGE_TWO:Lcom/cmcm/adsdk/CMAdManager$Age;


# instance fields
.field private nAge:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 47
    new-instance v0, Lcom/cmcm/adsdk/CMAdManager$Age;

    const-string v1, "AGE_RANGE_ONE"

    invoke-direct {v0, v1, v7, v3}, Lcom/cmcm/adsdk/CMAdManager$Age;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_ONE:Lcom/cmcm/adsdk/CMAdManager$Age;

    new-instance v0, Lcom/cmcm/adsdk/CMAdManager$Age;

    const-string v1, "AGE_RANGE_TWO"

    invoke-direct {v0, v1, v3, v4}, Lcom/cmcm/adsdk/CMAdManager$Age;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_TWO:Lcom/cmcm/adsdk/CMAdManager$Age;

    new-instance v0, Lcom/cmcm/adsdk/CMAdManager$Age;

    const-string v1, "AGE_RANGE_THREE"

    invoke-direct {v0, v1, v4, v5}, Lcom/cmcm/adsdk/CMAdManager$Age;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_THREE:Lcom/cmcm/adsdk/CMAdManager$Age;

    new-instance v0, Lcom/cmcm/adsdk/CMAdManager$Age;

    const-string v1, "AGE_RANGE_FOUR"

    invoke-direct {v0, v1, v5, v6}, Lcom/cmcm/adsdk/CMAdManager$Age;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_FOUR:Lcom/cmcm/adsdk/CMAdManager$Age;

    new-instance v0, Lcom/cmcm/adsdk/CMAdManager$Age;

    const-string v1, "AGE_RANGE_FIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/cmcm/adsdk/CMAdManager$Age;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_FIVE:Lcom/cmcm/adsdk/CMAdManager$Age;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cmcm/adsdk/CMAdManager$Age;

    sget-object v1, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_ONE:Lcom/cmcm/adsdk/CMAdManager$Age;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_TWO:Lcom/cmcm/adsdk/CMAdManager$Age;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_THREE:Lcom/cmcm/adsdk/CMAdManager$Age;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_FOUR:Lcom/cmcm/adsdk/CMAdManager$Age;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cmcm/adsdk/CMAdManager$Age;->AGE_RANGE_FIVE:Lcom/cmcm/adsdk/CMAdManager$Age;

    aput-object v1, v0, v6

    sput-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->$VALUES:[Lcom/cmcm/adsdk/CMAdManager$Age;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nAge"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/cmcm/adsdk/CMAdManager$Age;->nAge:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcm/adsdk/CMAdManager$Age;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/cmcm/adsdk/CMAdManager$Age;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmcm/adsdk/CMAdManager$Age;

    return-object v0
.end method

.method public static values()[Lcom/cmcm/adsdk/CMAdManager$Age;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/cmcm/adsdk/CMAdManager$Age;->$VALUES:[Lcom/cmcm/adsdk/CMAdManager$Age;

    invoke-virtual {v0}, [Lcom/cmcm/adsdk/CMAdManager$Age;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcm/adsdk/CMAdManager$Age;

    return-object v0
.end method


# virtual methods
.method public getAge()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/cmcm/adsdk/CMAdManager$Age;->nAge:I

    return v0
.end method
