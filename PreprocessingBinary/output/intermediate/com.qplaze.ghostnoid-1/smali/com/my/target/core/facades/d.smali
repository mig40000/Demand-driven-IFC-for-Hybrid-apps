.class public final Lcom/my/target/core/facades/d;
.super Lcom/my/target/core/facades/a;
.source "InstreamAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/facades/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/my/target/core/a;

.field private b:Lcom/my/target/core/facades/d$a;

.field private c:Lcom/my/target/core/models/sections/d;


# direct methods
.method public constructor <init>(ILcom/my/target/ads/CustomParams;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/my/target/core/facades/a;-><init>()V

    .line 46
    new-instance v0, Lcom/my/target/core/a;

    const-string v1, "instreamads"

    invoke-direct {v0, p1, v1}, Lcom/my/target/core/a;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/a;

    .line 47
    iget-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/a;

    invoke-virtual {v0, p2}, Lcom/my/target/core/a;->a(Lcom/my/target/ads/CustomParams;)V

    .line 48
    iget-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/a;->b(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/my/target/core/models/sections/h;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/my/target/core/facades/d;->c:Lcom/my/target/core/models/sections/d;

    invoke-virtual {v0, p1}, Lcom/my/target/core/models/sections/d;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/a;

    invoke-virtual {p0, v0, p1}, Lcom/my/target/core/facades/d;->init(Lcom/my/target/core/a;Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public final a(Lcom/my/target/core/facades/d$a;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/my/target/core/facades/d;->b:Lcom/my/target/core/facades/d$a;

    .line 97
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/my/target/core/facades/d;->context:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/c;Ljava/lang/String;Landroid/content/Context;)V

    .line 135
    :cond_0
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/i;)V
    .locals 2

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 103
    const-string v0, "Something horrible happened"

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/d;->adData:Lcom/my/target/core/models/c;

    if-nez v0, :cond_1

    .line 109
    const-string v0, "AdData is null, click will not be processed."

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/facades/d;->adData:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/facades/d;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/c;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
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
    .line 123
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/my/target/core/facades/d;->context:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/my/target/core/models/c;->a(Ljava/util/Set;FLandroid/content/Context;)V

    .line 127
    :cond_0
    return-void
.end method

.method public final a(Lcom/my/target/core/models/sections/f;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/my/target/core/facades/d;->context:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/sections/f;Ljava/lang/String;Landroid/content/Context;)V

    .line 143
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/a;->b(Z)V

    .line 70
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->g()Z

    move-result v0

    return v0
.end method

.method protected final onLoad(Lcom/my/target/core/models/c;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/my/target/core/facades/d;->b:Lcom/my/target/core/facades/d$a;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "instreamads"

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/f;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/my/target/core/models/sections/d;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/my/target/core/models/sections/d;

    iput-object v0, p0, Lcom/my/target/core/facades/d;->c:Lcom/my/target/core/models/sections/d;

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/d;->c:Lcom/my/target/core/models/sections/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/facades/d;->c:Lcom/my/target/core/models/sections/d;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/d;->b()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/facades/d;->b:Lcom/my/target/core/facades/d$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/d$a;->onLoad(Lcom/my/target/core/facades/d;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/facades/d;->b:Lcom/my/target/core/facades/d$a;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/core/facades/d$a;->onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/d;)V

    goto :goto_0
.end method

.method protected final onLoadError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/my/target/core/facades/d;->b:Lcom/my/target/core/facades/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/d;->b:Lcom/my/target/core/facades/d$a;

    invoke-interface {v0, p1, p0}, Lcom/my/target/core/facades/d$a;->onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/d;)V

    .line 92
    :cond_0
    return-void
.end method
