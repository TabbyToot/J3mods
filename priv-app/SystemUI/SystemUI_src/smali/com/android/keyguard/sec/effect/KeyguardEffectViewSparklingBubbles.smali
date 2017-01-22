.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewSparklingBubbles.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final DRAG_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_sparklingbubbles_drag.ogg"

.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_sparklingbubbles_lock.ogg"

.field private static final TAP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_sparklingbubbles_tap.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_sparklingbubbles_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMinValue:I

.field private dragSoudMinusOffset:F

.field private dragSoudVolume:F

.field private dragStreamID:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isEmptyRender:Z

.field private isFadeOutSound:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field mLongPressTime:J

.field private mPreTouchX:F

.field private mPreTouchY:F

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTouchFlagForMobileKeyboard:Z

.field private mWallpaperPath:Ljava/lang/String;

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMinClock:Z

.field private useGPUMaxClock:Z

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_sparklingbubbles_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_sparklingbubbles_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-direct {p0, p1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V

    .line 132
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "SparklingBubbles_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->TAG:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mWallpaperPath:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    .line 68
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    .line 69
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 70
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->UNLOCK_SOUND_PLAY_TIME:J

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchDownTime:J

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchMoveDiffTime:J

    .line 73
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->leftVolumeMax:F

    .line 74
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->rightVolumeMax:F

    .line 77
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->SOUND_ID_TAB:I

    .line 78
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->SOUND_ID_DRAG:I

    .line 80
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    .line 82
    const-wide/16 v0, 0x44c

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mLongPressTime:J

    .line 83
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    .line 84
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    .line 85
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->DBG:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    .line 94
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->prevOrientation:I

    .line 95
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowWidth:I

    .line 96
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

    .line 101
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->hasWindowFocus:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isEmptyRender:Z

    .line 118
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mDisplayId:I

    .line 137
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "SparklingBubbles_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->TAG:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mWallpaperPath:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    .line 68
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    .line 69
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 70
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->UNLOCK_SOUND_PLAY_TIME:J

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchDownTime:J

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchMoveDiffTime:J

    .line 73
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->leftVolumeMax:F

    .line 74
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->rightVolumeMax:F

    .line 77
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->SOUND_ID_TAB:I

    .line 78
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->SOUND_ID_DRAG:I

    .line 80
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    .line 82
    const-wide/16 v0, 0x44c

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mLongPressTime:J

    .line 83
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    .line 84
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    .line 85
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    .line 88
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->DBG:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    .line 94
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->prevOrientation:I

    .line 95
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowWidth:I

    .line 96
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

    .line 101
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->hasWindowFocus:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    .line 117
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isEmptyRender:Z

    .line 118
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mDisplayId:I

    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->update(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isEmptyRender:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->fadeOutSound()V

    return-void
.end method

.method private fadeOutSound()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 567
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 572
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 577
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 578
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    .line 586
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$5;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 580
    :cond_3
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->stopReleaseSound()V

    goto :goto_0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 595
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const v8, 0x9c40

    const/16 v7, 0xe

    const/4 v6, 0x0

    .line 146
    const-string v3, "SparklingBubbles_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewSparklingBubbles Constructor mWallpaperProcessSeparated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v3, "SparklingBubbles_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewSparklingBubbles displayId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    .line 149
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    const-string v5, "SparklingBubbles_Keyguard"

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 150
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 151
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mDisplayId:I

    .line 152
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 177
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->keyguardManager:Landroid/app/KeyguardManager;

    .line 178
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 179
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 180
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 181
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowWidth:I

    .line 182
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

    .line 184
    if-eqz p3, :cond_4

    .line 185
    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->setEffect(I)V

    .line 189
    :goto_0
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 190
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    invoke-virtual {v0, v7}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 191
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowWidth:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->windowWidth:I

    .line 192
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->windowHeight:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->windowHeight:I

    .line 193
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 194
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->sparklingBubblesData:Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;

    sget v4, Lcom/android/keyguard/R$drawable;->blur_mask:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/SparklingBullesData;->resBmp:Landroid/graphics/Bitmap;

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 197
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    .line 199
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    .line 200
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v3, :cond_0

    .line 201
    const-string v3, "389000000"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->gpuMaxValue:I

    .line 203
    :cond_0
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    .line 204
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v3, :cond_1

    .line 205
    const-string v3, "1574400"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->cpuMinValue:I

    .line 207
    :cond_1
    const-string v3, "SparklingBubbles_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useGPUMaxClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gpuMaxValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->gpuMaxValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v3, "SparklingBubbles_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useCPUMinClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cpuMinValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->cpuMinValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    const/16 v4, 0x11

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->gpuMaxValue:I

    invoke-static {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 211
    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->cpuMinValue:I

    invoke-static {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 213
    :cond_3
    return-void

    .line 187
    .end local v0    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    :cond_4
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->setEffect(I)V

    goto/16 :goto_0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 452
    const/4 v2, 0x0

    .line 455
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 456
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 457
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 458
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-object v2

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 505
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->stopReleaseSound()V

    .line 507
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 509
    const-string v1, "SparklingBubbles_Keyguard"

    const-string v2, "sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 515
    .local v0, "attr":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    .line 518
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_sparklingbubbles_tap.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 519
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_sparklingbubbles_drag.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 521
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 529
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 554
    const-string v0, "SparklingBubbles_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 556
    const-string v0, "SparklingBubbles_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() - soundId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 539
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 550
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 431
    const-string v3, "SparklingBubbles_Keyguard"

    const-string v4, "setBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mDisplayId:I

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 435
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 436
    const-string v3, "SparklingBubbles_Keyguard"

    const-string v4, "newBitmapDrawable  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 448
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .local v2, "pBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 439
    .end local v2    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 440
    if-nez v1, :cond_1

    .line 441
    const-string v3, "SparklingBubbles_Keyguard"

    const-string v4, "pBitmap  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 442
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "pBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 445
    .end local v2    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-string v3, "SparklingBubbles_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pBitmap.width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pBitmap.height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 448
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "pBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 536
    :cond_0
    return-void
.end method

.method private update(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "mode"    # I

    .prologue
    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "Mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 265
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 237
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->stopReleaseSound()V

    .line 239
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSound()V

    .line 240
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    .line 247
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 250
    :cond_1
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 296
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 427
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v7, 0x3d1fbe77    # 0.039f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 317
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    if-eqz v1, :cond_2

    .line 319
    :cond_0
    const-string v1, "SparklingBubbles_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent return : isUnlocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    :goto_0
    return v6

    .line 323
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 324
    .local v0, "action":I
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 326
    if-nez v0, :cond_6

    .line 327
    const-string v1, "SparklingBubbles_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN, mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    .line 329
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    .line 330
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->stopReleaseSound()V

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchDownTime:J

    .line 333
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_3

    .line 334
    const-string v1, "SparklingBubbles_Keyguard"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->makeSound()V

    .line 338
    :cond_3
    const-string v1, "SparklingBubbles_Keyguard"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->playSound(I)V

    .line 342
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-eqz v1, :cond_5

    .line 343
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_4

    .line 344
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 347
    :cond_4
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    .line 350
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchX:F

    .line 351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchY:F

    goto :goto_0

    .line 352
    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 353
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-nez v1, :cond_7

    .line 354
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    .line 355
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchDownTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchMoveDiffTime:J

    .line 357
    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchMoveDiffTime:J

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mLongPressTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 360
    const-string v1, "SparklingBubbles_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->touchMoveDiffTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->playSound(I)V

    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchX:F

    .line 365
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mPreTouchY:F

    goto/16 :goto_0

    .line 369
    :cond_7
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isEmptyRender:Z

    if-nez v1, :cond_8

    .line 370
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-eqz v1, :cond_1

    .line 372
    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    .line 373
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    .line 374
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->fadeOutSound()V

    goto/16 :goto_0

    .line 379
    :cond_8
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    if-ne v1, v6, :cond_1

    .line 380
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    .line 381
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    .line 382
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_9

    .line 384
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 386
    :cond_9
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    goto/16 :goto_0

    .line 391
    :cond_a
    if-eq v0, v6, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 394
    :cond_b
    const-string v1, "SparklingBubbles_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-eqz v1, :cond_1

    .line 397
    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    .line 398
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    .line 399
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    .line 400
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->fadeOutSound()V

    goto/16 :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 301
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 303
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    .line 305
    const v0, 0x3d71a9fc    # 0.059f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    .line 306
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    .line 307
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->fadeOutSound()V

    .line 308
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 500
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onAttachedToWindow()V

    .line 501
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 494
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 495
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 628
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/EffectView;->onSizeChanged(IIII)V

    .line 629
    const-string v0, "SparklingBubbles_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldh ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 468
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 469
    const-string v0, "SparklingBubbles_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : hasWindowFocus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-nez p1, :cond_2

    .line 471
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 472
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 475
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 476
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 479
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    if-nez v0, :cond_2

    .line 481
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragStreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    if-nez v0, :cond_2

    .line 482
    const v0, 0x3d1fbe77    # 0.039f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudMinusOffset:F

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isFadeOutSound:Z

    .line 484
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 485
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->fadeOutSound()V

    .line 490
    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 227
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->clearScreen()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    .line 231
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 233
    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 277
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    .line 281
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 283
    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 271
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 273
    :cond_1
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 605
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    if-nez p1, :cond_0

    .line 608
    const-string v0, "SparklingBubbles_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bmp is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    return-void

    .line 612
    :cond_0
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 615
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->update(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 3
    .param p1, "isHidden"    # Z

    .prologue
    .line 416
    const-string v0, "SparklingBubbles_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHidden() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-nez p1, :cond_0

    .line 420
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "setHidden() - call screenTurnedOn() cause by SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->screenTurnedOn()V

    .line 423
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->clearScreen()V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isUnlocked:Z

    .line 222
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->makeSound()V

    .line 223
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 287
    const-string v1, "SparklingBubbles_Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 292
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 255
    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "update(0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->update(Landroid/graphics/Bitmap;I)V

    .line 257
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->update()V

    .line 601
    return-void
.end method
