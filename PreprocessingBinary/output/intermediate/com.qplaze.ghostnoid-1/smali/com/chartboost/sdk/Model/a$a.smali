.class public final enum Lcom/chartboost/sdk/Model/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Model/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/Model/a$a;

.field public static final enum b:Lcom/chartboost/sdk/Model/a$a;

.field public static final enum c:Lcom/chartboost/sdk/Model/a$a;

.field public static final enum d:Lcom/chartboost/sdk/Model/a$a;

.field private static final synthetic e:[Lcom/chartboost/sdk/Model/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/chartboost/sdk/Model/a$a;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$a;->a:Lcom/chartboost/sdk/Model/a$a;

    .line 42
    new-instance v0, Lcom/chartboost/sdk/Model/a$a;

    const-string v1, "MORE_APPS"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$a;->b:Lcom/chartboost/sdk/Model/a$a;

    .line 43
    new-instance v0, Lcom/chartboost/sdk/Model/a$a;

    const-string v1, "REWARDED_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$a;->c:Lcom/chartboost/sdk/Model/a$a;

    .line 44
    new-instance v0, Lcom/chartboost/sdk/Model/a$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Model/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/a$a;->d:Lcom/chartboost/sdk/Model/a$a;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Model/a$a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$a;->a:Lcom/chartboost/sdk/Model/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Model/a$a;->b:Lcom/chartboost/sdk/Model/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Model/a$a;->c:Lcom/chartboost/sdk/Model/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Model/a$a;->d:Lcom/chartboost/sdk/Model/a$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chartboost/sdk/Model/a$a;->e:[Lcom/chartboost/sdk/Model/a$a;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/chartboost/sdk/Model/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/a$a;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/a$a;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/chartboost/sdk/Model/a$a;->e:[Lcom/chartboost/sdk/Model/a$a;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/a$a;

    return-object v0
.end method
