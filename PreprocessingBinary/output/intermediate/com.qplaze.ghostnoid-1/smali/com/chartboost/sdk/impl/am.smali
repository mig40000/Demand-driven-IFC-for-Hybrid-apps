.class public Lcom/chartboost/sdk/impl/am;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/am$c;,
        Lcom/chartboost/sdk/impl/am$a;,
        Lcom/chartboost/sdk/impl/am$b;
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/impl/af;

.field final b:Lcom/chartboost/sdk/impl/ak;

.field final c:Lcom/chartboost/sdk/Libraries/g;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Libraries/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/Libraries/g;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/chartboost/sdk/impl/am;->a:Lcom/chartboost/sdk/impl/af;

    .line 53
    iput-object p2, p0, Lcom/chartboost/sdk/impl/am;->b:Lcom/chartboost/sdk/impl/ak;

    .line 54
    iput-object p3, p0, Lcom/chartboost/sdk/impl/am;->c:Lcom/chartboost/sdk/Libraries/g;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am;->d:Ljava/util/Map;

    .line 56
    return-void
.end method

.method static a(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/am$a;
    .locals 2

    .prologue
    .line 244
    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 246
    instance-of v1, v0, Lcom/chartboost/sdk/impl/am$c;

    if-eqz v1, :cond_0

    .line 247
    check-cast v0, Lcom/chartboost/sdk/impl/am$c;

    .line 248
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/am$c;->a()Lcom/chartboost/sdk/impl/am$a;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/i$a;
    .locals 6

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/am;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/i$a;

    .line 94
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->c:Lcom/chartboost/sdk/Libraries/g;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/g;->c()Ljava/io/File;

    move-result-object v0

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, ".png"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/chartboost/sdk/Libraries/i$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/am;->c:Lcom/chartboost/sdk/Libraries/g;

    invoke-direct {v0, p1, v1, v2}, Lcom/chartboost/sdk/Libraries/i$a;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/chartboost/sdk/Libraries/g;)V

    .line 88
    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/am$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 60
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/i$a;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    if-eqz p4, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i$a;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    :cond_0
    if-eqz p3, :cond_1

    .line 65
    invoke-interface {p3, v0, p5}, Lcom/chartboost/sdk/impl/am$b;->a(Lcom/chartboost/sdk/Libraries/i$a;Landroid/os/Bundle;)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    if-nez p1, :cond_3

    .line 70
    if-eqz p3, :cond_3

    .line 71
    const/4 v0, 0x0

    invoke-interface {p3, v0, p5}, Lcom/chartboost/sdk/impl/am$b;->a(Lcom/chartboost/sdk/Libraries/i$a;Landroid/os/Bundle;)V

    .line 74
    :cond_3
    new-instance v0, Lcom/chartboost/sdk/impl/am$a;

    iget-object v7, p0, Lcom/chartboost/sdk/impl/am;->d:Ljava/util/Map;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/am$a;-><init>(Lcom/chartboost/sdk/impl/am;Landroid/widget/ImageView;Lcom/chartboost/sdk/impl/am$b;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    invoke-static {}, Lcom/chartboost/sdk/impl/aa;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 271
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->c:Lcom/chartboost/sdk/Libraries/g;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, ".png"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/g;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
