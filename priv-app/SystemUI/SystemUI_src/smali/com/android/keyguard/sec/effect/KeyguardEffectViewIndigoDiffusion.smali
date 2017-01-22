.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewIndigoDiffusion.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    }
.end annotation


# static fields
.field private static final DOWN_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_indigodiffusion_ripple_down.ogg"

.field public static final IMAGE_TYPE_BURGUNDY_RED:I = 0x1

.field public static final IMAGE_TYPE_MIDNIGHT_BLUE_OR_NORMAL:I = 0x0

.field public static final UPDATE_TYPE_CHANGE_BACKGROUND:I = 0x1

.field public static final UPDATE_TYPE_USER_SWITCHING:I = 0x2

.field private static final UP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_indigodiffusion_ripple_up.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field final SOUND_ID_DOWN:I

.field final SOUND_ID_DRAG:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field imageType:I

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

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
    .line 92
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

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

    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->TAG:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->imageType:I

    .line 63
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    .line 64
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    .line 65
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    .line 66
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->UNLOCK_SOUND_PLAY_TIME:J

    .line 67
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 68
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    .line 69
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DOWN:I

    .line 70
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DRAG:I

    .line 74
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mDisplayId:I

    .line 80
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    .line 81
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    .line 98
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 99
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

    .line 101
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->TAG:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->imageType:I

    .line 63
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    .line 64
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    .line 65
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    .line 66
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->UNLOCK_SOUND_PLAY_TIME:J

    .line 67
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 68
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    .line 69
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DOWN:I

    .line 70
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DRAG:I

    .line 74
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mDisplayId:I

    .line 80
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    .line 81
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    .line 102
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 103
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

    .line 106
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->TAG:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->imageType:I

    .line 63
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    .line 64
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    .line 65
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    .line 66
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->UNLOCK_SOUND_PLAY_TIME:J

    .line 67
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 68
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    .line 69
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DOWN:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DRAG:I

    .line 74
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mDisplayId:I

    .line 80
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    .line 81
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->playSound(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method private changeColor(III)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 228
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 229
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 230
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->red:I

    .line 231
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iput p2, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->green:I

    .line 232
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iput p3, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->blue:I

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 235
    return-void
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 578
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/16 v9, 0x23

    const/16 v8, 0x9

    const/4 v7, -0x1

    .line 112
    const-string v4, "KeyguardEffectViewIndigoDiffusion"

    const-string v5, "KeyguardEffectViewIndigoDiffusion Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    .line 115
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mDisplayId:I

    .line 116
    new-instance v4, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const-string v6, "KeyguardEffectViewIndigoDiffusion"

    invoke-direct {v4, v5, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    .line 117
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->keyguardManager:Landroid/app/KeyguardManager;

    .line 118
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 119
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 121
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 122
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    .line 123
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    .line 125
    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->setEffect(I)V

    .line 127
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 128
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    invoke-virtual {v0, v8}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 129
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    iput v5, v4, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->windowWidth:I

    .line 130
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    iput v5, v4, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->windowHeight:I

    .line 131
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    sget v5, Lcom/android/keyguard/R$drawable;->reflectionmap:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->reflectionBitmap:Landroid/graphics/Bitmap;

    .line 133
    const/16 v4, 0x55

    invoke-direct {p0, v9, v9, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->changeColor(III)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 136
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    .line 138
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v3, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v4, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 143
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    .line 144
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 145
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v7, v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->addView(Landroid/view/View;II)V

    .line 147
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-nez v4, :cond_0

    .line 149
    const-string v4, "KeyguardEffectViewIndigoDiffusion"

    const-string v5, "new SoundHandler()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    .line 153
    :cond_0
    new-instance v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 177
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    .line 178
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x1

    return v0
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 242
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 243
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 244
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 245
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-object v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 255
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    .line 257
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 261
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    const-string v2, "IndigoDiffusion sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
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

    .line 267
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

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    .line 273
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_indigodiffusion_ripple_down.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 274
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_indigodiffusion_ripple_up.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 278
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-nez v1, :cond_1

    .line 280
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    const-string v2, "new SoundHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    .line 283
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 309
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 312
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->makeSound()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mKeyguardEffectSound:Lcom/android/keyguard/sec/effect/KeyguardEffectSound;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->isPlayPossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 319
    .local v7, "streanID":I
    if-ne p1, v8, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iput v8, v0, Landroid/os/Message;->what:I

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    add-int/lit8 v1, v7, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    .end local v7    # "streanID":I
    :cond_1
    return-void
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 287
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 181
    const-string v2, "KeyguardEffectViewIndigoDiffusion"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mDisplayId:I

    invoke-static {v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 186
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_0

    .line 192
    const-string v2, "KeyguardEffectViewIndigoDiffusion"

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

    .line 205
    :goto_0
    return-object v1

    .line 197
    :cond_0
    const-string v2, "KeyguardEffectViewIndigoDiffusion"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_1
    const-string v2, "KeyguardEffectViewIndigoDiffusion"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 306
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 427
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    .line 429
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSound()V

    .line 431
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 489
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 513
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 504
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    if-eqz v0, :cond_0

    .line 508
    :goto_0
    return v1

    .line 507
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 518
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 494
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 496
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 523
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 524
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->removeMessages(I)V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    .line 530
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 539
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 540
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

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

    .line 549
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 421
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->clearScreen()V

    .line 423
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 474
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 467
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 470
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 558
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    const-string v2, "setContextualWallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-nez p1, :cond_1

    .line 561
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

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

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 567
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 568
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 572
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 535
    return-void
.end method

.method public settingsForImageType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/16 v2, 0x23

    .line 210
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "settingsForImageType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->imageType:I

    if-eq v0, p1, :cond_0

    .line 214
    iput p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->imageType:I

    .line 215
    if-nez p1, :cond_1

    .line 217
    const/16 v0, 0x55

    invoke-direct {p0, v2, v2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->changeColor(III)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/16 v0, 0x50

    const/16 v1, 0xa

    const/16 v2, 0x19

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->changeColor(III)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 413
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->makeSound()V

    .line 415
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->clearScreen()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 417
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 479
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 481
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 485
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 442
    const-string v2, "KeyguardEffectViewIndigoDiffusion"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 445
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v2, "Bitmap"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 449
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    :cond_0
    return-void
.end method

.method public update(I)V
    .locals 4
    .param p1, "updateType"    # I

    .prologue
    .line 454
    const-string v2, "KeyguardEffectViewIndigoDiffusion"

    const-string v3, "changeBackground()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v2, "Bitmap"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 461
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 463
    :cond_0
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method
