.class public final enum Lcom/appodeal/ads/ao$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appodeal/ads/ao$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appodeal/ads/ao$b;

.field public static final enum b:Lcom/appodeal/ads/ao$b;

.field private static final synthetic c:[Lcom/appodeal/ads/ao$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appodeal/ads/ao$b;

    const-string v1, "NON_REWARDED"

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/ao$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/ao$b;->a:Lcom/appodeal/ads/ao$b;

    new-instance v0, Lcom/appodeal/ads/ao$b;

    const-string v1, "REWARDED"

    invoke-direct {v0, v1, v3}, Lcom/appodeal/ads/ao$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/ao$b;->b:Lcom/appodeal/ads/ao$b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appodeal/ads/ao$b;

    sget-object v1, Lcom/appodeal/ads/ao$b;->a:Lcom/appodeal/ads/ao$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appodeal/ads/ao$b;->b:Lcom/appodeal/ads/ao$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appodeal/ads/ao$b;->c:[Lcom/appodeal/ads/ao$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/ao$b;
    .locals 1

    const-class v0, Lcom/appodeal/ads/ao$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ao$b;

    return-object v0
.end method

.method public static values()[Lcom/appodeal/ads/ao$b;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/ao$b;->c:[Lcom/appodeal/ads/ao$b;

    invoke-virtual {v0}, [Lcom/appodeal/ads/ao$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/ao$b;

    return-object v0
.end method
