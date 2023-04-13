.class public Lcom/cmcm/utils/k;
.super Ljava/lang/Object;
.source "ParseUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/utils/k$a;,
        Lcom/cmcm/utils/k$b;
    }
.end annotation


# instance fields
.field private a:Lcom/cmcm/utils/k$a;

.field private b:Lcom/cmcm/utils/k$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/utils/k;->b:Lcom/cmcm/utils/k$b;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/cmcm/utils/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/cmcm/utils/k;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cmcm/utils/k;->b:Lcom/cmcm/utils/k$b;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/cmcm/utils/k;->b:Lcom/cmcm/utils/k$b;

    invoke-interface {v0, p1}, Lcom/cmcm/utils/k$b;->a(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/cmcm/utils/k$a;
    .locals 3

    .prologue
    .line 97
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/cmcm/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmcm/utils/k$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmcm/utils/k$a;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-instance v0, Lcom/cmcm/utils/k$a;

    invoke-direct {v0, p0}, Lcom/cmcm/utils/k$a;-><init>(Lcom/cmcm/utils/k;)V

    .line 102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 103
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/String;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    aput-object p3, v2, v5

    aput-object p4, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/utils/k$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    :goto_0
    iput-object v0, p0, Lcom/cmcm/utils/k;->a:Lcom/cmcm/utils/k$a;

    .line 109
    return-object v0

    .line 106
    :cond_0
    new-array v1, v7, [Ljava/lang/String;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    aput-object p4, v1, v6

    invoke-virtual {v0, v1}, Lcom/cmcm/utils/k$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Lcom/cmcm/utils/k$b;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cmcm/utils/k;->b:Lcom/cmcm/utils/k$b;

    .line 26
    return-void
.end method
