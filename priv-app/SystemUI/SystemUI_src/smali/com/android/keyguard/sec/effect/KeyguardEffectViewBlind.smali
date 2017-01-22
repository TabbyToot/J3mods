.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewBlind.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;
    }
.end annotation


# static fields
.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_blind_lock.ogg"

.field private static final SILENCE_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_silence.ogg"

.field private static final TOUCH_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_blind_touch.ogg"

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_blind_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final DRAG_SOUNT_DISTANCE_THRESHOLD:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOC:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private affordanceDelay:J

.field private affordanceRect:Landroid/graphics/Rect;

.field private blindEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private data:Lcom/samsung/android/visualeffect/EffectDataObj;

.field private initBlind:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

.field private isAsyncPostExecuted:Z

.field private isCleanUp:Z

.field private isHandleUnlock:Z

.field private isOnConfigurationChanged:Z

.field private isShow:Z

.field private isShowUnlockAffordance:Z

.field private isUpdate:Z

.field private isWindowFocused:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mImageView:Landroid/widget/ImageView;

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWindowManager:Landroid/view/WindowManager;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_blind_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_silence.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DBG:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    .line 51
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    .line 52
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->leftVolumeMax:F

    .line 53
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->rightVolumeMax:F

    .line 54
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->UNLOCK_SOUND_PLAY_TIME:J

    .line 55
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 56
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    .line 57
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_START_POINT:I

    .line 59
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUNT_DISTANCE_THRESHOLD:I

    .line 61
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_TAB:I

    .line 62
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_UNLOC:I

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mDisplayId:I

    .line 86
    invoke-direct {p0, p1, v4, v3, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DBG:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    .line 51
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    .line 52
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->leftVolumeMax:F

    .line 53
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->rightVolumeMax:F

    .line 54
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->UNLOCK_SOUND_PLAY_TIME:J

    .line 55
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 56
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    .line 57
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_START_POINT:I

    .line 59
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUNT_DISTANCE_THRESHOLD:I

    .line 61
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_TAB:I

    .line 62
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_UNLOC:I

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mDisplayId:I

    .line 91
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DBG:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    .line 51
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    .line 52
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->leftVolumeMax:F

    .line 53
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->rightVolumeMax:F

    .line 54
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->UNLOCK_SOUND_PLAY_TIME:J

    .line 55
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 56
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    .line 57
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_START_POINT:I

    .line 59
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->DRAG_SOUNT_DISTANCE_THRESHOLD:I

    .line 61
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_TAB:I

    .line 62
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->SOUND_ID_UNLOC:I

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mDisplayId:I

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceDelay:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Lcom/samsung/android/visualeffect/EffectView;)Lcom/samsung/android/visualeffect/EffectView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Lcom/samsung/android/visualeffect/EffectView;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Lcom/samsung/android/visualeffect/EffectDataObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->data:Lcom/samsung/android/visualeffect/EffectDataObj;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Lcom/samsung/android/visualeffect/EffectDataObj;)Lcom/samsung/android/visualeffect/EffectDataObj;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Lcom/samsung/android/visualeffect/EffectDataObj;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->data:Lcom/samsung/android/visualeffect/EffectDataObj;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    return v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    .line 100
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewBlind displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    .line 103
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mDisplayId:I

    .line 104
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    const-string v2, "BlindEffect"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 105
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mWindowManager:Landroid/view/WindowManager;

    .line 106
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mImageView:Landroid/widget/ImageView;

    .line 108
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->initBlind:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    .line 109
    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->initBlind:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    .line 112
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method private makeSound()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->stopReleaseSound()V

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 157
    const-string v0, "BlindEffect"

    const-string v1, "new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    .line 159
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/ve_blind_touch.ogg"

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v4

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/ve_blind_unlock.ogg"

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v3

    .line 167
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 193
    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound() -  mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "BlindEffect"

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

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 198
    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 171
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 121
    const-string v9, "BlindEffect"

    const-string v10, "setBackground"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v6, 0x0

    .line 125
    .local v6, "pBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v9, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mDisplayId:I

    invoke-static {v9, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 127
    .local v5, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v5, :cond_1

    .line 128
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 129
    const-string v9, "BlindEffect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v12, :cond_1

    .line 131
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    if-gt v4, v12, :cond_0

    .line 132
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    mul-int/2addr v9, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x3

    mul-int/2addr v10, v4

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    .line 133
    .local v7, "pixel":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 134
    .local v8, "redValue":I
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 135
    .local v0, "blueValue":I
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 136
    .local v2, "greenValue":I
    const-string v9, "BlindEffect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.getPixel("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    mul-int/2addr v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    mul-int/2addr v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "blueValue":I
    .end local v2    # "greenValue":I
    .end local v7    # "pixel":I
    .end local v8    # "redValue":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v6
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 239
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->stopReleaseSound()V

    .line 240
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSound()V

    .line 241
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isCleanUp:Z

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 293
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 332
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_1

    .line 333
    const-string v0, "BlindEffect"

    const-string v1, "isAsyncPostExecuted=false (handleTouchEvent)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    :goto_0
    return v2

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->stopReleaseSound()V

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_2

    .line 342
    const-string v0, "BlindEffect"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->makeSound()V

    .line 345
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->playSound(I)V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 298
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : handleUnlock (exit xml animation removed)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_0

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "unlock"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 322
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->playSound(I)V

    .line 323
    return-void

    .line 320
    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isHandleUnlock:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 203
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    if-eqz v1, :cond_0

    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_1

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "onConfigurationChanged"

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 212
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    return-void

    .line 211
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 353
    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewBlind : onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isWindowFocused:Z

    .line 355
    return-void
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 327
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public screenTurnedOff()V
    .locals 3

    .prologue
    .line 266
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : screenTurnedOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_0

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "initAnimationValue"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 271
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 273
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 261
    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 481
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 462
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 216
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : show"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "show"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 224
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->makeSound()V

    .line 225
    return-void

    .line 223
    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShow:Z

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 5
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    .line 277
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_0

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 289
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 285
    :cond_0
    iput-wide p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceDelay:J

    .line 286
    iput-object p3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;

    .line 287
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    goto :goto_0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 245
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    const-string v1, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : setImageBitmap mImageView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v1, :cond_1

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "background"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->blindEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 257
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :goto_0
    return-void

    .line 256
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->isUpdate:Z

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method
