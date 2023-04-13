.class public final enum Lcom/appodeal/ads/f/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appodeal/ads/f/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appodeal/ads/f/b;

.field public static final enum b:Lcom/appodeal/ads/f/b;

.field public static final enum c:Lcom/appodeal/ads/f/b;

.field public static final enum d:Lcom/appodeal/ads/f/b;

.field public static final enum e:Lcom/appodeal/ads/f/b;

.field public static final enum f:Lcom/appodeal/ads/f/b;

.field public static final enum g:Lcom/appodeal/ads/f/b;

.field private static final synthetic i:[Lcom/appodeal/ads/f/b;


# instance fields
.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/appodeal/ads/f/b;

    const-string v1, "LESS"

    const-string v2, "<"

    invoke-direct {v0, v1, v4, v2}, Lcom/appodeal/ads/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/f/b;->a:Lcom/appodeal/ads/f/b;

    new-instance v0, Lcom/appodeal/ads/f/b;

    const-string v1, "LESS_EQUALS"

    const-string v2, "<="

    invoke-direct {v0, v1, v5, v2}, Lcom/appodeal/ads/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/f/b;->b:Lcom/appodeal/ads/f/b;

    new-instance v0, Lcom/appodeal/ads/f/b;

    const-string v1, "EQUALS"

    const-string v2, "=="

    invoke-direct {v0, v1, v6, v2}, Lcom/appodeal/ads/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/f/b;->c:Lcom/appodeal/ads/f/b;

    new-instance v0, Lcom/appodeal/ads/f/b;

    const-string v1, "NOT_EQUALS"

    const-string v2, "!="

    invoke-direct {v0, v1, v7, v2}, Lcom/appodeal/ads/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/f/b;->d:Lcom/appodeal/ads/f/b;

    new-instance v0, Lcom/appodeal/ads/f/b;

    const-string v1, "MORE_EQUALS"

    const-string v2, ">="

    invoke-direct {v0, v1, v8, v2}, Lcom/appodeal/ads/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/f/b;->e:Lcom/appodeal/ads/f/b;

    new-instance v0, Lcom/appodeal/ads/f/b;

    const-string v1, "MORE"

    const/4 v2, 0x5

    const-string v3, ">"

    invoke-direct {v0, v1, v2, v3}, Lcom/appodeal/ads/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/f/b;->f:Lcom/appodeal/ads/f/b;

    new-instance v0, Lcom/appodeal/ads/f/b;

    const-string v1, "IN"

    const/4 v2, 0x6

    const-string v3, "IN"

    invoke-direct {v0, v1, v2, v3}, Lcom/appodeal/ads/f/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/f/b;->g:Lcom/appodeal/ads/f/b;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/appodeal/ads/f/b;

    sget-object v1, Lcom/appodeal/ads/f/b;->a:Lcom/appodeal/ads/f/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appodeal/ads/f/b;->b:Lcom/appodeal/ads/f/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appodeal/ads/f/b;->c:Lcom/appodeal/ads/f/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appodeal/ads/f/b;->d:Lcom/appodeal/ads/f/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appodeal/ads/f/b;->e:Lcom/appodeal/ads/f/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/appodeal/ads/f/b;->f:Lcom/appodeal/ads/f/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/appodeal/ads/f/b;->g:Lcom/appodeal/ads/f/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/appodeal/ads/f/b;->i:[Lcom/appodeal/ads/f/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appodeal/ads/f/b;->h:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/appodeal/ads/f/b;
    .locals 5

    invoke-static {}, Lcom/appodeal/ads/f/b;->values()[Lcom/appodeal/ads/f/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/appodeal/ads/f/b;->h:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/f/b;
    .locals 1

    const-class v0, Lcom/appodeal/ads/f/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/f/b;

    return-object v0
.end method

.method public static values()[Lcom/appodeal/ads/f/b;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/f/b;->i:[Lcom/appodeal/ads/f/b;

    invoke-virtual {v0}, [Lcom/appodeal/ads/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/f/b;

    return-object v0
.end method
