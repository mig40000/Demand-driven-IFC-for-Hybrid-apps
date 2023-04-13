.class public Lcom/chartboost/sdk/impl/r;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/CharSequence;


# instance fields
.field final a:Landroid/widget/RelativeLayout;

.field final b:Lcom/chartboost/sdk/impl/q;

.field final c:Lcom/chartboost/sdk/impl/q;

.field final d:Lcom/chartboost/sdk/impl/bf;

.field final e:Landroid/widget/TextView;

.field final f:Lcom/chartboost/sdk/impl/n;

.field final g:Lcom/chartboost/sdk/impl/bb;

.field final h:Lcom/chartboost/sdk/impl/l;

.field final i:Ljava/lang/Runnable;

.field private k:Z

.field private l:Z

.field private final m:Landroid/os/Handler;

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "00:00"

    sput-object v0, Lcom/chartboost/sdk/impl/r;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/l;)V
    .locals 12

    .prologue
    const/4 v6, -0x2

    const/high16 v11, 0x41200000    # 10.0f

    const/16 v10, 0x8

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput-boolean v8, p0, Lcom/chartboost/sdk/impl/r;->k:Z

    .line 63
    iput-boolean v8, p0, Lcom/chartboost/sdk/impl/r;->l:Z

    .line 66
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/chartboost/sdk/impl/r$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/r$2;-><init>(Lcom/chartboost/sdk/impl/r;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->n:Ljava/lang/Runnable;

    .line 288
    new-instance v0, Lcom/chartboost/sdk/impl/r$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/r$3;-><init>(Lcom/chartboost/sdk/impl/r;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->o:Ljava/lang/Runnable;

    .line 348
    new-instance v0, Lcom/chartboost/sdk/impl/r$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/r$4;-><init>(Lcom/chartboost/sdk/impl/r;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->i:Ljava/lang/Runnable;

    .line 70
    iput-object p2, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    .line 72
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/l;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 74
    mul-float v0, v2, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 77
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v4

    .line 78
    invoke-virtual {v4, p1}, Lcom/chartboost/sdk/g;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    .line 79
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/l$a;->a(Landroid/view/View;)V

    .line 80
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    iget-object v5, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {p0, v5, v0}, Lcom/chartboost/sdk/impl/r;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->a:Landroid/widget/RelativeLayout;

    .line 88
    if-eqz v1, :cond_0

    const-string v0, "video-click-button"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/chartboost/sdk/impl/q;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/q;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 93
    new-instance v0, Lcom/chartboost/sdk/impl/r$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/r$1;-><init>(Lcom/chartboost/sdk/impl/r;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    iget-object v0, p2, Lcom/chartboost/sdk/impl/l;->J:Lcom/chartboost/sdk/Libraries/i;

    .line 111
    const-string v1, "video-click-button"

    invoke-virtual {p2, v1}, Lcom/chartboost/sdk/impl/l;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 112
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->g()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 114
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->g()F

    move-result v6

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 115
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v5, v0, v1}, Lcom/chartboost/sdk/impl/l;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/i;F)V

    .line 116
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/Libraries/i;)V

    .line 119
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v1, v5}, Lcom/chartboost/sdk/impl/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float v5, v11, v2

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->a:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :goto_0
    new-instance v0, Lcom/chartboost/sdk/impl/q;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/q;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 132
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42020000    # 32.5f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->a:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/q;->setGravity(I)V

    .line 137
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/chartboost/sdk/impl/q;->setPadding(IIII)V

    .line 139
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/chartboost/sdk/impl/r;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v8, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 148
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1}, Lcom/chartboost/sdk/impl/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {v4, p1}, Lcom/chartboost/sdk/g;->b(Landroid/content/Context;)Lcom/chartboost/sdk/impl/n;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->f:Lcom/chartboost/sdk/impl/n;

    .line 155
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->f:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/n;->setVisibility(I)V

    .line 156
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v1, v11, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 159
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/r;->f:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bb;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->getId()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 164
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bb;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bb;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/r;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/r;->a()V

    .line 168
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v0

    .line 319
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/r;->c(Z)V

    .line 320
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/q;->setBackgroundColor(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/q;->setBackgroundColor(I)V

    .line 334
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/bb$a;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 391
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/bb$a;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/bb$a;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 393
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bb$a;->a(Landroid/net/Uri;)V

    .line 394
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/r;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/r;->a(ZZ)V

    .line 221
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(ZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/r;->k:Z

    if-eq p1, v0, :cond_0

    .line 233
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/r;->k:Z

    .line 235
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/r;->k:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v0

    .line 236
    :goto_1
    if-eqz p2, :cond_5

    const-wide/16 v0, 0x64

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 238
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 239
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/r;->l:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/q;->startAnimation(Landroid/view/animation/Animation;)V

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->N:Z

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->f:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/n;->setVisibility(I)V

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/q;->startAnimation(Landroid/view/animation/Animation;)V

    .line 250
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/r;->k:Z

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 235
    :cond_4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v0

    goto :goto_1

    .line 236
    :cond_5
    const-wide/16 v0, 0xc8

    goto :goto_2

    .line 253
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->o:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()Lcom/chartboost/sdk/impl/bb$a;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    if-eqz p1, :cond_3

    .line 260
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/r;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->N:Z

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->f:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/n;->setVisibility(I)V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 279
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/r;->k:Z

    .line 280
    return-void

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->clearAnimation()V

    .line 270
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->clearAnimation()V

    .line 273
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/l;->N:Z

    if-eqz v0, :cond_5

    .line 274
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->f:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/n;->setVisibility(I)V

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->c:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    goto :goto_0
.end method

.method public c()Lcom/chartboost/sdk/impl/n;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->f:Lcom/chartboost/sdk/impl/n;

    return-object v0
.end method

.method public c(Z)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 301
    if-eqz p1, :cond_2

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/r;->setBackgroundColor(I)V

    .line 302
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 303
    if-nez p1, :cond_0

    .line 304
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bb;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 305
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bb;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 306
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bb;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 307
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bb;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/q;->setGravity(I)V

    .line 313
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->requestLayout()V

    .line 315
    :cond_1
    return-void

    .line 301
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->b:Lcom/chartboost/sdk/impl/q;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 339
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/r;->l:Z

    .line 340
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 342
    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    return-void

    .line 345
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/r$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/r$5;-><init>(Lcom/chartboost/sdk/impl/r;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bb$a;->a()V

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bb$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bb$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/l;->w:I

    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bb$a;->b()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->postInvalidate()V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bb$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bb$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/l;->w:I

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bb$a;->b()V

    .line 424
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bb;->setVisibility(I)V

    .line 431
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/r;->invalidate()V

    .line 432
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bb$a;->c()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/l;->w:I

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l$a;->f()V

    .line 205
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->w()V

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bb$a;->c()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/l;->x:I

    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l;->r()Lcom/chartboost/sdk/impl/l$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l$a;->a(Z)V

    .line 211
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 191
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/bb$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/bb$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/chartboost/sdk/impl/r;->h:Lcom/chartboost/sdk/impl/l;

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/r;->a(Z)V

    .line 197
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/bf;->setEnabled(Z)V

    .line 176
    :cond_0
    if-eqz p1, :cond_1

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/r;->b(Z)V

    .line 180
    :cond_1
    return-void
.end method
