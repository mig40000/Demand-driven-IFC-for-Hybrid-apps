.class Landroid/support/constraint/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 6
    .param p0, "constraintWidgetContainer"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 46
    .local v1, "chainsSize":I
    const/4 v2, 0x0

    .line 47
    .local v2, "chainsArray":[Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez p2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 50
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x2

    .line 53
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 54
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 56
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 57
    aget-object v4, v2, v3

    .line 58
    .local v4, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    invoke-static {p0, p1, p2, v0, v4}, Landroid/support/constraint/solver/widgets/Optimizer;->applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 60
    invoke-static {p0, p1, p2, v0, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_2

    .line 63
    :cond_1
    invoke-static {p0, p1, p2, v0, v4}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 56
    .end local v4    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 43
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "first"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v1, p4

    .line 81
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 82
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 83
    .local v3, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    .line 84
    .local v4, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v5, 0x0

    .line 85
    .local v5, "done":Z
    const/4 v6, 0x0

    .line 86
    .local v6, "numMatchConstraints":I
    const/4 v7, 0x0

    .line 87
    .local v7, "totalWeights":F
    const/4 v8, 0x0

    .line 88
    .local v8, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v9, 0x0

    .line 90
    .local v9, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v12, v12, p2

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 91
    .local v12, "isWrapContent":Z
    :goto_0
    const/4 v13, 0x0

    .line 92
    .local v13, "isChainSpread":Z
    const/16 v16, 0x0

    .line 93
    .local v16, "isChainSpreadInside":Z
    const/16 v17, 0x0

    .line 95
    .local v17, "isChainPacked":Z
    move-object/from16 v18, p4

    .line 96
    .local v18, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez p2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 98
    :goto_1
    if-nez v5, :cond_5

    .line 100
    iget-object v14, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v14, v14, v20

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 101
    .local v14, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v14, :cond_2

    .line 102
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 103
    iget-object v15, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, p3

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v15, :cond_1

    iget-object v15, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, p3

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v15, v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v15, v1, :cond_3

    .line 105
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 108
    :cond_2
    const/4 v2, 0x0

    .line 110
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 111
    move-object v1, v2

    goto :goto_3

    .line 113
    :cond_4
    const/4 v5, 0x1

    .line 115
    .end local v14    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_3
    goto :goto_1

    .line 116
    :cond_5
    move-object/from16 v18, v1

    .line 117
    move-object/from16 v1, p4

    .line 118
    const/4 v2, 0x0

    .line 119
    const/4 v5, 0x0

    move-object/from16 v14, v18

    goto :goto_4

    .line 122
    :cond_6
    move-object/from16 v14, v18

    .end local v18    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_4
    if-nez p2, :cond_a

    .line 123
    iget v15, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v15, :cond_7

    const/4 v15, 0x1

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    :goto_5
    move v13, v15

    .line 124
    iget v15, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move-object/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v21, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-ne v15, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 125
    .end local v16    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_6
    iget v15, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v16, v1

    const/4 v1, 0x2

    .end local v1    # "isChainSpreadInside":Z
    .restart local v16    # "isChainSpreadInside":Z
    if-ne v15, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :goto_7
    move-object v15, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v29, v7

    move-object/from16 v30, v8

    move-object v8, v9

    move/from16 v31, v13

    move v13, v1

    move-object v9, v4

    move-object/from16 v1, v21

    .end local v17    # "isChainPacked":Z
    .local v1, "isChainPacked":Z
    goto :goto_b

    .line 127
    .end local v21    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v17    # "isChainPacked":Z
    :cond_a
    move-object/from16 v21, v1

    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v21    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    move v13, v1

    .line 128
    iget v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v15, 0x1

    if-ne v1, v15, :cond_c

    const/4 v1, 0x1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    .line 129
    .end local v16    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_9
    iget v15, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v16, v1

    const/4 v1, 0x2

    .end local v1    # "isChainSpreadInside":Z
    .restart local v16    # "isChainSpreadInside":Z
    if-ne v15, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_a
    move-object v15, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v29, v7

    move-object/from16 v30, v8

    move-object v8, v9

    move/from16 v31, v13

    move v13, v1

    move-object v9, v4

    move-object/from16 v1, v21

    .line 137
    .end local v3    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v4    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v5    # "done":Z
    .end local v6    # "numMatchConstraints":I
    .end local v7    # "totalWeights":F
    .end local v21    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v13, "isChainPacked":Z
    .local v15, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v17, "done":Z
    .local v18, "numMatchConstraints":I
    .local v29, "totalWeights":F
    .local v30, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v31, "isChainSpread":Z
    :goto_b
    const/4 v7, 0x5

    const/16 v32, 0x0

    if-nez v17, :cond_1c

    .line 141
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v32, v4, p2

    .line 142
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_10

    .line 143
    if-eqz v9, :cond_e

    .line 144
    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v1, v4, p2

    .line 146
    :cond_e
    if-nez v15, :cond_f

    .line 147
    move-object v15, v1

    .line 149
    :cond_f
    move-object v4, v1

    move-object v9, v4

    .line 152
    :cond_10
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    .line 153
    .local v4, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v6, 0x1

    .line 154
    .local v6, "strength":I
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    .line 156
    .local v21, "margin":I
    iget-object v3, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_11

    if-eq v1, v11, :cond_11

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_11

    .line 157
    iget-object v3, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int v21, v21, v3

    move/from16 v3, v21

    goto :goto_c

    .line 160
    :cond_11
    move/from16 v3, v21

    .end local v21    # "margin":I
    .local v3, "margin":I
    :goto_c
    if-eqz v13, :cond_12

    if-eq v1, v11, :cond_12

    if-eq v1, v15, :cond_12

    .line 161
    const/4 v6, 0x6

    .line 164
    :cond_12
    if-ne v1, v15, :cond_13

    .line 165
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v23, v2

    .end local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v23, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v10, v5, v2, v3, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_d

    .line 168
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_13
    move-object/from16 v23, v2

    .end local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v7, 0x6

    invoke-virtual {v10, v2, v5, v3, v7}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 171
    :goto_d
    iget-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v10, v2, v5, v3, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 174
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v32, v2, p2

    .line 175
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_16

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_16

    .line 177
    add-int/lit8 v18, v18, 0x1

    .line 178
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v2, v2, p2

    add-float v29, v29, v2

    .line 179
    if-nez v30, :cond_14

    .line 180
    move-object/from16 v30, v1

    goto :goto_e

    .line 182
    :cond_14
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v1, v2, p2

    .line 184
    :goto_e
    move-object v2, v1

    .line 185
    .end local v8    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v12, :cond_15

    .line 186
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v5, v5, v7

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v21, v2

    const/4 v2, 0x0

    const/4 v8, 0x6

    .end local v2    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v21, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v5, v7, v2, v8}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_f

    .line 185
    .end local v21    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_15
    move-object/from16 v21, v2

    .line 191
    .end local v2    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v21    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_f
    move-object/from16 v8, v21

    .end local v21    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_16
    if-eqz v12, :cond_17

    .line 192
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v19, v3

    const/4 v3, 0x6

    const/4 v7, 0x0

    .end local v3    # "margin":I
    .local v19, "margin":I
    invoke-virtual {v10, v2, v5, v7, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_10

    .line 191
    .end local v19    # "margin":I
    .restart local v3    # "margin":I
    :cond_17
    move/from16 v19, v3

    const/4 v7, 0x0

    .line 198
    .end local v3    # "margin":I
    .restart local v19    # "margin":I
    :goto_10
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 199
    .local v2, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_19

    .line 200
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 201
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_18

    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v5, v1, :cond_1a

    .line 202
    :cond_18
    const/4 v3, 0x0

    goto :goto_11

    .line 205
    .end local v3    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_19
    const/4 v3, 0x0

    .line 207
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1a
    :goto_11
    if-eqz v3, :cond_1b

    .line 208
    move-object v1, v3

    goto :goto_12

    .line 210
    :cond_1b
    const/4 v5, 0x1

    move/from16 v17, v5

    .line 212
    .end local v2    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v4    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v6    # "strength":I
    .end local v19    # "margin":I
    :goto_12
    move-object v2, v3

    goto/16 :goto_b

    .line 213
    .end local v3    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1c
    move-object/from16 v23, v2

    const/4 v2, 0x0

    .end local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v6, v1

    .line 216
    .local v6, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v9, :cond_1d

    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1d

    .line 217
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    .line 218
    .local v3, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v5, v5, v19

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 219
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    .line 218
    invoke-virtual {v10, v4, v5, v2, v7}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 224
    .end local v3    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1d
    if-eqz v12, :cond_1e

    .line 225
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    .line 227
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 225
    const/4 v5, 0x6

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 231
    :cond_1e
    if-lez v18, :cond_26

    .line 232
    move-object/from16 v1, v30

    move-object/from16 v2, v23

    .line 233
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_13
    if-eqz v1, :cond_25

    .line 234
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v2, v3, p2

    .line 235
    if-eqz v2, :cond_24

    .line 236
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v3, v3, p2

    .line 237
    .local v3, "currentWeight":F
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v4, v4, p2

    .line 238
    .local v4, "nextWeight":F
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 239
    .local v5, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v21, p3, 0x1

    aget-object v7, v7, v21

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 240
    .local v7, "end":Landroid/support/constraint/solver/SolverVariable;
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 241
    .local v0, "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v34, v8

    .end local v8    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v34, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v21, p3, 0x1

    aget-object v8, v8, v21

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 246
    .local v8, "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    if-nez p2, :cond_1f

    .line 247
    move/from16 v35, v12

    .end local v12    # "isWrapContent":Z
    .local v35, "isWrapContent":Z
    iget v12, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 248
    .local v12, "currentDimensionDefault":I
    move/from16 v21, v12

    .end local v12    # "currentDimensionDefault":I
    .local v21, "currentDimensionDefault":I
    iget v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move-object/from16 v36, v1

    move v1, v12

    move/from16 v12, v21

    .local v12, "nextDimensionDefault":I
    goto :goto_14

    .line 250
    .end local v21    # "currentDimensionDefault":I
    .end local v35    # "isWrapContent":Z
    .local v12, "isWrapContent":Z
    :cond_1f
    move/from16 v35, v12

    .end local v12    # "isWrapContent":Z
    .restart local v35    # "isWrapContent":Z
    iget v12, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 251
    .local v12, "currentDimensionDefault":I
    move-object/from16 v36, v1

    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v36, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v1, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 253
    .local v1, "nextDimensionDefault":I
    :goto_14
    move-object/from16 v37, v14

    .end local v14    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v37, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v14, 0x3

    if-eqz v12, :cond_20

    if-ne v12, v14, :cond_21

    :cond_20
    if-eqz v1, :cond_22

    if-ne v1, v14, :cond_21

    goto :goto_15

    :cond_21
    const/4 v14, 0x0

    goto :goto_16

    :cond_22
    :goto_15
    const/4 v14, 0x1

    .line 258
    .local v14, "applyEquality":Z
    :goto_16
    if-eqz v14, :cond_23

    .line 259
    move/from16 v38, v1

    .end local v1    # "nextDimensionDefault":I
    .local v38, "nextDimensionDefault":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v1

    .line 260
    .local v1, "row":Landroid/support/constraint/solver/ArrayRow;
    move-object/from16 v21, v1

    move/from16 v22, v3

    move/from16 v23, v29

    move/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v0

    move-object/from16 v28, v8

    invoke-virtual/range {v21 .. v28}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 262
    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_17

    .line 258
    .end local v38    # "nextDimensionDefault":I
    .local v1, "nextDimensionDefault":I
    :cond_23
    move/from16 v38, v1

    .end local v1    # "nextDimensionDefault":I
    .restart local v38    # "nextDimensionDefault":I
    goto :goto_17

    .line 235
    .end local v0    # "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "currentWeight":F
    .end local v4    # "nextWeight":F
    .end local v5    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v7    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v35    # "isWrapContent":Z
    .end local v36    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v38    # "nextDimensionDefault":I
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "isWrapContent":Z
    .local v14, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_24
    move-object/from16 v36, v1

    move-object/from16 v34, v8

    move/from16 v35, v12

    move-object/from16 v37, v14

    .line 266
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "isWrapContent":Z
    .end local v14    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "isWrapContent":Z
    .restart local v36    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_17
    move-object v1, v2

    move-object/from16 v0, p0

    move-object/from16 v8, v34

    move/from16 v12, v35

    move-object/from16 v14, v37

    const/4 v7, 0x5

    .end local v36    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto/16 :goto_13

    .line 233
    .end local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v35    # "isWrapContent":Z
    .end local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v12    # "isWrapContent":Z
    .restart local v14    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_25
    move-object/from16 v36, v1

    move-object/from16 v34, v8

    move/from16 v35, v12

    move-object/from16 v37, v14

    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "isWrapContent":Z
    .end local v14    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "isWrapContent":Z
    .restart local v36    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v23, v2

    goto :goto_18

    .line 231
    .end local v2    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v35    # "isWrapContent":Z
    .end local v36    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v12    # "isWrapContent":Z
    .restart local v14    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_26
    move-object/from16 v34, v8

    move/from16 v35, v12

    move-object/from16 v37, v14

    .end local v8    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "isWrapContent":Z
    .end local v14    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v35    # "isWrapContent":Z
    .restart local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v1

    .line 282
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v36    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_18
    if-eqz v15, :cond_2f

    if-eq v15, v9, :cond_28

    if-eqz v13, :cond_27

    goto :goto_19

    :cond_27
    move-object/from16 v39, v6

    move-object/from16 v24, v34

    move-object/from16 v25, v37

    goto/16 :goto_1f

    .line 283
    :cond_28
    :goto_19
    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 284
    .local v0, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 285
    .local v1, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_29

    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_1a

    :cond_29
    move-object/from16 v2, v32

    :goto_1a
    move-object v12, v2

    .line 286
    .local v12, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_2a

    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_1b

    :cond_2a
    move-object/from16 v2, v32

    :goto_1b
    move-object v14, v2

    .line 287
    .local v14, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    if-ne v15, v9, :cond_2b

    .line 288
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v2, p3

    .line 289
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v1, v2, v3

    move-object v8, v1

    goto :goto_1c

    .line 287
    :cond_2b
    move-object v8, v1

    .line 291
    .end local v1    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v8, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_1c
    if-eqz v12, :cond_2e

    if-eqz v14, :cond_2e

    .line 292
    const/high16 v1, 0x3f000000    # 0.5f

    .line 293
    .local v1, "bias":F
    if-nez p2, :cond_2c

    .line 294
    move-object/from16 v7, v37

    .end local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v7, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v19, v1

    goto :goto_1d

    .line 296
    .end local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2c
    move-object/from16 v7, v37

    .end local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v19, v1

    .line 298
    .end local v1    # "bias":F
    .local v19, "bias":F
    :goto_1d
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v20

    .line 299
    .local v20, "beginMargin":I
    if-nez v9, :cond_2d

    .line 301
    move-object v1, v6

    move-object v9, v1

    .line 303
    :cond_2d
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    .line 304
    .local v21, "endMargin":I
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v22, 0x5

    move-object/from16 v1, p1

    move-object v3, v12

    move/from16 v4, v20

    move-object/from16 v24, v5

    move/from16 v5, v19

    move-object/from16 v39, v6

    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v39, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v6, v14

    move-object/from16 v25, v7

    .end local v7    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v25, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v7, v24

    move-object/from16 v26, v8

    move-object/from16 v24, v34

    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v24, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v26, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v8, v21

    move-object/from16 v27, v9

    .end local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v27, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v22

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    move-object/from16 v9, v27

    goto :goto_1e

    .line 291
    .end local v19    # "bias":F
    .end local v20    # "beginMargin":I
    .end local v21    # "endMargin":I
    .end local v24    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v25    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v26    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v27    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v39    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2e
    move-object/from16 v39, v6

    move-object/from16 v26, v8

    move-object/from16 v24, v34

    move-object/from16 v25, v37

    .line 307
    .end local v0    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v12    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v25    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_1e
    move-object/from16 v19, v39

    goto/16 :goto_37

    .line 282
    .end local v24    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v25    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v39    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2f
    move-object/from16 v39, v6

    move-object/from16 v24, v34

    move-object/from16 v25, v37

    .line 307
    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v34    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v37    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v25    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_1f
    if-eqz v31, :cond_3f

    if-eqz v15, :cond_3f

    .line 309
    move-object v0, v15

    .line 310
    .end local v36    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v1, v15

    move-object v12, v0

    move-object v0, v1

    .line 311
    .local v0, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_20
    if-eqz v12, :cond_3e

    .line 312
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v14, v1, p2

    .line 313
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v14, :cond_31

    if-ne v12, v9, :cond_30

    goto :goto_21

    :cond_30
    move-object/from16 v37, v0

    move-object v0, v9

    move-object/from16 v40, v39

    goto/16 :goto_2b

    .line 314
    :cond_31
    :goto_21
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v1, p3

    .line 315
    .local v8, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 316
    .local v7, "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_32

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_22

    :cond_32
    move-object/from16 v1, v32

    .line 317
    .local v1, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_22
    if-eq v0, v12, :cond_33

    .line 318
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v1, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v19, v1

    goto :goto_24

    .line 319
    :cond_33
    if-ne v12, v15, :cond_35

    if-ne v0, v12, :cond_35

    .line 320
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_34

    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_23

    :cond_34
    move-object/from16 v2, v32

    :goto_23
    move-object v1, v2

    move-object/from16 v19, v1

    goto :goto_24

    .line 323
    :cond_35
    move-object/from16 v19, v1

    .end local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v19, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_24
    const/4 v1, 0x0

    .line 324
    .local v1, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 325
    .local v2, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/4 v3, 0x0

    .line 326
    .local v3, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 327
    .local v4, "beginMargin":I
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v6, p3, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    .line 329
    .local v5, "nextMargin":I
    if-eqz v14, :cond_37

    .line 330
    iget-object v6, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v6, p3

    .line 331
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 332
    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_36

    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_25

    :cond_36
    move-object/from16 v6, v32

    :goto_25
    move-object v3, v6

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v6, v39

    goto :goto_26

    .line 334
    :cond_37
    move-object/from16 v20, v1

    move-object/from16 v6, v39

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v39    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v20, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v21, p3, 0x1

    aget-object v1, v1, v21

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 335
    .end local v20    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_38

    .line 336
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 338
    :cond_38
    move-object/from16 v20, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v20    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v21, p3, 0x1

    aget-object v1, v1, v21

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .line 341
    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v21, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v22, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_26
    if-eqz v20, :cond_39

    .line 342
    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v5, v1

    move/from16 v23, v5

    goto :goto_27

    .line 341
    :cond_39
    move/from16 v23, v5

    .line 344
    .end local v5    # "nextMargin":I
    .local v23, "nextMargin":I
    :goto_27
    if-eqz v0, :cond_3a

    .line 345
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v4, v1

    move/from16 v26, v4

    goto :goto_28

    .line 344
    :cond_3a
    move/from16 v26, v4

    .line 347
    .end local v4    # "beginMargin":I
    .local v26, "beginMargin":I
    :goto_28
    if-eqz v7, :cond_3d

    if-eqz v19, :cond_3d

    if-eqz v21, :cond_3d

    if-eqz v22, :cond_3d

    .line 348
    move/from16 v1, v26

    .line 349
    .local v1, "margin1":I
    if-ne v12, v15, :cond_3b

    .line 350
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v27, v1

    goto :goto_29

    .line 349
    :cond_3b
    move/from16 v27, v1

    .line 352
    .end local v1    # "margin1":I
    .local v27, "margin1":I
    :goto_29
    move/from16 v1, v23

    .line 353
    .local v1, "margin2":I
    if-ne v12, v9, :cond_3c

    .line 354
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v28, v1

    goto :goto_2a

    .line 353
    :cond_3c
    move/from16 v28, v1

    .line 356
    .end local v1    # "margin2":I
    .local v28, "margin2":I
    :goto_2a
    const/high16 v5, 0x3f000000    # 0.5f

    const/16 v33, 0x4

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v3, v19

    move/from16 v4, v27

    move-object/from16 v40, v6

    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v40, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v6, v21

    move-object/from16 v34, v7

    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v34, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v7, v22

    move-object/from16 v36, v8

    .end local v8    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v36, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v8, v28

    move-object/from16 v37, v0

    move-object v0, v9

    .end local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v37, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v33

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_2b

    .line 347
    .end local v27    # "margin1":I
    .end local v28    # "margin2":I
    .end local v34    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v36    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v37    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v40    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v8    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3d
    move-object/from16 v37, v0

    move-object/from16 v40, v6

    move-object/from16 v34, v7

    move-object/from16 v36, v8

    move-object v0, v9

    .line 361
    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v19    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v20    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v21    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v23    # "nextMargin":I
    .end local v26    # "beginMargin":I
    .local v0, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v40    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2b
    move-object v1, v12

    .line 362
    .end local v37    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v12, v14

    move-object v9, v0

    move-object v0, v1

    move-object/from16 v23, v14

    move-object/from16 v39, v40

    goto/16 :goto_20

    .line 311
    .end local v1    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v40    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v23, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3e
    move-object/from16 v37, v0

    move-object v0, v9

    move-object/from16 v40, v39

    .line 364
    .end local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v39    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v0, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v40    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v12

    move-object/from16 v19, v40

    goto/16 :goto_37

    .line 307
    .end local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v40    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v36, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3f
    move-object v0, v9

    move-object/from16 v40, v39

    .line 364
    .end local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v39    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v40    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v16, :cond_4e

    if-eqz v15, :cond_4e

    .line 366
    move-object v1, v15

    .line 367
    .end local v36    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v2, v15

    move-object v14, v1

    move-object v12, v2

    .line 368
    .end local v1    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2c
    if-eqz v14, :cond_49

    .line 369
    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    .line 370
    .end local v23    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eq v14, v15, :cond_48

    if-eq v14, v0, :cond_48

    if-eqz v1, :cond_48

    .line 371
    if-ne v1, v0, :cond_40

    .line 372
    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_2d

    .line 371
    :cond_40
    move-object v9, v1

    .line 374
    .end local v1    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_2d
    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v1, p3

    .line 375
    .restart local v8    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 376
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_41

    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_2e

    :cond_41
    move-object/from16 v1, v32

    .line 377
    .local v1, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_2e
    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 378
    .end local v1    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v6, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    const/4 v1, 0x0

    .line 379
    .local v1, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 380
    .restart local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/4 v3, 0x0

    .line 381
    .restart local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 382
    .restart local v4    # "beginMargin":I
    iget-object v5, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v5, v5, v19

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    .line 384
    .restart local v5    # "nextMargin":I
    if-eqz v9, :cond_43

    .line 385
    move-object/from16 v19, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v19, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 386
    .end local v19    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 387
    move-object/from16 v19, v2

    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v19, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_42

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_2f

    :cond_42
    move-object/from16 v2, v32

    :goto_2f
    move-object/from16 v21, v2

    move-object/from16 v20, v19

    move-object/from16 v19, v1

    .end local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v2, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    goto :goto_30

    .line 389
    .end local v19    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v2, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_43
    move-object/from16 v19, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v19, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v1, v1, v20

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 390
    .end local v19    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_44

    .line 391
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 393
    :cond_44
    move-object/from16 v19, v1

    .end local v1    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v19    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v1, v1, v20

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    .line 396
    .end local v2    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v20, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .local v21, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_30
    if-eqz v19, :cond_45

    .line 397
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v5, v1

    move/from16 v22, v5

    goto :goto_31

    .line 396
    :cond_45
    move/from16 v22, v5

    .line 399
    .end local v5    # "nextMargin":I
    .local v22, "nextMargin":I
    :goto_31
    if-eqz v12, :cond_46

    .line 400
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v4, v1

    move/from16 v23, v4

    goto :goto_32

    .line 399
    :cond_46
    move/from16 v23, v4

    .line 402
    .end local v4    # "beginMargin":I
    .local v23, "beginMargin":I
    :goto_32
    if-eqz v7, :cond_47

    if-eqz v6, :cond_47

    if-eqz v20, :cond_47

    if-eqz v21, :cond_47

    .line 403
    const/high16 v5, 0x3f000000    # 0.5f

    const/16 v26, 0x4

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v6

    move/from16 v4, v23

    move-object/from16 v27, v6

    .end local v6    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .local v27, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v6, v20

    move-object/from16 v28, v7

    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .local v28, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v7, v21

    move-object/from16 v33, v8

    .end local v8    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v33, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v8, v22

    move-object/from16 v34, v9

    .end local v9    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v34, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v26

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_33

    .line 402
    .end local v27    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v28    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v33    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v34    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v8    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_47
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    .line 408
    .end local v6    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v19    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v20    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v21    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v22    # "nextMargin":I
    .end local v23    # "beginMargin":I
    .restart local v34    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_33
    move-object/from16 v23, v34

    goto :goto_34

    .end local v34    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_48
    move-object/from16 v23, v1

    .end local v1    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v23, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_34
    move-object v12, v14

    .line 409
    move-object/from16 v14, v23

    goto/16 :goto_2c

    .line 411
    :cond_49
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v1, p3

    .line 412
    .local v9, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 413
    .local v8, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v7, v1, v2

    .line 414
    .local v7, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v40

    .end local v40    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 415
    .local v5, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v8, :cond_4c

    .line 416
    if-eq v15, v0, :cond_4a

    .line 417
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v41, v5

    move-object/from16 v19, v6

    move-object/from16 v42, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto :goto_35

    .line 418
    :cond_4a
    const/4 v4, 0x5

    if-eqz v5, :cond_4b

    .line 419
    iget-object v2, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    iget-object v1, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v21, v8

    .end local v8    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v21, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v8, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 420
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    const/16 v26, 0x5

    .line 419
    move-object/from16 v27, v1

    move-object/from16 v1, p1

    move/from16 v4, v19

    move-object/from16 v41, v5

    .end local v5    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v41, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v5, v20

    move-object/from16 v19, v6

    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v19, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v6, v27

    move-object/from16 v42, v7

    .end local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v42, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object v7, v8

    move-object/from16 v20, v21

    .end local v21    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v20, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v8, v22

    move-object/from16 v21, v9

    .end local v9    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v21, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v9, v26

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_35

    .line 418
    .end local v19    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v20    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v21    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v41    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v42    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v5    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v8    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_4b
    move-object/from16 v41, v5

    move-object/from16 v19, v6

    move-object/from16 v42, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .end local v5    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v19    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v20    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v21    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v41    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v42    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    goto :goto_35

    .line 415
    .end local v19    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v20    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v21    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v41    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v42    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v5    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v8    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_4c
    move-object/from16 v41, v5

    move-object/from16 v19, v6

    move-object/from16 v42, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 423
    .end local v5    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v6    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v19    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v20    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v21    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v41    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v42    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_35
    move-object/from16 v1, v41

    .end local v41    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v1, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_4d

    if-eq v15, v0, :cond_4d

    .line 424
    move-object/from16 v2, v42

    .end local v42    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v2, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x5

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_36

    .line 423
    .end local v2    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v42    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_4d
    move-object/from16 v2, v42

    .line 430
    .end local v1    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v12    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v20    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v21    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v42    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_36
    move-object v9, v0

    move-object/from16 v36, v14

    goto :goto_37

    .line 364
    .end local v14    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v19    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v36    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v40    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4e
    move-object/from16 v19, v40

    .line 430
    .end local v40    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v19    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v9, v0

    .end local v0    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v9, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_37
    if-nez v31, :cond_4f

    if-eqz v16, :cond_55

    :cond_4f
    if-eqz v15, :cond_55

    .line 431
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 432
    .local v0, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 433
    .local v1, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_50

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_38

    :cond_50
    move-object/from16 v2, v32

    :goto_38
    move-object v12, v2

    .line 434
    .local v12, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_51

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v32, v2

    :cond_51
    move-object/from16 v14, v32

    .line 435
    .local v14, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    if-ne v15, v9, :cond_52

    .line 436
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v2, p3

    .line 437
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v1, v2, v3

    move-object v8, v1

    goto :goto_39

    .line 435
    :cond_52
    move-object v8, v1

    .line 439
    .end local v1    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v8, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_39
    if-eqz v12, :cond_54

    if-eqz v14, :cond_54

    .line 440
    const/high16 v20, 0x3f000000    # 0.5f

    .line 441
    .local v20, "bias":F
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    .line 442
    .local v21, "beginMargin":I
    if-nez v9, :cond_53

    .line 444
    move-object/from16 v1, v19

    move-object v9, v1

    .line 446
    :cond_53
    iget-object v1, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    .line 447
    .local v22, "endMargin":I
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v26, 0x5

    move-object/from16 v1, p1

    move-object v3, v12

    move/from16 v4, v21

    move/from16 v5, v20

    move-object v6, v14

    move-object/from16 v27, v8

    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .local v27, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v8, v22

    move-object/from16 v28, v9

    .end local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v9, v26

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    move-object/from16 v9, v28

    goto :goto_3a

    .line 439
    .end local v20    # "bias":F
    .end local v21    # "beginMargin":I
    .end local v22    # "endMargin":I
    .end local v27    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v28    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v9    # "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_54
    move-object/from16 v27, v8

    .line 451
    .end local v0    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v12    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_55
    :goto_3a
    return-void
.end method
