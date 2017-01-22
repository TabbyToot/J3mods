.class public Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewLiveWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final FINISH_INIT_DELAY:I = 0x3e8

.field private static final MSG_CONNECTION_DISCONNECT:I = 0x1

.field private static final MSG_SET_VISIBILITY:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

.field private mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

.field private final mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mFinishInitHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsHidden:Z

.field private mIsNotInitialized:Z

.field private mIsScreenTurnedOn:Z

.field private mIsShowing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "KeyguardEffectViewLiveWallpaper"

    sput-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "displayId"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "isProcessSeparated"    # Z
    .param p4, "displayId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "just_lock_livewallpaper_package_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "just_lock_livewallpaper_class_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsShowing:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsHidden:Z

    .line 48
    iput-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mDisplayId:I

    .line 55
    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 97
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    .line 98
    iput p4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mDisplayId:I

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;)Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;
    .param p1, "x1"    # Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeVisibility()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->isShowingAndLcdOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    goto :goto_0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method private makeConnection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x2

    .line 245
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-nez v4, :cond_3

    .line 246
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_livewallpaper_package_name"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_livewallpaper_class_name"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "className":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 275
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 257
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    new-instance v4, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    iget-object v5, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1, p0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    .line 263
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    .line 264
    .local v2, "isUltraPowerSavingEnabled":Z
    sget-object v4, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v4, :cond_1

    .line 266
    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->isServiceConnected()Z

    move-result v4

    if-nez v4, :cond_4

    .line 267
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->connect()Z

    .line 269
    :cond_4
    iget-boolean v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->isServiceConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    iput-boolean v8, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z

    .line 271
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    .line 272
    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsShowing:Z

    .line 153
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->changeVisibility()V

    .line 154
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    return-void
.end method

.method public isShowingAndLcdOn()Z
    .locals 3

    .prologue
    .line 278
    const/4 v1, 0x1

    .line 280
    .local v1, "visible":Z
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    .line 281
    .local v0, "isUltraPowerSavingEnabled":Z
    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsHidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsShowing:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    const/4 v1, 0x0

    .line 284
    :cond_1
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "attached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 108
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConnection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKeyguardManager.isKeyguardLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->show()V

    .line 114
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 115
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "detached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->cleanUp()V

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->disconnect()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    .line 130
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 131
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->makeConnection()V

    .line 146
    return-void
.end method

.method public screenTurnedOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->changeVisibility()V

    .line 193
    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "screen on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->changeVisibility()V

    .line 181
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 302
    return-void
.end method

.method public setHidden(Z)V
    .locals 3
    .param p1, "isHidden"    # Z

    .prologue
    .line 233
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set hidden = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-boolean p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsHidden:Z

    .line 235
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->changeVisibility()V

    .line 236
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsShowing:Z

    .line 139
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->makeConnection()V

    .line 140
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 199
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    .line 159
    .local v0, "isUltraPowerSavingEnabled":Z
    sget-object v1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->isShowingAndLcdOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    sget-object v1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;

    const-string v2, "reconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->connect()Z

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->changeVisibility()V

    .line 169
    :cond_1
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method
