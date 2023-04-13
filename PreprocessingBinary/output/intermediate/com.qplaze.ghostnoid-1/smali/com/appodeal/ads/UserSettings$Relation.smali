.class public final enum Lcom/appodeal/ads/UserSettings$Relation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Relation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appodeal/ads/UserSettings$Relation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/UserSettings$Relation;

.field public static final enum DATING:Lcom/appodeal/ads/UserSettings$Relation;

.field public static final enum ENGAGED:Lcom/appodeal/ads/UserSettings$Relation;

.field public static final enum MARRIED:Lcom/appodeal/ads/UserSettings$Relation;

.field public static final enum OTHER:Lcom/appodeal/ads/UserSettings$Relation;

.field public static final enum SEARCHING:Lcom/appodeal/ads/UserSettings$Relation;

.field public static final enum SINGLE:Lcom/appodeal/ads/UserSettings$Relation;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/appodeal/ads/UserSettings$Relation;

    const-string v1, "OTHER"

    const-string v2, "other"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/appodeal/ads/UserSettings$Relation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Relation;->OTHER:Lcom/appodeal/ads/UserSettings$Relation;

    new-instance v0, Lcom/appodeal/ads/UserSettings$Relation;

    const-string v1, "SINGLE"

    const-string v2, "single"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/appodeal/ads/UserSettings$Relation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Relation;->SINGLE:Lcom/appodeal/ads/UserSettings$Relation;

    new-instance v0, Lcom/appodeal/ads/UserSettings$Relation;

    const-string v1, "DATING"

    const-string v2, "single"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/appodeal/ads/UserSettings$Relation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Relation;->DATING:Lcom/appodeal/ads/UserSettings$Relation;

    new-instance v0, Lcom/appodeal/ads/UserSettings$Relation;

    const-string v1, "ENGAGED"

    const-string v2, "married"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/appodeal/ads/UserSettings$Relation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Relation;->ENGAGED:Lcom/appodeal/ads/UserSettings$Relation;

    new-instance v0, Lcom/appodeal/ads/UserSettings$Relation;

    const-string v1, "MARRIED"

    const-string v2, "married"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/appodeal/ads/UserSettings$Relation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Relation;->MARRIED:Lcom/appodeal/ads/UserSettings$Relation;

    new-instance v0, Lcom/appodeal/ads/UserSettings$Relation;

    const-string v1, "SEARCHING"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "single"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appodeal/ads/UserSettings$Relation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Relation;->SEARCHING:Lcom/appodeal/ads/UserSettings$Relation;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/appodeal/ads/UserSettings$Relation;

    sget-object v1, Lcom/appodeal/ads/UserSettings$Relation;->OTHER:Lcom/appodeal/ads/UserSettings$Relation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appodeal/ads/UserSettings$Relation;->SINGLE:Lcom/appodeal/ads/UserSettings$Relation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appodeal/ads/UserSettings$Relation;->DATING:Lcom/appodeal/ads/UserSettings$Relation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appodeal/ads/UserSettings$Relation;->ENGAGED:Lcom/appodeal/ads/UserSettings$Relation;

    aput-object v1, v0, v8

    sget-object v1, Lcom/appodeal/ads/UserSettings$Relation;->MARRIED:Lcom/appodeal/ads/UserSettings$Relation;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/appodeal/ads/UserSettings$Relation;->SEARCHING:Lcom/appodeal/ads/UserSettings$Relation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/appodeal/ads/UserSettings$Relation;->$VALUES:[Lcom/appodeal/ads/UserSettings$Relation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appodeal/ads/UserSettings$Relation;->a:I

    iput-object p4, p0, Lcom/appodeal/ads/UserSettings$Relation;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Relation;
    .locals 1

    invoke-static {p0}, Lcom/appodeal/ads/UserSettings$Relation;->b(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Relation;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Relation;
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
    sget-object v0, Lcom/appodeal/ads/UserSettings$Relation;->OTHER:Lcom/appodeal/ads/UserSettings$Relation;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appodeal/ads/UserSettings$Relation;->SINGLE:Lcom/appodeal/ads/UserSettings$Relation;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/appodeal/ads/UserSettings$Relation;->DATING:Lcom/appodeal/ads/UserSettings$Relation;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/appodeal/ads/UserSettings$Relation;->ENGAGED:Lcom/appodeal/ads/UserSettings$Relation;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/appodeal/ads/UserSettings$Relation;->MARRIED:Lcom/appodeal/ads/UserSettings$Relation;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/appodeal/ads/UserSettings$Relation;->SEARCHING:Lcom/appodeal/ads/UserSettings$Relation;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/UserSettings$Relation;
    .locals 1

    const-class v0, Lcom/appodeal/ads/UserSettings$Relation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/UserSettings$Relation;

    return-object v0
.end method

.method public static values()[Lcom/appodeal/ads/UserSettings$Relation;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/UserSettings$Relation;->$VALUES:[Lcom/appodeal/ads/UserSettings$Relation;

    invoke-virtual {v0}, [Lcom/appodeal/ads/UserSettings$Relation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/UserSettings$Relation;

    return-object v0
.end method


# virtual methods
.method public getMopubValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/UserSettings$Relation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/UserSettings$Relation;->a:I

    return v0
.end method
