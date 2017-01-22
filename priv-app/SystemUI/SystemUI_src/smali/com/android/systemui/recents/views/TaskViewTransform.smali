.class public Lcom/android/systemui/recents/views/TaskViewTransform;
.super Ljava/lang/Object;
.source "TaskViewTransform.java"


# instance fields
.field public alpha:F

.field p:F

.field public rect:Landroid/graphics/Rect;

.field public scale:F

.field public startDelay:I

.field public translationX:I

.field public translationY:I

.field public translationZ:F

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 36
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    .line 38
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 39
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 40
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 41
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 44
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .locals 3
    .param p1, "o"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 36
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    .line 38
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 39
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 40
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 41
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 44
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    .line 51
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 53
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    .line 55
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 56
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 57
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 58
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 59
    iget-boolean v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 60
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 61
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    .line 62
    return-void
.end method

.method public static reset(Landroid/view/View;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 177
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 178
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 179
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 180
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 181
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 182
    return-void
.end method


# virtual methods
.method public applyToTaskView(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;ZZ)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "interp"    # Landroid/view/animation/Interpolator;
    .param p4, "allowLayers"    # Z
    .param p5, "allowShadows"    # Z
    .param p6, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p7, "reduceShadow"    # Z
    .param p8, "isLandscape"    # Z

    .prologue
    .line 103
    if-lez p2, :cond_8

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 105
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    .line 109
    .local v1, "requiresLayers":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-nez v2, :cond_6

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 119
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 125
    const/4 v1, 0x1

    .line 127
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 130
    const/4 v1, 0x1

    .line 132
    :cond_3
    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    .line 133
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 135
    :cond_4
    if-eqz p6, :cond_7

    .line 136
    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 140
    :goto_1
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 172
    .end local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "requiresLayers":Z
    :cond_5
    :goto_2
    return-void

    .line 111
    .restart local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .restart local v1    # "requiresLayers":Z
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationXChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 138
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 147
    .end local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "requiresLayers":Z
    :cond_8
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsWindow:Z

    if-nez v2, :cond_c

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 155
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 157
    :cond_9
    :goto_3
    if-eqz p5, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 158
    if-eqz p7, :cond_d

    .line 159
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 164
    :cond_a
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 165
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 166
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 168
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 149
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationXChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 150
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    .line 161
    :cond_d
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_4
.end method

.method public hasAlphaChangedFrom(F)Z
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 81
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScaleChangedFrom(F)Z
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 84
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTranslationXChangedFrom(F)Z
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 88
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTranslationYChangedFrom(F)Z
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 92
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTranslationZChangedFrom(F)Z
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 68
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    .line 70
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 71
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 72
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 73
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 75
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 76
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskViewTransform delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " p: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
