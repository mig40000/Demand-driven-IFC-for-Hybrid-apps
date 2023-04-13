.class Lcom/cmcm/picks/vastvideo/VastView$b;
.super Landroid/content/BroadcastReceiver;
.source "VastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/picks/vastvideo/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/picks/vastvideo/VastView;


# direct methods
.method private constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/cmcm/picks/vastvideo/VastView$b;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$1;)V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/cmcm/picks/vastvideo/VastView$b;-><init>(Lcom/cmcm/picks/vastvideo/VastView;)V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 684
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 685
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$b;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->k(Lcom/cmcm/picks/vastvideo/VastView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/picks/vastvideo/VastView$b;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v2}, Lcom/cmcm/picks/vastvideo/VastView;->l(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$b;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 687
    return-void
.end method

.method static synthetic a(Lcom/cmcm/picks/vastvideo/VastView$b;)V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastView$b;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$b;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->l(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$b;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0}, Lcom/cmcm/picks/vastvideo/VastView;->k(Lcom/cmcm/picks/vastvideo/VastView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$b;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v1}, Lcom/cmcm/picks/vastvideo/VastView;->l(Lcom/cmcm/picks/vastvideo/VastView;)Lcom/cmcm/picks/vastvideo/VastView$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 692
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$b;->a:Lcom/cmcm/picks/vastvideo/VastView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;Lcom/cmcm/picks/vastvideo/VastView$b;)Lcom/cmcm/picks/vastvideo/VastView$b;

    .line 694
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cmcm/picks/vastvideo/VastView$b;)V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/cmcm/picks/vastvideo/VastView$b;->b()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$b;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {v0, p1}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;Landroid/content/Context;)Landroid/content/Context;

    .line 677
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/cmcm/picks/vastvideo/VastView$b;->a:Lcom/cmcm/picks/vastvideo/VastView;

    iget-boolean v0, v0, Lcom/cmcm/picks/vastvideo/VastView;->b:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 679
    :goto_0
    iget-object v1, p0, Lcom/cmcm/picks/vastvideo/VastView$b;->a:Lcom/cmcm/picks/vastvideo/VastView;

    invoke-static {p1}, Lcom/cmcm/picks/vastvideo/f;->a(Landroid/content/Context;)F

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/cmcm/picks/vastvideo/VastView;->a(Lcom/cmcm/picks/vastvideo/VastView;FZ)V

    .line 681
    :cond_0
    return-void

    .line 678
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
