.class public final Lcom/my/target/core/facades/e;
.super Ljava/lang/Object;
.source "InterstitialImageAd.java"

# interfaces
.implements Lcom/my/target/core/facades/c;


# instance fields
.field private a:Lcom/my/target/core/models/banners/d;

.field private b:Lcom/my/target/core/models/c;

.field private c:Landroid/content/Context;

.field private d:Lcom/my/target/core/facades/c$a;

.field private e:Lcom/my/target/core/net/b$a;


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/banners/d;Lcom/my/target/core/models/c;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lcom/my/target/core/facades/e$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/e$1;-><init>(Lcom/my/target/core/facades/e;)V

    iput-object v0, p0, Lcom/my/target/core/facades/e;->e:Lcom/my/target/core/net/b$a;

    .line 32
    iput-object p1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    .line 33
    iput-object p2, p0, Lcom/my/target/core/facades/e;->b:Lcom/my/target/core/models/c;

    .line 34
    iput-object p3, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    .line 36
    const-string v0, "InterstitialImageAd created. Version: 4.5.10"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/facades/e;)Lcom/my/target/core/facades/c$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    return-object v0
.end method

.method private a(Ljava/util/List;II)Lcom/my/target/nativeads/models/ImageData;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/ImageData;",
            ">;II)",
            "Lcom/my/target/nativeads/models/ImageData;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 75
    if-nez p3, :cond_0

    .line 77
    const-string v0, "Display height is zero"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-object v4

    .line 81
    :cond_0
    int-to-float v0, p2

    int-to-float v1, p3

    div-float v8, v0, v1

    .line 82
    const/4 v0, 0x0

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v6, v4

    move v7, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/my/target/nativeads/models/ImageData;

    .line 87
    invoke-virtual {v4}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v4}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v0

    if-gtz v0, :cond_2

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image has invalid size: w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in banner with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    const-string v3, "JSONError"

    invoke-virtual {v4}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {v4}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 96
    cmpg-float v0, v8, v1

    if-gez v0, :cond_4

    .line 98
    invoke-virtual {v4}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 99
    int-to-float v2, p2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 101
    int-to-float v0, p2

    .line 104
    :cond_3
    div-float v1, v0, v1

    move v10, v1

    move v1, v0

    move v0, v10

    .line 117
    :goto_2
    mul-float/2addr v0, v1

    .line 119
    cmpl-float v1, v0, v7

    if-lez v1, :cond_6

    move-object v6, v4

    move v7, v0

    .line 128
    goto/16 :goto_1

    .line 108
    :cond_4
    invoke-virtual {v4}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 109
    int-to-float v2, p3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    .line 111
    int-to-float v0, p3

    .line 114
    :cond_5
    mul-float/2addr v1, v0

    goto :goto_2

    :cond_6
    move-object v4, v6

    .line 132
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/my/target/core/facades/c$a;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    .line 150
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v2

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/d;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/d;->n()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 142
    :goto_1
    iget-object v3, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->o()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    invoke-virtual {v3}, Lcom/my/target/core/models/banners/d;->o()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 144
    :goto_2
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 141
    goto :goto_1

    :cond_4
    move v3, v2

    .line 142
    goto :goto_2
.end method

.method public final b()Lcom/my/target/core/models/banners/d;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    return-object v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/my/target/core/facades/e;->b:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    iget-object v1, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/c;Landroid/content/Context;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onDisplay(Lcom/my/target/core/facades/c;)V

    .line 190
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/my/target/core/facades/e;->b:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/my/target/core/facades/e;->b:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    iget-object v2, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/c;Landroid/content/Context;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onClick(Lcom/my/target/core/facades/c;)V

    .line 200
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onDismiss(Lcom/my/target/core/facades/c;)V

    .line 213
    :cond_0
    return-void
.end method

.method public final load()V
    .locals 7

    .prologue
    .line 155
    iget-object v0, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/d;

    .line 1041
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/providers/d;->b()Lcom/my/target/core/providers/b;

    move-result-object v2

    iget-object v3, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/my/target/core/providers/b;->b(Landroid/content/Context;)V

    .line 1044
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/providers/d;->b()Lcom/my/target/core/providers/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/providers/b;->a()I

    move-result v2

    .line 1045
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/my/target/core/providers/d;->b()Lcom/my/target/core/providers/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/my/target/core/providers/b;->b()I

    move-result v3

    .line 1047
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/d;->l()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/my/target/core/facades/e;->a(Ljava/util/List;II)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v4

    .line 1048
    if-eqz v4, :cond_0

    .line 1050
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    invoke-virtual {v0, v4}, Lcom/my/target/core/models/banners/d;->b(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1054
    :cond_0
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/d;->m()Ljava/util/List;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0, v5, v6, v2}, Lcom/my/target/core/facades/e;->a(Ljava/util/List;II)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    .line 1055
    if-eqz v2, :cond_1

    .line 1057
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/d;->c(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1061
    :cond_1
    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    .line 1063
    :cond_2
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/d;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1065
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/d;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 1066
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 159
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    iget-object v2, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/facades/e;->e:Lcom/my/target/core/net/b$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    .line 165
    :cond_4
    :goto_0
    return-void

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/core/facades/c$a;->onError(Ljava/lang/String;Lcom/my/target/core/facades/c;)V

    goto :goto_0
.end method
