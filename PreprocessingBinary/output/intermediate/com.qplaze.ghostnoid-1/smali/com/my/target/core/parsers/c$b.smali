.class final Lcom/my/target/core/parsers/c$b;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/parsers/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:F

.field private final e:Lcom/my/target/core/models/banners/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/parsers/c$b;->a:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/parsers/c$b;->b:Ljava/util/List;

    .line 125
    const-string v0, ""

    const-string v1, "video"

    sget-object v2, Lcom/my/target/core/enums/a;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/factories/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/banners/c;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/i;

    iput-object v0, p0, Lcom/my/target/core/parsers/c$b;->e:Lcom/my/target/core/models/banners/i;

    .line 126
    return-void
.end method


# virtual methods
.method public final a()Lcom/my/target/core/models/banners/i;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/my/target/core/parsers/c$b;->e:Lcom/my/target/core/models/banners/i;

    return-object v0
.end method
