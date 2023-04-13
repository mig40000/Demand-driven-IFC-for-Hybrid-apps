.class public Lcom/cmcm/picks/PicksLoadingActivity;
.super Landroid/app/Activity;
.source "PicksLoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/picks/PicksLoadingActivity$a;
    }
.end annotation


# static fields
.field public static a:Z

.field static b:Landroid/os/Handler;

.field private static final c:Ljava/lang/String;

.field private static d:Landroid/widget/ProgressBar;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/cmcm/picks/PicksLoadingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->c:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmcm/picks/PicksLoadingActivity;->a:Z

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/cmcm/picks/PicksLoadingActivity;->e:I

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/cmcm/picks/PicksLoadingActivity;->e:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/cmcm/picks/PicksLoadingActivity;->e:I

    add-int/2addr v0, p0

    sput v0, Lcom/cmcm/picks/PicksLoadingActivity;->e:I

    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cmcm/picks/PicksLoadingActivity;->a(Landroid/content/Context;I)V

    .line 85
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcm/picks/PicksLoadingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    if-nez p1, :cond_0

    .line 99
    sput-boolean v2, Lcom/cmcm/picks/PicksLoadingActivity;->a:Z

    .line 103
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void

    .line 101
    :cond_0
    const-string v1, "tag_close_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/picks/PicksLoadingActivity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/cmcm/picks/PicksLoadingActivity;->f()V

    return-void
.end method

.method static synthetic b(I)I
    .locals 0

    .prologue
    .line 25
    sput p0, Lcom/cmcm/picks/PicksLoadingActivity;->e:I

    return p0
.end method

.method static synthetic b()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 90
    const/16 v0, 0x64

    sput v0, Lcom/cmcm/picks/PicksLoadingActivity;->e:I

    .line 91
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    sget v1, Lcom/cmcm/picks/PicksLoadingActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 93
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/cmcm/picks/PicksLoadingActivity;->a(Landroid/content/Context;I)V

    .line 94
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 129
    :try_start_0
    sget v0, Lcom/cmcm/adsdk/R$id;->wait_progressbar:I

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/PicksLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    .line 130
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 131
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->c:Ljava/lang/String;

    const-string v1, "initUI"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    sget-boolean v1, Lcom/cmcm/utils/g;->a:Z

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/cmcm/picks/PicksLoadingActivity;->finish()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const/16 v3, 0x50

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v3, v1}, Lcom/cmcm/picks/PicksLoadingActivity;->a(IIZ)V

    .line 159
    :goto_0
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cmcm/picks/PicksLoadingActivity$1;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/PicksLoadingActivity$1;-><init>(Lcom/cmcm/picks/PicksLoadingActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cmcm/picks/PicksLoadingActivity$a;

    const/16 v2, 0x8

    invoke-direct {v1, v3, v2}, Lcom/cmcm/picks/PicksLoadingActivity$a;-><init>(II)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/16 v3, 0x5e

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 170
    sget v0, Lcom/cmcm/picks/PicksLoadingActivity;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/cmcm/picks/PicksLoadingActivity;->a(IIZ)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cmcm/picks/PicksLoadingActivity$a;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v2}, Lcom/cmcm/picks/PicksLoadingActivity$a;-><init>(II)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string v0, "[null]"

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/view/ViewGroup;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 46
    const-string v2, ""

    .line 47
    const-string v1, ""

    move-object v3, v1

    move v1, v0

    .line 48
    :goto_0
    if-ge v1, p2, :cond_0

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    if-nez p1, :cond_2

    .line 72
    :cond_1
    return-object v2

    .line 56
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/cmcm/picks/PicksLoadingActivity;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v1

    move v1, v0

    .line 60
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 63
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/cmcm/picks/PicksLoadingActivity;->a(Landroid/view/ViewGroup;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 67
    :cond_4
    if-eqz v0, :cond_3

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/PicksLoadingActivity;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public a(IIZ)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 200
    if-eqz p3, :cond_0

    .line 201
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 203
    :cond_0
    new-instance v1, Lcom/cmcm/picks/PicksLoadingActivity$2;

    invoke-direct {v1, p0}, Lcom/cmcm/picks/PicksLoadingActivity$2;-><init>(Lcom/cmcm/picks/PicksLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 213
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->c:Ljava/lang/String;

    const-string v1, "oncreate"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/cmcm/picks/PicksLoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tag_close_dialog"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 113
    sget-object v1, Lcom/cmcm/picks/PicksLoadingActivity;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClose"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/cmcm/picks/PicksLoadingActivity;->finish()V

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/PicksLoadingActivity;->requestWindowFeature(I)Z

    .line 119
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/PicksLoadingActivity;->requestWindowFeature(I)Z

    .line 120
    sget v0, Lcom/cmcm/adsdk/R$layout;->activity_picks_loading:I

    invoke-virtual {p0, v0}, Lcom/cmcm/picks/PicksLoadingActivity;->setContentView(I)V

    .line 121
    invoke-virtual {p0}, Lcom/cmcm/picks/PicksLoadingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v4}, Lcom/cmcm/picks/PicksLoadingActivity;->a(Landroid/view/ViewGroup;I)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "CMCMADSDK"

    invoke-static {v1, v0}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/cmcm/picks/PicksLoadingActivity;->d()V

    .line 124
    invoke-direct {p0}, Lcom/cmcm/picks/PicksLoadingActivity;->e()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 220
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->c:Ljava/lang/String;

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    sput v0, Lcom/cmcm/picks/PicksLoadingActivity;->e:I

    .line 222
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 144
    sget-object v0, Lcom/cmcm/picks/PicksLoadingActivity;->c:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/cmcm/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "tag_close_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/cmcm/picks/PicksLoadingActivity;->finish()V

    .line 148
    :cond_0
    return-void
.end method
