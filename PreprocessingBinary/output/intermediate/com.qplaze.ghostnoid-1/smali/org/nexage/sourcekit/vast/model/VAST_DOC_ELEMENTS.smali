.class public final enum Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

.field public static final enum vastAdTagURI:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

.field public static final enum vastVersion:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

.field public static final enum vastVersionAttribute:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

.field public static final enum vasts:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    const-string v1, "vastVersion"

    const-string v2, "2.0"

    invoke-direct {v0, v1, v3, v2}, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->vastVersion:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    const-string v1, "vasts"

    const-string v2, "VASTS"

    invoke-direct {v0, v1, v4, v2}, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->vasts:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    const-string v1, "vastAdTagURI"

    const-string v2, "VASTAdTagURI"

    invoke-direct {v0, v1, v5, v2}, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->vastAdTagURI:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    const-string v1, "vastVersionAttribute"

    const-string v2, "version"

    invoke-direct {v0, v1, v6, v2}, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->vastVersionAttribute:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->vastVersion:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    aput-object v1, v0, v3

    sget-object v1, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->vasts:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    aput-object v1, v0, v4

    sget-object v1, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->vastAdTagURI:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    aput-object v1, v0, v5

    sget-object v1, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->vastVersionAttribute:Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    aput-object v1, v0, v6

    sput-object v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->$VALUES:[Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

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

    iput-object p3, p0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;
    .locals 1

    const-class v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    return-object v0
.end method

.method public static values()[Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;
    .locals 1

    sget-object v0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->$VALUES:[Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    invoke-virtual {v0}, [Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VAST_DOC_ELEMENTS;->value:Ljava/lang/String;

    return-object v0
.end method
