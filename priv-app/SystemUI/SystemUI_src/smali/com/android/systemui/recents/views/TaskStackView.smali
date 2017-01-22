.class public Lcom/android/systemui/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
.implements Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;
.implements Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;",
        "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
        "<",
        "Lcom/android/systemui/recents/views/TaskView;",
        "Lcom/android/systemui/recents/model/Task;",
        ">;",
        "Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Recents_TaskStackView"


# instance fields
.field mAwaitingFirstLayout:Z

.field mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mFilterAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

.field mFocusedTaskIndex:I

.field mInflater:Landroid/view/LayoutInflater;

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

.field mPrevAccessibilityFocusedIndex:I

.field mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mStack:Lcom/android/systemui/recents/model/TaskStack;

.field mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field mStackViewsAnimationDuration:I

.field mStackViewsClipDirty:Z

.field mStackViewsDirty:Z

.field mStartEnterAnimationCompleted:Z

.field mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

.field mStartEnterAnimationRequestedAfterLayout:Z

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTmpCoord:[F

.field mTmpMatrix:Landroid/graphics/Matrix;

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpTaskViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTmpVisibleRange:[I

.field mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

.field mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mstartExitToHomeAnimation:Z

.field releaseMinPerformance:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 131
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 98
    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 99
    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 103
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 105
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 109
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    .line 110
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    .line 111
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    .line 122
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskStackView$1;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 133
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 139
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 141
    new-instance v0, Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 144
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/RecentsWindowLayoutAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    .line 151
    :goto_0
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/ViewPool;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFilterAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

    .line 152
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/LayoutAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setCallbacks(Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;)V

    .line 154
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    .line 155
    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    new-instance v2, Lcom/android/systemui/recents/views/TaskStackView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskStackView$2;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 166
    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    goto :goto_0
.end method

.method private updateFilteredView(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 7
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    const/4 v4, 0x1

    .line 1291
    const/4 v0, 0x0

    .line 1292
    .local v0, "anchorTask":Lcom/android/systemui/recents/model/Task;
    const/4 v2, 0x0

    .line 1293
    .local v2, "prevAnchorTaskScroll":F
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_2

    move v3, v4

    .line 1294
    .local v3, "pullStackForward":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 1295
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1296
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v2

    .line 1300
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 1303
    if-eqz v3, :cond_1

    .line 1304
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v1

    .line 1305
    .local v1, "anchorTaskScroll":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    sub-float v6, v1, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 1306
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 1310
    .end local v1    # "anchorTaskScroll":F
    :cond_1
    const/16 v4, 0xc8

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    .line 1311
    return-void

    .line 1293
    .end local v3    # "pullStackForward":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateStackTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;F[IZ)Z
    .locals 10
    .param p3, "stackScroll"    # F
    .param p4, "visibleRangeOut"    # [I
    .param p5, "boundTranslationsToRect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;F[IZ)Z"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 290
    .local v5, "taskTransformCount":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 291
    .local v4, "taskCount":I
    const/4 v1, -0x1

    .line 292
    .local v1, "frontMostVisibleIndex":I
    const/4 v0, -0x1

    .line 295
    .local v0, "backMostVisibleIndex":I
    if-ge v5, v4, :cond_0

    .line 297
    move v2, v5

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 298
    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    .end local v2    # "i":I
    :cond_0
    if-le v5, v4, :cond_1

    .line 302
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 306
    :cond_1
    const/4 v3, 0x0

    .line 307
    .local v3, "prevTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_7

    .line 308
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v9, v7, p3, v8, v3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    .line 310
    .local v6, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-boolean v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v7, :cond_6

    .line 311
    if-gez v1, :cond_2

    .line 312
    move v1, v2

    .line 314
    :cond_2
    move v0, v2

    .line 327
    :cond_3
    if-eqz p5, :cond_4

    .line 329
    iget v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v8, v8, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    .line 332
    iget v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v8, v8, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 336
    :cond_4
    add-int/lit8 v7, v4, -0x1

    if-ne v2, v7, :cond_5

    .line 338
    const v7, 0x3f733333    # 0.95f

    iput v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    .line 341
    :cond_5
    move-object v3, v6

    .line 307
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 316
    :cond_6
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 319
    :goto_2
    if-ltz v2, :cond_7

    .line 320
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 321
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 343
    .end local v6    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_7
    if-eqz p4, :cond_8

    .line 344
    const/4 v7, 0x0

    aput v1, p4, v7

    .line 345
    const/4 v7, 0x1

    aput v0, p4, v7

    .line 347
    :cond_8
    const/4 v7, -0x1

    if-eq v1, v7, :cond_9

    const/4 v7, -0x1

    if-eq v0, v7, :cond_9

    const/4 v7, 0x1

    :goto_3
    return v7

    :cond_9
    const/4 v7, 0x0

    goto :goto_3
.end method


# virtual methods
.method clipTaskViews()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews([I)V

    .line 437
    return-void
.end method

.method clipTaskViews([I)V
    .locals 13
    .param p1, "visibleRange"    # [I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 444
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v8, v0, -0x1

    if-ge v3, v8, :cond_4

    .line 445
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    .line 446
    .local v7, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v5, 0x0

    .line 447
    .local v5, "nextTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v6, 0x0

    .line 448
    .local v6, "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v1, 0x0

    .line 450
    .local v1, "clipBottom":I
    const/4 v2, 0x0

    .line 452
    .local v2, "clipRight":I
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 454
    move v4, v3

    .line 455
    .local v4, "nextIndex":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 456
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    .line 457
    .restart local v6    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 458
    move-object v5, v6

    .line 466
    :cond_1
    if-eqz v5, :cond_2

    .line 469
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    const/4 v10, 0x0

    aput v10, v9, v12

    aput v10, v8, v11

    .line 470
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    invoke-static {v5, p0, v8, v11}, Lcom/android/systemui/recents/misc/Utilities;->mapCoordInDescendentToSelf(Landroid/view/View;Landroid/view/View;[FZ)F

    .line 471
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v7, p0, v8, v9}, Lcom/android/systemui/recents/misc/Utilities;->mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[FLandroid/graphics/Matrix;)F

    .line 472
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    aget v9, v9, v12

    sub-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 483
    .end local v4    # "nextIndex":I
    :cond_2
    if-eqz p1, :cond_3

    aget v8, p1, v12

    if-gt v8, v3, :cond_3

    aget v8, p1, v11

    if-ge v3, v8, :cond_3

    .line 486
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v8

    invoke-virtual {v8, v11, v11}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClip(II)V

    .line 444
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    :cond_3
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClip(II)V

    goto :goto_1

    .line 496
    .end local v1    # "clipBottom":I
    .end local v2    # "clipRight":I
    .end local v5    # "nextTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v6    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    .line 501
    .restart local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v8

    invoke-virtual {v8, v11, v11}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClip(II)V

    .line 505
    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_5
    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 506
    return-void
.end method

.method public computeRects(IILandroid/graphics/Rect;ZZ)V
    .locals 1
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;
    .param p4, "launchedWithAltTab"    # Z
    .param p5, "launchedFromHome"    # Z

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 722
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 723
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->computeScroll()Z

    .line 709
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->synchronizeStackViewsWithModel()Z

    .line 710
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 712
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 713
    return-void
.end method

.method public computeStackVisibilityReport()Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/LayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    return-object v0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public destroyViewPool()V
    .locals 3

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/ViewPool;->poolViewIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 229
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/recents/views/TaskView;>;"
    if-eqz v0, :cond_0

    .line 230
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 232
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->destroyHeaderView()V

    goto :goto_0

    .line 236
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->dismiss()V

    .line 1507
    return-void
.end method

.method public dismissFocusedTask()V
    .locals 4

    .prologue
    .line 650
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 651
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 660
    :cond_1
    :goto_0
    return-void

    .line 655
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 656
    .local v0, "t":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 657
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_1

    .line 658
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    goto :goto_0
.end method

.method public ensureFocusedTask()Z
    .locals 7

    .prologue
    .line 578
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-gez v5, :cond_1

    .line 581
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 582
    .local v3, "x":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 583
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 584
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 585
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 586
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Lcom/android/systemui/recents/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    .line 587
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 588
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 593
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-gez v5, :cond_1

    if-lez v0, :cond_1

    .line 594
    add-int/lit8 v5, v0, -0x1

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 597
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 584
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 597
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public focusNextTask(ZZ)Z
    .locals 6
    .param p1, "forward"    # Z
    .param p2, "animateFocusedState"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 608
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    .line 609
    .local v2, "numTasks":I
    if-nez v2, :cond_1

    move v3, v4

    .line 642
    :cond_0
    :goto_0
    return v3

    .line 611
    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, -0x1

    .line 612
    .local v0, "direction":I
    :goto_1
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    add-int v1, v5, v0

    .line 614
    .local v1, "newIndex":I
    const/4 v5, -0x2

    if-ne v1, v5, :cond_2

    .line 615
    add-int/lit8 v1, v2, -0x1

    .line 618
    :cond_2
    if-ltz v1, :cond_4

    add-int/lit8 v5, v2, -0x1

    if-gt v1, v5, :cond_4

    .line 619
    add-int/lit8 v5, v2, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 620
    invoke-virtual {p0, v1, v3, p2}, Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    goto :goto_0

    .end local v0    # "direction":I
    .end local v1    # "newIndex":I
    :cond_3
    move v0, v3

    .line 611
    goto :goto_1

    .line 626
    .restart local v0    # "direction":I
    .restart local v1    # "newIndex":I
    :cond_4
    if-ltz v1, :cond_0

    move v3, v4

    .line 642
    goto :goto_0
.end method

.method focusTask(IZZ)V
    .locals 7
    .param p1, "taskIndex"    # I
    .param p2, "scrollToNewPosition"    # Z
    .param p3, "animateFocusedState"    # Z

    .prologue
    .line 533
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ne p1, v4, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    const-string v4, "Recents_TaskStackView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "focusTask is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 536
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 539
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 540
    .local v2, "t":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 541
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v1, 0x0

    .line 542
    .local v1, "postScrollRunnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_2

    .line 543
    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    .line 560
    :goto_1
    if-eqz p2, :cond_3

    .line 561
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v0, v4, v5

    .line 562
    .local v0, "newScroll":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v0

    .line 563
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FFLjava/lang/Runnable;)V

    goto :goto_0

    .line 545
    .end local v0    # "newScroll":F
    :cond_2
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$3;

    .end local v1    # "postScrollRunnable":Ljava/lang/Runnable;
    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recents/views/TaskStackView$3;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Z)V

    .restart local v1    # "postScrollRunnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 565
    :cond_3
    if-eqz v1, :cond_0

    .line 566
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 267
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 269
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 273
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :goto_1
    return-object v2

    .line 267
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/android/systemui/recents/views/LayoutAlgorithm;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    return-object v0
.end method

.method public hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "preferredData"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1404
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method public isTransformedTouchPointInView(FFLandroid/view/View;)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 1080
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method public onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 6
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "lockToTask"    # Z

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    .line 1448
    :cond_0
    return-void
.end method

.method onFirstLayout()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 817
    const/4 v5, 0x0

    .line 819
    .local v5, "offscreenY":I
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v10, :cond_1

    .line 820
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e04cf

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 822
    .local v6, "recentsWindowHeight":I
    move v5, v6

    .line 829
    .end local v6    # "recentsWindowHeight":I
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v10, v10, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v11, v11, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v12, v12, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int v4, v10, v11

    .line 834
    .local v4, "offscreenX":I
    const/4 v2, 0x0

    .line 835
    .local v2, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 836
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 837
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 838
    .local v8, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    .line 839
    .local v7, "task":Lcom/android/systemui/recents/model/Task;
    iget-boolean v10, v7, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v10, :cond_2

    .line 840
    move-object v2, v7

    .line 846
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 847
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 848
    .restart local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    .line 849
    .restart local v7    # "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_3

    iget-object v10, v2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v10, v7, v2}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v3, 0x1

    .line 856
    .local v3, "occludesLaunchTarget":Z
    :goto_3
    iget-boolean v10, v7, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    invoke-virtual {v8, v10, v3, v5}, Lcom/android/systemui/recents/views/TaskView;->prepareEnterRecentsAnimation(ZZI)V

    .line 846
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 825
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    .end local v3    # "occludesLaunchTarget":Z
    .end local v4    # "offscreenX":I
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v10, v10, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v11, v11, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v12, v12, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    sub-int v5, v10, v11

    goto :goto_0

    .line 836
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    .restart local v2    # "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    .restart local v4    # "offscreenX":I
    .restart local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v3, v9

    .line 849
    goto :goto_3

    .line 862
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    iget-boolean v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    if-eqz v10, :cond_5

    .line 863
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 864
    iput-boolean v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    .line 865
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .line 870
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    if-eqz v10, :cond_6

    .line 895
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v10, :cond_7

    .line 896
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    invoke-virtual {p0, v10, v9, v11}, Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    .line 906
    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 907
    return-void

    .line 899
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    invoke-virtual {p0, v10, v9, v11}, Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    goto :goto_4
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 676
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 677
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    .line 678
    .local v1, "childCount":I
    if-lez v1, :cond_0

    .line 679
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 680
    .local v0, "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 681
    .local v2, "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 682
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 683
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 685
    .end local v0    # "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    .end local v2    # "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 686
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 687
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget v4, v4, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 688
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 796
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 797
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 798
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 799
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 803
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 809
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v3, :cond_2

    .line 810
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 811
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->onFirstLayout()V

    .line 813
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 749
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 750
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 753
    .local v2, "height":I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 754
    .local v3, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 755
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->computeRects(IILandroid/graphics/Rect;ZZ)V

    .line 760
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 762
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 763
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->synchronizeStackViewsWithModel()Z

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v6

    .line 768
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 769
    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 770
    .local v8, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 775
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v0, v0, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v8, v0, v4}, Lcom/android/systemui/recents/views/TaskView;->measure(II)V

    .line 768
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 784
    .end local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setMeasuredDimension(II)V

    .line 785
    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 6
    .param p1, "monitor"    # Lcom/android/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1540
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskKeys()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1, v5, p2, p3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->computeComponentsRemoved(Ljava/util/List;Ljava/lang/String;I)Ljava/util/HashSet;

    move-result-object v1

    .line 1544
    .local v1, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1545
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1546
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1547
    .local v2, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1548
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    .line 1549
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v4, :cond_1

    .line 1551
    new-instance v5, Lcom/android/systemui/recents/views/TaskStackView$6;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/recents/views/TaskStackView$6;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;)V

    .line 1545
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1559
    .restart local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_1

    .line 1563
    .end local v2    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method onRecentsHidden()V
    .locals 0

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->reset()V

    .line 1077
    return-void
.end method

.method public onScrollChanged(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->releaseMinPerformance:Z

    .line 1530
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1531
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 1532
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->postInvalidateOnAnimation()V

    .line 1533
    return-void

    .line 1525
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->releaseMinPerformance:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->releaseMinPerformance:Z

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->performanceRelease()V

    goto :goto_0
.end method

.method public onStackExcludeFiltered(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "filteredTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1281
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1282
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1285
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateFilteredView(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 1286
    return-void
.end method

.method public onStackExcludeUnfiltered(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 1264
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateFilteredView(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 1265
    return-void
.end method

.method public onStackFiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "newStack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "filteredTask"    # Lcom/android/systemui/recents/model/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Lcom/android/systemui/recents/model/Task;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1228
    .local p2, "curTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    return-void
.end method

.method public onStackSplitFiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1269
    .local p2, "filteredTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 1270
    .local v0, "filteredTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 1271
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v2, :cond_0

    .line 1272
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_0

    .line 1275
    .end local v0    # "filteredTask":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateFilteredView(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 1276
    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1133
    const-string v0, "Recents_TaskStackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStackTaskAdded Task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    .line 1135
    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)V
    .locals 12
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1141
    const-string v9, "Recents_TaskStackView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStackTaskRemoved Task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v6

    .line 1143
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v6, :cond_0

    .line 1144
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v9, v6}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1148
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v9, p2}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V

    .line 1152
    const/4 v0, 0x0

    .line 1153
    .local v0, "anchorTask":Lcom/android/systemui/recents/model/Task;
    const/4 v3, 0x0

    .line 1154
    .local v3, "prevAnchorTaskScroll":F
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-lez v9, :cond_6

    move v4, v7

    .line 1155
    .local v4, "pullStackForward":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 1156
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1157
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v3

    .line 1161
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 1164
    if-eqz v4, :cond_2

    .line 1165
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v1

    .line 1166
    .local v1, "anchorTaskScroll":F
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v10

    sub-float v11, v1, v3

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 1168
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 1172
    .end local v1    # "anchorTaskScroll":F
    :cond_2
    const/16 v9, 0xc8

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    .line 1175
    if-eqz p3, :cond_3

    .line 1176
    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 1177
    .local v2, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v2, :cond_3

    .line 1178
    invoke-virtual {v2, p3}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;)V

    .line 1179
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    invoke-virtual {v2, v8, v9}, Lcom/android/systemui/recents/views/TaskView;->fadeInActionButton(II)V

    .line 1185
    .end local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 1186
    const/4 v5, 0x1

    .line 1187
    .local v5, "shouldFinishActivity":Z
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1188
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->unfilterTasks()V

    .line 1189
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-nez v9, :cond_7

    move v5, v7

    .line 1191
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 1192
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v7}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onAllTaskViewsDismissed()V

    .line 1195
    .end local v5    # "shouldFinishActivity":Z
    :cond_5
    return-void

    .end local v4    # "pullStackForward":Z
    :cond_6
    move v4, v8

    .line 1154
    goto :goto_0

    .restart local v4    # "pullStackForward":Z
    .restart local v5    # "shouldFinishActivity":Z
    :cond_7
    move v5, v8

    .line 1189
    goto :goto_1
.end method

.method public onStackUnfiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "newStack"    # Lcom/android/systemui/recents/model/TaskStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p2, "curTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    return-void
.end method

.method public onTaskViewAppIconClicked(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1418
    const-string v0, "Recents_TaskStackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskViewAppIconClicked TaskView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    return-void
.end method

.method public onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V

    .line 1426
    :cond_0
    const-string v0, "Recents_TaskStackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskViewAppInfoClicked TaskView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;ZZ)V
    .locals 7
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "lockToTask"    # Z
    .param p4, "toSplit"    # Z

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 1437
    :cond_0
    const-string v0, "Recents_TaskStackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskViewClicked TaskView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1485
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-nez v0, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 1488
    :cond_0
    return-void
.end method

.method public onTaskViewDismissed(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 12
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1453
    iget-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mstartExitToHomeAnimation:Z

    if-eqz v7, :cond_1

    .line 1454
    const-string v7, "Recents_TaskStackView"

    const-string v8, "onTaskViewDismissed mstartExitToHomeAnimation == true"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 1459
    .local v3, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v3}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v4

    .line 1460
    .local v4, "taskIndex":I
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v5

    .line 1462
    .local v5, "taskWasFocused":Z
    const-string v7, "Recents_TaskStackView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTaskViewDismissed TaskView="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0265

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    iget-object v11, v11, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/systemui/recents/views/TaskView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1466
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v3}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1468
    if-eqz v5, :cond_0

    .line 1469
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1470
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v4, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1471
    .local v1, "nextTaskIndex":I
    if-ltz v1, :cond_0

    .line 1472
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 1473
    .local v0, "nextTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 1474
    .local v2, "nextTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v2, :cond_0

    .line 1477
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    goto :goto_0
.end method

.method public onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "focused"    # Z

    .prologue
    .line 1492
    if-eqz p2, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 1502
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->folderTypeFeature(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->isFolderOpened(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    goto :goto_0
.end method

.method public onTaskViewMoved(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1512
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1513
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 1514
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewMoved()V

    .line 1515
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method onUserInteraction()V
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1087
    return-void
.end method

.method public prepareViewToEnterPool(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1323
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1326
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1327
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    .line 1331
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 1334
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 1337
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 1340
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1341
    return-void
.end method

.method public bridge synthetic prepareViewToEnterPool(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->prepareViewToEnterPool(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

.method public prepareViewToLeavePool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 10
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "isNewView"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1347
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v9

    if-gtz v9, :cond_4

    if-nez p3, :cond_4

    move v4, v8

    .line 1350
    .local v4, "requiresRelayout":Z
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;)V

    .line 1353
    iget-object v9, p1, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-gtz v9, :cond_5

    iget v9, p1, Lcom/android/systemui/recents/views/TaskView;->lockButtonVisibility:I

    if-nez v9, :cond_5

    move v1, v8

    .line 1357
    .local v1, "forceLayoutToShowPinButton":Z
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 1360
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/DozeTrigger;->hasTriggered()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1361
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 1365
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationCompleted:Z

    if-eqz v7, :cond_1

    .line 1366
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->enableFocusAnimations()V

    .line 1370
    :cond_1
    const/4 v3, -0x1

    .line 1371
    .local v3, "insertIndex":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    .line 1372
    .local v5, "taskIndex":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 1373
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1374
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1375
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    .line 1376
    .local v6, "tvTask":Lcom/android/systemui/recents/model/Task;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 1377
    move v3, v2

    .line 1384
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v6    # "tvTask":Lcom/android/systemui/recents/model/Task;
    :cond_2
    if-eqz p3, :cond_7

    .line 1385
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    .line 1394
    :cond_3
    :goto_3
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/views/TaskView;->setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    .line 1395
    invoke-virtual {p1, v8}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1397
    invoke-virtual {p1, v8}, Lcom/android/systemui/recents/views/TaskView;->setLongTouchEnabled(Z)V

    .line 1399
    invoke-virtual {p1, v8}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1400
    return-void

    .end local v1    # "forceLayoutToShowPinButton":Z
    .end local v3    # "insertIndex":I
    .end local v4    # "requiresRelayout":Z
    .end local v5    # "taskIndex":I
    :cond_4
    move v4, v7

    .line 1347
    goto :goto_0

    .restart local v4    # "requiresRelayout":Z
    :cond_5
    move v1, v7

    .line 1353
    goto :goto_1

    .line 1374
    .restart local v0    # "childCount":I
    .restart local v1    # "forceLayoutToShowPinButton":Z
    .restart local v2    # "i":I
    .restart local v3    # "insertIndex":I
    .restart local v5    # "taskIndex":I
    .restart local v6    # "tvTask":Lcom/android/systemui/recents/model/Task;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1387
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v6    # "tvTask":Lcom/android/systemui/recents/model/Task;
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p0, p1, v3, v7}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1388
    if-nez v4, :cond_8

    if-eqz v1, :cond_3

    .line 1389
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->requestLayout()V

    goto :goto_3
.end method

.method public bridge synthetic prepareViewToLeavePool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Z

    .prologue
    .line 62
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->prepareViewToLeavePool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    return-void
.end method

.method requestSynchronizeStackViewsWithModel()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    .line 242
    return-void
.end method

.method requestSynchronizeStackViewsWithModel(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    goto :goto_0
.end method

.method requestUpdateStackViewsClip()V
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 262
    :cond_0
    return-void
.end method

.method reset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask()V

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 196
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 197
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 198
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 196
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 202
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    if-eqz v4, :cond_1

    .line 203
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/ViewPool;->poolViewIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 204
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/recents/views/TaskView;>;"
    if-eqz v2, :cond_1

    .line 205
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 207
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->reset()V

    goto :goto_1

    .line 213
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->reset()V

    .line 214
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 215
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 216
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 217
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 218
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    if-eqz v4, :cond_2

    .line 219
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 220
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/DozeTrigger;->resetTrigger()V

    .line 222
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->reset()V

    .line 223
    return-void
.end method

.method public resetFocusedTask()V
    .locals 4

    .prologue
    .line 664
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 665
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 666
    .local v0, "t":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 667
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 671
    .end local v0    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 672
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    .line 171
    return-void
.end method

.method public setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V
    .locals 0
    .param p1, "overlay"    # Lcom/android/systemui/recents/views/DebugOverlayView;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    .line 187
    return-void
.end method

.method public setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 12
    .param p1, "excludeView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "isSet"    # Z

    .prologue
    const-wide/16 v10, 0x14a

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1091
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    .line 1092
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1093
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1094
    .local v3, "t":Lcom/android/systemui/recents/views/TaskView;
    if-eq v3, p1, :cond_0

    .line 1095
    if-eqz p2, :cond_1

    .line 1096
    iget v4, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    if-ne v4, v7, :cond_2

    .line 1097
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    .line 1098
    sget-object v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->DIM_PROPERTY:Landroid/util/Property;

    new-array v5, v9, [I

    const/16 v6, 0x4c

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1099
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1100
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1092
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1105
    :cond_1
    iget v4, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    if-eq v4, v7, :cond_0

    iget-object v4, v3, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-nez v4, :cond_0

    .line 1106
    sget-object v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->DIM_PROPERTY:Landroid/util/Property;

    new-array v5, v9, [I

    iget v6, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1107
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1108
    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView$5;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1121
    iput-object v0, v3, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 1122
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 1127
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v3    # "t":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method setStack(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 182
    return-void
.end method

.method public setStackInsetRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 511
    return-void
.end method

.method public startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V
    .locals 6
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    .prologue
    .line 1018
    const-string v3, "Recents_TaskStackView"

    const-string v4, "startCloseAllAnimation is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1020
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1022
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews([I)V

    .line 1036
    iget-boolean v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->toRight:Z

    if-eqz v3, :cond_0

    .line 1037
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->offscreenTranslation:I

    .line 1046
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1047
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1048
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 1049
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    sub-int v4, v0, v1

    mul-int/lit8 v4, v4, 0x21

    add-int/2addr v3, v4

    iput v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    .line 1050
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskView;->startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1041
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    neg-int v3, v3

    iput v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->offscreenTranslation:I

    goto :goto_0

    .line 1052
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 11
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 912
    const-string v5, "Recents_TaskStackView"

    const-string v8, "startEnterRecentsAnimation is getting called"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mstartExitToHomeAnimation:Z

    .line 916
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v5, :cond_1

    .line 917
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    .line 918
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 924
    const/4 v2, 0x0

    .line 925
    .local v2, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 926
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 927
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 928
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 929
    .local v3, "task":Lcom/android/systemui/recents/model/Task;
    iget-boolean v5, v3, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v5, :cond_3

    .line 930
    move-object v2, v3

    .line 936
    .end local v3    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_5

    .line 937
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 938
    .restart local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 939
    .restart local v3    # "task":Lcom/android/systemui/recents/model/Task;
    new-instance v5, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v5}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 940
    iput v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewIndex:I

    .line 941
    iput v0, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewCount:I

    .line 942
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iput-object v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskRect:Landroid/graphics/Rect;

    .line 943
    if-eqz v2, :cond_4

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v5, v3, v2}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_3
    iput-boolean v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskOccludesLaunchTarget:Z

    .line 945
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 946
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v8

    iget-object v9, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v10, 0x0

    invoke-virtual {v5, v3, v8, v9, v10}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 947
    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/views/TaskView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 936
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 926
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    move v5, v7

    .line 943
    goto :goto_3

    .line 951
    .end local v3    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_5
    iget-object v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v6, Lcom/android/systemui/recents/views/TaskStackView$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/recents/views/TaskStackView$4;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 7
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 985
    const-string v4, "Recents_TaskStackView"

    const-string v5, "startExitToHomeAnimation is getting called"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mstartExitToHomeAnimation:Z

    .line 989
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 990
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 998
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v4, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e04cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1001
    .local v2, "recentsWindowHeight":I
    iput v2, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslation:I

    .line 1007
    .end local v2    # "recentsWindowHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1008
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1009
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1010
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1004
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslation:I

    goto :goto_0

    .line 1012
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V
    .locals 9
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "lockToTask"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1057
    const-string v7, "Recents_TaskStackView"

    const-string v8, "startLaunchTaskAnimation is getting called"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 1059
    .local v2, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 1060
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1061
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 1062
    .local v4, "t":Lcom/android/systemui/recents/views/TaskView;
    if-ne v4, p1, :cond_0

    .line 1063
    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1064
    invoke-virtual {v4, p2, v5, v5, p3}, Lcom/android/systemui/recents/views/TaskView;->startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V

    .line 1060
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1066
    :cond_0
    if-eqz v2, :cond_1

    iget-object v7, v2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v5

    .line 1069
    .local v3, "occludesLaunchTarget":Z
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6, v3, p3}, Lcom/android/systemui/recents/views/TaskView;->startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    .end local v3    # "occludesLaunchTarget":Z
    :cond_1
    move v3, v6

    .line 1066
    goto :goto_2

    .line 1072
    .end local v4    # "t":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method synchronizeStackViewsWithModel()Z
    .locals 22

    .prologue
    .line 352
    const-string v2, "Recents_TaskStackView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronizeStackViewsWithModel is called mStackViewsDirty"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-eqz v2, :cond_8

    .line 354
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v13

    .line 355
    .local v13, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v15

    .line 358
    .local v15, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 359
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    .line 360
    .local v5, "stackScroll":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    .line 361
    .local v6, "visibleRange":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateStackTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;F[IZ)Z

    move-result v12

    .line 363
    .local v12, "isValidVisibleRange":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v2, :cond_0

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vis["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x1

    aget v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x0

    aget v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/DebugOverlayView;->setText(Ljava/lang/String;)V

    .line 368
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v9

    .line 370
    .local v9, "childCount":I
    const/4 v14, 0x0

    .line 371
    .local v14, "reaquireAccessibilityFocus":Z
    add-int/lit8 v10, v9, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_3

    .line 372
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/views/TaskView;

    .line 373
    .local v19, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v16

    .line 374
    .local v16, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v17

    .line 375
    .local v17, "taskIndex":I
    const/4 v2, 0x1

    aget v2, v6, v2

    move/from16 v0, v17

    if-gt v2, v0, :cond_1

    const/4 v2, 0x0

    aget v2, v6, v2

    move/from16 v0, v17

    if-gt v0, v2, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 378
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    if-ne v10, v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v14, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 384
    .end local v16    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v17    # "taskIndex":I
    .end local v19    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    const/4 v2, 0x0

    aget v10, v6, v2

    :goto_3
    if-eqz v12, :cond_7

    const/4 v2, 0x1

    aget v2, v6, v2

    if-lt v10, v2, :cond_7

    .line 385
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/recents/model/Task;

    .line 386
    .restart local v16    # "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 387
    .local v18, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/views/TaskView;

    .line 388
    .restart local v19    # "tv":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v17

    .line 390
    .restart local v17    # "taskIndex":I
    if-nez v19, :cond_4

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "tv":Lcom/android/systemui/recents/views/TaskView;
    check-cast v19, Lcom/android/systemui/recents/views/TaskView;

    .line 393
    .restart local v19    # "tv":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    if-lez v2, :cond_4

    .line 396
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_6

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v3, v7, v0, v1}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 401
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    .line 406
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 411
    if-eqz v14, :cond_5

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v9

    .line 413
    if-lez v9, :cond_5

    invoke-virtual {v15}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 414
    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 415
    .local v8, "atv":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v11

    .line 416
    .local v11, "indexOfTask":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    if-eq v2, v11, :cond_5

    .line 417
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 418
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    .line 384
    .end local v8    # "atv":Lcom/android/systemui/recents/views/TaskView;
    .end local v11    # "indexOfTask":I
    :cond_5
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_3

    .line 399
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v3, v7, v0, v1}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    goto :goto_4

    .line 425
    .end local v16    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v17    # "taskIndex":I
    .end local v18    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v19    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    .line 426
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    .line 427
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    .line 428
    const/4 v2, 0x1

    .line 430
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v5    # "stackScroll":F
    .end local v6    # "visibleRange":[I
    .end local v9    # "childCount":I
    .end local v10    # "i":I
    .end local v12    # "isValidVisibleRange":Z
    .end local v13    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v14    # "reaquireAccessibilityFocus":Z
    .end local v15    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :goto_5
    return v2

    :cond_8
    const/4 v2, 0x0

    goto :goto_5
.end method

.method updateMinMaxScroll(ZZZ)V
    .locals 2
    .param p1, "boundScrollToNewMinMax"    # Z
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V

    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 523
    :cond_0
    return-void
.end method

.method public updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V
    .locals 1
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 732
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    .line 733
    return-void
.end method
