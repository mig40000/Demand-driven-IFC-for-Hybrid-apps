.class public final enum Lcom/chartboost/sdk/impl/bc$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/impl/bc$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/impl/bc$b;

.field public static final enum b:Lcom/chartboost/sdk/impl/bc$b;

.field public static final enum c:Lcom/chartboost/sdk/impl/bc$b;

.field public static final enum d:Lcom/chartboost/sdk/impl/bc$b;

.field public static final enum e:Lcom/chartboost/sdk/impl/bc$b;

.field public static final enum f:Lcom/chartboost/sdk/impl/bc$b;

.field public static final enum g:Lcom/chartboost/sdk/impl/bc$b;

.field public static final enum h:Lcom/chartboost/sdk/impl/bc$b;

.field public static final enum i:Lcom/chartboost/sdk/impl/bc$b;

.field private static final synthetic j:[Lcom/chartboost/sdk/impl/bc$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/chartboost/sdk/impl/bc$b;

    const-string v1, "CBAnimationTypePerspectiveRotate"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc$b;

    .line 31
    new-instance v0, Lcom/chartboost/sdk/impl/bc$b;

    const-string v1, "CBAnimationTypeBounce"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$b;->b:Lcom/chartboost/sdk/impl/bc$b;

    .line 32
    new-instance v0, Lcom/chartboost/sdk/impl/bc$b;

    const-string v1, "CBAnimationTypePerspectiveZoom"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$b;->c:Lcom/chartboost/sdk/impl/bc$b;

    .line 33
    new-instance v0, Lcom/chartboost/sdk/impl/bc$b;

    const-string v1, "CBAnimationTypeSlideFromTop"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$b;->d:Lcom/chartboost/sdk/impl/bc$b;

    .line 34
    new-instance v0, Lcom/chartboost/sdk/impl/bc$b;

    const-string v1, "CBAnimationTypeSlideFromBottom"

    invoke-direct {v0, v1, v7}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$b;->e:Lcom/chartboost/sdk/impl/bc$b;

    .line 35
    new-instance v0, Lcom/chartboost/sdk/impl/bc$b;

    const-string v1, "CBAnimationTypeFade"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$b;->f:Lcom/chartboost/sdk/impl/bc$b;

    .line 36
    new-instance v0, Lcom/chartboost/sdk/impl/bc$b;

    const-string v1, "CBAnimationTypeNone"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$b;->g:Lcom/chartboost/sdk/impl/bc$b;

    .line 37
    new-instance v0, Lcom/chartboost/sdk/impl/bc$b;

    const-string v1, "CBAnimationTypeSlideFromLeft"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$b;->h:Lcom/chartboost/sdk/impl/bc$b;

    .line 38
    new-instance v0, Lcom/chartboost/sdk/impl/bc$b;

    const-string v1, "CBAnimationTypeSlideFromRight"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bc$b;->i:Lcom/chartboost/sdk/impl/bc$b;

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/chartboost/sdk/impl/bc$b;

    sget-object v1, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/impl/bc$b;->b:Lcom/chartboost/sdk/impl/bc$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/impl/bc$b;->c:Lcom/chartboost/sdk/impl/bc$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/impl/bc$b;->d:Lcom/chartboost/sdk/impl/bc$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/impl/bc$b;->e:Lcom/chartboost/sdk/impl/bc$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/impl/bc$b;->f:Lcom/chartboost/sdk/impl/bc$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/impl/bc$b;->g:Lcom/chartboost/sdk/impl/bc$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/sdk/impl/bc$b;->h:Lcom/chartboost/sdk/impl/bc$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/sdk/impl/bc$b;->i:Lcom/chartboost/sdk/impl/bc$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/impl/bc$b;->j:[Lcom/chartboost/sdk/impl/bc$b;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/chartboost/sdk/impl/bc$b;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41
    if-nez p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    if-lez p0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/impl/bc$b;->values()[Lcom/chartboost/sdk/impl/bc$b;

    move-result-object v1

    array-length v1, v1

    if-gt p0, v1, :cond_0

    .line 44
    invoke-static {}, Lcom/chartboost/sdk/impl/bc$b;->values()[Lcom/chartboost/sdk/impl/bc$b;

    move-result-object v0

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bc$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/chartboost/sdk/impl/bc$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bc$b;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/bc$b;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/chartboost/sdk/impl/bc$b;->j:[Lcom/chartboost/sdk/impl/bc$b;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/impl/bc$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/impl/bc$b;

    return-object v0
.end method
