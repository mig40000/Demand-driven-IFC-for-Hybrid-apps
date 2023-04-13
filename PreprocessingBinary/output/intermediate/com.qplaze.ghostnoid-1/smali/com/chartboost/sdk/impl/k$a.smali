.class public Lcom/chartboost/sdk/impl/k$a;
.super Lcom/chartboost/sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field protected c:Lcom/chartboost/sdk/impl/be;

.field protected d:Lcom/chartboost/sdk/impl/bf;

.field protected e:Lcom/chartboost/sdk/impl/bf;

.field protected f:Landroid/widget/ImageView;

.field final synthetic g:Lcom/chartboost/sdk/impl/k;

.field private h:Z


# direct methods
.method protected constructor <init>(Lcom/chartboost/sdk/impl/k;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 51
    iput-object p1, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/f$a;-><init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V

    .line 54
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/k$a;->h:Z

    .line 56
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/k$a;->setBackgroundColor(I)V

    .line 57
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/k$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v1

    .line 61
    new-instance v0, Lcom/chartboost/sdk/impl/be;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/be;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/be;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->c:Lcom/chartboost/sdk/impl/be;

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->c:Lcom/chartboost/sdk/impl/be;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/k$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v0, Lcom/chartboost/sdk/impl/k$a$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/chartboost/sdk/impl/k$a$1;-><init>(Lcom/chartboost/sdk/impl/k$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/k;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->e:Lcom/chartboost/sdk/impl/bf;

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/k$a;->a(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->e:Lcom/chartboost/sdk/impl/bf;

    const-string v2, "CBAd"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bf;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->f:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->f:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/k$a;->addView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/k$a;->addView(Landroid/view/View;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected a(FFFF)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 99
    new-array v0, v5, [Lcom/chartboost/sdk/Libraries/d$a;

    const-string v1, "click_coordinates"

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/d$a;

    const-string v3, "x"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "y"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "w"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "h"

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/d;->a([Lcom/chartboost/sdk/Libraries/d$a;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->a([Lcom/chartboost/sdk/Libraries/d$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 106
    return-void
.end method

.method protected a(II)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    const/high16 v9, 0x40000000    # 2.0f

    .line 111
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/k$a;->h:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k$a;->d()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/k$a;->h:Z

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v4

    .line 120
    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/k;->k:Lcom/chartboost/sdk/Libraries/i;

    .line 121
    :goto_0
    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/k;->m:Lcom/chartboost/sdk/Libraries/i;

    .line 123
    :goto_1
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/k;->k:Lcom/chartboost/sdk/Libraries/i;

    if-ne v1, v2, :cond_6

    .line 125
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/k;->l:Lcom/chartboost/sdk/Libraries/i;

    .line 130
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/k;->m:Lcom/chartboost/sdk/Libraries/i;

    if-ne v0, v2, :cond_7

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/k;->n:Lcom/chartboost/sdk/Libraries/i;

    .line 137
    :cond_2
    :goto_3
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v2, v5, v1, v11}, Lcom/chartboost/sdk/impl/k;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/i;F)V

    .line 144
    int-to-float v2, p1

    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 146
    iget-object v3, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v3, Lcom/chartboost/sdk/impl/k;->r:F

    .line 147
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget v3, v3, Lcom/chartboost/sdk/impl/k;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 148
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget v3, v3, Lcom/chartboost/sdk/impl/k;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 150
    iget-object v3, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    if-eqz v4, :cond_8

    const-string v2, "frame-portrait"

    :goto_4
    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    .line 151
    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->g()F

    move-result v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget v8, v8, Lcom/chartboost/sdk/impl/k;->r:F

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 152
    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->g()F

    move-result v7

    div-float/2addr v2, v7

    iget-object v7, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget v7, v7, Lcom/chartboost/sdk/impl/k;->r:F

    mul-float/2addr v2, v7

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 155
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v2, v6, v0, v11}, Lcom/chartboost/sdk/impl/k;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/i;F)V

    .line 156
    iget-object v3, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    if-eqz v4, :cond_9

    const-string v2, "close-portrait"

    :goto_5
    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    .line 158
    iget v3, v2, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_a

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_a

    .line 160
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v2, v3

    iget v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v2

    .line 161
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v2, v7

    .line 166
    :goto_6
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v7, p1, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 167
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 170
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k$a;->c:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/impl/be;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k$a;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v2, v6}, Lcom/chartboost/sdk/impl/bf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k$a;->c:Lcom/chartboost/sdk/impl/be;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/be;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k$a;->c:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Libraries/i;)V

    .line 176
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k$a;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/Libraries/i;)V

    .line 179
    if-eqz v4, :cond_b

    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/k;->o:Lcom/chartboost/sdk/Libraries/i;

    .line 181
    :goto_7
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/k;->o:Lcom/chartboost/sdk/Libraries/i;

    if-ne v0, v1, :cond_c

    .line 183
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/k;->p:Lcom/chartboost/sdk/Libraries/i;

    .line 188
    :cond_3
    :goto_8
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 190
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget v3, v3, Lcom/chartboost/sdk/impl/k;->r:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/chartboost/sdk/impl/k;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/i;F)V

    .line 191
    iget-object v3, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    if-eqz v4, :cond_d

    const-string v1, "ad-portrait"

    :goto_9
    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 192
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->g()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget v5, v5, Lcom/chartboost/sdk/impl/k;->r:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 193
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->g()F

    move-result v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget v4, v4, Lcom/chartboost/sdk/impl/k;->r:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 195
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k$a;->e:Lcom/chartboost/sdk/impl/bf;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bf;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 198
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k$a;->e:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/Libraries/i;)V

    .line 199
    return-void

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/k;->l:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_0

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/k;->n:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_1

    .line 127
    :cond_6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/k;->k:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_2

    .line 134
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/k;->m:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_3

    .line 150
    :cond_8
    const-string v2, "frame-landscape"

    goto/16 :goto_4

    .line 156
    :cond_9
    const-string v2, "close-landscape"

    goto/16 :goto_5

    .line 163
    :cond_a
    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    add-float/2addr v3, v7

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v3, v7

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 164
    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v7, v7

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_6

    .line 179
    :cond_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/k;->p:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_7

    .line 185
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/k;->o:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_8

    .line 191
    :cond_d
    const-string v1, "ad-landscape"

    goto/16 :goto_9
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-super {p0}, Lcom/chartboost/sdk/f$a;->b()V

    .line 208
    iput-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->c:Lcom/chartboost/sdk/impl/be;

    .line 209
    iput-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->d:Lcom/chartboost/sdk/impl/bf;

    .line 211
    iput-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->e:Lcom/chartboost/sdk/impl/bf;

    .line 212
    iput-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->f:Landroid/widget/ImageView;

    .line 213
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/chartboost/sdk/impl/k$a$2;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/k$a$2;-><init>(Lcom/chartboost/sdk/impl/k$a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->d:Lcom/chartboost/sdk/impl/bf;

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->d:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "CBClose"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/k$a;->addView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k$a;->g:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->h()V

    .line 203
    return-void
.end method
