.class Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$1;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;-><init>(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->b:Z

    if-eqz v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 329
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 332
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-virtual {v1}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->b:Z

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->b:Z

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->b:Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 347
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a()Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-static {}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->a()Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-static {v2}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->b(Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcm/picks/vastvideo/a;->a(ZIZ)V

    .line 352
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity$c;->a:Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/FullScreenVideoActivity;->finish()V

    goto :goto_0
.end method
