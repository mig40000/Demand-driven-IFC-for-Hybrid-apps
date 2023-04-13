.class public final enum Lcom/appodeal/ads/utils/Log$LogLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appodeal/ads/utils/Log$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/utils/Log$LogLevel;

.field public static final enum debug:Lcom/appodeal/ads/utils/Log$LogLevel;

.field public static final enum none:Lcom/appodeal/ads/utils/Log$LogLevel;

.field public static final enum verbose:Lcom/appodeal/ads/utils/Log$LogLevel;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v1, "none"

    invoke-direct {v0, v1, v2, v2}, Lcom/appodeal/ads/utils/Log$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->none:Lcom/appodeal/ads/utils/Log$LogLevel;

    new-instance v0, Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v1, "debug"

    invoke-direct {v0, v1, v3, v3}, Lcom/appodeal/ads/utils/Log$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->debug:Lcom/appodeal/ads/utils/Log$LogLevel;

    new-instance v0, Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v1, "verbose"

    invoke-direct {v0, v1, v4, v4}, Lcom/appodeal/ads/utils/Log$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appodeal/ads/utils/Log$LogLevel;

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->none:Lcom/appodeal/ads/utils/Log$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->debug:Lcom/appodeal/ads/utils/Log$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->$VALUES:[Lcom/appodeal/ads/utils/Log$LogLevel;

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

    iput p3, p0, Lcom/appodeal/ads/utils/Log$LogLevel;->a:I

    return-void
.end method

.method public static fromInteger(Ljava/lang/Integer;)Lcom/appodeal/ads/utils/Log$LogLevel;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->none:Lcom/appodeal/ads/utils/Log$LogLevel;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->none:Lcom/appodeal/ads/utils/Log$LogLevel;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->none:Lcom/appodeal/ads/utils/Log$LogLevel;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->debug:Lcom/appodeal/ads/utils/Log$LogLevel;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static names()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/appodeal/ads/utils/Log$LogLevel;->values()[Lcom/appodeal/ads/utils/Log$LogLevel;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/appodeal/ads/utils/Log$LogLevel;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/utils/Log$LogLevel;
    .locals 1

    const-class v0, Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/utils/Log$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/appodeal/ads/utils/Log$LogLevel;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/Log$LogLevel;->$VALUES:[Lcom/appodeal/ads/utils/Log$LogLevel;

    invoke-virtual {v0}, [Lcom/appodeal/ads/utils/Log$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/utils/Log$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/utils/Log$LogLevel;->a:I

    return v0
.end method
