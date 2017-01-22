.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewNone.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_none_lock.ogg"

.field public static final TYPE_SHORTCUT:I = 0x1

.field public static final TYPE_UNLOCK:I = 0x0

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_none_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private circleEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private touchHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_none_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_none_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 29
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 42
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 53
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 29
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 42
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 67
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 29
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 42
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 71
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p4, "mWallpaperProcessSeparated"    # Z
    .param p5, "displayId"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 42
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 76
    invoke-virtual/range {p0 .. p5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 29
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 42
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, v2

    .line 57
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 42
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 62
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->reloadResForOpenTheme()V

    return-void
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    const-string v0, "Wallpaper"

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method private reloadResForOpenTheme()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "reloadResForOpenTheme"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 198
    return-void
.end method

.method private setOuterCircleType(Z)V
    .locals 3
    .param p1, "isStroke"    # Z

    .prologue
    .line 181
    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "KeyguardEffectViewNone : setOuterCircleType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "setOuterCircleType"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 185
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 257
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 259
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p4, "mWallpaperProcessSeparated"    # Z
    .param p5, "displayId"    # I

    .prologue
    .line 81
    const-string v11, "VisualEffectCircleUnlockEffect"

    const-string v12, "KeyguardEffectViewNone : Constructor"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    .line 83
    move/from16 v0, p5

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mDisplayId:I

    .line 84
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 85
    .local v3, "dm":Landroid/util/DisplayMetrics;
    iget v9, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 86
    .local v9, "screenWidth":I
    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 88
    .local v8, "screenHeight":I
    if-ge v9, v8, :cond_4

    move v10, v9

    .line 89
    .local v10, "smallestWidth":I
    :goto_0
    int-to-float v11, v10

    const/high16 v12, 0x44870000    # 1080.0f

    div-float v7, v11, v12

    .line 91
    .local v7, "ratio":F
    const-string v11, "VisualEffectCircleUnlockEffect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "screenWidth : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v11, "VisualEffectCircleUnlockEffect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "screenHeight : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v11, "VisualEffectCircleUnlockEffect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ratio : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->touchHashmap:Ljava/util/HashMap;

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "circleUnlockMaxWidth":I
    if-nez p2, :cond_5

    .line 107
    iget-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    mul-int/lit8 v1, v11, 0x2

    .line 111
    :cond_0
    :goto_1
    const/high16 v11, 0x40800000    # 4.0f

    mul-float/2addr v11, v7

    float-to-int v6, v11

    .line 112
    .local v6, "outerStrokeWidth":I
    const/high16 v11, 0x40c00000    # 6.0f

    mul-float/2addr v11, v7

    float-to-int v4, v11

    .line 113
    .local v4, "innerStrokeWidth":I
    const/16 v11, 0x1e

    new-array v5, v11, [I

    const/4 v11, 0x0

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_01:I

    aput v12, v5, v11

    const/4 v11, 0x1

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_02:I

    aput v12, v5, v11

    const/4 v11, 0x2

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_03:I

    aput v12, v5, v11

    const/4 v11, 0x3

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_04:I

    aput v12, v5, v11

    const/4 v11, 0x4

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_05:I

    aput v12, v5, v11

    const/4 v11, 0x5

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_06:I

    aput v12, v5, v11

    const/4 v11, 0x6

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_07:I

    aput v12, v5, v11

    const/4 v11, 0x7

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_08:I

    aput v12, v5, v11

    const/16 v11, 0x8

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_09:I

    aput v12, v5, v11

    const/16 v11, 0x9

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_10:I

    aput v12, v5, v11

    const/16 v11, 0xa

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_11:I

    aput v12, v5, v11

    const/16 v11, 0xb

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_12:I

    aput v12, v5, v11

    const/16 v11, 0xc

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_13:I

    aput v12, v5, v11

    const/16 v11, 0xd

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_14:I

    aput v12, v5, v11

    const/16 v11, 0xe

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_15:I

    aput v12, v5, v11

    const/16 v11, 0xf

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_16:I

    aput v12, v5, v11

    const/16 v11, 0x10

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_17:I

    aput v12, v5, v11

    const/16 v11, 0x11

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_18:I

    aput v12, v5, v11

    const/16 v11, 0x12

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_19:I

    aput v12, v5, v11

    const/16 v11, 0x13

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_20:I

    aput v12, v5, v11

    const/16 v11, 0x14

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_21:I

    aput v12, v5, v11

    const/16 v11, 0x15

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_22:I

    aput v12, v5, v11

    const/16 v11, 0x16

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_23:I

    aput v12, v5, v11

    const/16 v11, 0x17

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_24:I

    aput v12, v5, v11

    const/16 v11, 0x18

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_25:I

    aput v12, v5, v11

    const/16 v11, 0x19

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_26:I

    aput v12, v5, v11

    const/16 v11, 0x1a

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_27:I

    aput v12, v5, v11

    const/16 v11, 0x1b

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_28:I

    aput v12, v5, v11

    const/16 v11, 0x1c

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_29:I

    aput v12, v5, v11

    const/16 v11, 0x1d

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_30:I

    aput v12, v5, v11

    .line 131
    .local v5, "lockSequenceImageId":[I
    new-instance v11, Lcom/samsung/android/visualeffect/EffectView;

    iget-object v12, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    .line 132
    iget-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    .line 134
    new-instance v2, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v2}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 135
    .local v2, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 136
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v1, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->circleUnlockMaxWidth:I

    .line 137
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v6, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->outerStrokeWidth:I

    .line 138
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v4, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->innerStrokeWidth:I

    .line 139
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput-object v5, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->lockSequenceImageId:[I

    .line 140
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    sget v12, Lcom/android/keyguard/R$drawable;->keyguard_none_arrow:I

    iput v12, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowId:I

    .line 141
    iget-object v11, v2, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v12

    iput-boolean v12, v11, Lcom/samsung/android/visualeffect/lock/data/CircleData;->hasNoOuterCircle:Z

    .line 142
    iget-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v11, v2}, Lcom/samsung/android/visualeffect/EffectView;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 143
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 144
    :cond_1
    iget-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/R$dimen;->keyguard_shortcut_min_width_offset:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setMinWidthOffset(I)V

    .line 145
    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_shortcut_arrow:I

    invoke-virtual {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setArrowForButton(I)V

    .line 147
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestShortcutEffect()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 148
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setOuterCircleType(Z)V

    .line 149
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    .line 151
    :cond_3
    iget-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->addView(Landroid/view/View;)V

    .line 152
    return-void

    .end local v1    # "circleUnlockMaxWidth":I
    .end local v2    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    .end local v4    # "innerStrokeWidth":I
    .end local v5    # "lockSequenceImageId":[I
    .end local v6    # "outerStrokeWidth":I
    .end local v7    # "ratio":F
    .end local v10    # "smallestWidth":I
    :cond_4
    move v10, v8

    .line 88
    goto/16 :goto_0

    .line 108
    .restart local v1    # "circleUnlockMaxWidth":I
    .restart local v7    # "ratio":F
    .restart local v10    # "smallestWidth":I
    :cond_5
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 109
    iget-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border_shortcut:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    mul-int/lit8 v1, v11, 0x2

    goto/16 :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 158
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 164
    return-void
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 217
    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 236
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method public setArrowForButton(I)V
    .locals 2
    .param p1, "arrowForButtonId"    # I

    .prologue
    .line 188
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 189
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 190
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowForButtonId:I

    .line 191
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 192
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 292
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "isHidden"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 273
    :cond_0
    return-void
.end method

.method public setMinWidthOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 167
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 168
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 169
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->minWidthOffset:I

    .line 170
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 171
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 211
    :cond_0
    return-void
.end method

.method public showSwipeCircleEffect(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 174
    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "KeyguardEffectViewNone : showSwipeCircleEffect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "showSwipeCircleEffect"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 178
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 241
    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "KeyguardEffectViewNone : showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v1, :cond_0

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 248
    .end local v0    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method
