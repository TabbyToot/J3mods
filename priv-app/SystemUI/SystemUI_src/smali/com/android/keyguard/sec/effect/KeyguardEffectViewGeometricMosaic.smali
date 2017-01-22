.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewGeometricMosaic.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
    }
.end annotation


# static fields
.field private static final DRAG_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_geometricmosaic_drag.ogg"

.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_geometricmosaic_lock.ogg"

.field private static final SILENCE_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_silence.ogg"

.field private static final TAB_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_geometricmosaic_tap.ogg"

.field private static final TAG:Ljava/lang/String; = "GeometricMosaic_Keyguard"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_geometricmosaic_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private cpuMaxValue:I

.field private dragSoudMinusOffset:F

.field private dragSoudVolume:F

.field private dragStreamID:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isFadeOutSound:Z

.field private isUnlocked:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field mLongPressTime:J

.field protected mMsg:Landroid/os/Message;

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMaxClock:Z

.field private useGPUMaxClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_geometricmosaic_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_silence.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    .line 47
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    .line 48
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->UNLOCK_SOUND_PLAY_TIME:J

    .line 50
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    .line 51
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    .line 52
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_TAB:I

    .line 53
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_DRAG:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_UNLOCK:I

    .line 55
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    .line 56
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    .line 57
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    .line 58
    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mLongPressTime:J

    .line 59
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    .line 60
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    .line 61
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    .line 65
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mDisplayId:I

    .line 91
    invoke-direct {p0, p1, v3, v5, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    .line 47
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    .line 48
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->UNLOCK_SOUND_PLAY_TIME:J

    .line 50
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    .line 51
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    .line 52
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_TAB:I

    .line 53
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_DRAG:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_UNLOCK:I

    .line 55
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    .line 56
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    .line 57
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    .line 58
    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mLongPressTime:J

    .line 59
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    .line 60
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    .line 61
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    .line 65
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mDisplayId:I

    .line 95
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    .line 47
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    .line 48
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->UNLOCK_SOUND_PLAY_TIME:J

    .line 50
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    .line 51
    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    .line 52
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_TAB:I

    .line 53
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_DRAG:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->SOUND_ID_UNLOCK:I

    .line 55
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    .line 56
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    .line 57
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    .line 58
    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mLongPressTime:J

    .line 59
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    .line 60
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    .line 61
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    .line 65
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mDisplayId:I

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method private fadeOutSound()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 458
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 461
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 466
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 467
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    .line 475
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$5;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 469
    :cond_3
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    .line 471
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSound()V

    goto :goto_0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const v4, 0x9c40

    const/4 v3, -0x1

    .line 105
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "KeyguardEffectViewGeometricMosaic Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    .line 107
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mDisplayId:I

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->setEffect(I)V

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    .line 111
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const-string v2, "GeometricMosaic_Keyguard"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 120
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->gpuMaxValue:I

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->cpuMaxValue:I

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 123
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->addView(Landroid/view/View;II)V

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    if-nez v0, :cond_2

    .line 128
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "new SoundHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    .line 132
    :cond_2
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->callBackListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    .line 148
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 386
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    .line 388
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 392
    const-string v1, "GeometricMosaic_Keyguard"

    const-string v2, "sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
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

    .line 398
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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    .line 403
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_geometricmosaic_tap.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 404
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_geometricmosaic_drag.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 405
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_geometricmosaic_unlock.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 406
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 414
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 440
    const-string v0, "GeometricMosaic_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 443
    const-string v0, "GeometricMosaic_Keyguard"

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

    .line 444
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 425
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 213
    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 421
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 171
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    .line 173
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->releaseSound()V

    .line 174
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 182
    :cond_1
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 250
    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 273
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "GeometricMosaic_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent isUnlocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    return v6

    .line 278
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 280
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 282
    const-string v1, "GeometricMosaic_Keyguard"

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

    .line 283
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    .line 284
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    .line 285
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->stopReleaseSound()V

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    .line 288
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 290
    const-string v1, "GeometricMosaic_Keyguard"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->makeSound()V

    .line 294
    :cond_1
    const-string v1, "GeometricMosaic_Keyguard"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->playSound(I)V

    .line 296
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-eqz v1, :cond_3

    .line 297
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 299
    :cond_2
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    .line 329
    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    .line 302
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 304
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-nez v1, :cond_3

    .line 306
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    .line 308
    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mLongPressTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    iget-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 310
    const-string v1, "GeometricMosaic_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->touchMoveDiffTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->playSound(I)V

    goto :goto_1

    .line 316
    :cond_5
    if-eq v0, v6, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 319
    :cond_6
    const-string v1, "GeometricMosaic_Keyguard"

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

    .line 320
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-eqz v1, :cond_3

    .line 323
    const v1, 0x3d1fbe77    # 0.039f

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    .line 324
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    .line 325
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 256
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 258
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    .line 259
    const v0, 0x3d71a9fc    # 0.059f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    .line 260
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->playSound(I)V

    .line 261
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    .line 262
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    .line 263
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 354
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->removeMessages(I)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    .line 360
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 365
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    .line 366
    const-string v0, "GeometricMosaic_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 368
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 370
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    if-nez v0, :cond_2

    .line 372
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragStreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    if-nez v0, :cond_2

    .line 374
    const v0, 0x3d1fbe77    # 0.039f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudMinusOffset:F

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isFadeOutSound:Z

    .line 376
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->fadeOutSound()V

    .line 382
    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->clearScreen()V

    .line 166
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->clearScreen()V

    .line 230
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 231
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 232
    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->clearScreen()V

    .line 221
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 223
    :cond_1
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 494
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-nez p1, :cond_0

    .line 498
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 502
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 503
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 506
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 343
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "GeometricMosaic_Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->makeSound()V

    .line 156
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->clearScreen()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    .line 158
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 237
    const-string v1, "GeometricMosaic_Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->isUnlocked:Z

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 245
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 187
    const-string v2, "GeometricMosaic_Keyguard"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mDisplayId:I

    invoke-static {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 191
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 192
    const-string v2, "GeometricMosaic_Keyguard"

    const-string v3, "newBitmapDrawable  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 196
    .local v1, "originBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 198
    const-string v2, "GeometricMosaic_Keyguard"

    const-string v3, "originBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->update()V

    .line 490
    return-void
.end method
