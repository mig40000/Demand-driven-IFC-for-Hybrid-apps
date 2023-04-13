.class public final Lcom/my/target/core/facades/f;
.super Ljava/lang/Object;
.source "InterstitialPromoAd.java"

# interfaces
.implements Lcom/my/target/core/facades/c;


# instance fields
.field private a:Lcom/my/target/core/models/banners/e;

.field private b:Lcom/my/target/core/models/c;

.field private c:Landroid/content/Context;

.field private d:Lcom/my/target/core/facades/c$a;

.field private e:Lcom/my/target/core/net/b$a;


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/banners/e;Lcom/my/target/core/models/c;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/my/target/core/facades/f$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/f$1;-><init>(Lcom/my/target/core/facades/f;)V

    iput-object v0, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/net/b$a;

    .line 35
    iput-object p1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    .line 36
    iput-object p2, p0, Lcom/my/target/core/facades/f;->b:Lcom/my/target/core/models/c;

    .line 37
    iput-object p3, p0, Lcom/my/target/core/facades/f;->c:Landroid/content/Context;

    .line 38
    const-string v0, "InterstitialPromoAd created. Version: 4.5.10"

    invoke-static {v0}, Lcom/my/target/Tracer;->i(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/facades/f;)Lcom/my/target/core/facades/c$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/my/target/core/facades/c$a;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    .line 51
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/my/target/core/facades/f;->c:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;Landroid/content/Context;)V

    .line 163
    :cond_0
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/i;Ljava/util/Set;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/banners/i;",
            "Ljava/util/Set",
            "<",
            "Lcom/my/target/core/models/g;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/my/target/core/facades/f;->c:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/my/target/core/models/c;->a(Ljava/util/Set;FLandroid/content/Context;)V

    .line 155
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/my/target/core/facades/f;->b:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    iget-object v1, p0, Lcom/my/target/core/facades/f;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/c;Landroid/content/Context;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onDisplay(Lcom/my/target/core/facades/c;)V

    .line 60
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/my/target/core/facades/f;->b:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/my/target/core/facades/f;->b:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    iget-object v2, p0, Lcom/my/target/core/facades/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/c;Landroid/content/Context;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onClick(Lcom/my/target/core/facades/c;)V

    .line 70
    :cond_1
    return-void
.end method

.method public final d()Lcom/my/target/core/models/banners/e;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onVideoCompleted(Lcom/my/target/core/facades/c;)V

    .line 171
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onDismiss(Lcom/my/target/core/facades/c;)V

    .line 179
    :cond_0
    return-void
.end method

.method public final load()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->k()Lcom/my/target/core/models/banners/i;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->r()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->r()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->r()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/i;->u()Ljava/util/List;

    move-result-object v1

    .line 93
    const/16 v2, 0x168

    invoke-static {v1, v2}, Lcom/my/target/core/utils/n;->a(Ljava/util/List;I)Lcom/my/target/nativeads/models/VideoData;

    move-result-object v1

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->l()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    .line 99
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->l()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 101
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->l()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->m()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    .line 105
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->m()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 107
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->m()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_5
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->o()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    .line 111
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->o()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 113
    iget-object v1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/banners/e;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/e;->o()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 118
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_7

    .line 120
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onLoad(Lcom/my/target/core/facades/c;)V

    .line 126
    :cond_7
    :goto_0
    return-void

    .line 124
    :cond_8
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/facades/f;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/net/b$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    goto :goto_0
.end method
