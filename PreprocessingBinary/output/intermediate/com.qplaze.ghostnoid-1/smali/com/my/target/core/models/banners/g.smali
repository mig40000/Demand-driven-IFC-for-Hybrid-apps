.class public final Lcom/my/target/core/models/banners/g;
.super Lcom/my/target/core/models/banners/a;
.source "StandardBanner.java"


# instance fields
.field private final r:Lcom/my/target/nativeads/models/ImageData;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lcom/my/target/nativeads/models/ImageData;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/models/banners/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/my/target/nativeads/models/ImageData;

    invoke-direct {v0}, Lcom/my/target/nativeads/models/ImageData;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/banners/g;->r:Lcom/my/target/nativeads/models/ImageData;

    .line 150
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/my/target/core/models/banners/g;->z:F

    .line 115
    return-void
.end method

.method public final a(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/my/target/core/models/banners/g;->v:Lcom/my/target/nativeads/models/ImageData;

    .line 75
    return-void
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/my/target/core/models/banners/g;->w:I

    .line 100
    return-void
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/my/target/core/models/banners/g;->r:Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v0, p1}, Lcom/my/target/nativeads/models/ImageData;->setWidth(I)V

    .line 120
    return-void
.end method

.method public final f(I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/my/target/core/models/banners/g;->r:Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v0, p1}, Lcom/my/target/nativeads/models/ImageData;->setHeight(I)V

    .line 125
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/my/target/core/models/banners/g;->s:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/models/banners/g;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/my/target/core/models/banners/g;->t:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/my/target/core/models/banners/g;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/my/target/core/models/banners/g;->u:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/my/target/core/models/banners/g;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/my/target/core/models/banners/g;->x:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final n()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/my/target/core/models/banners/g;->v:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/my/target/core/models/banners/g;->y:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/my/target/core/models/banners/g;->w:I

    return v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/my/target/core/models/banners/g;->r:Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v0, p1}, Lcom/my/target/nativeads/models/ImageData;->setUrl(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/my/target/core/models/banners/g;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final q()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/my/target/core/models/banners/g;->z:F

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StandardBanner{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/models/banners/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/models/banners/g;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
