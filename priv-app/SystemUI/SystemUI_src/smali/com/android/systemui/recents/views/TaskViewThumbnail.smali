.class public Lcom/android/systemui/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# instance fields
.field mBitmapRect:Landroid/graphics/RectF;

.field mBitmapShader:Landroid/graphics/BitmapShader;

.field mClipRect:Landroid/graphics/Rect;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDimAlpha:F

.field mDrawPaint:Landroid/graphics/Paint;

.field mInvisible:Z

.field mLayoutRect:Landroid/graphics/RectF;

.field mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field mScaleMatrix:Landroid/graphics/Matrix;

.field mTaskBar:Landroid/view/View;

.field mThumbnailAlpha:F

.field mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

.field mThumbnailAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    .line 66
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewThumbnail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail$1;-><init>(Lcom/android/systemui/recents/views/TaskViewThumbnail;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    .line 103
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 114
    return-void
.end method

.method onFocusChanged(Z)V
    .locals 5
    .param p1, "focused"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x96

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 239
    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getAlpha()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getAlpha()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    .line 123
    :cond_0
    return-void
.end method

.method prepareEnterRecentsAnimation(Z)V
    .locals 1
    .param p1, "isTaskViewLaunchTargetTask"    # Z

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    .line 260
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 261
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    goto :goto_0
.end method

.method rebindToTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 225
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setDimAlpha(F)V
    .locals 0
    .param p1, "dimAlpha"    # F

    .prologue
    .line 219
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 221
    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 138
    if-eqz p1, :cond_0

    .line 139
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 149
    return-void

    .line 145
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method startEnterRecentsAnimation(ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "delay"    # I
    .param p2, "postAnimRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method startFadeAnimation(FIILjava/lang/Runnable;)V
    .locals 4
    .param p1, "finalAlpha"    # F
    .param p2, "delay"    # I
    .param p3, "duration"    # I
    .param p4, "postAnimRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 277
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 278
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 282
    if-eqz p4, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewThumbnail$2;

    invoke-direct {v1, p0, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail$2;-><init>(Lcom/android/systemui/recents/views/TaskViewThumbnail;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 291
    return-void
.end method

.method startLaunchTaskAnimation(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "postAnimRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 271
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method unbindFromTask()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 235
    return-void
.end method

.method updateClipToTaskBar(Landroid/view/View;)V
    .locals 5
    .param p1, "taskBar"    # Landroid/view/View;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v0, v1

    .line 184
    .local v0, "top":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setClipBounds(Landroid/graphics/Rect;)V

    .line 186
    return-void
.end method

.method updateThumbnailPaintFilter()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 153
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v3, :cond_0

    .line 169
    :goto_0
    return-void

    .line 156
    :cond_0
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v2, v3

    .line 157
    .local v2, "mul":I
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailAlpha:F

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v0, v3

    .line 158
    .local v0, "add":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-static {v7, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/LightingColorFilter;->setColorMultiply(I)V

    .line 160
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    const/4 v4, 0x0

    invoke-static {v4, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/LightingColorFilter;->setColorAdd(I)V

    .line 161
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 162
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    goto :goto_0

    .line 164
    :cond_1
    add-int v1, v2, v0

    .line 165
    .local v1, "grey":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 166
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-static {v7, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method updateThumbnailScale()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 175
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 177
    :cond_0
    return-void
.end method

.method updateThumbnailVisibility(II)V
    .locals 3
    .param p1, "clipBottom"    # I
    .param p2, "clipRight"    # I

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    .line 195
    .local v0, "invisible":Z
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-eqz v1, :cond_2

    .line 196
    const/4 v0, 0x0

    .line 205
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eq v0, v1, :cond_1

    .line 206
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    .line 207
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 212
    :cond_1
    return-void

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
