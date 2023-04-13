.class public abstract Lcom/chartboost/sdk/f$a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field a:Lcom/chartboost/sdk/Libraries/e;

.field final synthetic b:Lcom/chartboost/sdk/f;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 52
    iput-object p1, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    .line 53
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/f$a;->c:Z

    .line 48
    iput v1, p0, Lcom/chartboost/sdk/f$a;->d:I

    iput v1, p0, Lcom/chartboost/sdk/f$a;->e:I

    .line 49
    iput v1, p0, Lcom/chartboost/sdk/f$a;->f:I

    iput v1, p0, Lcom/chartboost/sdk/f$a;->g:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/Libraries/e;

    .line 55
    invoke-virtual {p1, p0}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/f$a;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f$a;->setFocusableInTouchMode(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->requestFocus()Z

    .line 59
    return-void
.end method

.method private b(II)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 73
    iget-object v2, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iget-object v2, v2, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Model/a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iget-object v2, v2, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v3, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    if-ne v2, v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget-boolean v2, p0, Lcom/chartboost/sdk/f$a;->c:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v2

    .line 80
    iget v3, p0, Lcom/chartboost/sdk/f$a;->d:I

    if-ne v3, p1, :cond_3

    iget v3, p0, Lcom/chartboost/sdk/f$a;->e:I

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/Libraries/e;

    if-eq v3, v2, :cond_0

    .line 83
    :cond_3
    iput-boolean v0, p0, Lcom/chartboost/sdk/f$a;->c:Z

    .line 86
    :try_start_0
    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iget-boolean v3, v3, Lcom/chartboost/sdk/f;->i:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 87
    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iput-object v2, v3, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/e;

    .line 90
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/f$a;->a(II)V

    .line 91
    new-instance v3, Lcom/chartboost/sdk/f$a$1;

    invoke-direct {v3, p0}, Lcom/chartboost/sdk/f$a$1;-><init>(Lcom/chartboost/sdk/f$a;)V

    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/f$a;->post(Ljava/lang/Runnable;)Z

    .line 97
    iput p1, p0, Lcom/chartboost/sdk/f$a;->d:I

    .line 98
    iput p2, p0, Lcom/chartboost/sdk/f$a;->e:I

    .line 99
    iput-object v2, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/Libraries/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_2
    iput-boolean v1, p0, Lcom/chartboost/sdk/f$a;->c:Z

    goto :goto_0

    .line 88
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iget-boolean v3, v3, Lcom/chartboost/sdk/f;->j:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/e;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iput-object v2, v3, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Libraries/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v2, "CBViewProtocol"

    const-string v3, "Exception raised while layouting Subviews"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "tryLayout"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f$a;->a(Z)V

    .line 114
    return-void
.end method

.method protected abstract a(II)V
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 176
    const/16 v0, 0xc8

    .line 177
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 178
    const/16 v0, 0xc9

    .line 179
    :cond_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f$a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    move-object v0, v2

    .line 180
    :goto_0
    if-eqz v0, :cond_1

    .line 181
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/f$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 185
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/f$a;->a:Lcom/chartboost/sdk/Libraries/e;

    .line 120
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/g;->a()Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/g;->a(Landroid/view/View;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/f$a;->a(Landroid/app/Activity;)Z

    .line 121
    return-void
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 133
    iget v0, p0, Lcom/chartboost/sdk/f$a;->f:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/f$a;->g:I

    if-ne v0, v1, :cond_6

    .line 136
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->getWidth()I

    move-result v1

    .line 137
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->getHeight()I

    move-result v0

    .line 138
    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    if-nez v0, :cond_2

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 142
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 148
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    .line 149
    :cond_4
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 151
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 152
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 155
    :cond_5
    iput v1, p0, Lcom/chartboost/sdk/f$a;->f:I

    .line 156
    iput v0, p0, Lcom/chartboost/sdk/f$a;->g:I

    .line 159
    :cond_6
    iget v0, p0, Lcom/chartboost/sdk/f$a;->f:I

    iget v1, p0, Lcom/chartboost/sdk/f$a;->g:I

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/f$a;->b(II)Z

    move-result v0

    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 165
    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iget-object v1, v0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 167
    iget-object v3, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iget-object v3, v3, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 169
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, -0x1

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 64
    iput p1, p0, Lcom/chartboost/sdk/f$a;->f:I

    .line 65
    iput p2, p0, Lcom/chartboost/sdk/f$a;->g:I

    .line 67
    iget v0, p0, Lcom/chartboost/sdk/f$a;->d:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/f$a;->e:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->b:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/chartboost/sdk/f$a;->a()V

    .line 70
    :cond_0
    return-void
.end method
