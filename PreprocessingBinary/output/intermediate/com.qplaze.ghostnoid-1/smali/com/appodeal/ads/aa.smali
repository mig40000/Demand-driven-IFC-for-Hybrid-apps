.class public Lcom/appodeal/ads/aa;
.super Lcom/appodeal/ads/e;


# instance fields
.field public A:Z

.field B:Lcom/appodeal/ads/d/g;

.field private final C:Ljava/lang/String;

.field private D:J

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

.field p:Lcom/appodeal/ads/w;

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Z

.field x:Z

.field y:I

.field public z:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/appodeal/ads/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/aa;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/aa;->f:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->g:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->h:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->i:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->j:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->q:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->r:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->s:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->t:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->v:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->w:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/aa;->x:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/aa;->y:I

    iput-object p1, p0, Lcom/appodeal/ads/aa;->C:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/aa;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/aa;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/appodeal/ads/aa;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/appodeal/ads/aa;->p:Lcom/appodeal/ads/w;

    iput-object v1, p0, Lcom/appodeal/ads/aa;->B:Lcom/appodeal/ads/d/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/aa;->v:Z

    :cond_0
    return-void
.end method

.method a()Z
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/aa;->C:Ljava/lang/String;

    const-string v1, "debug_mrec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/aa;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/aa;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->h:Z

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

    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->q:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appodeal/ads/aa;->k:J

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

    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->s:Z

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

    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->s:Z

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

    iget-boolean v0, p0, Lcom/appodeal/ads/aa;->w:Z

    return v0
.end method

.method g()I
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/appodeal/ads/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method h()J
    .locals 4

    iget-wide v0, p0, Lcom/appodeal/ads/aa;->D:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/appodeal/ads/aa;->D:J

    :cond_0
    iget-wide v0, p0, Lcom/appodeal/ads/aa;->D:J

    return-wide v0
.end method
