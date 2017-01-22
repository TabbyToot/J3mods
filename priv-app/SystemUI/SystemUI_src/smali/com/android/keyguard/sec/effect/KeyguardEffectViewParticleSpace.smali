.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewParticleSpace.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final DRAG_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_drag.ogg"

.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_lock.ogg"

.field private static final TAP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_tap.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_poppingcolours_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMinValue:I

.field private dragSoundCount:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isUnlocking:Z

.field private lastPlayedIdBeforeUnlock:I

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWindowManager:Landroid/view/WindowManager;

.field private particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private rightVolumeMax:F

.field private sounds:[I

.field private useCPUMinClock:Z

.field private useGPUMaxClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_poppingcolours_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_poppingcolours_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DBG:Z

    .line 48
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 49
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    .line 50
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    .line 51
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    .line 52
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 53
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 54
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 55
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    .line 56
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    .line 57
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    .line 59
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useGPUMaxClock:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useCPUMinClock:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mDisplayId:I

    .line 76
    invoke-direct {p0, p1, v4, v3, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v4, 0x0

    const v1, 0x3e99999a    # 0.3f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DBG:Z

    .line 48
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 49
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    .line 50
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    .line 51
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    .line 52
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 53
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 54
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 55
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    .line 56
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    .line 57
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    .line 59
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useGPUMaxClock:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useCPUMinClock:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mDisplayId:I

    .line 80
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DBG:Z

    .line 48
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 49
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    .line 50
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    .line 51
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    .line 52
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 53
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 54
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 55
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    .line 56
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    .line 57
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    .line 59
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useGPUMaxClock:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->useCPUMinClock:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mDisplayId:I

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    .line 89
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardWindowCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    .line 92
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mDisplayId:I

    .line 93
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 94
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mWindowManager:Landroid/view/WindowManager;

    .line 95
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    const-string v2, "VisualEffectParticleEffect"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 97
    new-instance v0, Lcom/samsung/android/visualeffect/EffectView;

    invoke-direct {v0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->addView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 117
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 121
    const-string v1, "VisualEffectParticleEffect"

    const-string v2, "new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 124
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

    .line 128
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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_poppingcolours_tap.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 131
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_poppingcolours_drag.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 134
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "VisualEffectParticleEffect"

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

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->lastPlayedIdBeforeUnlock:I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "releaseSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 143
    :cond_0
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "originBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "BGBitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 198
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 172
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->releaseSound()V

    .line 175
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    :cond_0
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 228
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 249
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 251
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->makeSound()V

    .line 254
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->playSound(I)V

    .line 263
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 265
    return v3

    .line 255
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 256
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 257
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1

    .line 258
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->playSound(I)V

    .line 259
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 237
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 281
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    .line 282
    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewParticleSpace : onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 214
    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    .prologue
    .line 202
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 206
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 321
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-nez p1, :cond_0

    .line 323
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "bmp  is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 328
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 276
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->makeSound()V

    .line 161
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 5
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 218
    const-string v1, "VisualEffectParticleEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardEffectViewParticleSpace : showUnlockAffordance, startDelay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v0, "hm1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 224
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 180
    const-string v2, "VisualEffectParticleEffect"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->mDisplayId:I

    invoke-static {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 184
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_1

    .line 185
    const-string v2, "VisualEffectParticleEffect"

    const-string v3, "newBitmapDrawable  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 189
    .local v1, "originBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 191
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->update()V

    .line 317
    return-void
.end method
