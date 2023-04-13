.class public Lcom/chartboost/sdk/impl/bk;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/f$a;

.field private b:Lcom/chartboost/sdk/impl/bd;

.field private c:Lcom/chartboost/sdk/impl/bd;

.field private d:Lcom/chartboost/sdk/impl/bj;

.field private final e:Lcom/chartboost/sdk/Model/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bk;->e:Lcom/chartboost/sdk/Model/a;

    .line 26
    iget-object v0, p2, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 27
    new-instance v0, Lcom/chartboost/sdk/impl/bd;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/bd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bk;->b:Lcom/chartboost/sdk/impl/bd;

    .line 28
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->b:Lcom/chartboost/sdk/impl/bd;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    new-instance v0, Lcom/chartboost/sdk/impl/bd;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/bd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bk;->c:Lcom/chartboost/sdk/impl/bd;

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->c:Lcom/chartboost/sdk/impl/bd;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->c:Lcom/chartboost/sdk/impl/bd;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bd;->setVisibility(I)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/f$a;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->l()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/f$a;

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/f$a;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/f$a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/bk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/f$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->a()V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bk;->c()V

    .line 47
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->e:Lcom/chartboost/sdk/Model/a;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/a;->r:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 51
    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->e:Lcom/chartboost/sdk/Model/a;

    iput-boolean v1, v3, Lcom/chartboost/sdk/Model/a;->r:Z

    .line 52
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    if-nez v3, :cond_3

    .line 53
    new-instance v3, Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bk;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/chartboost/sdk/impl/bj;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    .line 54
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/impl/bj;->setVisibility(I)V

    .line 55
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/chartboost/sdk/impl/bk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    :goto_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bk;->g()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/bj;->setVisibility(I)V

    .line 71
    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->e:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v0, v0, Lcom/chartboost/sdk/d;->j:Lcom/chartboost/sdk/e;

    iget-object v0, v0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bc;

    .line 73
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bk;->c:Lcom/chartboost/sdk/impl/bd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bk;->b:Lcom/chartboost/sdk/impl/bd;

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bk;->e()Lcom/chartboost/sdk/impl/bd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bd;->a(Lcom/chartboost/sdk/impl/bc;)V

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bc;->a(ZLandroid/view/View;)V

    .line 78
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 50
    goto :goto_0

    .line 58
    :cond_3
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->c:Lcom/chartboost/sdk/impl/bd;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->b:Lcom/chartboost/sdk/impl/bd;

    if-eqz v3, :cond_4

    .line 59
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->c:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/bd;->bringToFront()V

    .line 60
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->c:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/bd;->setVisibility(I)V

    .line 61
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->e:Lcom/chartboost/sdk/Model/a;

    iget-object v3, v3, Lcom/chartboost/sdk/Model/a;->a:Lcom/chartboost/sdk/d;

    iget-object v3, v3, Lcom/chartboost/sdk/d;->j:Lcom/chartboost/sdk/e;

    iget-object v3, v3, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/bc;

    .line 62
    iget-object v4, p0, Lcom/chartboost/sdk/impl/bk;->c:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/impl/bd;->a(Lcom/chartboost/sdk/impl/bc;)V

    .line 63
    iget-object v4, p0, Lcom/chartboost/sdk/impl/bk;->b:Lcom/chartboost/sdk/impl/bd;

    invoke-virtual {v3, v2, v4}, Lcom/chartboost/sdk/impl/bc;->a(ZLandroid/view/View;)V

    .line 65
    :cond_4
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/bj;->bringToFront()V

    .line 66
    iget-object v3, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/bj;->a()V

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bj;->clearAnimation()V

    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bj;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public e()Lcom/chartboost/sdk/impl/bd;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->b:Lcom/chartboost/sdk/impl/bd;

    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/f$a;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->d:Lcom/chartboost/sdk/impl/bj;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bj;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bk;->a:Lcom/chartboost/sdk/f$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method
