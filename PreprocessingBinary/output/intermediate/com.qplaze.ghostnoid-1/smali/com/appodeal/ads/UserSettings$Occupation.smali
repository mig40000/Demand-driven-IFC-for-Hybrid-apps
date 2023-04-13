.class public final enum Lcom/appodeal/ads/UserSettings$Occupation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Occupation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appodeal/ads/UserSettings$Occupation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/UserSettings$Occupation;

.field public static final enum OTHER:Lcom/appodeal/ads/UserSettings$Occupation;

.field public static final enum SCHOOL:Lcom/appodeal/ads/UserSettings$Occupation;

.field public static final enum UNIVERSITY:Lcom/appodeal/ads/UserSettings$Occupation;

.field public static final enum WORK:Lcom/appodeal/ads/UserSettings$Occupation;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appodeal/ads/UserSettings$Occupation;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v2, v2}, Lcom/appodeal/ads/UserSettings$Occupation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Occupation;->OTHER:Lcom/appodeal/ads/UserSettings$Occupation;

    new-instance v0, Lcom/appodeal/ads/UserSettings$Occupation;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v3, v3}, Lcom/appodeal/ads/UserSettings$Occupation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Occupation;->WORK:Lcom/appodeal/ads/UserSettings$Occupation;

    new-instance v0, Lcom/appodeal/ads/UserSettings$Occupation;

    const-string v1, "SCHOOL"

    invoke-direct {v0, v1, v4, v4}, Lcom/appodeal/ads/UserSettings$Occupation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Occupation;->SCHOOL:Lcom/appodeal/ads/UserSettings$Occupation;

    new-instance v0, Lcom/appodeal/ads/UserSettings$Occupation;

    const-string v1, "UNIVERSITY"

    invoke-direct {v0, v1, v5, v5}, Lcom/appodeal/ads/UserSettings$Occupation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Occupation;->UNIVERSITY:Lcom/appodeal/ads/UserSettings$Occupation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/appodeal/ads/UserSettings$Occupation;

    sget-object v1, Lcom/appodeal/ads/UserSettings$Occupation;->OTHER:Lcom/appodeal/ads/UserSettings$Occupation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appodeal/ads/UserSettings$Occupation;->WORK:Lcom/appodeal/ads/UserSettings$Occupation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appodeal/ads/UserSettings$Occupation;->SCHOOL:Lcom/appodeal/ads/UserSettings$Occupation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appodeal/ads/UserSettings$Occupation;->UNIVERSITY:Lcom/appodeal/ads/UserSettings$Occupation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/appodeal/ads/UserSettings$Occupation;->$VALUES:[Lcom/appodeal/ads/UserSettings$Occupation;

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

    iput p3, p0, Lcom/appodeal/ads/UserSettings$Occupation;->a:I

    return-void
.end method

.method static synthetic a(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Occupation;
    .locals 1

    invoke-static {p0}, Lcom/appodeal/ads/UserSettings$Occupation;->b(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Occupation;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Occupation;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/appodeal/ads/UserSettings$Occupation;->OTHER:Lcom/appodeal/ads/UserSettings$Occupation;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appodeal/ads/UserSettings$Occupation;->WORK:Lcom/appodeal/ads/UserSettings$Occupation;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/appodeal/ads/UserSettings$Occupation;->SCHOOL:Lcom/appodeal/ads/UserSettings$Occupation;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/appodeal/ads/UserSettings$Occupation;->UNIVERSITY:Lcom/appodeal/ads/UserSettings$Occupation;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/UserSettings$Occupation;
    .locals 1

    const-class v0, Lcom/appodeal/ads/UserSettings$Occupation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/UserSettings$Occupation;

    return-object v0
.end method

.method public static values()[Lcom/appodeal/ads/UserSettings$Occupation;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/UserSettings$Occupation;->$VALUES:[Lcom/appodeal/ads/UserSettings$Occupation;

    invoke-virtual {v0}, [Lcom/appodeal/ads/UserSettings$Occupation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/UserSettings$Occupation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/UserSettings$Occupation;->a:I

    return v0
.end method
