.class public final enum Lcom/appodeal/ads/networks/vpaid/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/networks/vpaid/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appodeal/ads/networks/vpaid/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appodeal/ads/networks/vpaid/c$a;

.field public static final enum b:Lcom/appodeal/ads/networks/vpaid/c$a;

.field public static final enum c:Lcom/appodeal/ads/networks/vpaid/c$a;

.field public static final enum d:Lcom/appodeal/ads/networks/vpaid/c$a;

.field public static final enum e:Lcom/appodeal/ads/networks/vpaid/c$a;

.field public static final enum f:Lcom/appodeal/ads/networks/vpaid/c$a;

.field private static final synthetic h:[Lcom/appodeal/ads/networks/vpaid/c$a;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/appodeal/ads/networks/vpaid/c$a;

    const-string v1, "verbose"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/appodeal/ads/networks/vpaid/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->a:Lcom/appodeal/ads/networks/vpaid/c$a;

    new-instance v0, Lcom/appodeal/ads/networks/vpaid/c$a;

    const-string v1, "debug"

    invoke-direct {v0, v1, v3, v4}, Lcom/appodeal/ads/networks/vpaid/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->b:Lcom/appodeal/ads/networks/vpaid/c$a;

    new-instance v0, Lcom/appodeal/ads/networks/vpaid/c$a;

    const-string v1, "info"

    invoke-direct {v0, v1, v4, v5}, Lcom/appodeal/ads/networks/vpaid/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->c:Lcom/appodeal/ads/networks/vpaid/c$a;

    new-instance v0, Lcom/appodeal/ads/networks/vpaid/c$a;

    const-string v1, "warning"

    invoke-direct {v0, v1, v5, v6}, Lcom/appodeal/ads/networks/vpaid/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->d:Lcom/appodeal/ads/networks/vpaid/c$a;

    new-instance v0, Lcom/appodeal/ads/networks/vpaid/c$a;

    const-string v1, "error"

    invoke-direct {v0, v1, v6, v7}, Lcom/appodeal/ads/networks/vpaid/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->e:Lcom/appodeal/ads/networks/vpaid/c$a;

    new-instance v0, Lcom/appodeal/ads/networks/vpaid/c$a;

    const-string v1, "none"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/appodeal/ads/networks/vpaid/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->f:Lcom/appodeal/ads/networks/vpaid/c$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/appodeal/ads/networks/vpaid/c$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/appodeal/ads/networks/vpaid/c$a;->a:Lcom/appodeal/ads/networks/vpaid/c$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/appodeal/ads/networks/vpaid/c$a;->b:Lcom/appodeal/ads/networks/vpaid/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appodeal/ads/networks/vpaid/c$a;->c:Lcom/appodeal/ads/networks/vpaid/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appodeal/ads/networks/vpaid/c$a;->d:Lcom/appodeal/ads/networks/vpaid/c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appodeal/ads/networks/vpaid/c$a;->e:Lcom/appodeal/ads/networks/vpaid/c$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appodeal/ads/networks/vpaid/c$a;->f:Lcom/appodeal/ads/networks/vpaid/c$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->h:[Lcom/appodeal/ads/networks/vpaid/c$a;

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

    iput p3, p0, Lcom/appodeal/ads/networks/vpaid/c$a;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/networks/vpaid/c$a;
    .locals 1

    const-class v0, Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/networks/vpaid/c$a;

    return-object v0
.end method

.method public static values()[Lcom/appodeal/ads/networks/vpaid/c$a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/networks/vpaid/c$a;->h:[Lcom/appodeal/ads/networks/vpaid/c$a;

    invoke-virtual {v0}, [Lcom/appodeal/ads/networks/vpaid/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/networks/vpaid/c$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/networks/vpaid/c$a;->g:I

    return v0
.end method
