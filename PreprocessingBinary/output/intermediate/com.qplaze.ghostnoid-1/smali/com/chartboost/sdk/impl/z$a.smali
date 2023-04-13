.class public Lcom/chartboost/sdk/impl/z$a;
.super Lcom/chartboost/sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/z$a$a;
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/chartboost/sdk/impl/z;

.field private d:Lcom/chartboost/sdk/impl/bf;

.field private e:Lcom/chartboost/sdk/impl/be;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/ListView;

.field private final i:Lcom/chartboost/sdk/impl/z$a$a;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 102
    iput-object p1, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/f$a;-><init>(Lcom/chartboost/sdk/f;Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/z$a;->setBackgroundColor(I)V

    .line 107
    new-instance v0, Lcom/chartboost/sdk/impl/be;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->e:Lcom/chartboost/sdk/impl/be;

    .line 108
    new-instance v0, Lcom/chartboost/sdk/impl/z$a$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/chartboost/sdk/impl/z$a$1;-><init>(Lcom/chartboost/sdk/impl/z$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/z;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "CBClose"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->f:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->f:Landroid/widget/TextView;

    iget v1, p1, Lcom/chartboost/sdk/impl/z;->w:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/z;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->f:Landroid/widget/TextView;

    iget v1, p1, Lcom/chartboost/sdk/impl/z;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a;->f:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41f00000    # 30.0f

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 121
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->f:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->h:Landroid/widget/ListView;

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->h:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/z$a;->a(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->h:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/z$a;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->e:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/be;->setFocusable(Z)V

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/bf;->setFocusable(Z)V

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->setClickable(Z)V

    .line 134
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->e:Lcom/chartboost/sdk/impl/be;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/be;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->g:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a;->e:Lcom/chartboost/sdk/impl/be;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a;->f:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/z$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/z$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/z$a;->a(Landroid/view/View;)V

    .line 146
    new-instance v0, Lcom/chartboost/sdk/impl/z$a$a;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/impl/z$a$a;-><init>(Lcom/chartboost/sdk/impl/z$a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->i:Lcom/chartboost/sdk/impl/z$a$a;

    .line 147
    return-void

    .line 119
    :cond_0
    const/high16 v0, 0x41900000    # 18.0f

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;Lcom/chartboost/sdk/impl/z$1;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/z$a;-><init>(Lcom/chartboost/sdk/impl/z;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 151
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z$a;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 152
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Lcom/chartboost/sdk/Libraries/e;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->o:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->o:Lcom/chartboost/sdk/Libraries/i;

    .line 164
    :goto_0
    if-eqz v0, :cond_4

    .line 165
    iget-object v4, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->i()I

    move-result v5

    iput v5, v4, Lcom/chartboost/sdk/impl/z;->u:I

    .line 166
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->h()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 167
    iget-object v4, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget v5, v5, Lcom/chartboost/sdk/impl/z;->u:I

    int-to-float v5, v5

    int-to-float v6, p1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->h()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Lcom/chartboost/sdk/impl/z;->u:I

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/chartboost/sdk/impl/z$a;->f:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v4, p0, Lcom/chartboost/sdk/impl/z$a;->e:Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Libraries/i;)V

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/z;->v:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v4

    iput v4, v0, Lcom/chartboost/sdk/impl/z;->u:I

    .line 183
    :cond_1
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 187
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget v0, v0, Lcom/chartboost/sdk/impl/z;->u:I

    invoke-direct {v6, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->m:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/e;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->m:Lcom/chartboost/sdk/Libraries/i;

    .line 200
    :goto_2
    if-eqz v0, :cond_9

    .line 201
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0, v5}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/Libraries/i;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 202
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z$a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    :goto_3
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    .line 214
    :goto_4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget v1, v1, Lcom/chartboost/sdk/impl/z;->u:I

    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 216
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 217
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 218
    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 220
    iput v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 221
    iput v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 222
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a;->i:Lcom/chartboost/sdk/impl/z$a$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/bf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void

    .line 158
    :cond_2
    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->p:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->p:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->r:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->r:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_0

    .line 173
    :cond_4
    iget-object v4, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z$a;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x50

    :goto_5
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    iput v0, v4, Lcom/chartboost/sdk/impl/z;->u:I

    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->f:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 173
    :cond_5
    const/16 v0, 0x28

    goto :goto_5

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->n:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/e;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->n:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_2

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->l:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 198
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->l:Lcom/chartboost/sdk/Libraries/i;

    goto/16 :goto_2

    .line 202
    :cond_8
    const/4 v0, 0x7

    goto/16 :goto_3

    .line 205
    :cond_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->a()Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z$a;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    const/high16 v0, 0x41d00000    # 26.0f

    :goto_6
    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->a()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget v1, v1, Lcom/chartboost/sdk/impl/z;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->a()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget v0, v0, Lcom/chartboost/sdk/impl/z;->u:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 211
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->c:Lcom/chartboost/sdk/impl/z;

    iget v0, v0, Lcom/chartboost/sdk/impl/z;->u:I

    div-int/lit8 v0, v0, 0x3

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 212
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z$a;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1e

    :goto_7
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    goto/16 :goto_4

    .line 206
    :cond_a
    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_6

    .line 212
    :cond_b
    const/16 v0, 0x14

    goto :goto_7

    :cond_c
    move-object v0, v1

    goto/16 :goto_2

    :cond_d
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-super {p0}, Lcom/chartboost/sdk/f$a;->b()V

    .line 234
    iput-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->d:Lcom/chartboost/sdk/impl/bf;

    .line 235
    iput-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->e:Lcom/chartboost/sdk/impl/be;

    .line 236
    iput-object v0, p0, Lcom/chartboost/sdk/impl/z$a;->h:Landroid/widget/ListView;

    .line 237
    return-void
.end method
