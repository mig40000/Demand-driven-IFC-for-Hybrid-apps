.class Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nexage/sourcekit/vast/VASTPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pair"
.end annotation


# instance fields
.field public mFile:Ljava/io/File;

.field public mLastModified:J

.field final synthetic this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;


# direct methods
.method public constructor <init>(Lorg/nexage/sourcekit/vast/VASTPlayer;Ljava/io/File;)V
    .locals 2

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;->mFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;->mLastModified:J

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;

    iget-wide v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;->mLastModified:J

    iget-wide v2, p1, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;->mLastModified:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;->mLastModified:J

    iget-wide v2, p1, Lorg/nexage/sourcekit/vast/VASTPlayer$Pair;->mLastModified:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
