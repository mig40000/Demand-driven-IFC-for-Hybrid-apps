.class public final Lcom/my/target/core/models/sections/g;
.super Lcom/my/target/core/models/sections/a;
.source "StandardSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/models/sections/a",
        "<",
        "Lcom/my/target/core/models/banners/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lcom/my/target/core/models/h;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    sget-object v0, Lcom/my/target/core/enums/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/core/models/sections/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    new-instance v0, Lcom/my/target/core/models/h;

    invoke-direct {v0}, Lcom/my/target/core/models/h;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/g;->i:Lcom/my/target/core/models/h;

    .line 58
    const/16 v0, 0x3c

    iput v0, p0, Lcom/my/target/core/models/sections/g;->j:I

    .line 59
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/g;->k:Z

    .line 60
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/g;->l:Z

    .line 61
    iput v1, p0, Lcom/my/target/core/models/sections/g;->m:I

    .line 62
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/my/target/core/models/sections/g;->j:I

    .line 92
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/g;->k:Z

    .line 97
    return-void
.end method

.method public final a(ILcom/my/target/core/models/banners/c;)Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p2}, Lcom/my/target/core/models/sections/g;->a(Lcom/my/target/core/models/banners/c;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/my/target/core/models/banners/c;)Z
    .locals 1

    .prologue
    .line 70
    instance-of v0, p1, Lcom/my/target/core/models/banners/g;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {p1}, Lcom/my/target/core/models/banners/c;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/sections/g;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    check-cast p1, Lcom/my/target/core/models/banners/g;

    .line 75
    iget-object v0, p0, Lcom/my/target/core/models/sections/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget v0, p0, Lcom/my/target/core/models/sections/g;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/models/sections/g;->d:I

    .line 77
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/my/target/core/models/sections/g;->m:I

    .line 107
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/g;->l:Z

    .line 102
    return-void
.end method

.method public final i()Lcom/my/target/core/models/h;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/core/models/sections/g;->i:Lcom/my/target/core/models/h;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/my/target/core/models/sections/g;->j:I

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/g;->k:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/g;->l:Z

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/my/target/core/models/sections/g;->m:I

    return v0
.end method
