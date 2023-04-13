.class Lorg/nexage/sourcekit/util/DefaultMediaPicker$AreaComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nexage/sourcekit/util/DefaultMediaPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AreaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/nexage/sourcekit/vast/model/VASTMediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/util/DefaultMediaPicker;


# direct methods
.method private constructor <init>(Lorg/nexage/sourcekit/util/DefaultMediaPicker;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/util/DefaultMediaPicker$AreaComparator;->this$0:Lorg/nexage/sourcekit/util/DefaultMediaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nexage/sourcekit/util/DefaultMediaPicker;Lorg/nexage/sourcekit/util/DefaultMediaPicker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/nexage/sourcekit/util/DefaultMediaPicker$AreaComparator;-><init>(Lorg/nexage/sourcekit/util/DefaultMediaPicker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;

    check-cast p2, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;

    invoke-virtual {p0, p1, p2}, Lorg/nexage/sourcekit/util/DefaultMediaPicker$AreaComparator;->compare(Lorg/nexage/sourcekit/vast/model/VASTMediaFile;Lorg/nexage/sourcekit/vast/model/VASTMediaFile;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/nexage/sourcekit/vast/model/VASTMediaFile;Lorg/nexage/sourcekit/vast/model/VASTMediaFile;)I
    .locals 5

    invoke-virtual {p1}, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p2}, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lorg/nexage/sourcekit/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lorg/nexage/sourcekit/util/DefaultMediaPicker$AreaComparator;->this$0:Lorg/nexage/sourcekit/util/DefaultMediaPicker;

    invoke-static {v2}, Lorg/nexage/sourcekit/util/DefaultMediaPicker;->access$100(Lorg/nexage/sourcekit/util/DefaultMediaPicker;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lorg/nexage/sourcekit/util/DefaultMediaPicker$AreaComparator;->this$0:Lorg/nexage/sourcekit/util/DefaultMediaPicker;

    invoke-static {v2}, Lorg/nexage/sourcekit/util/DefaultMediaPicker;->access$100(Lorg/nexage/sourcekit/util/DefaultMediaPicker;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const-string v2, "DefaultMediaPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AreaComparator: obj1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " obj2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/nexage/sourcekit/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
