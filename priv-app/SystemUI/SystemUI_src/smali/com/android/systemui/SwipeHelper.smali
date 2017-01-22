.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$LongPressListener;,
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DEBUG:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_SIDES:Z = true

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field public static final LTR:I = 0x1

.field public static final NONE:I = 0x0

.field public static final RTL:I = -0x1

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0x96

.field static final SWIPE_PROGRESS_FADE_END:F = 0.5f

.field public static SWIPE_PROGRESS_FADE_START:F = 0.0f

.field static final TAG:Ljava/lang/String; = "com.android.systemui.SwipeHelper"

.field private static final TAG_SIDES:Ljava/lang/String; = "SwipeSides"

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static final mUseLeftSide:Z = false

.field private static final mUseRightSide:Z = true

.field private static final mUseSides:Z

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeBlocked:Z

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDirection:I

.field private mDragging:Z

.field private mFalsingThreshold:I

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mInProgressSides:Z

.field private mInitialTouchPos:F

.field private mIsLayoutRtl:Z

.field private mIsMaxSwipeSize:Z

.field private mIsZeroSwipeSize:Z

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMaxSwipeSize:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPosX:F

.field private mPreviousX:F

.field private mSidesMargin:I

.field private mSidesPadding:I

.field private mSwipeDirection:I

.field private mTargetView:Landroid/view/View;

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    .line 797
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    sput-boolean v0, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 61
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 62
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    .line 95
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 97
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 98
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 99
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 100
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 102
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 103
    const v0, 0x10c000f

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    .line 109
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0335

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mSidesMargin:I

    .line 111
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e04b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mSidesPadding:I

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/SwipeHelper;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/SwipeHelper;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->setSidesVisibility(Landroid/view/View;I)V

    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 142
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 144
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 142
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private doSnap(ZF)V
    .locals 2
    .param p1, "childSwipedFastEnough"    # Z
    .param p2, "velocity"    # F

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 1040
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    if-nez v0, :cond_0

    .line 1041
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    if-eqz v0, :cond_2

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz p1, :cond_1

    .end local p2    # "velocity":F
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V

    .line 1053
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 1055
    return-void

    .line 1042
    .restart local p2    # "velocity":F
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 1044
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto :goto_1
.end method

.method private getContentView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 867
    const v1, 0x7f0f0320

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 868
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 879
    :goto_0
    return-object v1

    .line 871
    :cond_0
    const v1, 0x7f0f0321

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 872
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 873
    goto :goto_0

    .line 875
    :cond_1
    const v1, 0x7f0f0322

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    .line 877
    goto :goto_0

    .line 879
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDBgView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 929
    const v1, 0x7f0f0313

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 930
    .local v0, "dbgView":Landroid/view/View;
    return-object v0
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 731
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getNBgView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 924
    const v1, 0x7f0f0312

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 925
    .local v0, "nbgView":Landroid/view/View;
    return-object v0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 148
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSidesMargin:I

    add-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 287
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 288
    .local v3, "viewSize":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v4, v3

    .line 289
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 290
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 291
    .local v1, "pos":F
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 292
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 296
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4

    .line 293
    :cond_1
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 294
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method private getTargetView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 887
    sget-boolean v2, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v2, :cond_3

    .line 888
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeBlocked:Z

    if-eqz v2, :cond_3

    .line 889
    const v2, 0x7f0f01f5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 890
    .local v1, "gutsView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 920
    .end local v1    # "gutsView":Landroid/view/View;
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 894
    .restart local v1    # "gutsView":Landroid/view/View;
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 896
    const-string v2, "SwipeSides"

    const-string v3, "getTargetView():TV"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 901
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 902
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 903
    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 907
    :cond_2
    const-string v2, "SwipeSides"

    const-string v3, "getTargetView():CV"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    .line 910
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    move-object p1, v0

    .line 911
    goto :goto_0

    .line 917
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "gutsView":Landroid/view/View;
    :cond_3
    const-string v2, "SwipeSides"

    const-string v3, "getTargetView():V"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 331
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 334
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 342
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 344
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 345
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method

.method private moveContentView(Landroid/view/View;F)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 984
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 985
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    if-ne v9, v7, :cond_4

    move v4, v7

    .line 989
    .local v4, "isLayoutRtl":Z
    :goto_0
    cmpg-float v9, p2, v10

    if-ltz v9, :cond_2

    cmpl-float v9, p2, v10

    if-nez v9, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2

    :cond_0
    cmpl-float v9, p2, v10

    if-nez v9, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    iget v9, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-eq v9, v7, :cond_2

    :cond_1
    cmpl-float v9, p2, v10

    if-nez v9, :cond_5

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    if-eqz v4, :cond_5

    .line 995
    :cond_2
    iget v9, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v6, v9

    .line 999
    .local v6, "newPos":F
    :goto_1
    iget v9, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v9

    .line 1000
    .local v2, "duration":J
    cmpl-float v9, p2, v10

    if-eqz v9, :cond_6

    .line 1001
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v10

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    int-to-long v10, v9

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1009
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v1, v12, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1010
    invoke-direct {p0, v1, v6}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1011
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v9, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1012
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1013
    new-instance v9, Lcom/android/systemui/SwipeHelper$8;

    invoke-direct {v9, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$8;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1019
    new-instance v9, Lcom/android/systemui/SwipeHelper$9;

    invoke-direct {v9, p0, p1}, Lcom/android/systemui/SwipeHelper$9;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1025
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1026
    .local v5, "moveContentAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v0, v9, v8

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v6}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v9, v12

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1029
    sget-object v7, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1030
    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1031
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1033
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":J
    .end local v4    # "isLayoutRtl":Z
    .end local v5    # "moveContentAnimatorSet":Landroid/animation/AnimatorSet;
    .end local v6    # "newPos":F
    :cond_3
    return-void

    :cond_4
    move v4, v8

    .line 987
    goto/16 :goto_0

    .line 997
    .restart local v4    # "isLayoutRtl":Z
    :cond_5
    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    .restart local v6    # "newPos":F
    goto :goto_1

    .line 1006
    .restart local v2    # "duration":J
    :cond_6
    iget v9, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v9

    goto :goto_2
.end method

.method private setSidesVisibility(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 942
    const v1, 0x7f0f031c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 943
    .local v0, "rViewGroup":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 947
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 154
    cmpl-float v7, p2, v9

    if-nez v7, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const/4 v2, 0x0

    .line 159
    .local v2, "nbgView":Landroid/view/View;
    const/4 v0, 0x0

    .line 160
    .local v0, "dbgView":Landroid/view/View;
    move-object v3, p1

    .line 161
    .local v3, "targetView":Landroid/view/View;
    sget-boolean v7, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v7, :cond_5

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 164
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    if-eqz v7, :cond_a

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 166
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 168
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    .line 182
    .local v4, "x":F
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v7, p2

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    .line 184
    const-string v6, "SwipeSides"

    const-string v7, "setTranslation():2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsZeroSwipeSize:Z

    .line 187
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 188
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 189
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 190
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 198
    :cond_2
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    if-ne v7, v5, :cond_3

    .line 199
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_6

    .line 200
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    cmpl-float v7, v4, v7

    if-nez v7, :cond_3

    .line 201
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    .line 220
    :cond_3
    :goto_1
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v7, p2

    cmpl-float v7, v7, v9

    if-lez v7, :cond_7

    move v1, v5

    .line 221
    .local v1, "isGreaterThanZero":Z
    :goto_2
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_4

    .line 222
    if-nez v1, :cond_8

    move v1, v5

    .line 224
    :cond_4
    :goto_3
    if-nez v1, :cond_9

    .line 259
    .end local v1    # "isGreaterThanZero":Z
    .end local v4    # "x":F
    :cond_5
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_e

    .line 260
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 261
    sget-boolean v5, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 262
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 263
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 204
    .restart local v4    # "x":F
    :cond_6
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v7, v7

    cmpl-float v7, v4, v7

    if-nez v7, :cond_3

    .line 205
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v7, v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    goto :goto_1

    :cond_7
    move v1, v6

    .line 220
    goto :goto_2

    .restart local v1    # "isGreaterThanZero":Z
    :cond_8
    move v1, v6

    .line 222
    goto :goto_3

    .line 227
    :cond_9
    const-string v6, "SwipeSides"

    const-string v7, "setTranslation():3"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsZeroSwipeSize:Z

    .line 230
    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 231
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 233
    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 240
    .end local v1    # "isGreaterThanZero":Z
    .end local v4    # "x":F
    :cond_a
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeBlocked:Z

    if-eqz v7, :cond_5

    .line 241
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    .line 242
    .restart local v4    # "x":F
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v7, p2

    cmpl-float v7, v7, v9

    if-lez v7, :cond_c

    move v1, v5

    .line 243
    .restart local v1    # "isGreaterThanZero":Z
    :goto_4
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_b

    .line 244
    if-nez v1, :cond_d

    move v1, v5

    .line 246
    :cond_b
    :goto_5
    if-nez v1, :cond_5

    .line 249
    const-string v6, "SwipeSides"

    const-string v7, "setTranslation():4"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsZeroSwipeSize:Z

    .line 252
    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .end local v1    # "isGreaterThanZero":Z
    :cond_c
    move v1, v6

    .line 242
    goto :goto_4

    .restart local v1    # "isGreaterThanZero":Z
    :cond_d
    move v1, v6

    .line 244
    goto :goto_5

    .line 266
    .end local v1    # "isGreaterThanZero":Z
    .end local v4    # "x":F
    :cond_e
    invoke-virtual {v3, p2}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method private snapContentView(Landroid/view/View;F)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 834
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 836
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 837
    const/4 v4, 0x0

    invoke-virtual {v1, v8, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 838
    invoke-direct {p0, v1, v7}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 839
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v2, 0x96

    .line 840
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 841
    new-instance v4, Lcom/android/systemui/SwipeHelper$6;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$6;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 848
    new-instance v4, Lcom/android/systemui/SwipeHelper$7;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/SwipeHelper$7;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 854
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 855
    .local v3, "snapAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 858
    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 859
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 861
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":I
    .end local v3    # "snapAnimatorSet":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private updateSidesSwipeProgressFromOffset(Landroid/view/View;)V
    .locals 9
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 950
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 951
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 952
    invoke-direct {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    .line 953
    .local v3, "position":F
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    if-ne v7, v5, :cond_3

    move v2, v5

    .line 954
    .local v2, "isLayoutRtl":Z
    :goto_0
    cmpl-float v7, v3, v8

    if-lez v7, :cond_4

    move v1, v5

    .line 955
    .local v1, "isGreaterThanZero":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 956
    if-nez v1, :cond_5

    move v1, v5

    .line 970
    :cond_0
    :goto_2
    const v5, 0x7f0f031c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 971
    .local v4, "rViewGroup":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 972
    if-nez v1, :cond_2

    .line 973
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    .line 974
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 976
    :cond_1
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    div-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 981
    .end local v1    # "isGreaterThanZero":Z
    .end local v2    # "isLayoutRtl":Z
    .end local v3    # "position":F
    .end local v4    # "rViewGroup":Landroid/view/View;
    :cond_2
    return-void

    .restart local v3    # "position":F
    :cond_3
    move v2, v6

    .line 953
    goto :goto_0

    .restart local v2    # "isLayoutRtl":Z
    :cond_4
    move v1, v6

    .line 954
    goto :goto_1

    .restart local v1    # "isGreaterThanZero":Z
    :cond_5
    move v1, v6

    .line 956
    goto :goto_2
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 5
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 300
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v1

    .line 301
    .local v1, "swipeProgress":F
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    if-eqz p2, :cond_1

    .line 303
    move v0, v1

    .line 304
    .local v0, "alpha":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    .line 305
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 314
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 318
    .end local v0    # "alpha":F
    :cond_1
    sget-boolean v2, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v2, :cond_2

    .line 319
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeBlocked:Z

    if-eqz v2, :cond_2

    .line 320
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 321
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V

    .line 326
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 327
    return-void

    .line 308
    .restart local v0    # "alpha":F
    :cond_3
    sget-boolean v2, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-nez v2, :cond_0

    .line 309
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public clickNotificationLeftButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 811
    return-void
.end method

.method public clickNotificationRightButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 814
    return-void
.end method

.method public dismissChild(Landroid/view/View;F)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const-wide/16 v4, 0x0

    .line 478
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    .line 479
    return-void
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "endAction"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "useAccelerateInterpolator"    # Z
    .param p7, "fixedDuration"    # J

    .prologue
    .line 491
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 492
    .local v7, "animView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v9

    .line 494
    .local v9, "canAnimViewBeDismissed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v11, 0x1

    .line 497
    .local v11, "isLayoutRtl":Z
    :goto_0
    const/4 v10, 0x0

    .line 499
    .local v10, "direction":I
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_6

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    if-eqz v11, :cond_6

    .line 506
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    neg-float v14, v2

    .line 510
    .local v14, "newPos":F
    if-eqz v11, :cond_5

    const/4 v10, 0x1

    .line 522
    :goto_1
    move v5, v10

    .line 525
    .local v5, "dismissDirection":I
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_9

    .line 526
    iget v2, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v12, v2

    .line 527
    .local v12, "duration":J
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_8

    .line 528
    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 539
    :goto_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 540
    invoke-direct {p0, v7, v14}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 541
    .local v8, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_a

    .line 542
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 546
    :goto_3
    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 547
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_3

    .line 548
    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 550
    :cond_3
    new-instance v2, Lcom/android/systemui/SwipeHelper$2;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 567
    new-instance v2, Lcom/android/systemui/SwipeHelper$3;

    invoke-direct {v2, p0, v7, v9}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 572
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    .line 573
    return-void

    .line 494
    .end local v5    # "dismissDirection":I
    .end local v8    # "anim":Landroid/animation/ObjectAnimator;
    .end local v10    # "direction":I
    .end local v11    # "isLayoutRtl":Z
    .end local v12    # "duration":J
    .end local v14    # "newPos":F
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 510
    .restart local v10    # "direction":I
    .restart local v11    # "isLayoutRtl":Z
    .restart local v14    # "newPos":F
    :cond_5
    const/4 v10, -0x1

    goto :goto_1

    .line 514
    .end local v14    # "newPos":F
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v14

    .line 518
    .restart local v14    # "newPos":F
    if-eqz v11, :cond_7

    const/4 v10, -0x1

    :goto_4
    goto :goto_1

    :cond_7
    const/4 v10, 0x1

    goto :goto_4

    .line 533
    .restart local v5    # "dismissDirection":I
    .restart local v12    # "duration":J
    :cond_8
    iget v2, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v12, v2

    goto :goto_2

    .line 536
    .end local v12    # "duration":J
    :cond_9
    move-wide/from16 v12, p7

    .restart local v12    # "duration":J
    goto :goto_2

    .line 544
    .restart local v8    # "anim":Landroid/animation/ObjectAnimator;
    :cond_a
    sget-object v2, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3
.end method

.method public getSwipingView()Landroid/view/View;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 368
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 470
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_2

    :cond_1
    move v8, v7

    :cond_2
    move v7, v8

    :goto_1
    return v7

    .line 370
    :pswitch_0
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 371
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 372
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 373
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 374
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    .line 375
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_7

    .line 376
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v9}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 377
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v9}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 380
    sget-boolean v6, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v6, :cond_4

    .line 381
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_3

    .line 382
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v9}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeBlocked(Landroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeBlocked:Z

    .line 384
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    if-ne v6, v7, :cond_9

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    .line 385
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v9, p0, Lcom/android/systemui/SwipeHelper;->mSidesPadding:I

    sub-int/2addr v6, v9

    int-to-float v6, v6

    iput v6, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    .line 389
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 393
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v5

    .line 394
    .local v5, "x":F
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-eqz v6, :cond_7

    sget-boolean v6, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v6, v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_7

    .line 396
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v6, :cond_6

    .line 397
    new-instance v6, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v6, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 412
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    .end local v5    # "x":F
    :cond_7
    sget-boolean v6, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v6, :cond_0

    .line 418
    iput v8, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    .line 419
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    .line 420
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    .line 421
    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v6, :cond_8

    .line 422
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    .line 424
    :cond_8
    iput-object v12, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    goto/16 :goto_0

    :cond_9
    move v6, v8

    .line 384
    goto :goto_2

    .line 430
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v6, :cond_0

    .line 431
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 432
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v4

    .line 433
    .local v4, "pos":F
    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v3, v4, v6

    .line 434
    .local v3, "delta":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v9, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_a

    .line 435
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v9}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 436
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 437
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    sub-float/2addr v6, v9

    iput v6, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 443
    :cond_a
    sget-boolean v6, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v6, :cond_0

    .line 444
    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_d

    move v2, v7

    .line 445
    .local v2, "currentDirection":I
    :goto_3
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    if-eqz v6, :cond_b

    .line 446
    mul-int/lit8 v2, v2, -0x1

    .line 448
    :cond_b
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mIsZeroSwipeSize:Z

    if-eqz v6, :cond_c

    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    if-eq v2, v6, :cond_c

    .line 449
    iput v4, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 450
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mIsZeroSwipeSize:Z

    .line 452
    :cond_c
    iput v2, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    .line 453
    iput v4, p0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    goto/16 :goto_0

    .line 444
    .end local v2    # "currentDirection":I
    :cond_d
    const/4 v2, -0x1

    goto :goto_3

    .line 461
    .end local v3    # "delta":F
    .end local v4    # "pos":F
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v6, :cond_e

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_f

    :cond_e
    move v1, v7

    .line 462
    .local v1, "captured":Z
    :goto_4
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 463
    iput-object v12, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 464
    iput-object v12, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 465
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 467
    if-eqz v1, :cond_0

    goto/16 :goto_1

    .end local v1    # "captured":Z
    :cond_f
    move v1, v8

    .line 461
    goto :goto_4

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 598
    .local v5, "action":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_0

    .line 599
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 602
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 603
    const/16 v19, 0x1

    .line 726
    :goto_0
    return v19

    .line 606
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 611
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 612
    const/16 v19, 0x1

    goto :goto_0

    .line 617
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 618
    const/16 v19, 0x0

    goto :goto_0

    .line 622
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 623
    packed-switch v5, :pswitch_data_0

    .line 726
    :cond_4
    :goto_1
    const/16 v19, 0x1

    goto :goto_0

    .line 626
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 628
    sget-boolean v19, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 629
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v16

    .line 630
    .local v16, "pos":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    move/from16 v19, v0

    cmpg-float v19, v19, v16

    if-gez v19, :cond_a

    const/4 v8, 0x1

    .line 631
    .local v8, "currentDirection":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 632
    mul-int/lit8 v8, v8, -0x1

    .line 634
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mIsZeroSwipeSize:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v8, v0, :cond_6

    .line 635
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 636
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/SwipeHelper;->mIsZeroSwipeSize:Z

    .line 638
    :cond_6
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    .line 639
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    .line 643
    .end local v8    # "currentDirection":I
    .end local v16    # "pos":F
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    move/from16 v20, v0

    sub-float v9, v19, v20

    .line 644
    .local v9, "delta":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 645
    .local v4, "absDelta":F
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v4, v19

    if-ltz v19, :cond_8

    .line 646
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 650
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v17

    .line 655
    .local v17, "size":F
    const v19, 0x3e19999a    # 0.15f

    mul-float v13, v19, v17

    .line 656
    .local v13, "maxScrollDistance":F
    cmpl-float v19, v4, v17

    if-ltz v19, :cond_c

    .line 657
    const/16 v19, 0x0

    cmpl-float v19, v9, v19

    if-lez v19, :cond_b

    move v9, v13

    .line 668
    .end local v13    # "maxScrollDistance":F
    .end local v17    # "size":F
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 630
    .end local v4    # "absDelta":F
    .end local v9    # "delta":F
    .restart local v16    # "pos":F
    :cond_a
    const/4 v8, -0x1

    goto/16 :goto_2

    .line 657
    .end local v16    # "pos":F
    .restart local v4    # "absDelta":F
    .restart local v9    # "delta":F
    .restart local v13    # "maxScrollDistance":F
    .restart local v17    # "size":F
    :cond_b
    neg-float v9, v13

    goto :goto_3

    .line 659
    :cond_c
    div-float v19, v9, v17

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v9, v13, v19

    goto :goto_3

    .line 677
    .end local v4    # "absDelta":F
    .end local v9    # "delta":F
    .end local v13    # "maxScrollDistance":F
    .end local v17    # "size":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 678
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    move/from16 v20, v0

    mul-float v14, v19, v20

    .line 679
    .local v14, "maxVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 680
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    move/from16 v20, v0

    mul-float v10, v19, v20

    .line 681
    .local v10, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v18

    .line 682
    .local v18, "velocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v15

    .line 686
    .local v15, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fd999999999999aL    # 0.4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    cmpl-double v19, v20, v22

    if-lez v19, :cond_e

    const/4 v6, 0x1

    .line 688
    .local v6, "childSwipedFarEnough":Z
    :goto_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v19, v19, v10

    if-lez v19, :cond_11

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_11

    const/16 v19, 0x0

    cmpl-float v19, v18, v19

    if-lez v19, :cond_f

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_10

    const/16 v20, 0x1

    :goto_6
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    const/4 v7, 0x1

    .line 692
    .local v7, "childSwipedFastEnough":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    move/from16 v19, v0

    if-nez v19, :cond_12

    const/4 v11, 0x1

    .line 698
    .local v11, "falsingDetected":Z
    :goto_8
    if-nez v11, :cond_13

    if-nez v7, :cond_d

    if-eqz v6, :cond_13

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    const/4 v12, 0x1

    .line 701
    .local v12, "isEnough":Z
    :goto_9
    if-eqz v12, :cond_1b

    .line 702
    sget-boolean v19, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 705
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v7, :cond_14

    .end local v18    # "velocity":F
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->moveContentView(Landroid/view/View;F)V

    .line 710
    :goto_b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    goto/16 :goto_1

    .line 686
    .end local v6    # "childSwipedFarEnough":Z
    .end local v7    # "childSwipedFastEnough":Z
    .end local v11    # "falsingDetected":Z
    .end local v12    # "isEnough":Z
    .restart local v18    # "velocity":F
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 688
    .restart local v6    # "childSwipedFarEnough":Z
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_10
    const/16 v20, 0x0

    goto :goto_6

    :cond_11
    const/4 v7, 0x0

    goto :goto_7

    .line 692
    .restart local v7    # "childSwipedFastEnough":Z
    :cond_12
    const/4 v11, 0x0

    goto :goto_8

    .line 698
    .restart local v11    # "falsingDetected":Z
    :cond_13
    const/4 v12, 0x0

    goto :goto_9

    .line 706
    .restart local v12    # "isEnough":Z
    :cond_14
    const/16 v18, 0x0

    goto :goto_a

    .line 708
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v7, :cond_16

    .end local v18    # "velocity":F
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V

    goto :goto_b

    .restart local v18    # "velocity":F
    :cond_16
    const/16 v18, 0x0

    goto :goto_c

    .line 712
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_1a

    sget-boolean v19, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_1a

    .line 714
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v7, :cond_19

    .end local v18    # "velocity":F
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .restart local v18    # "velocity":F
    :cond_19
    const/16 v18, 0x0

    goto :goto_d

    .line 716
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/SwipeHelper;->doSnap(ZF)V

    goto/16 :goto_1

    .line 720
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/SwipeHelper;->doSnap(ZF)V

    goto/16 :goto_1

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeLongPressCallback()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 363
    :cond_0
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 121
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 122
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    .line 118
    return-void
.end method

.method public setMaxSwipeProgress(F)V
    .locals 0
    .param p1, "maxSwipeProgress"    # F

    .prologue
    .line 283
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    .line 284
    return-void
.end method

.method public setMinSwipeProgress(F)V
    .locals 0
    .param p1, "minSwipeProgress"    # F

    .prologue
    .line 279
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    .line 280
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 125
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 126
    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 576
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 577
    .local v1, "animView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 578
    .local v2, "canAnimViewBeDismissed":Z
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 579
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v3, 0x96

    .line 580
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 581
    new-instance v4, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 586
    new-instance v4, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 592
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 593
    return-void
.end method

.method public snapContentView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 817
    if-eqz p2, :cond_1

    .line 818
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 821
    .local v0, "contentView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 822
    .local v2, "nbgView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 824
    .local v1, "dbgView":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 825
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 826
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 827
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 828
    const/16 v3, 0x8

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/SwipeHelper;->setSidesVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method
