.class public Lcom/appodeal/ads/ag;
.super Lcom/appodeal/ads/e;


# instance fields
.field A:Lcom/appodeal/ads/d/g;

.field public B:I

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

.field final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:J

.field public m:Lorg/json/JSONObject;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Lcom/appodeal/ads/ac;

.field r:Z

.field s:Z

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Z

.field x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/appodeal/ads/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/ag;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/ag;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/ag;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/ag;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/ag;->g:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/appodeal/ads/ag;->h:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/ag;->i:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/ag;->j:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/ag;->k:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/ag;->r:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/ag;->s:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/ag;->t:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/ag;->v:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/ag;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/ag;->x:I

    iput-object p1, p0, Lcom/appodeal/ads/ag;->C:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/appodeal/ads/ag;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/ag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/ag;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/appodeal/ads/ag;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/appodeal/ads/ag;->q:Lcom/appodeal/ads/ac;

    iput-object v1, p0, Lcom/appodeal/ads/ag;->A:Lcom/appodeal/ads/d/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/ag;->v:Z

    iget-object v0, p0, Lcom/appodeal/ads/ag;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/ag;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/appodeal/ads/ag;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method a()Z
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/ag;->C:Ljava/lang/String;

    const-string v1, "debug_native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/ag;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/appodeal/ads/ag;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/appodeal/ads/ag;->i:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 4

    iget-boolean v0, p0, Lcom/appodeal/ads/ag;->r:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appodeal/ads/ag;->l:J

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

    iget-boolean v0, p0, Lcom/appodeal/ads/ag;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appodeal/ads/ag;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()I
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/ag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method f()J
    .locals 4

    iget-wide v0, p0, Lcom/appodeal/ads/ag;->D:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/appodeal/ads/ag;->D:J

    :cond_0
    iget-wide v0, p0, Lcom/appodeal/ads/ag;->D:J

    return-wide v0
.end method
