.class Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;


# direct methods
.method private constructor <init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;-><init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 381
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 382
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v2}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->e(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;)Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;

    .line 391
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->b()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    invoke-static {p1}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 364
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    iget-boolean v2, v2, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a:Z

    if-eqz v2, :cond_2

    .line 376
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {p1}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;)F

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;FZ)V

    .line 378
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 367
    goto :goto_0

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$a;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    iget-boolean v2, v2, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 371
    goto :goto_0
.end method
