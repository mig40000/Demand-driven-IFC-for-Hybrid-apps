.class public Lcom/appodeal/ads/l;
.super Lcom/appodeal/ads/e;


# instance fields
.field A:Z

.field B:I

.field public C:Z

.field public D:Z

.field E:Lcom/appodeal/ads/d/g;

.field private final F:Ljava/lang/String;

.field private G:J

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:J

.field public l:Lorg/json/JSONObject;

.field public m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:I

.field q:Lcom/appodeal/ads/h;

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Ljava/lang/String;

.field w:Z

.field x:Z

.field y:Lcom/appodeal/ads/g$b;

.field z:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/appodeal/ads/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/l;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/l;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/l;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/l;->f:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->g:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->h:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->i:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->j:Z

    iput v2, p0, Lcom/appodeal/ads/l;->p:I

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->r:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->s:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->t:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->u:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->w:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->x:Z

    sget-object v0, Lcom/appodeal/ads/g$b;->a:Lcom/appodeal/ads/g$b;

    iput-object v0, p0, Lcom/appodeal/ads/l;->y:Lcom/appodeal/ads/g$b;

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->z:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/l;->A:Z

    iput v2, p0, Lcom/appodeal/ads/l;->B:I

    iput-object p1, p0, Lcom/appodeal/ads/l;->F:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/appodeal/ads/l;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/appodeal/ads/l;->q:Lcom/appodeal/ads/h;

    iput-object v1, p0, Lcom/appodeal/ads/l;->E:Lcom/appodeal/ads/d/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/l;->w:Z

    :cond_0
    return-void
.end method

.method a()Z
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/l;->F:Ljava/lang/String;

    const-string v1, "debug_banner_320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method a(Landroid/content/res/Configuration;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->z:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appodeal/ads/l;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/appodeal/ads/l;->p:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/l;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/appodeal/ads/l;->h:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 4

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->r:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appodeal/ads/l;->k:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->t:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/l;->x:Z

    return v0
.end method

.method g()I
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/appodeal/ads/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method h()J
    .locals 4

    iget-wide v0, p0, Lcom/appodeal/ads/l;->G:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/appodeal/ads/l;->G:J

    :cond_0
    iget-wide v0, p0, Lcom/appodeal/ads/l;->G:J

    return-wide v0
.end method
