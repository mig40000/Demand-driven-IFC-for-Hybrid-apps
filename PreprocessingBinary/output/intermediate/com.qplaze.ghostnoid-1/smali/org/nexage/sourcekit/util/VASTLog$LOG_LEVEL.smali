.class public final enum Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nexage/sourcekit/util/VASTLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOG_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

.field public static final enum debug:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

.field public static final enum error:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

.field public static final enum info:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

.field public static final enum none:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

.field public static final enum verbose:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

.field public static final enum warning:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    const-string v1, "verbose"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->verbose:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    new-instance v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    const-string v1, "debug"

    invoke-direct {v0, v1, v3, v4}, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->debug:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    new-instance v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    const-string v1, "info"

    invoke-direct {v0, v1, v4, v5}, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->info:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    new-instance v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    const-string v1, "warning"

    invoke-direct {v0, v1, v5, v6}, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->warning:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    new-instance v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    const-string v1, "error"

    invoke-direct {v0, v1, v6, v7}, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->error:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    new-instance v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    const-string v1, "none"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->none:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    const/4 v1, 0x0

    sget-object v2, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->verbose:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    aput-object v2, v0, v1

    sget-object v1, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->debug:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->info:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->warning:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->error:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    aput-object v1, v0, v6

    sget-object v1, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->none:Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    aput-object v1, v0, v7

    sput-object v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->$VALUES:[Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

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

    iput p3, p0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;
    .locals 1

    const-class v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    return-object v0
.end method

.method public static values()[Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;
    .locals 1

    sget-object v0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->$VALUES:[Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, [Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/nexage/sourcekit/util/VASTLog$LOG_LEVEL;->value:I

    return v0
.end method
