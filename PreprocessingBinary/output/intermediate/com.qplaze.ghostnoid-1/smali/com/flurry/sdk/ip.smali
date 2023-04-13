.class public Lcom/flurry/sdk/ip;
.super Lcom/flurry/sdk/kw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ip$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String;


# instance fields
.field final a:J

.field final b:I

.field final c:I

.field final d:Lcom/flurry/sdk/iw;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/sdk/iq;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/flurry/sdk/it;

.field h:J

.field i:I

.field j:I

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/flurry/sdk/ip;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ip;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/iw;Ljava/util/Map;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JII",
            "Lcom/flurry/sdk/iw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/flurry/sdk/kw;-><init>()V

    .line 42
    invoke-virtual {p0, p4}, Lcom/flurry/sdk/ip;->a(Ljava/lang/String;)V

    .line 1022
    iput-wide p5, p0, Lcom/flurry/sdk/kw;->n:J

    .line 45
    invoke-virtual {p0}, Lcom/flurry/sdk/ip;->a_()V

    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/ip;->l:Ljava/lang/String;

    .line 49
    iput-wide p2, p0, Lcom/flurry/sdk/ip;->a:J

    .line 1054
    iput p7, p0, Lcom/flurry/sdk/kw;->s:I

    .line 52
    iput p7, p0, Lcom/flurry/sdk/ip;->b:I

    .line 53
    iput p8, p0, Lcom/flurry/sdk/ip;->c:I

    .line 54
    iput-object p9, p0, Lcom/flurry/sdk/ip;->d:Lcom/flurry/sdk/iw;

    .line 55
    iput-object p10, p0, Lcom/flurry/sdk/ip;->e:Ljava/util/Map;

    .line 56
    iput p11, p0, Lcom/flurry/sdk/ip;->i:I

    .line 57
    iput p12, p0, Lcom/flurry/sdk/ip;->j:I

    .line 58
    iput-object p13, p0, Lcom/flurry/sdk/ip;->k:Ljava/lang/String;

    .line 61
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/flurry/sdk/ip;->h:J

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ip;->f:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ip;J)J
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/flurry/sdk/ip;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ip;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/ip;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ip;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/flurry/sdk/ip;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ip;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/flurry/sdk/ip;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ip;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/flurry/sdk/ip;->b:I

    return v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ip;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/flurry/sdk/ip;->c:I

    return v0
.end method

.method static synthetic e(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/iw;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/ip;->d:Lcom/flurry/sdk/iw;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/ip;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/ip;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/ip;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/flurry/sdk/ip;->h:J

    return-wide v0
.end method

.method static synthetic h(Lcom/flurry/sdk/ip;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/flurry/sdk/ip;->i:I

    return v0
.end method

.method static synthetic i(Lcom/flurry/sdk/ip;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/flurry/sdk/ip;->j:I

    return v0
.end method

.method static synthetic j(Lcom/flurry/sdk/ip;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/ip;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/flurry/sdk/ip;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/flurry/sdk/ip;->m:Z

    return v0
.end method


# virtual methods
.method public final a_()V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0}, Lcom/flurry/sdk/kw;->a_()V

    .line 2034
    iget v0, p0, Lcom/flurry/sdk/kw;->p:I

    .line 73
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 74
    iget-wide v0, p0, Lcom/flurry/sdk/ip;->h:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/ip;->h:J

    .line 76
    :cond_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ip;->g:Lcom/flurry/sdk/it;

    invoke-virtual {v0}, Lcom/flurry/sdk/it;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/flurry/sdk/ip;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iq;

    .line 158
    iput-object p0, v0, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method
