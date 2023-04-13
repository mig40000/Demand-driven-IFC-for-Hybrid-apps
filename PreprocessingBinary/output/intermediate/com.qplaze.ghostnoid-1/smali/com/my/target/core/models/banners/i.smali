.class public Lcom/my/target/core/models/banners/i;
.super Lcom/my/target/core/models/banners/a;
.source "VideoBanner.java"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private r:F

.field private s:Z

.field private t:F

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:Lcom/my/target/nativeads/models/ImageData;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/models/banners/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-boolean v0, p0, Lcom/my/target/core/models/banners/i;->v:Z

    .line 26
    iput-boolean v0, p0, Lcom/my/target/core/models/banners/i;->w:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/banners/i;->u:Ljava/util/List;

    .line 83
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/my/target/core/models/banners/i;->r:F

    .line 98
    return-void
.end method

.method public final a(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/my/target/core/models/banners/i;->x:Lcom/my/target/nativeads/models/ImageData;

    .line 148
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/VideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    iput-object p1, p0, Lcom/my/target/core/models/banners/i;->u:Ljava/util/List;

    .line 178
    return-void
.end method

.method public final declared-synchronized a(Lcom/my/target/core/models/i;)Z
    .locals 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/my/target/core/models/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playheadReachedValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    check-cast p1, Lcom/my/target/core/models/g;

    .line 196
    invoke-virtual {p1}, Lcom/my/target/core/models/g;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/my/target/core/models/g;->b()F

    move-result v0

    iget v1, p0, Lcom/my/target/core/models/banners/i;->r:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 198
    invoke-virtual {p1, v0}, Lcom/my/target/core/models/g;->a(F)V

    .line 202
    :cond_0
    invoke-super {p0, p1}, Lcom/my/target/core/models/banners/a;->a(Lcom/my/target/core/models/i;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 205
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Lcom/my/target/core/models/banners/a;->a(Lcom/my/target/core/models/i;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/my/target/core/models/banners/i;->t:F

    .line 118
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/i;->B:Z

    .line 48
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/i;->C:Z

    .line 53
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/i;->D:Z

    .line 58
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/i;->s:Z

    .line 108
    return-void
.end method

.method public final g(Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/i;->v:Z

    .line 128
    return-void
.end method

.method public final h(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/i;->w:Z

    .line 138
    return-void
.end method

.method public final i(Z)V
    .locals 0

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/i;->A:Z

    .line 188
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/my/target/core/models/banners/i;->a:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/my/target/core/models/banners/i;->y:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/i;->B:Z

    return v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/my/target/core/models/banners/i;->z:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/i;->C:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/i;->D:Z

    return v0
.end method

.method public final n()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/my/target/core/models/banners/i;->r:F

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/i;->s:Z

    return v0
.end method

.method public final p()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/my/target/core/models/banners/i;->t:F

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/i;->v:Z

    return v0
.end method

.method public final r()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/my/target/core/models/banners/i;->x:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/my/target/core/models/banners/i;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/my/target/core/models/banners/i;->z:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoBanner{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/models/banners/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/my/target/core/models/banners/i;->r:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", allowClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/my/target/core/models/banners/i;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ", allowCloseDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/my/target/core/models/banners/i;->t:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ", videoDatas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/models/banners/i;->u:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ", autoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/my/target/core/models/banners/i;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ", hasCtaButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/my/target/core/models/banners/i;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, ", preview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/models/banners/i;->x:Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/VideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/my/target/core/models/banners/i;->u:Ljava/util/List;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/i;->A:Z

    return v0
.end method
