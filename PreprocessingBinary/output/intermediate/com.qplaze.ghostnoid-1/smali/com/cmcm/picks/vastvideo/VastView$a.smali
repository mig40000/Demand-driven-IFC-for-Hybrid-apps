.class Lcom/cmcm/picks/vastvideo/VastView$a;
.super Landroid/content/BroadcastReceiver;
.source "VastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/vastvideo/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/VastView;


# direct methods
.method private constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastView$a;-><init>(Lcom/cmcm/picks/vastvideo/VastView;)V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 703
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 704
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->k(Lcom/cmcm/picks/vastvideo/VastView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v2}, Lcom/cmcm/picks/vastvideo/VastView;->m(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$a;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastView$a;)V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastView$a;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->m(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->k(Lcom/cmcm/picks/vastvideo/VastView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->m(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 711
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$a;)Lcom/cmcm/picks/vastvideo/VastView$a;

    .line 713
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/VastView$a;)V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastView$a;->b()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 717
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 718
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    const-string v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/picks/vastvideo/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->j(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->j(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcm/picks/vastvideo/e;->setSmallViewClicked(Z)V

    .line 723
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->j(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/e;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/cmcm/picks/vastvideo/e;->a(IZ)V

    .line 724
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$a;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->e(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcm/picks/vastvideo/a;->d(Z)V

    .line 730
    :cond_0
    return-void
.end method
