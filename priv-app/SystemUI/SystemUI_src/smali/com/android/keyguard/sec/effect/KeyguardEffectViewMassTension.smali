.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewMassTension.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final sound_tap_path:Ljava/lang/String; = "/system/media/audio/ui/Tap_tension.ogg"


# instance fields
.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_MAX_ALPHA_FACTOR:F

.field private final CIRCLE_MIN_ALPHA:I

.field protected TAG:Ljava/lang/String;

.field private final TENSION_BETWEEN_FACTOR:I

.field private final TENSION_CIRCLE_PLACE_ADJUST:I

.field private final TENSION_LINE_DELETE:I

.field private final TENSION_LINE_MIN:F

.field private final TENSION_RELEASE_FACTOR:F

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field protected final UNLOCK_TEMP_THRESHOLD:D

.field private betweenLineX:I

.field private betweenLineY:I

.field private degree:D

.field private diffPressTime:J

.field private isIgnoreTouch:Z

.field private isSystemSoundChecked:Z

.field private lineSize:F

.field private mCircleCenterDot:Landroid/widget/ImageView;

.field private mCircleCenterDotAfter:Landroid/widget/ImageView;

.field private mCircleCenterDotAnim:Landroid/view/animation/Animation;

.field mCircleCenterDotFromPoint:Landroid/graphics/Point;

.field private mCircleCenterDotReleaseAnim:Landroid/view/animation/Animation;

.field protected mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

.field mCircleCenterDotToPoint:Landroid/graphics/Point;

.field private mCircleFinger:Landroid/widget/ImageView;

.field private mCircleFingerAfter:Landroid/widget/ImageView;

.field private mCircleFingerAnim:Landroid/view/animation/Animation;

.field private mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

.field protected mCircleFingerRoot:Landroid/widget/RelativeLayout;

.field private mCircleLine:Landroid/widget/ImageView;

.field private mCircleLineAfter:Landroid/widget/ImageView;

.field protected mCircleLineRoot:Landroid/widget/RelativeLayout;

.field private mCircleOuter:Landroid/widget/ImageView;

.field private mCircleOuterAfter:Landroid/widget/ImageView;

.field private mCircleOuterAnim:Landroid/view/animation/Animation;

.field protected mCircleOuterRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mDistanceRatio:D

.field private mLineAnim:Landroid/view/animation/ScaleAnimation;

.field private final mLockSoundVolume:F

.field private mSoundPool:Landroid/media/SoundPool;

.field protected mX:F

.field protected mY:F

.field private outerTensionFactorX:D

.field private outerTensionFactorY:D

.field private prevPressTime:J

.field private radian:D

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private sounds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "isProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v2, "TensionLockScreen"

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TAG:Ljava/lang/String;

    .line 56
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->CIRCLE_MAX_ALPHA:I

    .line 57
    const/16 v2, 0x32

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->CIRCLE_MIN_ALPHA:I

    .line 58
    const-wide v2, 0x3ff3333340000000L    # 1.2000000476837158

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->UNLOCK_TEMP_THRESHOLD:D

    .line 59
    const-wide v2, 0x3ff6666660000000L    # 1.399999976158142

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->UNLOCK_RELEASE_THRESHOLD:D

    .line 60
    const-wide v2, 0x4000ccccc0000000L    # 2.0999999046325684

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->UNLOCK_DRAG_THRESHOLD:D

    .line 62
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_RELEASE_FACTOR:F

    .line 63
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->CIRCLE_MAX_ALPHA_FACTOR:F

    .line 64
    const/16 v2, 0x28

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_BETWEEN_FACTOR:I

    .line 65
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_LINE_MIN:F

    .line 67
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_CIRCLE_PLACE_ADJUST:I

    .line 68
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDisplayId:I

    .line 87
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isIgnoreTouch:Z

    .line 106
    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->UNLOCK_SOUND_PLAY_TIME:J

    .line 111
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    .line 112
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    .line 572
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    .line 574
    iput-wide v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->diffPressTime:J

    .line 575
    iput-wide v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->prevPressTime:J

    .line 576
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isSystemSoundChecked:Z

    .line 124
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    .line 125
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDisplayId:I

    .line 126
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 127
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/android/keyguard/R$layout;->keyguard_mass_tension_effect_view:I

    invoke-virtual {v0, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->tension_line_delete:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_LINE_DELETE:I

    .line 131
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setLayout()V

    .line 132
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setAnimation()V

    .line 133
    invoke-direct {p0, v4, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setLineAnim(FF)V

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 137
    .local v1, "lockSoundDefaultAttenuation":I
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-float v4, v1

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLockSoundVolume:F

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->createBouncerAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 581
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 582
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 585
    .local v2, "result":I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 590
    :goto_0
    if-ne v2, v4, :cond_0

    .line 591
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isSystemSoundChecked:Z

    .line 594
    :goto_1
    return-void

    .line 586
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 593
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearAllViews()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 484
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 486
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    return-void
.end method

.method private createBouncerAnimation()Landroid/view/animation/AnimationSet;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 169
    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->x:I

    .line 170
    .local v1, "fromX":I
    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v2, v6, Landroid/graphics/Point;->y:I

    .line 171
    .local v2, "fromY":I
    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 172
    .local v3, "toX":I
    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v4, v6, Landroid/graphics/Point;->y:I

    .line 174
    .local v4, "toY":I
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 176
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    sub-int v6, v3, v1

    int-to-float v6, v6

    sub-int v7, v4, v2

    int-to-float v7, v7

    invoke-direct {v5, v8, v6, v8, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 177
    .local v5, "translate":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 178
    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 179
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 183
    new-instance v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$1;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 204
    return-object v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    const-string v0, "Wallpaper"

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    return v0
.end method

.method private playSound()V
    .locals 7

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->sounds:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLockSoundVolume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 612
    :cond_0
    return-void
.end method

.method private setAnimation()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_tention_animate_fadeout:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAnim:Landroid/view/animation/Animation;

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_tention_animate_fadeout:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAnim:Landroid/view/animation/Animation;

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_tention_animate_alpha:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAnim:Landroid/view/animation/Animation;

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_tention_animate_finger:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_tention_animate_centerdot_release:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotReleaseAnim:Landroid/view/animation/Animation;

    .line 165
    return-void
.end method

.method private setLayout()V
    .locals 1

    .prologue
    .line 141
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_in_press:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    .line 142
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_finger:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    .line 143
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_center_dot:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    .line 144
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_line:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    .line 146
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_in_press_root:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    .line 147
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_in_press_after:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    .line 149
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_finger_root:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    .line 150
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_finger_after:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    .line 152
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_center_dot_root:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    .line 153
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_center_dot_after:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    .line 155
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_line_root:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    .line 156
    sget v0, Lcom/android/keyguard/R$id;->keyguard_tension_effect_tension_line_after:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    .line 157
    return-void
.end method

.method private setLineAnim(FF)V
    .locals 4
    .param p1, "firstvalue"    # F
    .param p2, "lastvalue"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 209
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, p1, p2, v1, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 250
    return-void
.end method

.method private setOuterCircle(Landroid/view/View;D)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "value"    # D

    .prologue
    const/16 v1, 0xff

    .line 253
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, p2

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 254
    .local v0, "alpha":I
    if-ge v0, v1, :cond_0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 256
    return-void

    :cond_0
    move v0, v1

    .line 254
    goto :goto_0
.end method

.method private setSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 597
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TAG:Ljava/lang/String;

    const-string v2, "show mSoundPool is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/audio/ui/Tap_tension.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .local v0, "checkTapFile":Ljava/io/File;
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    .line 603
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/Tap_tension.ogg"

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->sounds:I

    .line 606
    .end local v0    # "checkTapFile":Ljava/io/File;
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->clearAllViews()V

    .line 511
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mSoundPool:Landroid/media/SoundPool;

    .line 515
    :cond_0
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 530
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isIgnoreTouch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 275
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->isIgnoreTouch:Z

    .line 277
    :cond_0
    const/16 v18, 0x0

    .line 476
    :goto_0
    return v18

    .line 280
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 476
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v18, 0x1

    goto :goto_0

    .line 284
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->clearAllViews()V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x32

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->prevPressTime:J

    .line 314
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->diffPressTime:J

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->playSound()V

    goto/16 :goto_1

    .line 322
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v8, v0

    .line 323
    .local v8, "diffX":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v9, v0

    .line 324
    .local v9, "diffY":I
    int-to-double v0, v8

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    int-to-double v0, v9

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v12, v18, v20

    .line 325
    .local v12, "distance_square":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 326
    .local v10, "distance":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 327
    .local v16, "threshold":D
    div-double v18, v10, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000    # 40.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000    # 40.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    .line 333
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setOuterCircle(Landroid/view/View;D)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v4, v0

    .line 336
    .local v4, "absX":D
    const/high16 v18, -0x40800000    # -1.0f

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    .line 337
    .local v6, "absY":D
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->radian:D

    .line 338
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->radian:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    div-double v18, v18, v20

    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    add-int/lit8 v20, v20, -0x5

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v22, v0

    const-wide v24, 0x4066800000000000L    # 180.0

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorX:D

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    add-int/lit8 v20, v20, -0x5

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x4066800000000000L    # 180.0

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorY:D

    .line 347
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff3333340000000L    # 1.2000000476837158

    cmpg-double v18, v18, v20

    if-gez v18, :cond_4

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x42200000    # 40.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    sub-float v14, v18, v19

    .line 362
    .local v14, "lineSizebaseX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x42200000    # 40.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    sub-float v15, v18, v19

    .line 363
    .local v15, "lineSizebaseY":F
    mul-float v18, v14, v14

    mul-float v19, v15, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_LINE_DELETE:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_1

    .line 365
    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    .line 369
    .end local v14    # "lineSizebaseX":F
    .end local v15    # "lineSizebaseY":F
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff3333340000000L    # 1.2000000476837158

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x4000ccccc0000000L    # 2.0999999046325684

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_6

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorX:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorY:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setX(F)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setY(F)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 383
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorX:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 384
    .restart local v14    # "lineSizebaseX":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->outerTensionFactorY:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 385
    .restart local v15    # "lineSizebaseY":F
    mul-float v18, v14, v14

    mul-float v19, v15, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TENSION_LINE_DELETE:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setRotation(F)V

    goto/16 :goto_1

    .line 387
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 393
    .end local v14    # "lineSizebaseX":F
    .end local v15    # "lineSizebaseY":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setLineAnim(FF)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 424
    .end local v4    # "absX":D
    .end local v6    # "absY":D
    .end local v8    # "diffX":I
    .end local v9    # "diffY":I
    .end local v10    # "distance":D
    .end local v12    # "distance_square":D
    .end local v16    # "threshold":D
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleOuterAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000    # 40.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    .line 434
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000    # 40.0f

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->prevPressTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->diffPressTime:J

    .line 438
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff6666660000000L    # 1.399999976158142

    cmpg-double v18, v18, v20

    if-gez v18, :cond_7

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->diffPressTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x258

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->playSound()V

    goto/16 :goto_1

    .line 454
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff6666660000000L    # 1.399999976158142

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x4000ccccc0000000L    # 2.0999999046325684

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_2

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->degree:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 466
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setLineAnim(FF)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 498
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 541
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->clearAllViews()V

    .line 521
    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->TAG:Ljava/lang/String;

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 632
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 617
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->checkSound()V

    .line 504
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassTension;->setSound()V

    .line 505
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 552
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method
