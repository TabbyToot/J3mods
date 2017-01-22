.class public Lcom/android/systemui/statusbar/NotificationBackgroundView;
.super Landroid/view/View;
.source "NotificationBackgroundView.java"


# instance fields
.field private mActualHeight:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mClipTopAmount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 47
    if-eqz p2, :cond_0

    .line 48
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    :cond_0
    return-void
.end method

.method private drawableStateChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 74
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawableStateChanged(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public getActualHeight()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method

.method public setActualHeight(I)V
    .locals 0
    .param p1, "actualHeight"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 109
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 118
    return-void
.end method

.method public setCustomAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 142
    const-string v0, "NotificationBackgroundView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom Alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void
.end method

.method public setCustomBackground(I)V
    .locals 2
    .param p1, "drawableResId"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 90
    return-void
.end method

.method public setRippleColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 134
    .local v0, "ripple":Landroid/graphics/drawable/RippleDrawable;
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 136
    .end local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    return-void
.end method

.method public setState([I)V
    .locals 1
    .param p1, "drawableState"    # [I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 129
    return-void
.end method

.method public setTint(I)V
    .locals 2
    .param p1, "tintColor"    # I

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 104
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
