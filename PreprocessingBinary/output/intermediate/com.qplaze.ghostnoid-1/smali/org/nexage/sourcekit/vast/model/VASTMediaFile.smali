.class public Lorg/nexage/sourcekit/vast/model/VASTMediaFile;
.super Ljava/lang/Object;


# instance fields
.field private apiFramework:Ljava/lang/String;

.field private bitrate:Ljava/math/BigInteger;

.field private delivery:Ljava/lang/String;

.field private height:Ljava/math/BigInteger;

.field private id:Ljava/lang/String;

.field private maintainAspectRatio:Ljava/lang/Boolean;

.field private scalable:Ljava/lang/Boolean;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private width:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiFramework()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDelivery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->delivery:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isMaintainAspectRatio()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isScalable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setApiFramework(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    return-void
.end method

.method public setBitrate(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    return-void
.end method

.method public setDelivery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->delivery:Ljava/lang/String;

    return-void
.end method

.method public setHeight(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->id:Ljava/lang/String;

    return-void
.end method

.method public setMaintainAspectRatio(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    return-void
.end method

.method public setScalable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->value:Ljava/lang/String;

    return-void
.end method

.method public setWidth(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFile [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delivery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->delivery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scalable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maintainAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiFramework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
