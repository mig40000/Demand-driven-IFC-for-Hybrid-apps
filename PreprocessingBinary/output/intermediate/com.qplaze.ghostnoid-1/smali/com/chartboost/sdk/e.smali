.class public Lcom/chartboost/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/e$4;
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/bc;

.field final b:Lcom/chartboost/sdk/impl/d;

.field final c:Lcom/chartboost/sdk/c;

.field final d:Lcom/chartboost/sdk/h;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/chartboost/sdk/impl/bk;

.field private g:Lcom/chartboost/sdk/Model/a;

.field private h:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/h;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/d;",
            "Lcom/chartboost/sdk/c;",
            "Lcom/chartboost/sdk/h;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/e;->h:I

    .line 49
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/bc;

    invoke-direct {v1, p4, p0}, Lcom/chartboost/sdk/impl/bc;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/e;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bc;

    iput-object v0, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bc;

    .line 51
    iput-object p1, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/impl/d;

    .line 52
    iput-object p2, p0, Lcom/chartboost/sdk/e;->c:Lcom/chartboost/sdk/c;

    .line 53
    iput-object p3, p0, Lcom/chartboost/sdk/e;->d:Lcom/chartboost/sdk/h;

    .line 54
    iput-object p4, p0, Lcom/chartboost/sdk/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    return-void
.end method

.method private e(Lcom/chartboost/sdk/Model/a;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 77
    const-string v0, "CBViewController"

    const-string v1, "Impression already visible"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    sget-object v1, Lcom/chartboost/sdk/Model/a$e;->c:Lcom/chartboost/sdk/Model/a$e;

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 83
    :goto_1
    sget-object v0, Lcom/chartboost/sdk/Model/a$e;->c:Lcom/chartboost/sdk/Model/a$e;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    .line 85
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->h()Landroid/app/Activity;

    move-result-object v2

    .line 87
    if-nez v2, :cond_4

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 88
    :goto_2
    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->k()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    .line 90
    :cond_2
    if-eqz v0, :cond_5

    .line 91
    const-string v1, "CBViewController"

    const-string v2, "Unable to create the view while trying th display the impression"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 87
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    if-nez v0, :cond_6

    .line 96
    new-instance v0, Lcom/chartboost/sdk/impl/bk;

    invoke-direct {v0, v2, p1}, Lcom/chartboost/sdk/impl/bk;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    :cond_6
    iget-object v3, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a$b;Lcom/chartboost/sdk/Model/c;)V

    .line 101
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/chartboost/sdk/e;->h:I

    if-ne v0, v4, :cond_8

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v3, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    if-eq v0, v3, :cond_7

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v3, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v3, :cond_8

    .line 102
    :cond_7
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/e;->h:I

    .line 103
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;)V

    .line 105
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->a()V

    .line 106
    const-string v0, "CBViewController"

    const-string v2, "Displaying the impression"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->p:Lcom/chartboost/sdk/impl/bk;

    .line 108
    if-eqz v1, :cond_0

    .line 109
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_9

    .line 110
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->e()Lcom/chartboost/sdk/impl/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bd;->a(Lcom/chartboost/sdk/impl/bc;)V

    .line 113
    :cond_9
    sget-object v0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc$b;

    .line 114
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    if-ne v1, v2, :cond_a

    .line 115
    sget-object v0, Lcom/chartboost/sdk/impl/bc$b;->f:Lcom/chartboost/sdk/impl/bc$b;

    .line 116
    :cond_a
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$a;

    sget-object v2, Lcom/chartboost/sdk/Model/a$a;->b:Lcom/chartboost/sdk/Model/a$a;

    if-ne v1, v2, :cond_b

    .line 117
    sget-object v0, Lcom/chartboost/sdk/impl/bc$b;->c:Lcom/chartboost/sdk/impl/bc$b;

    .line 118
    :cond_b
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "animation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc$b;->a(I)Lcom/chartboost/sdk/impl/bc$b;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_c

    move-object v0, v1

    .line 123
    :cond_c
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->n()V

    .line 124
    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bc;

    new-instance v2, Lcom/chartboost/sdk/e$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/e$1;-><init>(Lcom/chartboost/sdk/e;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;)V

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/d;->a()V

    .line 131
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    if-eq v0, v1, :cond_d

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_0

    .line 132
    :cond_d
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->willDisplayVideo(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private f(Lcom/chartboost/sdk/Model/a;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/e;->d:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->h()Landroid/app/Activity;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    const-string v0, "No host activity to display loading view"

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    if-nez v1, :cond_1

    .line 204
    new-instance v1, Lcom/chartboost/sdk/impl/bk;

    invoke-direct {v1, v0, p1}, Lcom/chartboost/sdk/impl/bk;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/Model/a;)V

    iput-object v1, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    .line 205
    iget-object v1, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->b()V

    .line 209
    iput-object p1, p0, Lcom/chartboost/sdk/e;->g:Lcom/chartboost/sdk/Model/a;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 266
    const-string v0, "CBViewController"

    const-string v1, "Attempting to close impression activity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/e;->d:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->h()Landroid/app/Activity;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "CBViewController"

    const-string v2, "Closing impression activity"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/chartboost/sdk/e;->d:Lcom/chartboost/sdk/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/h;->i()V

    .line 271
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 273
    :cond_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/chartboost/sdk/e$4;->a:[I

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/e;->e(Lcom/chartboost/sdk/Model/a;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->q:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->u:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/e;->f(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/chartboost/sdk/Model/a;Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 178
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/e$3;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/sdk/e$3;-><init>(Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->m()V

    .line 189
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    invoke-static {p2, v1, v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a$b;Lcom/chartboost/sdk/Model/c;)V

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/chartboost/sdk/e;->h:I

    if-eq v0, v2, :cond_1

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/e;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 192
    iput v2, p0, Lcom/chartboost/sdk/e;->h:I

    .line 194
    :cond_1
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Z)V
    .locals 2

    .prologue
    .line 217
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/e;->g:Lcom/chartboost/sdk/Model/a;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/e;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e;->g:Lcom/chartboost/sdk/Model/a;

    .line 222
    const-string v0, "CBViewController"

    const-string v1, "Dismissing loading view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->c()V

    .line 226
    if-eqz p2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0
.end method

.method public b(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 142
    const-string v0, "CBViewController"

    const-string v1, "Dismissing impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/chartboost/sdk/e;->d:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->h()Landroid/app/Activity;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/chartboost/sdk/e$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/chartboost/sdk/e$2;-><init>(Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Model/a;Landroid/app/Activity;)V

    .line 168
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->s:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Model/a;->a(Ljava/lang/Runnable;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 236
    const-string v0, "CBViewController"

    const-string v1, "Removing impression silently"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;Z)V

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->j()V

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 244
    iget-object v1, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    .line 250
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v1, "CBViewController"

    const-string v2, "Exception removing impression silently"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeImpressionSilently"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/chartboost/sdk/e;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/chartboost/sdk/impl/bk;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    return-object v0
.end method

.method public d(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 254
    const-string v0, "CBViewController"

    const-string v1, "Removing impression"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/chartboost/sdk/Model/a$e;->f:Lcom/chartboost/sdk/Model/a$e;

    iput-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Lcom/chartboost/sdk/Model/a$e;

    .line 256
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->i()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/e;->f:Lcom/chartboost/sdk/impl/bk;

    .line 258
    iget-object v0, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/d;->b()V

    .line 259
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 260
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/e;->a()V

    .line 263
    return-void
.end method
