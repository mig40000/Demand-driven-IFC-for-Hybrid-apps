.class Lcom/cmcm/picks/vastvideo/VastView$d;
.super Landroid/content/BroadcastReceiver;
.source "VastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/vastvideo/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/VastView;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastView$d;-><init>(Lcom/cmcm/picks/vastvideo/VastView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->b:Z

    if-eqz v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 639
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 640
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 642
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->k(Lcom/cmcm/picks/vastvideo/VastView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->b:Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->b:Z

    if-nez v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->k(Lcom/cmcm/picks/vastvideo/VastView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->b:Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 656
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0, p1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;Landroid/content/Context;)Landroid/content/Context;

    .line 657
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 658
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->j(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->j(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/picks/vastvideo/e;->a(IZ)V

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$d;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0, v2}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;Z)V

    goto :goto_0
.end method
