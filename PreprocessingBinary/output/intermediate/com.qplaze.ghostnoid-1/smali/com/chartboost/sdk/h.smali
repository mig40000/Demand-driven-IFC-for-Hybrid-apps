.class public Lcom/chartboost/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/h$a;,
        Lcom/chartboost/sdk/h$b;
    }
.end annotation


# static fields
.field private static q:Lcom/chartboost/sdk/h;


# instance fields
.field private A:Z

.field private final B:Ljava/lang/Runnable;

.field final a:Lcom/chartboost/sdk/c;

.field public final b:Lcom/chartboost/sdk/InPlay/a;

.field final c:Lcom/chartboost/sdk/impl/h;

.field final d:Lcom/chartboost/sdk/impl/y;

.field final e:Lcom/chartboost/sdk/impl/e;

.field public final f:Lcom/chartboost/sdk/impl/ak;

.field final g:Lcom/chartboost/sdk/impl/i;

.field final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/chartboost/sdk/CBImpressionActivity;

.field protected j:Z

.field protected k:Z

.field l:Z

.field m:Z

.field final n:Landroid/app/Application$ActivityLifecycleCallbacks;

.field o:Ljava/lang/Runnable;

.field protected p:Lcom/chartboost/sdk/Libraries/j;

.field private final r:Lcom/chartboost/sdk/impl/b;

.field private final s:Lcom/chartboost/sdk/impl/d;

.field private final t:Lcom/chartboost/sdk/impl/ai;

.field private final u:Landroid/content/SharedPreferences;

.field private final v:Lcom/chartboost/sdk/Tracking/a;

.field private final w:Lcom/chartboost/sdk/e;

.field private x:Lcom/chartboost/sdk/Model/a;

.field private y:Z

.field private final z:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/b;",
            "Lcom/chartboost/sdk/impl/d;",
            "Lcom/chartboost/sdk/impl/af;",
            "Lcom/chartboost/sdk/impl/e;",
            "Lcom/chartboost/sdk/impl/ai;",
            "Lcom/chartboost/sdk/impl/ak;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/chartboost/sdk/Tracking/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 68
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    .line 69
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/chartboost/sdk/h;->y:Z

    .line 70
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->z:Ljava/util/HashSet;

    .line 71
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/chartboost/sdk/h;->j:Z

    .line 72
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/chartboost/sdk/h;->k:Z

    .line 73
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/chartboost/sdk/h;->l:Z

    .line 74
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/chartboost/sdk/h;->m:Z

    .line 78
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/chartboost/sdk/h;->A:Z

    .line 84
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    .line 296
    new-instance v3, Lcom/chartboost/sdk/h$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/chartboost/sdk/h$4;-><init>(Lcom/chartboost/sdk/h;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->B:Ljava/lang/Runnable;

    .line 110
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v17

    .line 112
    new-instance v3, Lcom/chartboost/sdk/c$b;

    invoke-direct {v3}, Lcom/chartboost/sdk/c$b;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/c$b;

    .line 113
    new-instance v4, Lcom/chartboost/sdk/impl/al;

    move-object/from16 v0, p8

    invoke-direct {v4, v3, v0}, Lcom/chartboost/sdk/impl/al;-><init>(Lcom/chartboost/sdk/impl/al$a;Lcom/chartboost/sdk/impl/ai;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/impl/al;

    .line 115
    new-instance v4, Lcom/chartboost/sdk/c;

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/chartboost/sdk/c;-><init>(Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/impl/al;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/c;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    .line 116
    new-instance v3, Lcom/chartboost/sdk/InPlay/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    move-object/from16 v0, p6

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/chartboost/sdk/InPlay/a;-><init>(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/InPlay/a;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/InPlay/a;

    .line 118
    new-instance v3, Lcom/chartboost/sdk/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p10

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/chartboost/sdk/e;-><init>(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/e;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->w:Lcom/chartboost/sdk/e;

    .line 119
    new-instance v3, Lcom/chartboost/sdk/impl/am;

    new-instance v4, Lcom/chartboost/sdk/Libraries/g;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/chartboost/sdk/Libraries/g;-><init>(Z)V

    move-object/from16 v0, p6

    move-object/from16 v1, p9

    invoke-direct {v3, v0, v1, v4}, Lcom/chartboost/sdk/impl/am;-><init>(Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/Libraries/g;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/chartboost/sdk/impl/am;

    .line 120
    new-instance v3, Lcom/chartboost/sdk/impl/h;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chartboost/sdk/h;->w:Lcom/chartboost/sdk/e;

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p0

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v3 .. v16}, Lcom/chartboost/sdk/impl/h;-><init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/impl/am;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/impl/h;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/impl/h;

    .line 121
    new-instance v4, Lcom/chartboost/sdk/impl/y;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chartboost/sdk/h;->w:Lcom/chartboost/sdk/e;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p0

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v4 .. v16}, Lcom/chartboost/sdk/impl/y;-><init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/impl/am;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/impl/y;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/y;

    .line 122
    new-instance v3, Lcom/chartboost/sdk/impl/i;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chartboost/sdk/h;->w:Lcom/chartboost/sdk/e;

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p0

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v3 .. v16}, Lcom/chartboost/sdk/impl/i;-><init>(Lcom/chartboost/sdk/impl/b;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/e;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/impl/am;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/sdk/impl/i;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/i;

    .line 124
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/b;

    .line 125
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->s:Lcom/chartboost/sdk/impl/d;

    .line 126
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/e;

    .line 127
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->t:Lcom/chartboost/sdk/impl/ai;

    .line 128
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/ak;

    .line 129
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 130
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->u:Landroid/content/SharedPreferences;

    .line 131
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->v:Lcom/chartboost/sdk/Tracking/a;

    .line 133
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/impl/g;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    new-instance v3, Lcom/chartboost/sdk/h$a;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->n:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 138
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 139
    sput-object p2, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    .line 140
    sput-object p3, Lcom/chartboost/sdk/i;->l:Ljava/lang/String;

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    .line 142
    sget-object v3, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/content/Context;)V

    .line 144
    new-instance v3, Lcom/chartboost/sdk/h$b;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/chartboost/sdk/h$b;-><init>(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/h$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->o:Ljava/lang/Runnable;

    .line 145
    return-void

    .line 136
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/chartboost/sdk/h;->n:Landroid/app/Application$ActivityLifecycleCallbacks;

    goto :goto_0
.end method

.method public static a()Lcom/chartboost/sdk/h;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/h;

    return-object v0
.end method

.method private a(IZ)V
    .locals 2

    .prologue
    .line 726
    if-eqz p2, :cond_0

    .line 727
    iget-object v0, p0, Lcom/chartboost/sdk/h;->z:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 730
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/h;->z:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static a(Lcom/chartboost/sdk/h;)V
    .locals 0

    .prologue
    .line 93
    sput-object p0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/h;

    .line 94
    return-void
.end method

.method protected static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 654
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/g;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 660
    :goto_0
    return-void

    .line 659
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static b(Lcom/chartboost/sdk/Libraries/j;Z)V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method private f(Lcom/chartboost/sdk/Libraries/j;)Z
    .locals 1

    .prologue
    .line 550
    if-nez p1, :cond_1

    .line 551
    iget-object v0, p0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 553
    :goto_0
    return v0

    .line 551
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/j;->b(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method private j(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static n()Z
    .locals 2

    .prologue
    .line 743
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->c:Z

    if-eqz v0, :cond_0

    .line 746
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chartboost Integration Warning: your account has been set to advertiser only. This function has been disabled. Please contact support if you expect this call to function."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 750
    const/4 v0, 0x0

    .line 752
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private p()V
    .locals 5

    .prologue
    .line 308
    iget-object v0, p0, Lcom/chartboost/sdk/h;->v:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->c()V

    .line 309
    iget-object v0, p0, Lcom/chartboost/sdk/h;->v:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->a()V

    .line 311
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->l:Z

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/e;

    .line 314
    iget-object v1, p0, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/ak;

    .line 315
    iget-object v2, p0, Lcom/chartboost/sdk/h;->u:Landroid/content/SharedPreferences;

    .line 316
    iget-object v3, p0, Lcom/chartboost/sdk/h;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 317
    new-instance v4, Lcom/chartboost/sdk/h$5;

    invoke-direct {v4, p0, v1, v0}, Lcom/chartboost/sdk/h$5;-><init>(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/impl/ak;Lcom/chartboost/sdk/impl/e;)V

    invoke-static {p0, v4, v1, v3, v2}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/b$a;Lcom/chartboost/sdk/impl/ak;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/h$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/h$1;-><init>(Lcom/chartboost/sdk/h;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 712
    if-nez p1, :cond_0

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/h;->a(IZ)V

    goto :goto_0
.end method

.method protected a(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .locals 2

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->y:Z

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p1}, Lcom/chartboost/sdk/CBImpressionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 561
    iput-object p1, p0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/h;->y:Z

    .line 564
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/h;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Libraries/j;)V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 368
    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lcom/chartboost/sdk/Chartboost$CBFramework;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->b()V

    .line 371
    :cond_0
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->t()V

    .line 374
    :cond_1
    return-void
.end method

.method a(Lcom/chartboost/sdk/Libraries/j;Z)V
    .locals 1

    .prologue
    .line 719
    if-nez p1, :cond_0

    .line 722
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/j;->a()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/h;->a(IZ)V

    goto :goto_0
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 582
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 646
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-boolean v3, p0, Lcom/chartboost/sdk/h;->y:Z

    if-eqz v3, :cond_3

    .line 589
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->h()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->h()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 595
    const-string v0, "Sdk"

    const-string v1, "Activity not found. Cannot display the view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 598
    :cond_2
    const-string v0, "Sdk"

    const-string v1, "Missing view controller to manage the impression activity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 605
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->l()Z

    move-result v0

    if-nez v0, :cond_4

    .line 606
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 610
    :cond_4
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->j()Landroid/app/Activity;

    move-result-object v4

    .line 611
    if-nez v4, :cond_5

    .line 612
    const-string v0, "Sdk"

    const-string v1, "Failed to display impression as the host activity reference has been lost!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 616
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    if-eq v0, p1, :cond_6

    .line 618
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 621
    :cond_6
    iput-object p1, p0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    .line 622
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    move v0, v1

    .line 626
    :goto_1
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_9

    move v3, v1

    .line 628
    :goto_2
    const-string v6, "paramFullscreen"

    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    const-string v0, "isChartboost"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 631
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/h;->A:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    const-string v0, "Sdk"

    const-string v1, "Chartboost impression activity not declared in manifest. Please add the following inside your manifest\'s <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    .line 639
    const-string v0, "Sdk"

    const-string v1, "CBImpression Activity is missing in the manifest"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 641
    iget-object v0, p0, Lcom/chartboost/sdk/h;->v:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 624
    goto :goto_1

    :cond_9
    move v3, v2

    .line 626
    goto :goto_2
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 270
    const-string v0, "Sdk"

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling startSession()."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/h;->p()V

    goto :goto_0
.end method

.method b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Libraries/j;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/h;->c(Lcom/chartboost/sdk/Libraries/j;)V

    .line 170
    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 173
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/h;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    .line 177
    return-void
.end method

.method protected b(Lcom/chartboost/sdk/Libraries/j;)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->v()V

    .line 398
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/h;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    return-void
.end method

.method c(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 181
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v5, p0, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/b;

    .line 185
    iget-object v4, p0, Lcom/chartboost/sdk/h;->s:Lcom/chartboost/sdk/impl/d;

    .line 186
    iget-object v3, p0, Lcom/chartboost/sdk/h;->w:Lcom/chartboost/sdk/e;

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/impl/h;

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/i;

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/y;

    .line 191
    new-instance v0, Lcom/chartboost/sdk/h$3;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/h$3;-><init>(Lcom/chartboost/sdk/h;Landroid/app/Activity;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/impl/b;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method c(Lcom/chartboost/sdk/Libraries/j;)V
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/j;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->c()V

    .line 424
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/chartboost/sdk/h;->v:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->b()V

    .line 333
    return-void
.end method

.method protected d(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/h;->t:Lcom/chartboost/sdk/impl/ai;

    sget-object v3, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ai;->b(Landroid/content/Context;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 232
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 233
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    .line 234
    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 240
    :goto_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/h;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 246
    :goto_1
    if-eqz p1, :cond_0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/h;->j(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 262
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v0, p1

    .line 237
    check-cast v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 245
    goto :goto_1

    .line 249
    :cond_3
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/h;->b(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 251
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_4

    .line 252
    iput-boolean v2, p0, Lcom/chartboost/sdk/h;->A:Z

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    iget-object v1, p0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, p1, v1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a;)Z

    move-result v0

    .line 256
    if-eqz v0, :cond_5

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->u()V

    goto :goto_2
.end method

.method protected d(Lcom/chartboost/sdk/Libraries/j;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 430
    iget-object v0, p0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v1, v2, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 433
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/h;->f(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/e;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 435
    iput-object v0, p0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    .line 436
    invoke-static {p1, v3}, Lcom/chartboost/sdk/h;->b(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 439
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/j;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 440
    invoke-virtual {p0, p1, v3}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/h;->t:Lcom/chartboost/sdk/impl/ai;

    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ai;->c(Landroid/content/Context;)V

    .line 445
    return-void
.end method

.method e(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->k:Z

    if-nez v0, :cond_3

    .line 339
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_2

    .line 340
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    .line 341
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/h;->k:Z

    .line 343
    :cond_3
    new-instance v0, Lcom/chartboost/sdk/h$6;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/h$6;-><init>(Lcom/chartboost/sdk/h;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    if-nez v1, :cond_2

    .line 451
    const-string v1, "Sdk"

    const-string v2, "The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly."

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_2
    iget-boolean v1, p0, Lcom/chartboost/sdk/h;->A:Z

    if-eqz v1, :cond_0

    .line 457
    iput-boolean v0, p0, Lcom/chartboost/sdk/h;->A:Z

    .line 458
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->f()Z

    .line 459
    const/4 v0, 0x1

    goto :goto_0
.end method

.method e(Lcom/chartboost/sdk/Libraries/j;)Z
    .locals 2

    .prologue
    .line 705
    if-nez p1, :cond_0

    .line 706
    const/4 v0, 0x0

    .line 707
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/h;->z:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method f(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/h$7;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/h$7;-><init>(Lcom/chartboost/sdk/h;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->g()Z

    move-result v0

    return v0
.end method

.method g(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 401
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/h$8;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/h$8;-><init>(Lcom/chartboost/sdk/h;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected g()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 469
    iget-object v1, p0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    .line 470
    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v2

    .line 471
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    sget-object v4, Lcom/chartboost/sdk/Model/a$e;->c:Lcom/chartboost/sdk/Model/a$e;

    if-ne v3, v4, :cond_1

    .line 472
    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    :goto_0
    return v0

    .line 474
    :cond_0
    new-instance v2, Lcom/chartboost/sdk/h$9;

    invoke-direct {v2, p0, v1}, Lcom/chartboost/sdk/h$9;-><init>(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/c;)V

    invoke-static {v2}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v2

    .line 482
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/chartboost/sdk/e;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 483
    new-instance v3, Lcom/chartboost/sdk/h$10;

    invoke-direct {v3, p0, v2, v1}, Lcom/chartboost/sdk/h$10;-><init>(Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/c;)V

    invoke-static {v3}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 490
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object v0
.end method

.method h(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/h$2;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/h$2;-><init>(Lcom/chartboost/sdk/h;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->y:Z

    if-eqz v0, :cond_0

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/h;->y:Z

    .line 574
    :cond_0
    return-void
.end method

.method protected i(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 514
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/h;->b(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 516
    iget-object v0, p0, Lcom/chartboost/sdk/h;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 517
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    if-eqz v1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->m()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 525
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 528
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/h;->x:Lcom/chartboost/sdk/Model/a;

    .line 529
    return-void
.end method

.method protected j()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k()Landroid/content/Context;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->b()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    goto :goto_0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/h;->e(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result v0

    return v0
.end method

.method protected m()Lcom/chartboost/sdk/e;
    .locals 1

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/chartboost/sdk/h;->h()Landroid/app/Activity;

    move-result-object v0

    .line 736
    if-nez v0, :cond_0

    .line 737
    const/4 v0, 0x0

    .line 739
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/h;->w:Lcom/chartboost/sdk/e;

    goto :goto_0
.end method

.method protected o()Z
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->m:Z

    return v0
.end method
