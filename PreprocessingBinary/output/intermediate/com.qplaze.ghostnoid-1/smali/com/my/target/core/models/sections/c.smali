.class public final Lcom/my/target/core/models/sections/c;
.super Lcom/my/target/core/models/sections/a;
.source "FullscreenSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/models/sections/a",
        "<",
        "Lcom/my/target/core/models/banners/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lcom/my/target/core/models/j;

.field private j:Lcom/my/target/nativeads/models/ImageData;

.field private k:Lcom/my/target/nativeads/models/ImageData;

.field private l:Lcom/my/target/nativeads/models/ImageData;

.field private m:Z

.field private n:Z

.field private o:F

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 224
    sget-object v0, Lcom/my/target/core/enums/a;->d:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/core/models/sections/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/c;->p:Z

    .line 46
    const-string v0, "Replay"

    iput-object v0, p0, Lcom/my/target/core/models/sections/c;->q:Ljava/lang/String;

    .line 47
    const-string v0, "Close"

    iput-object v0, p0, Lcom/my/target/core/models/sections/c;->r:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/c;->s:Z

    .line 49
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/c;->t:Z

    .line 225
    new-instance v0, Lcom/my/target/core/models/j;

    invoke-direct {v0}, Lcom/my/target/core/models/j;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/c;->i:Lcom/my/target/core/models/j;

    .line 226
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/my/target/core/models/sections/c;->o:F

    .line 167
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lcom/my/target/core/models/sections/c;->u:I

    .line 217
    return-void
.end method

.method public final a(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/my/target/core/models/sections/c;->j:Lcom/my/target/nativeads/models/ImageData;

    .line 182
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/c;->v:Z

    .line 123
    return-void
.end method

.method public final a(ILcom/my/target/core/models/banners/c;)Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p2}, Lcom/my/target/core/models/sections/c;->a(Lcom/my/target/core/models/banners/c;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/my/target/core/models/banners/c;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 127
    instance-of v1, p1, Lcom/my/target/core/models/banners/d;

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/core/models/sections/c;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/c;

    move-result-object v1

    if-nez v1, :cond_1

    .line 131
    check-cast p1, Lcom/my/target/core/models/banners/d;

    .line 132
    iget-object v1, p0, Lcom/my/target/core/models/sections/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget v1, p0, Lcom/my/target/core/models/sections/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/my/target/core/models/sections/c;->d:I

    .line 145
    :goto_0
    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Lcom/my/target/core/models/banners/e;

    if-eqz v1, :cond_1

    .line 137
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/core/models/sections/c;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/c;

    move-result-object v1

    if-nez v1, :cond_1

    .line 139
    check-cast p1, Lcom/my/target/core/models/banners/e;

    .line 140
    iget-object v1, p0, Lcom/my/target/core/models/sections/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget v1, p0, Lcom/my/target/core/models/sections/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/my/target/core/models/sections/c;->d:I

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/my/target/core/models/sections/c;->k:Lcom/my/target/nativeads/models/ImageData;

    .line 197
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/c;->s:Z

    .line 162
    return-void
.end method

.method public final c(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/my/target/core/models/sections/c;->l:Lcom/my/target/nativeads/models/ImageData;

    .line 212
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/my/target/core/models/sections/c;->r:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/c;->t:Z

    .line 172
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/my/target/core/models/sections/c;->q:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/c;->n:Z

    .line 187
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/c;->m:Z

    .line 192
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/c;->p:Z

    .line 207
    return-void
.end method

.method public final i()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/my/target/core/models/sections/c;->o:F

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->j:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final l()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->k:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->l:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/my/target/core/models/sections/c;->u:I

    return v0
.end method

.method public final p()Lcom/my/target/core/models/j;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->i:Lcom/my/target/core/models/j;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/c;->s:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/c;->t:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/c;->v:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/c;->n:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/c;->m:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/c;->p:Z

    return v0
.end method
