.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/recents/views/SwipeHelper$Callback;


# static fields
.field static INACTIVE_POINTER_ID:I


# instance fields
.field mActivePointerId:I

.field mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mInitialMotionX:I

.field mInitialMotionY:I

.field mInitialP:F

.field mInterceptedBySwipeHelper:Z

.field mIsScrolling:Z

.field mLastMotionX:I

.field mLastMotionY:I

.field mLastP:F

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field mPagingTouchSlop:F

.field mScrollTouchSlop:I

.field mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field mSv:Lcom/android/systemui/recents/views/TaskStackView;

.field mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

.field mTotalPMotion:F

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mWasScrolling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sv"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;
    .param p4, "scroller"    # Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 74
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 75
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    .line 76
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    .line 77
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    .line 78
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mPagingTouchSlop:F

    .line 79
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    .line 80
    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 81
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 85
    .local v3, "densityScale":F
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/systemui/recents/views/SwipeHelper;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/SwipeHelper;-><init>(ILcom/android/systemui/recents/views/SwipeHelper$Callback;FFLcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/SwipeHelper;->setMinAlpha(F)V

    .line 98
    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/SwipeHelper;

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mPagingTouchSlop:F

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/SwipeHelper;-><init>(ILcom/android/systemui/recents/views/SwipeHelper$Callback;FFLcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    goto :goto_0
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 137
    .local v0, "pev":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 138
    return-object v0
.end method

.method findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 122
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 123
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 124
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 125
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/systemui/recents/views/TaskStackView;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :goto_1
    return-object v2

    .line 123
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 131
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 112
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 546
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 548
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 550
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 552
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setLongTouchEnabled(Z)V

    .line 555
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 556
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 557
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 559
    :cond_0
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 568
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 570
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 572
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setLongTouchEnabled(Z)V

    .line 577
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->onTaskViewDismissed(Lcom/android/systemui/recents/views/TaskView;)V

    .line 578
    return-void
.end method

.method public onChildMoved(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onTaskViewMoved(Lcom/android/systemui/recents/views/TaskView;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 595
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 496
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .end local v0    # "action":I
    :cond_0
    move v3, v4

    .line 529
    :cond_1
    :goto_0
    return v3

    .line 499
    .restart local v0    # "action":I
    :pswitch_0
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 501
    .local v2, "vScroll":F
    cmpl-float v5, v2, v7

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-nez v5, :cond_3

    .line 517
    :cond_2
    cmpl-float v5, v2, v7

    if-lez v5, :cond_5

    .line 518
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->ensureFocusedTask()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 519
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    goto :goto_0

    .line 504
    :cond_3
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 505
    .local v1, "hScroll":F
    cmpl-float v5, v1, v7

    if-lez v5, :cond_4

    .line 506
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->ensureFocusedTask()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 507
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, v4, v4}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    goto :goto_0

    .line 510
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->ensureFocusedTask()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 511
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    goto :goto_0

    .line 522
    .end local v1    # "hScroll":F
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->ensureFocusedTask()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 523
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, v4, v4}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 144
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_1

    move v2, v8

    .line 145
    .local v2, "hasChildren":Z
    :goto_0
    if-nez v2, :cond_2

    .line 252
    :cond_0
    :goto_1
    return v7

    .end local v2    # "hasChildren":Z
    :cond_1
    move v2, v7

    .line 144
    goto :goto_0

    .line 156
    .restart local v2    # "hasChildren":Z
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    .line 157
    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v6, :cond_3

    move v7, v8

    .line 158
    goto :goto_1

    .line 162
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_4
    move v6, v8

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWasScrolling:Z

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 165
    .local v0, "action":I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 252
    :cond_5
    :goto_3
    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWasScrolling:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v6, :cond_0

    :cond_6
    move v7, v8

    goto :goto_1

    .end local v0    # "action":I
    :cond_7
    move v6, v7

    .line 162
    goto :goto_2

    .line 167
    .restart local v0    # "action":I
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->performanceAcquire()V

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    .line 172
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v6, :cond_8

    .line 173
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialP:F

    .line 183
    :goto_4
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 184
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 186
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 187
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 190
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 181
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialP:F

    goto :goto_4

    .line 194
    :pswitch_1
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    sget v9, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    if-eq v6, v9, :cond_5

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 198
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 200
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 201
    .local v1, "activePointerIndex":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_5

    .line 202
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v6

    .line 203
    .local v5, "y":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v4, v6

    .line 206
    .local v4, "x":I
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-gt v6, v9, :cond_9

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v6, v9, :cond_a

    .line 211
    :cond_9
    iput-boolean v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 213
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 214
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_a

    .line 215
    invoke-interface {v3, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 219
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_a
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 220
    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 222
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v6, :cond_b

    .line 223
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto/16 :goto_3

    .line 231
    :cond_b
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto/16 :goto_3

    .line 238
    .end local v1    # "activePointerIndex":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_2
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 240
    :cond_c
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 241
    sget v6, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 242
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 243
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    .line 245
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v6

    if-nez v6, :cond_5

    .line 246
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->performanceRelease()V

    goto/16 :goto_3

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSnapBackCompleted(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 582
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 584
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 586
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 588
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setLongTouchEnabled(Z)V

    .line 590
    return-void
.end method

.method public onSwipeChanged(Landroid/view/View;F)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # F

    .prologue
    .line 564
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v18, 0x1

    .line 259
    .local v18, "hasChildren":Z
    :goto_0
    if-nez v18, :cond_1

    .line 260
    const/4 v2, 0x0

    .line 488
    :goto_1
    return v2

    .line 258
    .end local v18    # "hasChildren":Z
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 270
    .restart local v18    # "hasChildren":Z
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    const/4 v2, 0x1

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 279
    .local v13, "action":I
    and-int/lit16 v2, v13, 0xff

    packed-switch v2, :pswitch_data_0

    .line 488
    :cond_3
    :goto_2
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    .line 281
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->performanceAcquire()V

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    .line 286
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_4

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialP:F

    .line 297
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 298
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    .line 307
    .local v25, "parent":Landroid/view/ViewParent;
    if-eqz v25, :cond_3

    .line 308
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_2

    .line 295
    .end local v25    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialP:F

    goto :goto_3

    .line 313
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    .line 314
    .local v19, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 315
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 316
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 318
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_5

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto/16 :goto_2

    .line 327
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto/16 :goto_2

    .line 332
    .end local v19    # "index":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    sget v3, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    if-eq v2, v3, :cond_3

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 336
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 337
    .local v14, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 338
    .local v28, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v30, v0

    .line 339
    .local v30, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int v2, v30, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v31

    .line 341
    .local v31, "yTotal":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    sub-int v2, v28, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v29

    .line 345
    .local v29, "xTotal":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_a

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v15

    .line 355
    .local v15, "curP":F
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    sub-float v17, v2, v15

    .line 356
    .local v17, "deltaP":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v2, :cond_7

    .line 359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    move/from16 v0, v31

    if-gt v0, v2, :cond_6

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    move/from16 v0, v29

    if-le v0, v2, :cond_7

    .line 363
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    .line 366
    .restart local v25    # "parent":Landroid/view/ViewParent;
    if-eqz v25, :cond_7

    .line 367
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 371
    .end local v25    # "parent":Landroid/view/ViewParent;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_9

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v16

    .line 373
    .local v16, "curStackScroll":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    add-float v3, v16, v17

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getScrollAmountOutOfBounds(F)F

    move-result v22

    .line 374
    .local v22, "overScrollAmount":F
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    move/from16 v20, v0

    .line 378
    .local v20, "maxOverScroll":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v3, v3, v20

    sub-float/2addr v2, v3

    mul-float v17, v17, v2

    .line 381
    .end local v20    # "maxOverScroll":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    add-float v3, v16, v17

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 383
    .end local v16    # "curStackScroll":F
    .end local v22    # "overScrollAmount":F
    :cond_9
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 384
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 386
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_b

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 396
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    goto/16 :goto_2

    .line 352
    .end local v15    # "curP":F
    .end local v17    # "deltaP":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v15

    .restart local v15    # "curP":F
    goto/16 :goto_4

    .line 394
    .restart local v17    # "deltaP":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto :goto_5

    .line 405
    .end local v14    # "activePointerIndex":I
    .end local v15    # "curP":F
    .end local v17    # "deltaP":F
    .end local v28    # "x":I
    .end local v29    # "xTotal":I
    .end local v30    # "y":I
    .end local v31    # "yTotal":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v6, v2

    .line 407
    .local v6, "velocity":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_e

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    if-gt v2, v3, :cond_c

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_e

    .line 408
    :cond_c
    int-to-float v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v24

    .line 409
    .local v24, "overscrollRangePct":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c00000    # 96.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v23, v0

    .line 412
    .local v23, "overscrollRange":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget v10, v10, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    iget v11, v11, Lcom/android/systemui/recents/views/LayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v10

    const/4 v11, 0x0

    add-int/lit8 v12, v23, 0x20

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 427
    .end local v23    # "overscrollRange":I
    .end local v24    # "overscrollRangePct":F
    :cond_d
    :goto_6
    sget v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 428
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 429
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v2

    if-nez v2, :cond_3

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->performanceRelease()V

    goto/16 :goto_2

    .line 422
    :cond_e
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    goto :goto_6

    .line 437
    .end local v6    # "velocity":I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    .line 438
    .local v27, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    .line 439
    .local v26, "pointerId":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v0, v26

    if-ne v0, v2, :cond_3

    .line 441
    if-nez v27, :cond_f

    const/16 v21, 0x1

    .line 442
    .local v21, "newPointerIndex":I
    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 443
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 444
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 446
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v2, :cond_10

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 457
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    .line 441
    .end local v21    # "newPointerIndex":I
    :cond_f
    const/16 v21, 0x0

    goto :goto_7

    .line 455
    .restart local v21    # "newPointerIndex":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/LayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/LayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto :goto_8

    .line 468
    .end local v21    # "newPointerIndex":I
    .end local v26    # "pointerId":I
    .end local v27    # "pointerIndex":I
    :pswitch_6
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 472
    :cond_11
    sget v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 473
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 474
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v2

    if-nez v2, :cond_3

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->performanceRelease()V

    goto/16 :goto_2

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 118
    :cond_0
    return-void
.end method
