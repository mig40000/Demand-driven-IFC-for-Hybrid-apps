.class public final enum Lcom/chartboost/sdk/impl/ai$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/impl/ai$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/impl/ai$b;

.field public static final enum b:Lcom/chartboost/sdk/impl/ai$b;

.field public static final enum c:Lcom/chartboost/sdk/impl/ai$b;

.field public static final enum d:Lcom/chartboost/sdk/impl/ai$b;

.field private static final synthetic f:[Lcom/chartboost/sdk/impl/ai$b;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/chartboost/sdk/impl/ai$b;

    const-string v1, "CONNECTION_UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/chartboost/sdk/impl/ai$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    .line 39
    new-instance v0, Lcom/chartboost/sdk/impl/ai$b;

    const-string v1, "CONNECTION_ERROR"

    invoke-direct {v0, v1, v4, v3}, Lcom/chartboost/sdk/impl/ai$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    .line 40
    new-instance v0, Lcom/chartboost/sdk/impl/ai$b;

    const-string v1, "CONNECTION_WIFI"

    invoke-direct {v0, v1, v5, v4}, Lcom/chartboost/sdk/impl/ai$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    .line 41
    new-instance v0, Lcom/chartboost/sdk/impl/ai$b;

    const-string v1, "CONNECTION_MOBILE"

    invoke-direct {v0, v1, v6, v5}, Lcom/chartboost/sdk/impl/ai$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/ai$b;->d:Lcom/chartboost/sdk/impl/ai$b;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->d:Lcom/chartboost/sdk/impl/ai$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/chartboost/sdk/impl/ai$b;->f:[Lcom/chartboost/sdk/impl/ai$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/chartboost/sdk/impl/ai$b;->e:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/ai$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/chartboost/sdk/impl/ai$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ai$b;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/ai$b;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->f:[Lcom/chartboost/sdk/impl/ai$b;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/impl/ai$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/impl/ai$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/chartboost/sdk/impl/ai$b;->e:I

    return v0
.end method
