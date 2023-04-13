.class public abstract Lcom/my/target/core/models/banners/a;
.super Lcom/my/target/core/models/b;
.source "AbstractBanner.java"

# interfaces
.implements Lcom/my/target/core/models/banners/c;


# instance fields
.field protected a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Z

.field protected q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/my/target/core/models/b;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/banners/a;->q:Ljava/util/ArrayList;

    .line 212
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->a:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/my/target/core/models/banners/a;->b:Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/my/target/core/models/banners/a;->h:I

    .line 111
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->c:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/i;

    .line 238
    invoke-virtual {p0, v0}, Lcom/my/target/core/models/banners/a;->a(Lcom/my/target/core/models/i;)Z

    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/a;->p:Z

    .line 193
    return-void
.end method

.method public declared-synchronized a(Lcom/my/target/core/models/i;)Z
    .locals 1

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/my/target/core/models/banners/a;->i:I

    .line 131
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->d:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/a;->r:Z

    .line 246
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/my/target/core/models/banners/a;->j:I

    .line 141
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->f:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/models/banners/a;->e:Z

    .line 86
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->g:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->k:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/my/target/core/models/banners/a;->h:I

    return v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->l:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->m:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/a;->p:Z

    return v0
.end method

.method public getAdvertisingLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getAgeRestrictions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getCtaText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->n:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/core/models/banners/a;->q:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->o:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public isAppInstalled()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/a;->e:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/a;->r:Z

    return v0
.end method
