.class public Lorg/nexage/sourcekit/vast/model/Tracking;
.super Ljava/lang/Object;


# instance fields
.field private event:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/Tracking;->event:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/Tracking;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setEvent(Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/Tracking;->event:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/Tracking;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking [event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/Tracking;->event:Lorg/nexage/sourcekit/vast/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/Tracking;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method