.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;
.super Landroid/view/View;
.source "KeyguardEffectViewZoomPanning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovingImageView"
.end annotation


# static fields
.field private static final BASIC_IMAGE_SIZE:F = 2560.0f

.field private static final CATEGORY_CODE_PET:Ljava/lang/String; = "BGA"

.field private static final DEFAULT_ANIMATION_FRAME:I = 0x3e8

.field private static final DEFAULT_CAMERA_ZOOM:F = 1.5f

.field private static final DEFAULT_CAMERA_ZOOM_FOR_PET:F = 1.2f

.field private static final DOUBLE_TAP_ANIMATION_FRAME:I = 0x8

.field private static final FACE_ZOOMIN_ANIMATION_FRAME:I = 0x258

.field private static final KEY_WALLPAPER_INFO_CATEGORY_CODE:Ljava/lang/String; = "keyguard_wu_wallpaper_info_category_code"

.field private static final MAXIMUM_CAMERA_ZOOM:F = 2.5f

.field private static final MAXIMUM_CAMERA_ZOOM_FOR_PET:F = 1.5f

.field private static final MAX_GOAL_POINT:I = 0x2

.field private static final OVERLAP_ANIMATION_FRAME:I = 0x28

.field public static final RANDOM:I = -0x1

.field private static final REVERT_ANIMATION_FRAME:I = 0x8

.field private static final THRESHOLD_CAMERA_ZOOM:F = 1.2f

.field private static final TOUCH_MOVE_COE:F = 0.5f


# instance fields
.field private SECOND_BORDER:I

.field private mAnimationHandler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCameraCenterPosX:F

.field private mCameraCenterPosY:F

.field private mCameraZoomIn:F

.field private mCurrentAnimationFrame:I

.field private mCurrentBitmapPath:Ljava/lang/String;

.field private mCurrentCategoryCode:Ljava/lang/String;

.field private mDefaultCameraHeight:I

.field private mDefaultCameraWidth:I

.field private mDefaultOverlapCameraHeight:I

.field private mDefaultOverlapCameraWidth:I

.field private mDistance:F

.field private mDoubleTapCheckHandler:Landroid/os/Handler;

.field private mGoalAnimationFrame:I

.field private mIsAnimating:Z

.field private mIsDoubleTapWaiting:Z

.field private mIsOverlap:Z

.field private mIsPetImage:Z

.field private mLastPinchDistance:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mMovingCoe:F

.field private mNowGoalIndex:I

.field private mOverlapBitmap:Landroid/graphics/Bitmap;

.field private mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

.field private mOverlapBitmapHeight:I

.field private mOverlapBitmapWidth:I

.field private mOverlapCameraCenterPosX:F

.field private mOverlapCameraCenterPosY:F

.field private mOverlapCameraZoomIn:F

.field private mPanningGoalIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPanningGoalX:F

.field private mPanningGoalY:F

.field private mPanningInterpolator:Landroid/view/animation/Interpolator;

.field private mPanningRandom:Z

.field private mPanningStartX:F

.field private mPanningStartY:F

.field private mPinchZoomPivotX:F

.field private mPinchZoomPivotY:F

.field private mPinchZoomStartMinThreshold:I

.field private mSavedCurrentAnimationFrame:I

.field private mSavedGoalAnimationFrame:I

.field private mSavedPanningGoalX:F

.field private mSavedPanningGoalY:F

.field private mSavedPanningStartX:F

.field private mSavedPanningStartY:F

.field private mSavedState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field private mSavedZoomStart:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field private mThresholdCameraZoom:F

.field private mTouchDownCameraPosX:F

.field private mTouchDownCameraPosY:F

.field private mTouchDownCameraZoom:F

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchMoveStartMinThreshold:I

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private mZoomingStart:F

.field private onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 649
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 651
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    .line 652
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 540
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    .line 604
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 605
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 607
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 608
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 609
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 610
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 611
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 613
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    .line 614
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    .line 615
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    .line 616
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    .line 617
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    .line 619
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    .line 620
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    .line 621
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    .line 622
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    .line 623
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    .line 624
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    .line 625
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    .line 626
    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 630
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    .line 632
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    .line 635
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    .line 636
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    .line 637
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    .line 639
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    .line 640
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    .line 1453
    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    .line 1676
    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    .line 1682
    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 654
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 655
    .local v1, "displaymetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    .line 656
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    .line 658
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 662
    const/high16 v0, 0x43200000    # 160.0f

    .line 663
    .local v0, "cocktailBarSize":F
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    .line 665
    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cocktailBarSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v0    # "cocktailBarSize":F
    :cond_0
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchMoveStartMinThreshold:I

    .line 670
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomStartMinThreshold:I

    .line 672
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->SECOND_BORDER:I

    .line 678
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    .line 679
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    .line 680
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    .line 681
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    .line 683
    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, p2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 685
    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 686
    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWindowWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWindowHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_1
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    .line 689
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 690
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    .line 691
    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 692
    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 693
    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MovingImageView() mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->initBitmap()Z

    .line 696
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateFaceList()V

    .line 698
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->initCamera()V

    .line 699
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    .line 701
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    .line 702
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateFaceList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1, "x1"    # F

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimation(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->panningAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1, "x1"    # I

    .prologue
    .line 498
    iput p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->restoreAnimationInformation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->overlapAnimation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1, "x1"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v0

    return v0
.end method

.method private calculateAnimationFrame(FFFF)I
    .locals 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    .line 1736
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v1

    .line 1737
    .local v1, "distance":F
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 1739
    .local v0, "animationFrame":I
    return v0
.end method

.method private calculateDistance(FFFF)F
    .locals 4
    .param p1, "firstX"    # F
    .param p2, "firstY"    # F
    .param p3, "lastX"    # F
    .param p4, "lastY"    # F

    .prologue
    .line 1729
    sub-float v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1730
    .local v0, "diffX":F
    sub-float v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1732
    .local v1, "diffY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private findNearestFaceIndexFromCurrentCameraPos()I
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x0

    .line 998
    .local v0, "findIndex":I
    return v0
.end method

.method private getCanvasScale(Z)F
    .locals 3
    .param p1, "isOverlapCamera"    # Z

    .prologue
    .line 1794
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1795
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float v0, v1, v2

    .line 1800
    .local v0, "cameraWidth":F
    :goto_0
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1

    .line 1797
    .end local v0    # "cameraWidth":F
    :cond_0
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float v0, v1, v2

    .restart local v0    # "cameraWidth":F
    goto :goto_0
.end method

.method private getCanvasTranslate(ZZ)F
    .locals 11
    .param p1, "isOverlapCamera"    # Z
    .param p2, "isX"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 1744
    if-ne p2, v6, :cond_3

    .line 1749
    if-ne p1, v6, :cond_1

    .line 1750
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v3, v6, v8

    .line 1751
    .local v3, "cameraHalfWidth":F
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    sub-float v4, v6, v3

    .line 1752
    .local v4, "canvasTranslateX":F
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    int-to-float v1, v6

    .line 1759
    .local v1, "bitmapWidth":F
    :goto_0
    cmpg-float v6, v4, v10

    if-gez v6, :cond_2

    .line 1760
    const/4 v4, 0x0

    .line 1787
    .end local v1    # "bitmapWidth":F
    .end local v3    # "cameraHalfWidth":F
    .end local v4    # "canvasTranslateX":F
    :cond_0
    :goto_1
    return v4

    .line 1754
    :cond_1
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v3, v6, v8

    .line 1755
    .restart local v3    # "cameraHalfWidth":F
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    sub-float v4, v6, v3

    .line 1756
    .restart local v4    # "canvasTranslateX":F
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v1, v6

    .restart local v1    # "bitmapWidth":F
    goto :goto_0

    .line 1761
    :cond_2
    mul-float v6, v3, v9

    sub-float v6, v1, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_0

    .line 1762
    mul-float v6, v3, v9

    sub-float v4, v1, v6

    goto :goto_1

    .line 1771
    .end local v1    # "bitmapWidth":F
    .end local v3    # "cameraHalfWidth":F
    .end local v4    # "canvasTranslateX":F
    :cond_3
    if-ne p1, v6, :cond_5

    .line 1772
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v2, v6, v8

    .line 1773
    .local v2, "cameraHalfHeight":F
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    sub-float v5, v6, v2

    .line 1774
    .local v5, "canvasTranslateY":F
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    int-to-float v0, v6

    .line 1781
    .local v0, "bitmapHeight":F
    :goto_2
    cmpg-float v6, v5, v10

    if-gez v6, :cond_6

    .line 1782
    const/4 v5, 0x0

    :cond_4
    :goto_3
    move v4, v5

    .line 1787
    goto :goto_1

    .line 1776
    .end local v0    # "bitmapHeight":F
    .end local v2    # "cameraHalfHeight":F
    .end local v5    # "canvasTranslateY":F
    :cond_5
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v2, v6, v8

    .line 1777
    .restart local v2    # "cameraHalfHeight":F
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    sub-float v5, v6, v2

    .line 1778
    .restart local v5    # "canvasTranslateY":F
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v0, v6

    .restart local v0    # "bitmapHeight":F
    goto :goto_2

    .line 1783
    :cond_6
    mul-float v6, v2, v9

    sub-float v6, v0, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    .line 1784
    mul-float v6, v2, v9

    sub-float v5, v0, v6

    goto :goto_3
.end method

.method private getDefaultCameraZoomByCategory()F
    .locals 1

    .prologue
    .line 1223
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    if-eqz v0, :cond_0

    .line 1224
    const v0, 0x3f99999a    # 1.2f

    .line 1226
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0
.end method

.method private getMaximumCameraZoomByCategory()F
    .locals 1

    .prologue
    .line 1230
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    if-eqz v0, :cond_0

    .line 1231
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1233
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40200000    # 2.5f

    goto :goto_0
.end method

.method private getRandom(FF)I
    .locals 4
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 1725
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-float v2, p2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleDoubleTap()V
    .locals 3

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Z)Z

    .line 1182
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1184
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    .line 1192
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    const-string v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoubleTap() mIsAnimating : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsDoubleTapPuase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_0
    return-void

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Z)Z

    .line 1188
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1189
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    goto :goto_0
.end method

.method private handlePinchZoom(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v0

    .line 1428
    .local v0, "distance":F
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    .line 1429
    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    .line 1432
    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomStartMinThreshold:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1436
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1438
    .local v1, "scaleFactor":F
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimationByRate(F)V

    .line 1440
    cmpl-float v2, v1, v6

    if-lez v2, :cond_3

    .line 1441
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 1442
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 1445
    :cond_3
    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    goto :goto_0
.end method

.method private makeRandomPanningPoint()Landroid/graphics/Point;
    .locals 14

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    .line 1003
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    move v5, v9

    .line 1005
    .local v5, "isLeftSide":Z
    :goto_0
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v10, v11, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1008
    .local v1, "cameraZoom":F
    :goto_1
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v1

    mul-float v6, v10, v13

    .line 1009
    .local v6, "leftBorder":F
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v10, v10

    sub-float v7, v10, v6

    .line 1010
    .local v7, "rightBorder":F
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v10, v10

    div-float/2addr v10, v1

    mul-float v8, v10, v13

    .line 1011
    .local v8, "topBorder":F
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v10, v10

    sub-float v0, v10, v8

    .line 1013
    .local v0, "bottomBorder":F
    if-ne v5, v9, :cond_3

    .line 1014
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v12

    add-float/2addr v6, v10

    .line 1019
    :goto_2
    cmpg-float v10, v7, v6

    if-gez v10, :cond_0

    .line 1020
    if-ne v5, v9, :cond_4

    .line 1021
    move v6, v7

    .line 1027
    :cond_0
    :goto_3
    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v3

    .line 1028
    .local v3, "goalX":I
    invoke-direct {p0, v8, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v4

    .line 1030
    .local v4, "goalY":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1032
    .local v2, "goalPoint":Landroid/graphics/Point;
    return-object v2

    .line 1003
    .end local v0    # "bottomBorder":F
    .end local v1    # "cameraZoom":F
    .end local v2    # "goalPoint":Landroid/graphics/Point;
    .end local v3    # "goalX":I
    .end local v4    # "goalY":I
    .end local v5    # "isLeftSide":Z
    .end local v6    # "leftBorder":F
    .end local v7    # "rightBorder":F
    .end local v8    # "topBorder":F
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1005
    .restart local v5    # "isLeftSide":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v1

    goto :goto_1

    .line 1016
    .restart local v0    # "bottomBorder":F
    .restart local v1    # "cameraZoom":F
    .restart local v6    # "leftBorder":F
    .restart local v7    # "rightBorder":F
    .restart local v8    # "topBorder":F
    :cond_3
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v12

    sub-float/2addr v7, v10

    goto :goto_2

    .line 1023
    :cond_4
    move v7, v6

    goto :goto_3
.end method

.method private overlapAnimation()V
    .locals 5

    .prologue
    .line 1073
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1078
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    .line 1079
    return-void
.end method

.method private panningAnimation()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1082
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    if-lt v1, v2, :cond_4

    .line 1083
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_0

    .line 1084
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfPanning()V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1089
    .local v0, "prevState":Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$1;->$SwitchMap$com$android$keyguard$sec$effect$KeyguardEffectViewZoomPanning$CameraState:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1117
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1120
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    if-nez v1, :cond_2

    .line 1122
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1125
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    if-nez v1, :cond_3

    .line 1126
    const/16 v1, 0x258

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1129
    :cond_3
    const-string v1, "KeyguardEffectViewZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "panningAnimation() state change :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    .end local v0    # "prevState":Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    :cond_4
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1133
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 1137
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 1142
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    .line 1144
    :goto_1
    return-void

    .line 1091
    .restart local v0    # "prevState":Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 1092
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_1

    .line 1094
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->restoreAnimationInformation()V

    goto :goto_1

    .line 1098
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    .line 1101
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    .line 1104
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    .line 1107
    :pswitch_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    .line 1110
    :pswitch_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 1111
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    .line 1113
    :cond_6
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private replaceBitmapAndCameraData()V
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "replaceBitmapAndCameraData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    .line 1247
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    .line 1248
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    .line 1249
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    .line 1250
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    .line 1252
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    .line 1253
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    .line 1254
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    .line 1256
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1258
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    .line 1259
    return-void
.end method

.method private restoreAnimationInformation()V
    .locals 1

    .prologue
    .line 1211
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 1212
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 1213
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 1214
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 1215
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1216
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1217
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1219
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1220
    return-void
.end method

.method private revertBitmapToOverlapBitmap()V
    .locals 2

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "revertBitmapToOverlapBitmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    .line 1266
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    .line 1267
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    .line 1268
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    .line 1270
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1271
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 1272
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 1274
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1276
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    .line 1279
    return-void
.end method

.method private saveCurrentAnimationInformation()V
    .locals 1

    .prologue
    .line 1199
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    .line 1200
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    .line 1201
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    .line 1202
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    .line 1203
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    .line 1204
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    .line 1205
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    .line 1207
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1208
    return-void
.end method

.method private setGoalOfDoubleTabPause()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1355
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setGoalOfDoubleTabPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1359
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 1360
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 1362
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 1363
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 1365
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    .line 1367
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1368
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1369
    return-void
.end method

.method private setGoalOfOverlap()V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setGoalOfOverlap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1347
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 1348
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 1350
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1351
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1352
    return-void
.end method

.method private setGoalOfPanning()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 1282
    iput v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1284
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1286
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 1287
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 1289
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1294
    .local v2, "faceGoalIndex":I
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->makeRandomPanningPoint()Landroid/graphics/Point;

    move-result-object v3

    .line 1295
    .local v3, "goalPoint":Landroid/graphics/Point;
    const/16 v4, 0x3e8

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1296
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    .line 1310
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 1311
    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 1313
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1314
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setGoalOfPanning() faceGoalIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", go to ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_0
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v5

    div-float/2addr v4, v5

    mul-float v1, v4, v7

    .line 1319
    .local v1, "defaultCameraHalfWidth":F
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v5

    div-float/2addr v4, v5

    mul-float v0, v4, v7

    .line 1322
    .local v0, "defaultCameraHalfHeight":F
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_4

    .line 1323
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 1328
    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    cmpg-float v4, v4, v0

    if-gez v4, :cond_5

    .line 1329
    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 1334
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    .line 1336
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 1337
    iput v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    .line 1339
    :cond_3
    return-void

    .line 1324
    :cond_4
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    add-float/2addr v4, v1

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 1325
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    goto :goto_0

    .line 1330
    :cond_5
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 1331
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    goto :goto_1
.end method

.method private setGoalOfTouchRelease()V
    .locals 2

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setGoalOfTouchRelease()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1376
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 1377
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 1379
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 1380
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 1382
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1383
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1384
    return-void
.end method

.method private sortFaceListClockwise()V
    .locals 0

    .prologue
    .line 950
    return-void
.end method

.method private updateFaceList()V
    .locals 0

    .prologue
    .line 903
    return-void
.end method

.method private updateGoalList()V
    .locals 3

    .prologue
    .line 953
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 962
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "iIdx":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 966
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->findNearestFaceIndexFromCurrentCameraPos()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    .line 967
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_1

    .line 968
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfOverlap()V

    .line 974
    :goto_1
    return-void

    .line 969
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 970
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    goto :goto_1

    .line 972
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfPanning()V

    goto :goto_1
.end method

.method private zoomAnimation(F)V
    .locals 5
    .param p1, "goalZoom"    # F

    .prologue
    .line 1147
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1152
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    .line 1153
    return-void
.end method

.method private zoomAnimationByRate(F)V
    .locals 3
    .param p1, "zoomRate"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1168
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    add-float v1, v2, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1170
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1171
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1176
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    .line 1177
    return-void

    .line 1172
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1173
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_0
.end method

.method private zoomAnimationByValue(F)V
    .locals 3
    .param p1, "zoomValue"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1156
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1158
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1159
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1164
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    .line 1165
    return-void

    .line 1160
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1161
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1831
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    .line 1832
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1833
    return-void
.end method

.method public correctCameraLocation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1387
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float v1, v2, v4

    .line 1388
    .local v1, "cameraHalfWidth":F
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float v0, v2, v4

    .line 1390
    .local v0, "cameraHalfHeight":F
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 1391
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 1396
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    .line 1397
    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 1401
    :cond_1
    :goto_1
    return-void

    .line 1392
    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1393
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    goto :goto_0

    .line 1398
    :cond_3
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 1399
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    goto :goto_1
.end method

.method public correctOverlapCameraLocation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1404
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float v1, v2, v4

    .line 1405
    .local v1, "overlapCameraHalfWidth":F
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float v0, v2, v4

    .line 1407
    .local v0, "overlapCameraHalfHeight":F
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 1408
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    .line 1413
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    .line 1414
    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    .line 1418
    :cond_1
    :goto_1
    return-void

    .line 1409
    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1410
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    goto :goto_0

    .line 1415
    :cond_3
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 1416
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    goto :goto_1
.end method

.method public getCurrentBitmapPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1518
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v10, v11, :cond_1

    .line 1520
    :cond_0
    const/4 v10, 0x1

    .line 1638
    :goto_0
    return v10

    .line 1523
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_2

    .line 1524
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1527
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 1528
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1636
    :cond_3
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->invalidate()V

    .line 1638
    const/4 v10, 0x1

    goto :goto_0

    .line 1530
    :pswitch_1
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 1531
    .local v8, "widthFact":F
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 1533
    .local v6, "heightFact":F
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v2, v10, v11

    .line 1534
    .local v2, "cameraHalfWidth":F
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v1, v10, v11

    .line 1536
    .local v1, "cameraHalfHeight":F
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    mul-float/2addr v10, v8

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v2

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    .line 1538
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    mul-float/2addr v10, v6

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v1

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    .line 1541
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    goto :goto_1

    .line 1544
    .end local v1    # "cameraHalfHeight":F
    .end local v2    # "cameraHalfWidth":F
    .end local v6    # "heightFact":F
    .end local v8    # "widthFact":F
    :pswitch_2
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_4

    .line 1545
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->saveCurrentAnimationInformation()V

    .line 1547
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosX:F

    .line 1548
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosY:F

    .line 1549
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    .line 1550
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    const v11, 0x3f99999a    # 1.2f

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    .line 1553
    :cond_4
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 1554
    sget-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1559
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    .line 1560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    .line 1562
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    goto/16 :goto_1

    .line 1556
    :cond_5
    sget-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchDown:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_2

    .line 1566
    :pswitch_3
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PinchZoom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v10, v11, :cond_6

    .line 1567
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->handlePinchZoom(Landroid/view/MotionEvent;)V

    .line 1570
    :cond_6
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v3, v10

    .line 1571
    .local v3, "diffX":I
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v4, v10

    .line 1573
    .local v4, "diffY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    .line 1574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    .line 1576
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    iget v12, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iget v13, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v5

    .line 1579
    .local v5, "distance":F
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchMoveStartMinThreshold:I

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_3

    .line 1583
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    .line 1584
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1586
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    int-to-float v11, v3

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 1587
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    int-to-float v11, v4

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 1589
    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    sub-float v10, v5, v10

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->SECOND_BORDER:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    iget v12, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    sub-float/2addr v11, v12

    mul-float v9, v10, v11

    .line 1592
    .local v9, "zoomValue":F
    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimationByValue(F)V

    .line 1594
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    .line 1596
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    goto/16 :goto_1

    .line 1599
    .end local v3    # "diffX":I
    .end local v4    # "diffY":I
    .end local v5    # "distance":F
    .end local v9    # "zoomValue":F
    :pswitch_4
    const/4 v7, 0x0

    .local v7, "iIdx":I
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ge v7, v10, :cond_3

    .line 1600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    if-ne v7, v10, :cond_7

    .line 1599
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1604
    :cond_7
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    .line 1605
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    goto/16 :goto_1

    .line 1611
    .end local v7    # "iIdx":I
    :pswitch_5
    sget-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1613
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 1614
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    .line 1620
    :cond_8
    :goto_4
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    if-nez v10, :cond_3

    .line 1621
    iget-boolean v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 1622
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    .line 1623
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1625
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->handleDoubleTap()V

    goto/16 :goto_1

    .line 1615
    :cond_9
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_8

    .line 1617
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfTouchRelease()V

    goto :goto_4

    .line 1627
    :cond_a
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    .line 1629
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1630
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    const-wide/16 v12, 0x12c

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public handleUnlock()V
    .locals 2

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v0, v1, :cond_0

    .line 1826
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 1828
    :cond_0
    return-void
.end method

.method public initBitmap()Z
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 710
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 711
    const-string v4, "KeyguardEffectViewZoom"

    const-string v5, "MovingImageView initBitmap()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 717
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 718
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "newBitmapPath":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_3

    .line 728
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 729
    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "initBitmap() : same bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_1
    const/4 v0, 0x0

    .line 812
    :goto_1
    return v2

    .line 720
    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "newBitmapPath":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 723
    .restart local v1    # "newBitmapPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mDisplayId:I
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)I

    move-result v5

    invoke-static {v4, v1, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 736
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-ne v4, v3, :cond_5

    .line 737
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 738
    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "initBitmap() : revert bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->revertBitmapToOverlapBitmap()V

    .line 742
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    .line 743
    sget-object v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 744
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    .line 746
    const/4 v0, 0x0

    .line 748
    goto :goto_1

    .line 751
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 752
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentBitmapPath() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newBitmapPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_8

    .line 766
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 767
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    .line 769
    const/4 v0, 0x0

    .line 789
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c

    .line 790
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    .line 791
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    .line 793
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 794
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBitmapWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mBitmapHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "keyguard_wu_wallpaper_info_category_code"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    .line 806
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "BGA"

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 808
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    :goto_3
    move v2, v3

    .line 812
    goto/16 :goto_1

    .line 770
    :cond_8
    if-nez v0, :cond_9

    .line 771
    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "initBitmap() : new bitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 774
    :cond_9
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 775
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initBitmap() : overlap bitmap, mIsAnimating = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_a
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_b

    .line 778
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->replaceBitmapAndCameraData()V

    .line 780
    :cond_b
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    .line 782
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 784
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    .line 786
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 797
    :cond_c
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    .line 798
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    .line 800
    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "mBitmap is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 810
    :cond_d
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    goto :goto_3
.end method

.method public initCamera()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 816
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MovingImageView initCamera() : mIsOverlap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsDoubleTapPuase : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 822
    .local v3, "windowAspectRatio":F
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 824
    .local v0, "bitmapAspectRation":F
    cmpg-float v4, v0, v3

    if-gtz v4, :cond_4

    .line 825
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    .line 826
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    .line 833
    :goto_0
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    if-le v4, v5, :cond_1

    .line 834
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    .line 835
    .local v2, "swapTemp":I
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    .line 836
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    .line 839
    .end local v2    # "swapTemp":I
    :cond_1
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x45200000    # 2560.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    .line 841
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 842
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDefaultCameraWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDefaultCameraHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-ne v4, v9, :cond_5

    .line 846
    :cond_3
    sget-object v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 848
    iput-boolean v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    .line 850
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 851
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 876
    :goto_1
    return-void

    .line 828
    :cond_4
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    .line 829
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    goto :goto_0

    .line 853
    :cond_5
    iget-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    if-ne v4, v9, :cond_7

    .line 854
    sget-object v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 855
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 857
    iput-boolean v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    .line 863
    :goto_2
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    sub-int v1, v4, v5

    .line 864
    .local v1, "diffHeight":I
    if-gez v1, :cond_6

    .line 865
    const/4 v1, 0x0

    .line 868
    :cond_6
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v4

    if-nez v4, :cond_8

    .line 870
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 875
    :goto_3
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    goto :goto_1

    .line 859
    .end local v1    # "diffHeight":I
    :cond_7
    sget-object v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    .line 860
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_2

    .line 873
    .restart local v1    # "diffHeight":I
    :cond_8
    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    goto :goto_3
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 1836
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    return v0
.end method

.method public isUpdatableState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1809
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_0

    .line 1821
    :goto_0
    return v0

    .line 1813
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1821
    .local v0, "isUpdatableStates":Z
    :cond_2
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1644
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasScale(Z)F

    move-result v4

    .line 1649
    .local v4, "canvasScaleFact":F
    invoke-direct {p0, v10, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v5

    .line 1650
    .local v5, "canvasTranslateX":F
    invoke-direct {p0, v10, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v6

    .line 1652
    .local v6, "canvasTranslateY":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1653
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1654
    neg-float v7, v5

    neg-float v8, v6

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1655
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1656
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1658
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 1659
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v0, v7

    .line 1662
    .local v0, "alpha":I
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1664
    invoke-direct {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasScale(Z)F

    move-result v1

    .line 1665
    .local v1, "canvasOverlapScaleFact":F
    invoke-direct {p0, v11, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v2

    .line 1666
    .local v2, "canvasOverlapTranslateX":F
    invoke-direct {p0, v11, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v3

    .line 1668
    .local v3, "canvasOverlapTranslateY":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1669
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1670
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1671
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1672
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public startAnimation()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1041
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAnimation() mIsAnimating = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> true, mState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    if-ne v2, v1, :cond_1

    .line 1054
    :goto_0
    return v0

    .line 1049
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1051
    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    .line 1052
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 1054
    goto :goto_0
.end method

.method public stopAnimation()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1058
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    const-string v1, "KeyguardEffectViewZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAnimation() mIsAnimating = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> false, mState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    if-nez v1, :cond_1

    .line 1069
    :goto_0
    return v0

    .line 1066
    :cond_1
    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    .line 1067
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    const/4 v0, 0x1

    goto :goto_0
.end method
