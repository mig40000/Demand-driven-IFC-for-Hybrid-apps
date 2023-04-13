.class public final enum Lcom/chartboost/sdk/Libraries/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Libraries/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/Libraries/e;

.field public static final enum b:Lcom/chartboost/sdk/Libraries/e;

.field public static final enum c:Lcom/chartboost/sdk/Libraries/e;

.field public static final enum d:Lcom/chartboost/sdk/Libraries/e;

.field public static final e:Lcom/chartboost/sdk/Libraries/e;

.field public static final f:Lcom/chartboost/sdk/Libraries/e;

.field public static final g:Lcom/chartboost/sdk/Libraries/e;

.field public static final h:Lcom/chartboost/sdk/Libraries/e;

.field private static final synthetic i:[Lcom/chartboost/sdk/Libraries/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/chartboost/sdk/Libraries/e;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->a:Lcom/chartboost/sdk/Libraries/e;

    .line 16
    new-instance v0, Lcom/chartboost/sdk/Libraries/e;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Libraries/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->b:Lcom/chartboost/sdk/Libraries/e;

    .line 20
    new-instance v0, Lcom/chartboost/sdk/Libraries/e;

    const-string v1, "PORTRAIT_REVERSE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Libraries/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->c:Lcom/chartboost/sdk/Libraries/e;

    .line 24
    new-instance v0, Lcom/chartboost/sdk/Libraries/e;

    const-string v1, "LANDSCAPE_REVERSE"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Libraries/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->d:Lcom/chartboost/sdk/Libraries/e;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e;

    sget-object v1, Lcom/chartboost/sdk/Libraries/e;->a:Lcom/chartboost/sdk/Libraries/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Libraries/e;->b:Lcom/chartboost/sdk/Libraries/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Libraries/e;->c:Lcom/chartboost/sdk/Libraries/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Libraries/e;->d:Lcom/chartboost/sdk/Libraries/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->i:[Lcom/chartboost/sdk/Libraries/e;

    .line 29
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->c:Lcom/chartboost/sdk/Libraries/e;

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->e:Lcom/chartboost/sdk/Libraries/e;

    .line 33
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->a:Lcom/chartboost/sdk/Libraries/e;

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->f:Lcom/chartboost/sdk/Libraries/e;

    .line 37
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->b:Lcom/chartboost/sdk/Libraries/e;

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->g:Lcom/chartboost/sdk/Libraries/e;

    .line 41
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->d:Lcom/chartboost/sdk/Libraries/e;

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->h:Lcom/chartboost/sdk/Libraries/e;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/chartboost/sdk/Libraries/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/e;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Libraries/e;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->i:[Lcom/chartboost/sdk/Libraries/e;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Libraries/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Libraries/e;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->a:Lcom/chartboost/sdk/Libraries/e;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->c:Lcom/chartboost/sdk/Libraries/e;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->b:Lcom/chartboost/sdk/Libraries/e;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->d:Lcom/chartboost/sdk/Libraries/e;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
