.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewRippleInk.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;
    }
.end annotation


# static fields
.field private static final DOWN_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_ripple_down.ogg"

.field public static final UPDATE_TYPE_CHANGE_BACKGROUND:I = 0x1

.field public static final UPDATE_TYPE_USER_SWITCHING:I = 0x2

.field private static final UP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_ripple_up.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field final SOUND_ID_DOWN:I

.field final SOUND_ID_DRAG:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

.field private mListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field soundMsg:Landroid/os/Message;

.field private sounds:[I

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, "RippleInk_KeyguardEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->TAG:Ljava/lang/String;

    .line 60
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    .line 61
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->leftVolumeMax:F

    .line 62
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->rightVolumeMax:F

    .line 63
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->UNLOCK_SOUND_PLAY_TIME:J

    .line 64
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 65
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    .line 66
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DOWN:I

    .line 67
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DRAG:I

    .line 71
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mDisplayId:I

    .line 77
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    .line 78
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    .line 95
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v4, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, "RippleInk_KeyguardEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->TAG:Ljava/lang/String;

    .line 60
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    .line 61
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->leftVolumeMax:F

    .line 62
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->rightVolumeMax:F

    .line 63
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->UNLOCK_SOUND_PLAY_TIME:J

    .line 64
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 65
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    .line 66
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DOWN:I

    .line 67
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DRAG:I

    .line 71
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mDisplayId:I

    .line 77
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    .line 78
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    .line 99
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, "RippleInk_KeyguardEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->TAG:Ljava/lang/String;

    .line 60
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    .line 61
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->leftVolumeMax:F

    .line 62
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->rightVolumeMax:F

    .line 63
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->UNLOCK_SOUND_PLAY_TIME:J

    .line 64
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 65
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    .line 66
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DOWN:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->SOUND_ID_DRAG:I

    .line 71
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mDisplayId:I

    .line 77
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    .line 78
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->playSound(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    return p1
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 108
    const-string v4, "RippleInk_KeyguardEffect"

    const-string v5, "KeyguardEffectViewRippleInk Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    .line 111
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mDisplayId:I

    .line 112
    new-instance v4, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    const-string v6, "RippleInk_KeyguardEffect"

    invoke-direct {v4, v5, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 113
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->keyguardManager:Landroid/app/KeyguardManager;

    .line 114
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 115
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 116
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 117
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    .line 118
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    .line 120
    const-string v4, "RippleInk_KeyguardEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyguardEffectViewRippleInk windowWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", windowHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->setEffect(I)V

    .line 124
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 125
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    invoke-virtual {v0, v8}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 126
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->rippleInkData:Lcom/samsung/android/visualeffect/lock/data/RippleInkData;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowWidth:I

    iput v5, v4, Lcom/samsung/android/visualeffect/lock/data/RippleInkData;->windowWidth:I

    .line 127
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->rippleInkData:Lcom/samsung/android/visualeffect/lock/data/RippleInkData;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->windowHeight:I

    iput v5, v4, Lcom/samsung/android/visualeffect/lock/data/RippleInkData;->windowHeight:I

    .line 128
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->rippleInkData:Lcom/samsung/android/visualeffect/lock/data/RippleInkData;

    sget v5, Lcom/android/keyguard/R$drawable;->reflectionmap:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/visualeffect/lock/data/RippleInkData;->reflectionBitmap:Landroid/graphics/Bitmap;

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 132
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    .line 134
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v3, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v4, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 139
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    .line 140
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v7, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->addView(Landroid/view/View;II)V

    .line 143
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    if-nez v4, :cond_0

    .line 145
    const-string v4, "RippleInk_KeyguardEffect"

    const-string v5, "new SoundHandler()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    .line 149
    :cond_0
    new-instance v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 173
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    .line 174
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 205
    const/4 v2, 0x0

    .line 208
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 209
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 211
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-object v2

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 221
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->stopReleaseSound()V

    .line 223
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 227
    const-string v1, "RippleInk_KeyguardEffect"

    const-string v2, "WaterColor sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
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

    .line 233
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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    .line 237
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_ripple_down.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 238
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_ripple_up.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 242
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    if-nez v1, :cond_2

    .line 244
    const-string v1, "RippleInk_KeyguardEffect"

    const-string v2, "new SoundHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    .line 247
    :cond_2
    return-void
.end method

.method private playSound(I)V
    .locals 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 273
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->stopReleaseSound()V

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 276
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->makeSound()V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 282
    .local v7, "streanID":I
    if-ne p1, v8, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iput v8, v0, Landroid/os/Message;->what:I

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    add-int/lit8 v1, v7, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    .end local v7    # "streanID":I
    :cond_1
    return-void
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 251
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 177
    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mDisplayId:I

    invoke-static {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 182
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_0

    .line 188
    const-string v2, "RippleInk_KeyguardEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pBitmap.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pBitmap.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-object v1

    .line 192
    :cond_0
    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_1
    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 390
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->stopReleaseSound()V

    .line 392
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->releaseSound()V

    .line 394
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 402
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 452
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 467
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    if-eqz v0, :cond_0

    .line 471
    :goto_0
    return v1

    .line 470
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 457
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    .line 459
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 487
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 488
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->removeMessages(I)V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    .line 494
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 504
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 505
    const-string v0, "RippleInk_KeyguardEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    if-nez v0, :cond_0

    .line 512
    :cond_0
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 383
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->clearScreen()V

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    .line 386
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 437
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 431
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    .line 433
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 525
    const-string v1, "RippleInk_KeyguardEffect"

    const-string v2, "setContextualWallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    if-nez p1, :cond_1

    .line 529
    const-string v1, "RippleInk_KeyguardEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bmp is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 534
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 535
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 539
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 500
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 374
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->makeSound()V

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->clearScreen()V

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    .line 379
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 443
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z

    .line 448
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 406
    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 408
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 409
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v2, "Bitmap"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 413
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 415
    :cond_0
    return-void
.end method

.method public update(I)V
    .locals 4
    .param p1, "updateType"    # I

    .prologue
    .line 418
    const-string v2, "RippleInk_KeyguardEffect"

    const-string v3, "changeBackground()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 420
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v2, "Bitmap"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 425
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 427
    :cond_0
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method
