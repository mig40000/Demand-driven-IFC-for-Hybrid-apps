.class public Lcom/chartboost/sdk/impl/v;
.super Lcom/chartboost/sdk/impl/u;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final c:Lcom/chartboost/sdk/impl/z;

.field private final d:Landroid/widget/Button;

.field private e:Lcom/chartboost/sdk/impl/bb;

.field private f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/u;-><init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/z;

    .line 39
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/widget/Button;

    const v1, -0xde5819

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/widget/Button;

    const-string v1, "Preview"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/widget/Button;

    new-instance v1, Lcom/chartboost/sdk/impl/v$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/v$1;-><init>(Lcom/chartboost/sdk/impl/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/v;->addView(Landroid/view/View;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;I)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/impl/u;->a(Lorg/json/JSONObject;I)V

    .line 53
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v;->f:Lorg/json/JSONObject;

    .line 54
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 57
    const-string v0, "play the video"

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/impl/bb;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/impl/bb;

    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/z;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/z;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/impl/bb;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/f$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/impl/bb;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bb;->setVisibility(I)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->j:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bc;

    .line 66
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->e:Lcom/chartboost/sdk/impl/bb;

    .line 67
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v2

    new-instance v3, Lcom/chartboost/sdk/impl/v$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/chartboost/sdk/impl/v$2;-><init>(Lcom/chartboost/sdk/impl/v;Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/bb;)V

    invoke-interface {v2, v3}, Lcom/chartboost/sdk/impl/bb$a;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 76
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/bc;->a(ZLandroid/view/View;)V

    .line 77
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bb$a;->a()V

    .line 78
    return-void
.end method
