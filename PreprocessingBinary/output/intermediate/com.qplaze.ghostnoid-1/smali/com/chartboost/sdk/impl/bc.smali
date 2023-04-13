.class public Lcom/chartboost/sdk/impl/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bc$3;,
        Lcom/chartboost/sdk/impl/bc$a;,
        Lcom/chartboost/sdk/impl/bc$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/chartboost/sdk/e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/c;",
            ">;",
            "Lcom/chartboost/sdk/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    iput-object p2, p0, Lcom/chartboost/sdk/impl/bc;->b:Lcom/chartboost/sdk/e;

    .line 56
    return-void
.end method

.method private b(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;Z)V
    .locals 8

    .prologue
    .line 73
    sget-object v0, Lcom/chartboost/sdk/impl/bc$b;->g:Lcom/chartboost/sdk/impl/bc$b;

    if-ne p1, v0, :cond_1

    .line 74
    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/chartboost/sdk/Model/a;->p:Lcom/chartboost/sdk/impl/bk;

    if-nez v0, :cond_3

    .line 80
    :cond_2
    const-string v0, "AnimationManager"

    const-string v1, "Transition of impression canceled due to lack of container"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p2, Lcom/chartboost/sdk/Model/a;->p:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->f()Landroid/view/View;

    move-result-object v2

    .line 84
    if-nez v2, :cond_4

    .line 85
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->b:Lcom/chartboost/sdk/e;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 86
    const-string v0, "AnimationManager"

    const-string v1, "Transition of impression canceled due to lack of view"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 90
    invoke-virtual {v7}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/chartboost/sdk/impl/bc$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/bc$1;-><init>(Lcom/chartboost/sdk/impl/bc;Landroid/view/View;Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;Z)V

    invoke-virtual {v7, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;Z)V

    .line 64
    return-void
.end method

.method a(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;Z)V
    .locals 18

    .prologue
    .line 103
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 104
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 107
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/chartboost/sdk/Model/a;->p:Lcom/chartboost/sdk/impl/bk;

    if-nez v4, :cond_2

    .line 108
    :cond_0
    const-string v4, "AnimationManager"

    const-string v5, "Transition of impression canceled due to lack of container"

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    if-eqz p3, :cond_1

    .line 110
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/chartboost/sdk/Model/a;->p:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/bk;->f()Landroid/view/View;

    move-result-object v4

    .line 114
    if-nez v4, :cond_4

    .line 115
    if-eqz p3, :cond_3

    .line 116
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 117
    :cond_3
    const-string v4, "AnimationManager"

    const-string v5, "Transition of impression canceled due to lack of view"

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_4
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v6, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-eq v5, v6, :cond_5

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/chartboost/sdk/Model/a;->g:Lcom/chartboost/sdk/Model/a$c;

    sget-object v6, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    if-ne v5, v6, :cond_19

    .line 123
    :cond_5
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/chartboost/sdk/Model/a;->p:Lcom/chartboost/sdk/impl/bk;

    move-object v13, v4

    .line 126
    :goto_1
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v11, v4

    .line 127
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v10, v4

    .line 128
    const/high16 v6, 0x42700000    # 60.0f

    .line 129
    const v12, 0x3ecccccd    # 0.4f

    .line 130
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float v17, v4, v5

    .line 137
    const-wide/16 v4, 0x1f4

    .line 138
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v8, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    if-ne v7, v8, :cond_18

    .line 139
    const-wide/16 v4, 0x1f4

    move-wide v14, v4

    .line 141
    :goto_2
    sget-object v4, Lcom/chartboost/sdk/impl/bc$3;->a:[I

    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/impl/bc$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object/from16 v4, v16

    .line 274
    :goto_3
    sget-object v5, Lcom/chartboost/sdk/impl/bc$b;->g:Lcom/chartboost/sdk/impl/bc$b;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_16

    .line 275
    if-eqz p3, :cond_1

    .line 276
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 143
    :pswitch_0
    if-eqz p4, :cond_6

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 145
    :goto_4
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 146
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 147
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 148
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v4, v5

    .line 149
    goto :goto_3

    .line 144
    :cond_6
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_4

    .line 151
    :pswitch_1
    if-eqz p4, :cond_7

    .line 152
    new-instance v4, Lcom/chartboost/sdk/impl/bh;

    neg-float v5, v6

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v11, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v10, v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/chartboost/sdk/impl/bh;-><init>(FFFFZ)V

    .line 155
    :goto_5
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 156
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 157
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 159
    if-eqz p4, :cond_8

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v12, v5, v12, v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 161
    :goto_6
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 162
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 163
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 165
    if-eqz p4, :cond_9

    .line 166
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    mul-float v5, v11, v17

    const/4 v6, 0x0

    neg-float v7, v10

    mul-float/2addr v7, v12

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 169
    :goto_7
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 171
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v4, v16

    .line 173
    goto/16 :goto_3

    .line 154
    :cond_7
    new-instance v4, Lcom/chartboost/sdk/impl/bh;

    const/4 v5, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v11, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v10, v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/chartboost/sdk/impl/bh;-><init>(FFFFZ)V

    goto :goto_5

    .line 160
    :cond_8
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v12, v6, v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_6

    .line 168
    :cond_9
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    mul-float v6, v11, v17

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7

    .line 175
    :pswitch_2
    if-eqz p4, :cond_a

    .line 176
    new-instance v4, Lcom/chartboost/sdk/impl/bh;

    neg-float v5, v6

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v11, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v10, v8

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/chartboost/sdk/impl/bh;-><init>(FFFFZ)V

    .line 179
    :goto_8
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 180
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 181
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 183
    if-eqz p4, :cond_b

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v12, v5, v12, v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 185
    :goto_9
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 186
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 187
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 189
    if-eqz p4, :cond_c

    .line 190
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    neg-float v5, v11

    mul-float/2addr v5, v12

    const/4 v6, 0x0

    mul-float v7, v10, v17

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 193
    :goto_a
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 194
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 195
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v4, v16

    .line 197
    goto/16 :goto_3

    .line 178
    :cond_a
    new-instance v4, Lcom/chartboost/sdk/impl/bh;

    const/4 v5, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v11, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v10, v8

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/chartboost/sdk/impl/bh;-><init>(FFFFZ)V

    goto :goto_8

    .line 184
    :cond_b
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v12, v6, v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_9

    .line 192
    :cond_c
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    mul-float v7, v10, v17

    invoke-direct {v4, v5, v11, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_a

    .line 200
    :pswitch_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 201
    if-eqz p4, :cond_d

    move v5, v10

    .line 202
    :goto_b
    if-eqz p4, :cond_e

    const/4 v4, 0x0

    .line 203
    :goto_c
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v6, v7, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 204
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 205
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 206
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v4, v16

    .line 207
    goto/16 :goto_3

    .line 201
    :cond_d
    const/4 v4, 0x0

    move v5, v4

    goto :goto_b

    :cond_e
    move v4, v10

    .line 202
    goto :goto_c

    .line 210
    :pswitch_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 211
    if-eqz p4, :cond_f

    neg-float v4, v10

    move v5, v4

    .line 212
    :goto_d
    if-eqz p4, :cond_10

    const/4 v4, 0x0

    .line 213
    :goto_e
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v6, v7, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 214
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 215
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 216
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v4, v16

    .line 217
    goto/16 :goto_3

    .line 211
    :cond_f
    const/4 v4, 0x0

    move v5, v4

    goto :goto_d

    .line 212
    :cond_10
    neg-float v4, v10

    goto :goto_e

    .line 221
    :pswitch_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 222
    if-eqz p4, :cond_11

    move v5, v11

    .line 223
    :goto_f
    if-eqz p4, :cond_12

    const/4 v4, 0x0

    .line 224
    :goto_10
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v5, v4, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 225
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 226
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 227
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v4, v16

    .line 228
    goto/16 :goto_3

    .line 222
    :cond_11
    const/4 v4, 0x0

    move v5, v4

    goto :goto_f

    :cond_12
    move v4, v11

    .line 223
    goto :goto_10

    .line 231
    :pswitch_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 232
    if-eqz p4, :cond_13

    neg-float v4, v11

    move v5, v4

    .line 233
    :goto_11
    if-eqz p4, :cond_14

    const/4 v4, 0x0

    .line 234
    :goto_12
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v5, v4, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 235
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 236
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 237
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v4, v16

    .line 238
    goto/16 :goto_3

    .line 232
    :cond_13
    const/4 v4, 0x0

    move v5, v4

    goto :goto_11

    .line 233
    :cond_14
    neg-float v4, v11

    goto :goto_12

    .line 242
    :pswitch_7
    if-eqz p4, :cond_15

    .line 243
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3f8ccccd    # 1.1f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3f8ccccd    # 1.1f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 244
    long-to-float v5, v14

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 245
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 246
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 247
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 249
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f51745c

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f51745c

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 250
    long-to-float v5, v14

    const v6, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 251
    long-to-float v5, v14

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 253
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 254
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 256
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f8e38e4

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f8e38e4

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 257
    long-to-float v5, v14

    const v6, 0x3dccccc8    # 0.099999964f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 258
    long-to-float v5, v14

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 259
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 260
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v4, v16

    goto/16 :goto_3

    .line 263
    :cond_15
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 264
    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 265
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 266
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 267
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v4, v16

    .line 269
    goto/16 :goto_3

    .line 280
    :cond_16
    if-eqz p3, :cond_17

    .line 281
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/chartboost/sdk/impl/bc$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v6, v0, v1, v2}, Lcom/chartboost/sdk/impl/bc$2;-><init>(Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/bc$a;Lcom/chartboost/sdk/Model/a;)V

    invoke-virtual {v5, v6, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    :cond_17
    invoke-virtual {v13, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_18
    move-wide v14, v4

    goto/16 :goto_2

    :cond_19
    move-object v13, v4

    goto/16 :goto_1

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(ZLandroid/view/View;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    .line 293
    .line 294
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/c;->u:Z

    if-eqz v0, :cond_0

    .line 296
    :cond_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/chartboost/sdk/impl/bc;->a(ZLandroid/view/View;J)V

    .line 297
    return-void
.end method

.method public a(ZLandroid/view/View;J)V
    .locals 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 301
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 302
    if-eqz p1, :cond_0

    .line 303
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_0
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_1

    move v2, v1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    invoke-direct {v3, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 305
    invoke-virtual {v3, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 306
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 307
    invoke-virtual {p2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    return-void

    :cond_1
    move v2, v0

    .line 304
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/impl/bc$b;Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/impl/bc$a;Z)V

    .line 68
    return-void
.end method
