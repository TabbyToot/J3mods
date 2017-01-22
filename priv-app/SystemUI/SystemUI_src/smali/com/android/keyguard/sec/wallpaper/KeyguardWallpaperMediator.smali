.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;
.super Ljava/lang/Object;
.source "KeyguardWallpaperMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    }
.end annotation


# static fields
.field private static final DUAL_MODE_DUPLICATE:I = 0x1

.field private static final DUAL_MODE_EXPAND:I = 0x0

.field private static final DUAL_MODE_LEFT:I = 0x2

.field private static final DUAL_MODE_RIGHT:I = 0x3

.field private static final DUAL_MODE_UNKNOWN:I = -0x1

.field private static final MSG_WALLPAPER_TYPE_CHANGED:I = 0xc8

.field private static final MSG_WALLPAPER_TYPE_CHANGED_SUB:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperMediator"

.field private static final TEST_MODE:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentObserverSub:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

.field private mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

.field private final mHandler:Landroid/os/Handler;

.field private mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

.field private mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

.field private mWallpaperType:I

.field private mWallpaperTypeSub:I

.field private mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mWindowManager:Landroid/view/WindowManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerImpl;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/WindowManagerImpl;
    .param p3, "windowCallback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v1, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$1;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v1, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContentObserver:Landroid/database/ContentObserver;

    .line 123
    new-instance v1, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$3;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$3;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContentObserverSub:Landroid/database/ContentObserver;

    .line 140
    new-instance v1, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$4;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowManager:Landroid/view/WindowManagerImpl;

    .line 57
    iput-object p3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->setContentObserver()V

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleWallpaperTypeChanged()V

    .line 75
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleWallpaperTypeChangedSub()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkSetYahooLiveWeatherType()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 237
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_dual_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 238
    .local v0, "dualScreenMode":I
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;I)I

    move-result v3

    .line 240
    .local v3, "wallpaperType":I
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "previous_lockscreen_wallpaper"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 241
    .local v1, "previousWallpaperType":I
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "previous_lockscreen_wallpaper_sub"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 243
    .local v2, "previousWallpaperTypeSub":I
    const-string v4, "KeyguardWallpaperMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSetYahooLiveWeather() dualScreenMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wallpaperType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previousWallpaperType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previousWallpaperTypeSub : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-ne v1, v8, :cond_1

    if-ne v2, v8, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    if-ne v3, v8, :cond_0

    .line 252
    if-ne v0, v7, :cond_2

    .line 253
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_sub"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 254
    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 255
    const-string v4, "KeyguardWallpaperMediator"

    const-string v5, "dual screen mode type is only right!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_3
    if-ne v0, v8, :cond_4

    .line 257
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_sub"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 260
    :cond_4
    const-string v4, "KeyguardWallpaperMediator"

    const-string v5, "illegal dual screen mode type!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleWallpaperTypeChanged()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 180
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v1

    .line 182
    .local v1, "wallpaperType":I
    if-eq v1, v0, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 184
    .local v0, "val":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 185
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    const-string v3, "KeyguardWallpaperMediator"

    const-string v4, "Reset white_lockscreen_wallpaper due to !WALLPAPER_TYPE_FILE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0    # "val":Z
    :cond_0
    iget v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperType:I

    if-ne v1, v3, :cond_2

    .line 233
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 183
    goto :goto_0

    .line 194
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 221
    const-string v2, "KeyguardWallpaperMediator"

    const-string v3, "illegal wallpaper type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_3
    :goto_2
    iput v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperType:I

    goto :goto_1

    .line 197
    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-eqz v2, :cond_4

    .line 198
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->cleanUp()V

    .line 199
    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    .line 201
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->cleanUp()V

    .line 203
    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_2

    .line 207
    :pswitch_1
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-eqz v3, :cond_5

    .line 208
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->cleanUp()V

    .line 209
    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    .line 211
    :cond_5
    new-instance v3, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v6, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;-><init>(Landroid/content/Context;Landroid/view/WindowManagerImpl;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_2

    .line 214
    :pswitch_2
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v3, :cond_6

    .line 215
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->cleanUp()V

    .line 216
    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .line 218
    :cond_6
    new-instance v3, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v3, v4, v5, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    goto :goto_2

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleWallpaperTypeChangedSub()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 266
    const-string v4, "KeyguardWallpaperMediator"

    const-string v5, "handleWallpaperTypeChangedSub()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;I)I

    move-result v1

    .line 268
    .local v1, "wallpaperType":I
    const-string v4, "KeyguardWallpaperMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleWallpaperTypeChangedSub() wallpaperType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-eq v1, v2, :cond_0

    .line 271
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "white_lockscreen_wallpaper_sub"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 272
    .local v0, "val":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 273
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "white_lockscreen_wallpaper_sub"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    const-string v3, "KeyguardWallpaperMediator"

    const-string v4, "Reset white_lockscreen_wallpaper_sub due to !WALLPAPER_TYPE_FILE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v0    # "val":Z
    :cond_0
    iget v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperTypeSub:I

    if-ne v1, v3, :cond_2

    .line 279
    const-string v2, "KeyguardWallpaperMediator"

    const-string v3, "handleWallpaperTypeChangedSub() reutrn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 271
    goto :goto_0

    .line 283
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 322
    const-string v2, "KeyguardWallpaperMediator"

    const-string v3, "illegal wallpaper sub type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_3
    :goto_2
    iput v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperTypeSub:I

    .line 329
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "previous_lockscreen_wallpaper_sub"

    iget v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperTypeSub:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 286
    :pswitch_0
    const-string v2, "KeyguardWallpaperMediator"

    const-string v3, "handleWallpaperTypeChangedSub() WALLPAPER_TYPE_HOME WALLPAPER_TYPE_LIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-eqz v2, :cond_4

    .line 289
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->cleanUp()V

    .line 290
    iput-object v7, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    .line 293
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v2, :cond_3

    .line 294
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->cleanUp()V

    .line 295
    iput-object v7, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_2

    .line 300
    :pswitch_1
    const-string v3, "KeyguardWallpaperMediator"

    const-string v4, "handleWallpaperTypeChangedSub() WALLPAPER_TYPE_FILE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-eqz v3, :cond_5

    .line 303
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->cleanUp()V

    .line 304
    iput-object v7, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    .line 307
    :cond_5
    new-instance v3, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v6, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;-><init>(Landroid/content/Context;Landroid/view/WindowManagerImpl;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_2

    .line 311
    :pswitch_2
    const-string v3, "KeyguardWallpaperMediator"

    const-string v4, "handleWallpaperTypeChangedSub() WALLPAPER_TYPE_JUST_ON_LOCK_LIVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v3, :cond_6

    .line 314
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->cleanUp()V

    .line 315
    iput-object v7, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .line 318
    :cond_6
    new-instance v3, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v3, v4, v5, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    goto :goto_2

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setContentObserver()V
    .locals 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 170
    return-void
.end method

.method private setContentObserverSub()V
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_sub"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContentObserverSub:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 176
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWallpaperType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 466
    :cond_1
    return-void
.end method

.method public executeCommand(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 335
    const-string v0, "KeyguardWallpaperMediator"

    const-string v1, "executeCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-nez p2, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->executeCommand(I)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->executeCommand(I)V

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getUnlockDelay()J

    move-result-wide v0

    .line 442
    :goto_0
    return-wide v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getUnlockDelay()J

    move-result-wide v0

    goto :goto_0

    .line 442
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleUnlock(Landroid/view/MotionEvent;)V

    .line 419
    :cond_0
    return-void
.end method

.method public removeWindow()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->removeViewWindow()V

    .line 480
    :cond_0
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 352
    const/4 v0, 0x1

    .line 360
    .local v0, "isEventFromMainDisplay":Z
    if-eqz v0, :cond_1

    .line 361
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->sendTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "displayId"    # I

    .prologue
    .line 373
    if-nez p2, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;I)V
    .locals 1
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "displayId"    # I

    .prologue
    .line 422
    if-nez p4, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mControllerSub:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    goto :goto_0
.end method
