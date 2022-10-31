.class public Landroid/support/constraint/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x3

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 14
    .param p0, "optimisationLevel"    # I
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 151
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 153
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 154
    .local v0, "leftNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    .line 155
    .local v1, "topNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 156
    .local v2, "rightNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    .line 158
    .local v3, "bottomNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    and-int/lit8 v4, p0, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 162
    .local v4, "optimiseDimensions":Z
    :goto_0
    iget v5, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x2

    if-eq v5, v9, :cond_11

    iget v5, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v5, v9, :cond_11

    .line 164
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v6

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v13, :cond_8

    .line 165
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_2

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_2

    .line 166
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 167
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 168
    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v2, v0, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 173
    :cond_2
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_4

    .line 174
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 175
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 176
    if-eqz v4, :cond_3

    .line 177
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v2, v0, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 179
    :cond_3
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 181
    :cond_4
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_6

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_6

    .line 182
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 183
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 184
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 185
    if-eqz v4, :cond_5

    .line 186
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v0, v2, v11, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 188
    :cond_5
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 190
    :cond_6
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_11

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_11

    .line 191
    invoke-virtual {v0, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 192
    invoke-virtual {v2, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 193
    if-eqz v4, :cond_7

    .line 194
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 195
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 196
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v0, v2, v11, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 197
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v2, v0, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 199
    :cond_7
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 200
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_1

    .line 203
    :cond_8
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v6

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v13, :cond_11

    .line 204
    invoke-static {p1, v6}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 205
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    .line 211
    .local v5, "width":I
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 212
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 213
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_a

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_a

    .line 214
    if-eqz v4, :cond_9

    .line 215
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v2, v0, v7, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 217
    :cond_9
    invoke-virtual {v2, v0, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 219
    :cond_a
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_c

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_c

    .line 220
    if-eqz v4, :cond_b

    .line 221
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v2, v0, v7, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_1

    .line 223
    :cond_b
    invoke-virtual {v2, v0, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1

    .line 225
    :cond_c
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_e

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_e

    .line 226
    if-eqz v4, :cond_d

    .line 227
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v0, v2, v11, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_1

    .line 229
    :cond_d
    neg-int v6, v5

    invoke-virtual {v0, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1

    .line 231
    :cond_e
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_11

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_11

    .line 232
    if-eqz v4, :cond_f

    .line 233
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 234
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 236
    :cond_f
    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_10

    .line 237
    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 238
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 239
    invoke-virtual {v0, v2, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 240
    invoke-virtual {v2, v0, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_1

    .line 243
    :cond_10
    invoke-virtual {v0, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 244
    invoke-virtual {v2, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 245
    neg-int v6, v5

    int-to-float v6, v6

    invoke-virtual {v0, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 246
    int-to-float v6, v5

    invoke-virtual {v2, v0, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 247
    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 255
    .end local v5    # "width":I
    :cond_11
    :goto_1
    iget v5, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v5, v9, :cond_22

    iget v5, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v5, v9, :cond_22

    .line 258
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v7

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_19

    .line 259
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_13

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_13

    .line 260
    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 261
    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 262
    if-eqz v4, :cond_12

    .line 263
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v3, v1, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_2

    .line 265
    :cond_12
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 267
    :goto_2
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_22

    .line 268
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 270
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v6, v6

    .line 269
    invoke-virtual {v1, v7, v5, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_6

    .line 272
    :cond_13
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_15

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_15

    .line 273
    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 274
    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 275
    if-eqz v4, :cond_14

    .line 276
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v3, v1, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_3

    .line 278
    :cond_14
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 280
    :goto_3
    iget v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v5, :cond_22

    .line 281
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v5, v7, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_6

    .line 283
    :cond_15
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_17

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_17

    .line 284
    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 285
    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 286
    if-eqz v4, :cond_16

    .line 287
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v1, v3, v11, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_4

    .line 289
    :cond_16
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 291
    :goto_4
    iget v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v5, :cond_22

    .line 292
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v5, v7, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_6

    .line 294
    :cond_17
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_22

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_22

    .line 295
    invoke-virtual {v1, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 296
    invoke-virtual {v3, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 297
    if-eqz v4, :cond_18

    .line 298
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v1, v3, v11, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 299
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v3, v1, v7, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 300
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 301
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    goto :goto_5

    .line 303
    :cond_18
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 304
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 306
    :goto_5
    iget v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v5, :cond_22

    .line 307
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v5, v7, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_6

    .line 310
    :cond_19
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v7

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_22

    .line 311
    invoke-static {p1, v7}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 312
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 317
    .local v5, "height":I
    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 318
    invoke-virtual {v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 319
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_1b

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_1b

    .line 320
    if-eqz v4, :cond_1a

    .line 321
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v3, v1, v7, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_6

    .line 323
    :cond_1a
    invoke-virtual {v3, v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_6

    .line 325
    :cond_1b
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_1d

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_1d

    .line 326
    if-eqz v4, :cond_1c

    .line 327
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v3, v1, v7, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_6

    .line 329
    :cond_1c
    invoke-virtual {v3, v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_6

    .line 331
    :cond_1d
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_1f

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_1f

    .line 332
    if-eqz v4, :cond_1e

    .line 333
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v1, v3, v11, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_6

    .line 335
    :cond_1e
    neg-int v6, v5

    invoke-virtual {v1, v3, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_6

    .line 337
    :cond_1f
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_22

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_22

    .line 338
    if-eqz v4, :cond_20

    .line 339
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 340
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 342
    :cond_20
    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_21

    .line 343
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 344
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 345
    invoke-virtual {v1, v3, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 346
    invoke-virtual {v3, v1, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_6

    .line 348
    :cond_21
    invoke-virtual {v1, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 349
    invoke-virtual {v3, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 350
    neg-int v6, v5

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 351
    int-to-float v6, v5

    invoke-virtual {v3, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 352
    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 353
    iget v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_22

    .line 354
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v7, v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 360
    .end local v5    # "height":I
    :cond_22
    :goto_6
    return-void
.end method

.method static applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .locals 38
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "first"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 376
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 377
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 378
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 379
    .local v3, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    .line 381
    .local v4, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v5, 0x0

    .line 383
    .local v5, "done":Z
    const/4 v6, 0x0

    .line 384
    .local v6, "numMatchConstraints":I
    const/4 v7, 0x0

    .line 385
    .local v7, "totalWeights":F
    const/4 v8, 0x0

    .line 386
    .local v8, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v9, 0x0

    .line 388
    .local v9, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v10, p0

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, p2

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 389
    .local v11, "isWrapContent":Z
    :goto_0
    const/4 v12, 0x0

    .line 390
    .local v12, "isChainSpread":Z
    const/4 v15, 0x0

    .line 391
    .local v15, "isChainSpreadInside":Z
    const/16 v16, 0x0

    .line 393
    .local v16, "isChainPacked":Z
    move-object/from16 v17, p4

    .line 394
    .local v17, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez p2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 396
    :goto_1
    if-nez v5, :cond_5

    .line 398
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v13, v13, v19

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 399
    .local v13, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v13, :cond_2

    .line 400
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 401
    iget-object v14, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v14, v14, p3

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_1

    iget-object v14, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v14, v14, p3

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v14, v1, :cond_3

    .line 403
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 406
    :cond_2
    const/4 v2, 0x0

    .line 408
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 409
    move-object v1, v2

    goto :goto_3

    .line 411
    :cond_4
    const/4 v5, 0x1

    .line 413
    .end local v13    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_3
    goto :goto_1

    .line 414
    :cond_5
    move-object/from16 v17, v1

    .line 415
    move-object/from16 v1, p4

    .line 416
    const/4 v2, 0x0

    .line 417
    const/4 v5, 0x0

    move-object/from16 v13, v17

    goto :goto_4

    .line 420
    :cond_6
    move-object/from16 v13, v17

    .end local v17    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v13, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4
    if-nez p2, :cond_a

    .line 421
    iget v14, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v14, :cond_7

    const/4 v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    move v12, v14

    .line 422
    iget v14, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move-object/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v20, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-ne v14, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 423
    .end local v15    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_6
    iget v14, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    const/4 v14, 0x1

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    .end local v16    # "isChainPacked":Z
    .local v14, "isChainPacked":Z
    :goto_7
    goto :goto_a

    .line 425
    .end local v14    # "isChainPacked":Z
    .end local v20    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v15    # "isChainSpreadInside":Z
    .restart local v16    # "isChainPacked":Z
    :cond_a
    move-object/from16 v20, v1

    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v20    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    move v12, v1

    .line 426
    iget v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v14, 0x1

    if-ne v1, v14, :cond_c

    const/4 v1, 0x1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    .line 427
    .end local v15    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_9
    iget v14, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_d

    const/4 v14, 0x1

    goto :goto_a

    :cond_d
    const/4 v14, 0x0

    .line 435
    .end local v16    # "isChainPacked":Z
    .restart local v14    # "isChainPacked":Z
    :goto_a
    const/4 v15, 0x0

    .line 436
    .local v15, "totalSize":F
    const/16 v16, 0x0

    .line 437
    .local v16, "totalMargins":F
    const/16 v17, 0x0

    move-object/from16 v36, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v36

    move-object/from16 v37, v4

    move-object v4, v3

    move/from16 v3, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move-object v15, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move-object/from16 v5, v37

    .line 439
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "numVisibleWidgets":I
    .local v4, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v5, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "done":Z
    .local v7, "numMatchConstraints":I
    .local v8, "totalWeights":F
    .local v9, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v15, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v16, "totalSize":F
    .local v17, "totalMargins":F
    .local v20, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_b
    if-nez v6, :cond_1f

    .line 443
    move/from16 v21, v6

    .end local v6    # "done":Z
    .local v21, "done":Z
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/16 v22, 0x0

    aput-object v22, v6, p2

    .line 444
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v10, 0x8

    if-eq v6, v10, :cond_12

    .line 445
    if-eqz v5, :cond_e

    .line 446
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v2, v6, p2

    .line 448
    :cond_e
    if-nez v4, :cond_f

    .line 449
    move-object v4, v2

    .line 451
    :cond_f
    move-object v5, v2

    .line 452
    add-int/lit8 v3, v3, 0x1

    .line 453
    if-nez p2, :cond_10

    .line 454
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float v16, v16, v6

    goto :goto_c

    .line 456
    :cond_10
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v16, v16, v6

    .line 458
    :goto_c
    if-eq v2, v4, :cond_11

    .line 459
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    int-to-float v6, v6

    add-float v16, v16, v6

    .line 461
    :cond_11
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    int-to-float v6, v6

    add-float v17, v17, v6

    .line 462
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v23, p3, 0x1

    aget-object v6, v6, v23

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    int-to-float v6, v6

    add-float v17, v17, v6

    .line 465
    :cond_12
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    .line 468
    .local v6, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v22, v10, p2

    .line 469
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    move/from16 v22, v3

    const/16 v3, 0x8

    .end local v3    # "numVisibleWidgets":I
    .local v22, "numVisibleWidgets":I
    if-eq v10, v3, :cond_1a

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, p2

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v10, :cond_1a

    .line 471
    add-int/lit8 v7, v7, 0x1

    .line 473
    if-nez p2, :cond_15

    .line 474
    iget v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v3, :cond_13

    .line 475
    const/4 v3, 0x0

    return v3

    .line 476
    :cond_13
    iget v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v3, :cond_14

    iget v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v3, :cond_17

    .line 477
    :cond_14
    const/4 v3, 0x0

    return v3

    .line 480
    :cond_15
    const/4 v3, 0x0

    iget v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v10, :cond_16

    .line 481
    return v3

    .line 482
    :cond_16
    iget v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v3, :cond_19

    iget v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v3, :cond_17

    goto :goto_e

    .line 486
    :cond_17
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v3, v3, p2

    add-float/2addr v8, v3

    .line 487
    if-nez v9, :cond_18

    .line 488
    move-object v9, v2

    goto :goto_d

    .line 490
    :cond_18
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v2, v3, p2

    .line 492
    :goto_d
    move-object v3, v2

    move-object v15, v3

    .end local v15    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_f

    .line 483
    .end local v3    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v15    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_19
    :goto_e
    const/4 v3, 0x0

    return v3

    .line 496
    :cond_1a
    :goto_f
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v10, p3, 0x1

    aget-object v3, v3, v10

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 497
    .local v3, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v3, :cond_1d

    .line 498
    iget-object v10, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 499
    .end local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v10, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v23, v3

    .end local v3    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v23, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1c

    iget-object v3, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v3, v2, :cond_1b

    goto :goto_10

    :cond_1b
    move-object/from16 v20, v10

    goto :goto_11

    .line 500
    :cond_1c
    :goto_10
    const/4 v3, 0x0

    move-object/from16 v20, v3

    .end local v10    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_11

    .line 503
    .end local v23    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v3, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1d
    move-object/from16 v23, v3

    .end local v3    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v23    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    move-object/from16 v20, v3

    .line 505
    :goto_11
    if-eqz v20, :cond_1e

    .line 506
    move-object/from16 v2, v20

    move/from16 v6, v21

    goto :goto_12

    .line 508
    :cond_1e
    const/4 v3, 0x1

    move v6, v3

    .line 510
    .end local v21    # "done":Z
    .end local v23    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v6, "done":Z
    :goto_12
    move-object/from16 v10, p0

    move/from16 v3, v22

    goto/16 :goto_b

    .line 511
    .end local v22    # "numVisibleWidgets":I
    .local v3, "numVisibleWidgets":I
    :cond_1f
    move/from16 v21, v6

    .end local v6    # "done":Z
    .restart local v21    # "done":Z
    move-object v6, v2

    .line 513
    .local v6, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v10, p4

    move-object/from16 v22, v9

    .end local v9    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v22, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    .line 514
    .local v9, "firstNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v10, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v23, p3, 0x1

    aget-object v10, v10, v23

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    .line 516
    .local v10, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    move-object/from16 v23, v6

    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v23, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v6, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v6, :cond_46

    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-nez v6, :cond_20

    move-object/from16 v30, v2

    move/from16 v34, v7

    move/from16 v35, v8

    move-object/from16 v26, v10

    move/from16 v24, v11

    move/from16 v32, v12

    move-object/from16 v25, v13

    goto/16 :goto_20

    .line 522
    :cond_20
    iget-object v6, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v24, v11

    const/4 v11, 0x1

    .end local v11    # "isWrapContent":Z
    .local v24, "isWrapContent":Z
    if-eq v6, v11, :cond_21

    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-eq v6, v11, :cond_21

    .line 525
    const/4 v6, 0x0

    return v6

    .line 522
    :cond_21
    const/4 v6, 0x0

    .line 528
    if-lez v7, :cond_22

    if-eq v7, v3, :cond_22

    .line 530
    return v6

    .line 533
    :cond_22
    const/4 v6, 0x0

    .line 534
    .local v6, "extraMargin":F
    if-nez v14, :cond_23

    if-nez v12, :cond_23

    if-eqz v1, :cond_25

    .line 535
    :cond_23
    if-eqz v4, :cond_24

    .line 536
    iget-object v11, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    int-to-float v6, v11

    .line 538
    :cond_24
    if-eqz v5, :cond_25

    .line 539
    iget-object v11, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v25, p3, 0x1

    aget-object v11, v11, v25

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v11

    .line 543
    :cond_25
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v11, v11, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 544
    .local v11, "firstOffset":F
    move-object/from16 v25, v13

    .end local v13    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v25, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v13, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v13, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 545
    .local v13, "lastOffset":F
    const/16 v26, 0x0

    .line 546
    .local v26, "distance":F
    cmpg-float v27, v11, v13

    if-gez v27, :cond_26

    .line 547
    sub-float v27, v13, v11

    sub-float v27, v27, v16

    .end local v26    # "distance":F
    .local v27, "distance":F
    goto :goto_13

    .line 549
    .end local v27    # "distance":F
    .restart local v26    # "distance":F
    :cond_26
    sub-float v27, v11, v13

    sub-float v27, v27, v16

    .line 552
    .end local v26    # "distance":F
    .restart local v27    # "distance":F
    :goto_13
    const-wide/16 v28, 0x1

    if-lez v7, :cond_31

    if-ne v7, v3, :cond_31

    .line 553
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v26

    if-eqz v26, :cond_27

    move-object/from16 v26, v10

    .end local v10    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v26, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, p2

    move-object/from16 v30, v2

    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v2, :cond_28

    .line 554
    const/4 v2, 0x0

    return v2

    .line 553
    .end local v26    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v30    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    :cond_27
    move-object/from16 v30, v2

    move-object/from16 v26, v10

    .line 556
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v10    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v26    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v30    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_28
    add-float v27, v27, v16

    .line 557
    sub-float v27, v27, v17

    .line 558
    move-object v2, v4

    .line 559
    .end local v30    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move v10, v11

    .line 560
    .local v10, "position":F
    if-eqz v12, :cond_29

    .line 561
    sub-float v18, v17, v6

    sub-float v27, v27, v18

    .line 563
    :cond_29
    if-eqz v12, :cond_2b

    .line 564
    move/from16 v31, v13

    .end local v13    # "lastOffset":F
    .local v31, "lastOffset":F
    iget-object v13, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v13, v13, v18

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v10, v13

    .line 565
    iget-object v13, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v13, v13, p2

    .line 566
    .end local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v13, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v13, :cond_2a

    .line 567
    move-object/from16 v18, v2

    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v18, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v10, v2

    move-object/from16 v2, v18

    goto :goto_14

    .line 566
    .end local v18    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2a
    move-object/from16 v18, v2

    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v18    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_14

    .line 563
    .end local v18    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v31    # "lastOffset":F
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v13, "lastOffset":F
    .restart local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2b
    move-object/from16 v18, v2

    move/from16 v31, v13

    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "lastOffset":F
    .restart local v18    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v31    # "lastOffset":F
    move-object/from16 v13, v20

    .line 570
    .end local v18    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v13, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_14
    if-eqz v2, :cond_30

    .line 571
    sget-object v18, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v18, :cond_2c

    .line 572
    move-object/from16 v18, v13

    .end local v13    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v18, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    sget-object v13, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v33, v11

    move/from16 v32, v12

    .end local v11    # "firstOffset":F
    .end local v12    # "isChainSpread":Z
    .local v32, "isChainSpread":Z
    .local v33, "firstOffset":F
    iget-wide v11, v13, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v11, v11, v28

    iput-wide v11, v13, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 573
    sget-object v11, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v12, v11, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v12, v12, v28

    iput-wide v12, v11, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 574
    sget-object v11, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v12, v11, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v12, v12, v28

    iput-wide v12, v11, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    goto :goto_15

    .line 571
    .end local v18    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v32    # "isChainSpread":Z
    .end local v33    # "firstOffset":F
    .restart local v11    # "firstOffset":F
    .restart local v12    # "isChainSpread":Z
    .restart local v13    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2c
    move/from16 v33, v11

    move/from16 v32, v12

    move-object/from16 v18, v13

    .line 576
    .end local v11    # "firstOffset":F
    .end local v12    # "isChainSpread":Z
    .end local v13    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v18    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "isChainSpread":Z
    .restart local v33    # "firstOffset":F
    :goto_15
    iget-object v11, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v13, v11, p2

    .line 577
    .end local v18    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v13    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v13, :cond_2e

    if-ne v2, v5, :cond_2d

    goto :goto_16

    :cond_2d
    move/from16 v34, v7

    move/from16 v35, v8

    goto :goto_17

    .line 578
    :cond_2e
    :goto_16
    int-to-float v11, v7

    div-float v11, v27, v11

    .line 579
    .local v11, "dimension":F
    const/4 v12, 0x0

    cmpl-float v12, v8, v12

    if-lez v12, :cond_2f

    .line 580
    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v12, v12, p2

    mul-float v12, v12, v27

    div-float v11, v12, v8

    .line 582
    :cond_2f
    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    .line 583
    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v12

    move/from16 v34, v7

    .end local v7    # "numMatchConstraints":I
    .local v34, "numMatchConstraints":I
    iget-object v7, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v12, v7, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 585
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v7, v7, v12

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v12, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move/from16 v35, v8

    .end local v8    # "totalWeights":F
    .local v35, "totalWeights":F
    add-float v8, v10, v11

    invoke-virtual {v7, v12, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 587
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 588
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 589
    add-float/2addr v10, v11

    .line 590
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v10, v7

    .line 592
    .end local v11    # "dimension":F
    :goto_17
    move-object v2, v13

    move/from16 v12, v32

    move/from16 v11, v33

    move/from16 v7, v34

    move/from16 v8, v35

    goto/16 :goto_14

    .line 594
    .end local v32    # "isChainSpread":Z
    .end local v33    # "firstOffset":F
    .end local v34    # "numMatchConstraints":I
    .end local v35    # "totalWeights":F
    .restart local v7    # "numMatchConstraints":I
    .restart local v8    # "totalWeights":F
    .local v11, "firstOffset":F
    .restart local v12    # "isChainSpread":Z
    :cond_30
    move/from16 v34, v7

    .end local v7    # "numMatchConstraints":I
    .restart local v34    # "numMatchConstraints":I
    const/4 v7, 0x1

    return v7

    .line 552
    .end local v26    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v31    # "lastOffset":F
    .end local v34    # "numMatchConstraints":I
    .restart local v7    # "numMatchConstraints":I
    .local v10, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v13, "lastOffset":F
    .restart local v20    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_31
    move-object/from16 v30, v2

    move/from16 v34, v7

    move/from16 v35, v8

    move-object/from16 v26, v10

    move/from16 v33, v11

    move/from16 v32, v12

    move/from16 v31, v13

    .line 597
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "numMatchConstraints":I
    .end local v8    # "totalWeights":F
    .end local v10    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v11    # "firstOffset":F
    .end local v12    # "isChainSpread":Z
    .end local v13    # "lastOffset":F
    .restart local v26    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v30    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v31    # "lastOffset":F
    .restart local v32    # "isChainSpread":Z
    .restart local v33    # "firstOffset":F
    .restart local v34    # "numMatchConstraints":I
    .restart local v35    # "totalWeights":F
    cmpg-float v2, v27, v16

    if-gez v2, :cond_32

    .line 598
    const/4 v2, 0x0

    return v2

    .line 601
    :cond_32
    if-eqz v14, :cond_37

    .line 602
    sub-float v27, v27, v6

    .line 604
    move-object v2, v4

    .line 605
    .end local v30    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v7

    mul-float v7, v7, v27

    add-float v11, v33, v7

    move/from16 v27, v11

    .line 606
    :goto_18
    if-eqz v2, :cond_45

    .line 607
    sget-object v7, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v7, :cond_33

    .line 608
    sget-object v7, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v10, v7, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v10, v10, v28

    iput-wide v10, v7, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 609
    sget-object v7, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v10, v7, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v10, v10, v28

    iput-wide v10, v7, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 610
    sget-object v7, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v10, v7, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v10, v10, v28

    iput-wide v10, v7, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 612
    :cond_33
    iget-object v7, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v20, v7, p2

    .line 613
    if-nez v20, :cond_34

    if-ne v2, v5, :cond_36

    .line 614
    :cond_34
    const/4 v7, 0x0

    .line 615
    .local v7, "dimension":F
    if-nez p2, :cond_35

    .line 616
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    int-to-float v7, v8

    goto :goto_19

    .line 618
    :cond_35
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    int-to-float v7, v8

    .line 620
    :goto_19
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float v8, v27, v8

    .line 621
    .end local v27    # "distance":F
    .local v8, "distance":F
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v10, v11, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 623
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v11, p3, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v12, v8, v7

    invoke-virtual {v10, v11, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 625
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 626
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v11, p3, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 627
    add-float/2addr v8, v7

    .line 628
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v11, p3, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float v27, v8, v10

    .line 630
    .end local v7    # "dimension":F
    .end local v8    # "distance":F
    .restart local v27    # "distance":F
    :cond_36
    move-object/from16 v2, v20

    goto/16 :goto_18

    .line 632
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v30    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_37
    if-nez v32, :cond_39

    if-eqz v1, :cond_38

    goto :goto_1a

    :cond_38
    move-object/from16 v2, v30

    goto/16 :goto_1f

    .line 633
    :cond_39
    :goto_1a
    if-eqz v32, :cond_3a

    .line 634
    sub-float v27, v27, v6

    goto :goto_1b

    .line 635
    :cond_3a
    if-eqz v1, :cond_3b

    .line 636
    sub-float v27, v27, v6

    .line 638
    :cond_3b
    :goto_1b
    move-object v2, v4

    .line 639
    .end local v30    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v7, v3, 0x1

    int-to-float v7, v7

    div-float v7, v27, v7

    .line 640
    .local v7, "gap":F
    if-eqz v1, :cond_3d

    .line 641
    const/4 v8, 0x1

    if-le v3, v8, :cond_3c

    .line 642
    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    div-float v7, v27, v8

    goto :goto_1c

    .line 644
    :cond_3c
    const/high16 v8, 0x40000000    # 2.0f

    div-float v7, v27, v8

    .line 647
    :cond_3d
    :goto_1c
    add-float v11, v33, v7

    .line 648
    .end local v27    # "distance":F
    .local v11, "distance":F
    if-eqz v1, :cond_3e

    const/4 v8, 0x1

    if-le v3, v8, :cond_3e

    .line 649
    iget-object v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float v11, v33, v8

    .line 651
    :cond_3e
    if-eqz v32, :cond_3f

    .line 652
    if-eqz v4, :cond_3f

    .line 653
    iget-object v8, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v11, v8

    .line 656
    :cond_3f
    :goto_1d
    if-eqz v2, :cond_44

    .line 657
    sget-object v8, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v8, :cond_40

    .line 658
    sget-object v8, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v12, v8, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v12, v12, v28

    iput-wide v12, v8, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 659
    sget-object v8, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v12, v8, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v12, v12, v28

    iput-wide v12, v8, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 660
    sget-object v8, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v12, v8, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v12, v12, v28

    iput-wide v12, v8, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 662
    :cond_40
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v20, v8, p2

    .line 663
    if-nez v20, :cond_41

    if-ne v2, v5, :cond_43

    .line 664
    :cond_41
    const/4 v8, 0x0

    .line 665
    .local v8, "dimension":F
    if-nez p2, :cond_42

    .line 666
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    int-to-float v8, v10

    goto :goto_1e

    .line 668
    :cond_42
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    int-to-float v8, v10

    .line 670
    :goto_1e
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget-object v12, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v10, v12, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 672
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget-object v12, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v13, v11, v8

    invoke-virtual {v10, v12, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 674
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 675
    iget-object v10, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 676
    add-float v10, v8, v7

    add-float/2addr v11, v10

    .line 678
    .end local v8    # "dimension":F
    :cond_43
    move-object/from16 v2, v20

    goto :goto_1d

    .line 656
    :cond_44
    move/from16 v27, v11

    .line 682
    .end local v7    # "gap":F
    .end local v11    # "distance":F
    .restart local v27    # "distance":F
    :cond_45
    :goto_1f
    const/4 v7, 0x1

    return v7

    .line 516
    .end local v6    # "extraMargin":F
    .end local v24    # "isWrapContent":Z
    .end local v25    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v26    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v27    # "distance":F
    .end local v31    # "lastOffset":F
    .end local v32    # "isChainSpread":Z
    .end local v33    # "firstOffset":F
    .end local v34    # "numMatchConstraints":I
    .end local v35    # "totalWeights":F
    .local v7, "numMatchConstraints":I
    .local v8, "totalWeights":F
    .restart local v10    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v11, "isWrapContent":Z
    .restart local v12    # "isChainSpread":Z
    .local v13, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_46
    move-object/from16 v30, v2

    move/from16 v34, v7

    move/from16 v35, v8

    move-object/from16 v26, v10

    move/from16 v24, v11

    move/from16 v32, v12

    move-object/from16 v25, v13

    .line 518
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "numMatchConstraints":I
    .end local v8    # "totalWeights":F
    .end local v10    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v11    # "isWrapContent":Z
    .end local v12    # "isChainSpread":Z
    .end local v13    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "isWrapContent":Z
    .restart local v25    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v26    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v30    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "isChainSpread":Z
    .restart local v34    # "numMatchConstraints":I
    .restart local v35    # "totalWeights":F
    :goto_20
    const/4 v2, 0x0

    return v2
.end method

.method static checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 5
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 60
    .local v0, "left":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 67
    .local v1, "right":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 68
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 69
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 70
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 71
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 75
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_3

    .line 78
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 79
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 86
    .local v1, "bottom":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 87
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 88
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 89
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 90
    iget v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 91
    :cond_1
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 92
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 94
    :cond_2
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 96
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 98
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    :cond_3
    return-void
.end method

.method private static optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .locals 4
    .param p0, "constraintWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .line 110
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 111
    return v2

    .line 113
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    aget-object v0, v0, v3

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 116
    return v2

    .line 121
    :cond_2
    if-nez p1, :cond_5

    .line 122
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v0, :cond_3

    .line 123
    return v2

    .line 125
    :cond_3
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_4

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v0, :cond_7

    .line 126
    :cond_4
    return v2

    .line 129
    :cond_5
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v0, :cond_6

    .line 130
    return v2

    .line 132
    :cond_6
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_8

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v0, :cond_7

    goto :goto_1

    .line 136
    :cond_7
    return v3

    .line 133
    :cond_8
    :goto_1
    return v2
.end method
