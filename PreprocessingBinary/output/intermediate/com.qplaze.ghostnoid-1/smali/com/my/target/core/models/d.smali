.class public final Lcom/my/target/core/models/d;
.super Lcom/my/target/core/models/b;
.source "AdService.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lcom/my/target/core/models/d;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 77
    invoke-direct {p0}, Lcom/my/target/core/models/b;-><init>()V

    .line 24
    iput v1, p0, Lcom/my/target/core/models/d;->b:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/d;->e:Ljava/util/ArrayList;

    .line 28
    iput v1, p0, Lcom/my/target/core/models/d;->f:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/d;->j:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/d;->k:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/d;->l:Ljava/util/ArrayList;

    .line 78
    iput-object p1, p0, Lcom/my/target/core/models/d;->a:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/models/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/my/target/core/models/d;->b:I

    .line 89
    return-void
.end method

.method public final a(Lcom/my/target/core/models/d;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/my/target/core/models/d;->g:Lcom/my/target/core/models/d;

    .line 124
    return-void
.end method

.method public final a(Lcom/my/target/core/models/i;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/my/target/core/models/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/my/target/core/models/d;->h:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/my/target/core/models/d;->c:Z

    .line 61
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/my/target/core/models/d;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/my/target/core/models/d;->m:I

    .line 114
    return-void
.end method

.method public final b(Lcom/my/target/core/models/d;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/my/target/core/models/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public final b(Lcom/my/target/core/models/i;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/my/target/core/models/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/my/target/core/models/d;->n:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/my/target/core/models/d;->d:Z

    .line 71
    return-void
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/my/target/core/models/d;->f:I

    .line 134
    return-void
.end method

.method public final c(Lcom/my/target/core/models/i;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/my/target/core/models/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/my/target/core/models/d;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/my/target/core/models/d;->d:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/my/target/core/models/d;->b:I

    return v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1
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
    .line 93
    iget-object v0, p0, Lcom/my/target/core/models/d;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 1
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
    .line 98
    iget-object v0, p0, Lcom/my/target/core/models/d;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 1
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
    .line 103
    iget-object v0, p0, Lcom/my/target/core/models/d;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/my/target/core/models/d;->m:I

    return v0
.end method

.method public final j()Lcom/my/target/core/models/d;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/my/target/core/models/d;->g:Lcom/my/target/core/models/d;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/my/target/core/models/d;->f:I

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/my/target/core/models/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/my/target/core/models/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/my/target/core/models/d;->i:Z

    return v0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/models/d;->i:Z

    .line 184
    return-void
.end method
