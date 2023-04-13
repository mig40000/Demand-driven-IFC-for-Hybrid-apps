.class public abstract Lcom/my/target/core/enums/a;
.super Ljava/lang/Object;
.source "Sections.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field private static h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-string v0, "standard"

    sput-object v0, Lcom/my/target/core/enums/a;->a:Ljava/lang/String;

    .line 15
    const-string v0, "showcase"

    sput-object v0, Lcom/my/target/core/enums/a;->b:Ljava/lang/String;

    .line 16
    const-string v0, "appwall"

    sput-object v0, Lcom/my/target/core/enums/a;->c:Ljava/lang/String;

    .line 17
    const-string v0, "fullscreen"

    sput-object v0, Lcom/my/target/core/enums/a;->d:Ljava/lang/String;

    .line 18
    const-string v0, "nativeads"

    sput-object v0, Lcom/my/target/core/enums/a;->e:Ljava/lang/String;

    .line 19
    const-string v0, "instreamads"

    sput-object v0, Lcom/my/target/core/enums/a;->f:Ljava/lang/String;

    .line 20
    const-string v0, "video"

    sput-object v0, Lcom/my/target/core/enums/a;->g:Ljava/lang/String;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/my/target/core/enums/a;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/my/target/core/enums/a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/my/target/core/enums/a;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/my/target/core/enums/a;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/my/target/core/enums/a;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/my/target/core/enums/a;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/my/target/core/enums/a;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/my/target/core/enums/a;->h:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    sget-object v2, Lcom/my/target/core/enums/a;->h:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 36
    :goto_1
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
