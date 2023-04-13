.class final enum Lcom/appodeal/ads/utils/g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appodeal/ads/utils/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appodeal/ads/utils/g$a;

.field public static final enum b:Lcom/appodeal/ads/utils/g$a;

.field public static final enum c:Lcom/appodeal/ads/utils/g$a;

.field public static final enum d:Lcom/appodeal/ads/utils/g$a;

.field public static final enum e:Lcom/appodeal/ads/utils/g$a;

.field private static final synthetic g:[Lcom/appodeal/ads/utils/g$a;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appodeal/ads/utils/g$a;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2, v2}, Lcom/appodeal/ads/utils/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/utils/g$a;->a:Lcom/appodeal/ads/utils/g$a;

    new-instance v0, Lcom/appodeal/ads/utils/g$a;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v3, v3}, Lcom/appodeal/ads/utils/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/utils/g$a;->b:Lcom/appodeal/ads/utils/g$a;

    new-instance v0, Lcom/appodeal/ads/utils/g$a;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v4, v4}, Lcom/appodeal/ads/utils/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/utils/g$a;->c:Lcom/appodeal/ads/utils/g$a;

    new-instance v0, Lcom/appodeal/ads/utils/g$a;

    const-string v1, "PORT"

    invoke-direct {v0, v1, v5, v5}, Lcom/appodeal/ads/utils/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/utils/g$a;->d:Lcom/appodeal/ads/utils/g$a;

    new-instance v0, Lcom/appodeal/ads/utils/g$a;

    const-string v1, "LOG_LEVEL"

    invoke-direct {v0, v1, v6, v6}, Lcom/appodeal/ads/utils/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/utils/g$a;->e:Lcom/appodeal/ads/utils/g$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/appodeal/ads/utils/g$a;

    sget-object v1, Lcom/appodeal/ads/utils/g$a;->a:Lcom/appodeal/ads/utils/g$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appodeal/ads/utils/g$a;->b:Lcom/appodeal/ads/utils/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appodeal/ads/utils/g$a;->c:Lcom/appodeal/ads/utils/g$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appodeal/ads/utils/g$a;->d:Lcom/appodeal/ads/utils/g$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appodeal/ads/utils/g$a;->e:Lcom/appodeal/ads/utils/g$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/appodeal/ads/utils/g$a;->g:[Lcom/appodeal/ads/utils/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appodeal/ads/utils/g$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/utils/g$a;
    .locals 1

    const-class v0, Lcom/appodeal/ads/utils/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/utils/g$a;

    return-object v0
.end method

.method public static values()[Lcom/appodeal/ads/utils/g$a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/g$a;->g:[Lcom/appodeal/ads/utils/g$a;

    invoke-virtual {v0}, [Lcom/appodeal/ads/utils/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/utils/g$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/utils/g$a;->f:I

    return v0
.end method
