.class public final enum Lcom/appodeal/ads/ao$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appodeal/ads/ao$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appodeal/ads/ao$a;

.field public static final enum b:Lcom/appodeal/ads/ao$a;

.field public static final enum c:Lcom/appodeal/ads/ao$a;

.field private static final synthetic d:[Lcom/appodeal/ads/ao$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appodeal/ads/ao$a;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/ao$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/ao$a;->a:Lcom/appodeal/ads/ao$a;

    new-instance v0, Lcom/appodeal/ads/ao$a;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/appodeal/ads/ao$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/ao$a;->b:Lcom/appodeal/ads/ao$a;

    new-instance v0, Lcom/appodeal/ads/ao$a;

    const-string v1, "NOT_AVAILABLE_AFTER_DELAY"

    invoke-direct {v0, v1, v4}, Lcom/appodeal/ads/ao$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/ao$a;->c:Lcom/appodeal/ads/ao$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appodeal/ads/ao$a;

    sget-object v1, Lcom/appodeal/ads/ao$a;->a:Lcom/appodeal/ads/ao$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appodeal/ads/ao$a;->b:Lcom/appodeal/ads/ao$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appodeal/ads/ao$a;->c:Lcom/appodeal/ads/ao$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appodeal/ads/ao$a;->d:[Lcom/appodeal/ads/ao$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/ao$a;
    .locals 1

    const-class v0, Lcom/appodeal/ads/ao$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ao$a;

    return-object v0
.end method

.method public static values()[Lcom/appodeal/ads/ao$a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ao$a;->d:[Lcom/appodeal/ads/ao$a;

    invoke-virtual {v0}, [Lcom/appodeal/ads/ao$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/ao$a;

    return-object v0
.end method
