.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewWaterDroplet.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_waterdroplet_lock.ogg"

.field private static final TAP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_waterdroplet_tap.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_waterdroplet_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMinValue:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mHandler:Landroid/os/Handler;

.field private mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

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
    .line 127
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_waterdroplet_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_waterdroplet_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 65
    const-string v0, "WaterDroplet_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->TAG:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mWallpaperPath:Ljava/lang/String;

    .line 75
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 76
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    .line 77
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 78
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchDownTime:J

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchMoveDiffTime:J

    .line 81
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->leftVolumeMax:F

    .line 82
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->rightVolumeMax:F

    .line 83
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_TAB:I

    .line 84
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_UNLOCK:I

    .line 86
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->DBG:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 92
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->prevOrientation:I

    .line 93
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    .line 94
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    .line 99
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    .line 108
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 109
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 114
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    .line 121
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mDisplayId:I

    .line 265
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mHandler:Landroid/os/Handler;

    .line 131
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 65
    const-string v0, "WaterDroplet_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->TAG:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mWallpaperPath:Ljava/lang/String;

    .line 75
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 76
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    .line 77
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 78
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchDownTime:J

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchMoveDiffTime:J

    .line 81
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->leftVolumeMax:F

    .line 82
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->rightVolumeMax:F

    .line 83
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_TAB:I

    .line 84
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_UNLOCK:I

    .line 86
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->DBG:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 92
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->prevOrientation:I

    .line 93
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    .line 94
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    .line 99
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    .line 108
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 109
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 114
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    .line 121
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mDisplayId:I

    .line 265
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 65
    const-string v0, "WaterDroplet_Keyguard"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->TAG:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mWallpaperPath:Ljava/lang/String;

    .line 75
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 76
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    .line 77
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 78
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->UNLOCK_SOUND_PLAY_TIME:J

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchDownTime:J

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->touchMoveDiffTime:J

    .line 81
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->leftVolumeMax:F

    .line 82
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->rightVolumeMax:F

    .line 83
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_TAB:I

    .line 84
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->SOUND_ID_UNLOCK:I

    .line 86
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->DBG:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 92
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->prevOrientation:I

    .line 93
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    .line 94
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    .line 99
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    .line 108
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 109
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 114
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    .line 121
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mDisplayId:I

    .line 265
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mHandler:Landroid/os/Handler;

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->update(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->registerAccelrometer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 538
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

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

    const/4 v7, 0x0

    const/16 v6, 0xc

    .line 145
    const-string v3, "WaterDroplet_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewWaterDroplet Constructor mWallpaperProcessSeparated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v3, "WaterDroplet_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewWaterDroplet displayId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 149
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mDisplayId:I

    .line 150
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 169
    new-instance v3, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const-string v5, "WaterDroplet_Keyguard"

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 171
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->keyguardManager:Landroid/app/KeyguardManager;

    .line 172
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 173
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 174
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 175
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    .line 176
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    .line 178
    if-eqz p3, :cond_4

    .line 179
    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->setEffect(I)V

    .line 183
    :goto_0
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 184
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    invoke-virtual {v0, v6}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 185
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->windowWidth:I

    .line 186
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    iput v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->windowHeight:I

    .line 187
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->mIEffectListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 188
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->normal_low_z_256:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->resNormal:Landroid/graphics/Bitmap;

    .line 189
    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x2d0

    if-lt v3, v4, :cond_5

    .line 190
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->edge_density_720:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->resEdgeDensity:Landroid/graphics/Bitmap;

    .line 194
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 196
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    .line 197
    iput-boolean v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    .line 198
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v3, :cond_0

    const-string v3, "389000000"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->gpuMaxValue:I

    .line 200
    :cond_0
    iput-boolean v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    .line 201
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v3, :cond_1

    const-string v3, "1574400"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cpuMinValue:I

    .line 203
    :cond_1
    const-string v3, "WaterDroplet_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useGPUMaxClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gpuMaxValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->gpuMaxValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v3, "WaterDroplet_Keyguard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useCPUMinClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cpuMinValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cpuMinValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    const/16 v4, 0x11

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->gpuMaxValue:I

    invoke-static {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 206
    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cpuMinValue:I

    invoke-static {v3, v6, v4, v8}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    .line 208
    :cond_3
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    .line 209
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    .line 210
    return-void

    .line 181
    .end local v0    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    :cond_4
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->setEffect(I)V

    goto/16 :goto_0

    .line 192
    .restart local v0    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    :cond_5
    iget-object v3, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->waterDropletData:Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;

    sget v4, Lcom/android/keyguard/R$drawable;->edge_density_360:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/visualeffect/lock/data/WaterDropletData;->resEdgeDensity:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x1

    return v0
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 428
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 429
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 430
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 431
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-object v2

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->stopReleaseSound()V

    .line 442
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 446
    const-string v1, "WaterDroplet_Keyguard"

    const-string v2, "sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
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

    .line 451
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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    .line 453
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_waterdroplet_tap.ogg"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 456
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 464
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 490
    const-string v0, "WaterDroplet_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 492
    const-string v0, "WaterDroplet_Keyguard"

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

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 495
    :cond_0
    return-void
.end method

.method private registerAccelrometer()V
    .locals 3

    .prologue
    .line 277
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "registerAccelrometer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 282
    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 475
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$5;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 486
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 487
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 405
    const-string v3, "WaterDroplet_Keyguard"

    const-string v4, "setBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mDisplayId:I

    invoke-static {v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 409
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 410
    const-string v3, "WaterDroplet_Keyguard"

    const-string v4, "newBitmapDrawable  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 420
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .local v2, "pBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 413
    .end local v2    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 414
    if-nez v1, :cond_1

    .line 415
    const-string v3, "WaterDroplet_Keyguard"

    const-string v4, "pBitmap  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 416
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "pBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 419
    .end local v2    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-string v3, "WaterDroplet_Keyguard"

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

    .line 420
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "pBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 471
    :cond_0
    return-void
.end method

.method private unregisterAccelrometer()V
    .locals 2

    .prologue
    .line 285
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "unregisterAccelrometer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 292
    :cond_0
    return-void
.end method

.method private update(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "mode"    # I

    .prologue
    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "Mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 263
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 234
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->stopReleaseSound()V

    .line 236
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->releaseSound()V

    .line 237
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 244
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    .line 248
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 330
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 350
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    if-eqz v1, :cond_1

    .line 352
    :cond_0
    const-string v1, "WaterDroplet_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent return : isUnlocked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_0
    return v4

    .line 356
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 358
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 360
    const-string v1, "WaterDroplet_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN, mTouchFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mTouchFlagForMobileKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v1, "WaterDroplet_Keyguard"

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

    .line 362
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->stopReleaseSound()V

    .line 363
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    .line 365
    const-string v1, "WaterDroplet_Keyguard"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeSound()V

    .line 368
    :cond_2
    const-string v1, "WaterDroplet_Keyguard"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->playSound(I)V

    .line 379
    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    .line 371
    :cond_4
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 374
    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 335
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 340
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    .line 341
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 535
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 520
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onAttachedToWindow()V

    .line 521
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 513
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 514
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    .line 516
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 527
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "CustomEvent"

    const-string v2, "SensorEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "EventObject"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const/16 v1, 0x63

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 530
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 573
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/EffectView;->onSizeChanged(IIII)V

    .line 574
    const-string v0, "WaterDroplet_Keyguard"

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

    .line 595
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 499
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 500
    const-string v0, "WaterDroplet_Keyguard"

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

    .line 501
    if-nez p1, :cond_2

    .line 503
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 504
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 506
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    .line 508
    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->clearScreen()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 228
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 230
    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 313
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    .line 316
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->unregisterAccelrometer()V

    .line 317
    return-void
.end method

.method public screenTurnedOn()V
    .locals 4

    .prologue
    .line 296
    const-string v1, "WaterDroplet_Keyguard"

    const-string v2, "screenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 298
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useGPUMaxClock:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 299
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->useCPUMinClock:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->hasWindowFocus:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    .line 302
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 303
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 304
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 305
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 548
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-nez p1, :cond_0

    .line 552
    const-string v0, "WaterDroplet_Keyguard"

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

    .line 561
    :goto_0
    return-void

    .line 556
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 558
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->update(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 3
    .param p1, "isHidden"    # Z

    .prologue
    .line 395
    const-string v0, "WaterDroplet_Keyguard"

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

    .line 398
    if-nez p1, :cond_0

    .line 399
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "setHidden() - call screenTurnedOn() cause by SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->screenTurnedOn()V

    .line 402
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->clearScreen()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->isUnlocked:Z

    .line 219
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->makeSound()V

    .line 220
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 321
    const-string v1, "WaterDroplet_Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 326
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "WaterDroplet_Keyguard"

    const-string v1, "update(0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->update(Landroid/graphics/Bitmap;I)V

    .line 255
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->update()V

    .line 544
    return-void
.end method
