.class public final enum Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum acceptInvitation:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum close:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum collapse:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum complete:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum creativeView:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum expand:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum firstQuartile:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum fullscreen:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum midpoint:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum mute:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum pause:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum resume:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum rewind:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum start:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum thirdQuartile:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field public static final enum unmute:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "creativeView"

    invoke-direct {v0, v1, v3}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->creativeView:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "start"

    invoke-direct {v0, v1, v4}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->start:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "midpoint"

    invoke-direct {v0, v1, v5}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->midpoint:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "firstQuartile"

    invoke-direct {v0, v1, v6}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->firstQuartile:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "thirdQuartile"

    invoke-direct {v0, v1, v7}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->thirdQuartile:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "complete"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->complete:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "mute"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->mute:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "unmute"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->unmute:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "pause"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->pause:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "rewind"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->rewind:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "resume"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->resume:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "fullscreen"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->fullscreen:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "expand"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->expand:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "collapse"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->collapse:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "acceptInvitation"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->acceptInvitation:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    new-instance v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const-string v1, "close"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->close:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    const/16 v0, 0x10

    new-array v0, v0, [Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->creativeView:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->start:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->midpoint:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->firstQuartile:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->thirdQuartile:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->complete:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->mute:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->unmute:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->pause:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->rewind:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->resume:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->fullscreen:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->expand:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->collapse:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->acceptInvitation:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->close:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->$VALUES:[Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;
    .locals 1

    const-class v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    return-object v0
.end method

.method public static values()[Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;
    .locals 1

    sget-object v0, Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->$VALUES:[Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v0}, [Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    return-object v0
.end method
