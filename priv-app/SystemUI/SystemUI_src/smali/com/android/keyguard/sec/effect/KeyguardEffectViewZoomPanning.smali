.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewZoomPanning.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$1;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mBottomArea:Landroid/view/View;

.field private mDisplayId:I

.field private mIsDoubleTapPuase:Z

.field private mIsForceUpdateMusicBitmap:Z

.field private mIsRemoveMusicBitmapByScreenOff:Z

.field private mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

.field private mMusicWallpaper:Landroid/graphics/Bitmap;

.field private mNotificationPanel:Landroid/view/View;

.field private mStrMusicBitmapId:Ljava/lang/String;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mUpdateDelayed:Z

.field private mWidgetReleaseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "isProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v0, "KeyguardEffectViewZoom"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->TAG:Ljava/lang/String;

    .line 61
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    .line 83
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mDisplayId:I

    .line 90
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .line 101
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mWidgetReleaseInterpolator:Landroid/view/animation/Interpolator;

    .line 119
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "Constructor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mContext:Landroid/content/Context;

    .line 122
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mDisplayId:I

    .line 124
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    .line 126
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    .line 127
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    .line 128
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    .line 129
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    .line 130
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    .line 131
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->addView(Landroid/view/View;II)V

    .line 135
    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mDisplayId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    return v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1870
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 1866
    const/4 v0, 0x1

    return v0
.end method

.method private isSameBitmap()Z
    .locals 5

    .prologue
    .line 476
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v2, :cond_0

    .line 477
    const/4 v2, 0x0

    .line 489
    :goto_0
    return v2

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCurrentBitmapPath()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "currentBitmapPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 484
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "newBitmapPath":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 486
    .end local v1    # "newBitmapPath":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper_path"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "newBitmapPath":Ljava/lang/String;
    goto :goto_1
.end method

.method private startAffordanceAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xa6

    const v1, 0x3f99999a    # 1.2f

    const v5, 0x3f866666    # 1.05f

    const-wide/16 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 376
    :cond_0
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "startAffordanceAnimation() view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setScaleX(F)V

    .line 396
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setScaleY(F)V

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setAlpha(F)V

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x342

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 410
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    goto/16 :goto_0
.end method

.method private startResetTranlateAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 425
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "startResetTranlateAnimation() view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mWidgetReleaseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private startWidgetTranslateAnimation(FF)V
    .locals 2
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 415
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "startWidgetTranslateAnimation() mNotificationStack is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 177
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->stopAnimation()Z

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "getUnlockDelay()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x3e800000    # 0.25f

    .line 301
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 302
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v4, :cond_2

    .line 345
    const-string v4, "KeyguardEffectViewZoom"

    const-string v5, "mMovableImageView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v4, 0x0

    .line 349
    :goto_1
    return v4

    .line 304
    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    goto :goto_0

    .line 307
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartX:F

    .line 308
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartY:F

    .line 310
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 311
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 315
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 319
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartX:F

    sub-float/2addr v4, v5

    mul-float v2, v4, v6

    .line 320
    .local v2, "translateX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartY:F

    sub-float/2addr v4, v5

    mul-float v3, v4, v6

    .line 322
    .local v3, "translateY":F
    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startWidgetTranslateAnimation(FF)V

    goto :goto_0

    .line 325
    .end local v2    # "translateX":F
    .end local v3    # "translateY":F
    :pswitch_4
    const/4 v1, 0x0

    .local v1, "iIdx":I
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 326
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 330
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartX:F

    .line 331
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mTouchStartY:F

    goto :goto_0

    .line 336
    .end local v1    # "iIdx":I
    :pswitch_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    .line 338
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 339
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 349
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v4, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    .line 284
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 285
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->handleUnlock()V

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "playLockSound()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    return-void
.end method

.method public removeMusicWallpaper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 456
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "removeMusicWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 459
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return-void

    .line 463
    :cond_1
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    .line 464
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    .line 472
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->update()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 163
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "screenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_2

    .line 251
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->stopAnimation()Z

    .line 257
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 258
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 259
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "screenTurnedOff() running delayed update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->update()V

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "screenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->startAffordanceAnimation()V

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 236
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->startAnimation()Z

    goto :goto_0
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    .line 1847
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1848
    const-string v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContextualWallpaper() bmp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1852
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    .line 1853
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    .line 1855
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    .line 1857
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    if-ne v0, v3, :cond_1

    .line 1858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    .line 1859
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    .line 1862
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->update()V

    .line 1863
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setHidden()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    return-void
.end method

.method public setLayers(Landroid/view/View;)V
    .locals 2
    .param p1, "panelView"    # Landroid/view/View;

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setLayers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    .line 443
    if-eqz p1, :cond_1

    .line 444
    sget v0, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    .line 446
    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 147
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->startAnimation()Z

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 2
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 189
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "update()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v1, :cond_2

    .line 193
    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "mMovableImageView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->isUpdatableState()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    if-nez v1, :cond_5

    .line 198
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->isSameBitmap()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 199
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 200
    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "update() : no need to update because of same bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 205
    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "update() : is not updatable state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_4
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    goto :goto_0

    .line 211
    :cond_5
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    .line 212
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    .line 214
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->stopAnimation()Z

    move-result v0

    .line 216
    .local v0, "isSuccessStop":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->initBitmap()Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 217
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateFaceList()V
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V

    .line 219
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->initCamera()V

    .line 220
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V

    .line 223
    :cond_6
    if-ne v0, v3, :cond_1

    .line 224
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->startAnimation()Z

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 1843
    return-void
.end method
