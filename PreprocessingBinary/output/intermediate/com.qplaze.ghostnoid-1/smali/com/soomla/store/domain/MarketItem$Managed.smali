.class public final enum Lcom/soomla/store/domain/MarketItem$Managed;
.super Ljava/lang/Enum;
.source "MarketItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/domain/MarketItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Managed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/soomla/store/domain/MarketItem$Managed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/soomla/store/domain/MarketItem$Managed;

.field public static final enum MANAGED:Lcom/soomla/store/domain/MarketItem$Managed;

.field public static final enum SUBSCRIPTION:Lcom/soomla/store/domain/MarketItem$Managed;

.field public static final enum UNMANAGED:Lcom/soomla/store/domain/MarketItem$Managed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/soomla/store/domain/MarketItem$Managed;

    const-string v1, "MANAGED"

    invoke-direct {v0, v1, v2}, Lcom/soomla/store/domain/MarketItem$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/store/domain/MarketItem$Managed;->MANAGED:Lcom/soomla/store/domain/MarketItem$Managed;

    new-instance v0, Lcom/soomla/store/domain/MarketItem$Managed;

    const-string v1, "UNMANAGED"

    invoke-direct {v0, v1, v3}, Lcom/soomla/store/domain/MarketItem$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/store/domain/MarketItem$Managed;->UNMANAGED:Lcom/soomla/store/domain/MarketItem$Managed;

    new-instance v0, Lcom/soomla/store/domain/MarketItem$Managed;

    const-string v1, "SUBSCRIPTION"

    invoke-direct {v0, v1, v4}, Lcom/soomla/store/domain/MarketItem$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/store/domain/MarketItem$Managed;->SUBSCRIPTION:Lcom/soomla/store/domain/MarketItem$Managed;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/soomla/store/domain/MarketItem$Managed;

    sget-object v1, Lcom/soomla/store/domain/MarketItem$Managed;->MANAGED:Lcom/soomla/store/domain/MarketItem$Managed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/soomla/store/domain/MarketItem$Managed;->UNMANAGED:Lcom/soomla/store/domain/MarketItem$Managed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/soomla/store/domain/MarketItem$Managed;->SUBSCRIPTION:Lcom/soomla/store/domain/MarketItem$Managed;

    aput-object v1, v0, v4

    sput-object v0, Lcom/soomla/store/domain/MarketItem$Managed;->$VALUES:[Lcom/soomla/store/domain/MarketItem$Managed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/soomla/store/domain/MarketItem$Managed;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Lcom/soomla/store/domain/MarketItem$Managed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/MarketItem$Managed;

    return-object v0
.end method

.method public static values()[Lcom/soomla/store/domain/MarketItem$Managed;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/soomla/store/domain/MarketItem$Managed;->$VALUES:[Lcom/soomla/store/domain/MarketItem$Managed;

    invoke-virtual {v0}, [Lcom/soomla/store/domain/MarketItem$Managed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/soomla/store/domain/MarketItem$Managed;

    return-object v0
.end method
