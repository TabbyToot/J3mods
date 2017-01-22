.class public Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
.super Lcom/android/systemui/recents/views/LayoutAlgorithm;
.source "TaskStackViewLayoutAlgorithm.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 0
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/LayoutAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;)V

    .line 43
    return-void
.end method


# virtual methods
.method computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V
    .locals 20
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 93
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 94
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    .line 175
    :goto_0
    return-void

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 124
    .local v16, "taskHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v4

    .line 125
    .local v4, "pAtBottomOfStackRect":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v11

    .line 127
    .local v11, "pWithinAffiliateTop":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v12

    .line 128
    .local v12, "scale":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 129
    .local v13, "scaleYOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int v17, v17, v13

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v11

    .line 131
    sub-float v10, v4, v11

    .line 132
    .local v10, "pWithinAffiliateOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v17

    sub-float v6, v4, v17

    .line 134
    .local v6, "pBetweenAffiliateOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v17

    sub-float v9, v4, v17

    .line 136
    .local v9, "pTaskHeightOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v17

    sub-float v7, v4, v17

    .line 142
    .local v7, "pNavBarOffset":F
    const/high16 v3, 0x3f000000    # 0.5f

    .line 143
    .local v3, "pAtBackMostCardTop":F
    move v5, v3

    .line 144
    .local v5, "pAtFrontMostCardTop":F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 145
    .local v15, "taskCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v15, :cond_3

    .line 146
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    .line 147
    .local v14, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v17, v15, -0x1

    move/from16 v0, v17

    if-ge v2, v0, :cond_1

    .line 151
    iget-object v0, v14, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v17

    if-eqz v17, :cond_2

    move v8, v6

    .line 153
    .local v8, "pPeek":F
    :goto_2
    add-float/2addr v5, v8

    .line 145
    .end local v8    # "pPeek":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v8, v10

    .line 151
    goto :goto_2

    .line 157
    .end local v14    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v9

    sub-float v17, v17, v7

    sub-float v17, v5, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    .line 159
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    .line 174
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_0

    .line 158
    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    .line 163
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/RecentsConfiguration;->showRecentOnMultiwindow()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->topTaskInitialScrollUpOffsetOnMultiWindow:F

    move/from16 v17, v0

    sub-float v17, v5, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    .line 171
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->topTaskInitialScrollUpOffset:F

    move/from16 v17, v0

    sub-float v17, v5, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4
.end method

.method public computeRects(IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 48
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v6, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 50
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 51
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 53
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 56
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 57
    .local v4, "widthPadding":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 58
    .local v0, "heightPadding":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 61
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 62
    .local v2, "size":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 69
    .local v1, "left":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v7, v1, v2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 73
    const/high16 v3, 0x3f000000    # 0.5f

    .line 80
    .local v3, "visibleTaskPct":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    .line 81
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    .line 83
    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 183
    new-instance v17, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/LayoutAlgorithm;II)V

    .line 225
    :goto_0
    return-object v17

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 188
    .local v16, "taskHeight":I
    const/4 v8, 0x1

    .line 189
    .local v8, "numVisibleTasks":I
    const/4 v9, 0x1

    .line 190
    .local v9, "numVisibleThumbnails":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v18, v0

    sub-float v11, v17, v18

    .line 191
    .local v11, "progress":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v10

    .line 192
    .local v10, "prevScreenY":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x2

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 194
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v18, v0

    sub-float v11, v17, v18

    .line 195
    const/16 v17, 0x0

    cmpg-float v17, v11, v17

    if-gez v17, :cond_2

    .line 225
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    new-instance v17, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/LayoutAlgorithm;II)V

    goto :goto_0

    .line 198
    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v6

    .line 199
    .local v6, "isFrontMostTaskInGroup":Z
    if-eqz v6, :cond_6

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v12

    .line 201
    .local v12, "scaleAtP":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 202
    .local v13, "scaleYOffsetAtP":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v17

    add-int v14, v17, v13

    .line 203
    .local v14, "screenY":I
    sub-int v17, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    const/4 v4, 0x1

    .line 204
    .local v4, "hasVisibleThumbnail":Z
    :goto_2
    if-eqz v4, :cond_5

    .line 205
    add-int/lit8 v9, v9, 0x1

    .line 206
    add-int/lit8 v8, v8, 0x1

    .line 207
    move v10, v14

    .line 192
    .end local v4    # "hasVisibleThumbnail":Z
    .end local v12    # "scaleAtP":F
    .end local v13    # "scaleYOffsetAtP":I
    .end local v14    # "screenY":I
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 203
    .restart local v12    # "scaleAtP":F
    .restart local v13    # "scaleYOffsetAtP":I
    .restart local v14    # "screenY":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 211
    .restart local v4    # "hasVisibleThumbnail":Z
    :cond_5
    move v7, v5

    .local v7, "j":I
    :goto_4
    if-ltz v7, :cond_1

    .line 212
    add-int/lit8 v8, v8, 0x1

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v18, v0

    sub-float v11, v17, v18

    .line 214
    const/16 v17, 0x0

    cmpg-float v17, v11, v17

    if-ltz v17, :cond_1

    .line 211
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 220
    .end local v4    # "hasVisibleThumbnail":Z
    .end local v7    # "j":I
    .end local v12    # "scaleAtP":F
    .end local v13    # "scaleYOffsetAtP":I
    .end local v14    # "screenY":I
    :cond_6
    if-nez v6, :cond_3

    .line 222
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method curveProgressToScale(F)F
    .locals 4
    .param p1, "p"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v0, 0x3f4ccccd    # 0.8f

    .line 327
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 331
    :goto_0
    return v0

    .line 328
    :cond_0
    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    move v0, v2

    goto :goto_0

    .line 329
    :cond_1
    const v1, 0x3e4ccccc    # 0.19999999f

    .line 330
    .local v1, "scaleRange":F
    mul-float v2, p1, v1

    add-float/2addr v0, v2

    .line 331
    .local v0, "scale":F
    goto :goto_0
.end method

.method curveProgressToScreenX(F)I
    .locals 8
    .param p1, "p"    # F

    .prologue
    .line 296
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 306
    :goto_0
    return v6

    .line 297
    :cond_1
    const/high16 v6, 0x437a0000    # 250.0f

    mul-float v3, p1, v6

    .line 298
    .local v3, "pIndex":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 299
    .local v1, "pFloorIndex":I
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 300
    .local v0, "pCeilIndex":I
    const/4 v5, 0x0

    .line 301
    .local v5, "xFraction":F
    const/16 v6, 0xfa

    if-ge v1, v6, :cond_2

    if-eq v0, v1, :cond_2

    .line 302
    int-to-float v6, v1

    sub-float v6, v3, v6

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 303
    .local v2, "pFraction":F
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v6, v6, v0

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v7, v7, v1

    sub-float/2addr v6, v7

    mul-float v5, v6, v2

    .line 305
    .end local v2    # "pFraction":F
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v6, v6, v1

    add-float v4, v6, v5

    .line 306
    .local v4, "x":F
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_0
.end method

.method curveProgressToScreenY(F)I
    .locals 8
    .param p1, "p"    # F

    .prologue
    .line 312
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 322
    :goto_0
    return v6

    .line 313
    :cond_1
    const/high16 v6, 0x437a0000    # 250.0f

    mul-float v3, p1, v6

    .line 314
    .local v3, "pIndex":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 315
    .local v1, "pFloorIndex":I
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 316
    .local v0, "pCeilIndex":I
    const/4 v5, 0x0

    .line 317
    .local v5, "xFraction":F
    const/16 v6, 0xfa

    if-ge v1, v6, :cond_2

    if-eq v0, v1, :cond_2

    .line 318
    int-to-float v6, v1

    sub-float v6, v3, v6

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 319
    .local v2, "pFraction":F
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v6, v6, v0

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v7, v7, v1

    sub-float/2addr v6, v7

    mul-float v5, v6, v2

    .line 321
    .end local v2    # "pFraction":F
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v6, v6, v1

    add-float v4, v6, v5

    .line 322
    .local v4, "x":F
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_0
.end method

.method getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 11
    .param p1, "taskProgress"    # F
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "prevTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 243
    sub-float v3, p1, p2

    .line 244
    .local v3, "pTaskRelative":F
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 246
    .local v2, "pBounded":F
    cmpl-float v7, v3, v9

    if-lez v7, :cond_0

    .line 247
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 248
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 277
    :goto_0
    return-object p3

    .line 253
    :cond_0
    cmpg-float v7, v3, v8

    if-gez v7, :cond_1

    .line 254
    if-eqz p4, :cond_1

    iget v7, p4, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gtz v7, :cond_1

    .line 255
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 256
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v4

    .line 261
    .local v4, "scale":F
    sub-float v7, v9, v4

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v10

    float-to-int v6, v7

    .line 262
    .local v6, "scaleYOffset":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v7, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 263
    .local v1, "minZ":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v7, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 264
    .local v0, "maxZ":I
    iput v4, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 266
    sub-float v7, v9, v4

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v10

    float-to-int v5, v7

    .line 267
    .local v5, "scaleXOffset":I
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenX(F)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v5

    iput v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    iput v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 271
    int-to-float v7, v1

    int-to-float v8, v1

    sub-int v9, v0, v1

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 272
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iget v9, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 274
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v7, v8}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 275
    const/4 v7, 0x1

    iput-boolean v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 276
    iput v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    goto :goto_0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "prevTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 236
    .end local p3    # "transformOut":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_0
    return-object p3

    .restart local p3    # "transformOut":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object p3

    goto :goto_0
.end method

.method public getUntransformedTaskViewSize()Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 283
    .local v0, "tvSize":Landroid/graphics/Rect;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 284
    return-object v0
.end method

.method screenXToCurveProgress(I)F
    .locals 8
    .param p1, "screenX"    # I

    .prologue
    .line 337
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 338
    .local v1, "x":F
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    .line 347
    .end local v1    # "x":F
    :cond_0
    :goto_0
    return v1

    .line 339
    .restart local v1    # "x":F
    :cond_1
    const/high16 v6, 0x437a0000    # 250.0f

    mul-float v5, v1, v6

    .line 340
    .local v5, "xIndex":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 341
    .local v3, "xFloorIndex":I
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 342
    .local v2, "xCeilIndex":I
    const/4 v0, 0x0

    .line 343
    .local v0, "pFraction":F
    const/16 v6, 0xfa

    if-ge v3, v6, :cond_2

    if-eq v2, v3, :cond_2

    .line 344
    int-to-float v6, v3

    sub-float v6, v5, v6

    sub-int v7, v2, v3

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 345
    .local v4, "xFraction":F
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v6, v6, v2

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    mul-float v0, v6, v4

    .line 347
    .end local v4    # "xFraction":F
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v6, v6, v3

    add-float v1, v6, v0

    goto :goto_0
.end method

.method screenYToCurveProgress(I)F
    .locals 8
    .param p1, "screenY"    # I

    .prologue
    .line 353
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 354
    .local v1, "x":F
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    .line 363
    .end local v1    # "x":F
    :cond_0
    :goto_0
    return v1

    .line 355
    .restart local v1    # "x":F
    :cond_1
    const/high16 v6, 0x437a0000    # 250.0f

    mul-float v5, v1, v6

    .line 356
    .local v5, "xIndex":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 357
    .local v3, "xFloorIndex":I
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 358
    .local v2, "xCeilIndex":I
    const/4 v0, 0x0

    .line 359
    .local v0, "pFraction":F
    const/16 v6, 0xfa

    if-ge v3, v6, :cond_2

    if-eq v2, v3, :cond_2

    .line 360
    int-to-float v6, v3

    sub-float v6, v5, v6

    sub-int v7, v2, v3

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 361
    .local v4, "xFraction":F
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v6, v6, v2

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    mul-float v0, v6, v4

    .line 363
    .end local v4    # "xFraction":F
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v6, v6, v3

    add-float v1, v6, v0

    goto :goto_0
.end method
