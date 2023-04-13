.class public final enum Lcom/appodeal/ads/UserSettings$Gender;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appodeal/ads/UserSettings$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/UserSettings$Gender;

.field public static final enum FEMALE:Lcom/appodeal/ads/UserSettings$Gender;

.field public static final enum MALE:Lcom/appodeal/ads/UserSettings$Gender;

.field public static final enum OTHER:Lcom/appodeal/ads/UserSettings$Gender;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/appodeal/ads/UserSettings$Gender;

    const-string v1, "OTHER"

    const-string v4, "o"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/UserSettings$Gender;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Gender;->OTHER:Lcom/appodeal/ads/UserSettings$Gender;

    new-instance v3, Lcom/appodeal/ads/UserSettings$Gender;

    const-string v4, "FEMALE"

    const-string v7, "f"

    move v6, v5

    invoke-direct/range {v3 .. v8}, Lcom/appodeal/ads/UserSettings$Gender;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v3, Lcom/appodeal/ads/UserSettings$Gender;->FEMALE:Lcom/appodeal/ads/UserSettings$Gender;

    new-instance v6, Lcom/appodeal/ads/UserSettings$Gender;

    const-string v7, "MALE"

    const-string v10, "m"

    move v9, v8

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/appodeal/ads/UserSettings$Gender;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/appodeal/ads/UserSettings$Gender;->MALE:Lcom/appodeal/ads/UserSettings$Gender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appodeal/ads/UserSettings$Gender;

    sget-object v1, Lcom/appodeal/ads/UserSettings$Gender;->OTHER:Lcom/appodeal/ads/UserSettings$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appodeal/ads/UserSettings$Gender;->FEMALE:Lcom/appodeal/ads/UserSettings$Gender;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appodeal/ads/UserSettings$Gender;->MALE:Lcom/appodeal/ads/UserSettings$Gender;

    aput-object v1, v0, v8

    sput-object v0, Lcom/appodeal/ads/UserSettings$Gender;->$VALUES:[Lcom/appodeal/ads/UserSettings$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appodeal/ads/UserSettings$Gender;->a:I

    iput-object p4, p0, Lcom/appodeal/ads/UserSettings$Gender;->b:Ljava/lang/String;

    iput p5, p0, Lcom/appodeal/ads/UserSettings$Gender;->c:I

    return-void
.end method

.method static synthetic a(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Gender;
    .locals 1

    invoke-static {p0}, Lcom/appodeal/ads/UserSettings$Gender;->b(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Gender;
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
    sget-object v0, Lcom/appodeal/ads/UserSettings$Gender;->OTHER:Lcom/appodeal/ads/UserSettings$Gender;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appodeal/ads/UserSettings$Gender;->FEMALE:Lcom/appodeal/ads/UserSettings$Gender;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/appodeal/ads/UserSettings$Gender;->MALE:Lcom/appodeal/ads/UserSettings$Gender;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/UserSettings$Gender;
    .locals 1

    const-class v0, Lcom/appodeal/ads/UserSettings$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/UserSettings$Gender;

    return-object v0
.end method

.method public static values()[Lcom/appodeal/ads/UserSettings$Gender;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/UserSettings$Gender;->$VALUES:[Lcom/appodeal/ads/UserSettings$Gender;

    invoke-virtual {v0}, [Lcom/appodeal/ads/UserSettings$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/UserSettings$Gender;

    return-object v0
.end method


# virtual methods
.method public getMailruValue()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/UserSettings$Gender;->c:I

    return v0
.end method

.method public getMopubValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/UserSettings$Gender;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/UserSettings$Gender;->a:I

    return v0
.end method
