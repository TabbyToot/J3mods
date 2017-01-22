.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;
.super Ljava/lang/Object;
.source "KeyguardWallpaperViewController.java"


# static fields
.field private static final KEYGUARD_DEFAULT_WALLPAPER_TYPE_BRILLIANT:I = 0x1

.field private static final MSG_HANDLE_TOUCH_EVENT:I = 0x1f4

.field private static final MSG_WALLPAPER_EFFECT_CHANGED:I = 0x12f0

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x12c

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0xc8

.field private static final MSG_WALLPAPER_PRELOAD_CHANGED:I = 0x190

.field private static final RICH_LOCK_CATEGORIES_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

.field private static final RICH_LOCK_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator"

.field private static final SETTING_KEYGUARD_DEFAULT_WALLPAPER_TYPE_FOR_EFFECT:Ljava/lang/String; = "keyguard_default_wallpaper_type_for_effect"

.field private static final SETTING_KEYGUARD_SET_DEFAULT_WALLPAPER:Ljava/lang/String; = "keyguard_set_default_wallpaper"

.field private static final SETTING_LOCKSCREEN_MONTBLANC_WALLPAPER:Ljava/lang/String; = "lockscreen_montblanc_wallpaper"

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperViewController"


# instance fields
.field private mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

.field private mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field mConfigurationChangeCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mEmergencyModeStateChanged:Z

.field private mFileObserver:Landroid/os/FileObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMusicBackgroundSet:Z

.field private mOpenThemeEnabled:Z

.field private mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

.field private mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

.field private mStatusBarGradationView:Landroid/view/View;

.field private mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

.field private mWallpaperPath:Ljava/lang/String;

.field private mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerImpl:Landroid/view/WindowManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerImpl;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/WindowManagerImpl;
    .param p3, "windowCallback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p4, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .line 94
    iput-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mMusicBackgroundSet:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeEnabled:Z

    .line 106
    new-instance v1, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$1;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v1, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$2;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    .line 177
    new-instance v1, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mConfigurationChangeCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;

    .line 192
    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    .line 194
    iput-object p3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 195
    iput p4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mDisplayId:I

    .line 197
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 198
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    invoke-virtual {v1, v0}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    .line 200
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeEnabled:Z

    .line 202
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleEffectChanged()V

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setContentObserver()V

    .line 204
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperFileObserver()V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleEffectChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleWallpaperImageChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/view/WindowManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mDisplayId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleSetGradationLayer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperFileObserver()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    return-object v0
.end method

.method private addViewWindow()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 582
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    if-nez v1, :cond_5

    .line 583
    new-instance v1, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mConfigurationChangeCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    .line 584
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_0

    .line 591
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, v4, v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->addView(Landroid/view/View;II)V

    .line 592
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleSetGradationLayer()V

    .line 595
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    if-nez v1, :cond_1

    .line 598
    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    .line 600
    :cond_1
    const-string v1, "KeyguardWallpaperViewController"

    const-string v2, "Apply BlendedFilter from addViewWindow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v1, v2, v4, v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->addView(Landroid/view/View;II)V

    .line 604
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 606
    .local v0, "isPreloadedWallpaper":Z
    :goto_1
    if-nez v0, :cond_7

    .line 607
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->applyBlendedFilter(Landroid/graphics/Bitmap;)V

    .line 613
    .end local v0    # "isPreloadedWallpaper":Z
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->shouldShowAttributionInfoView()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperSlider(Z)V

    .line 615
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    if-eqz v1, :cond_4

    .line 619
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 620
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 623
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 624
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    const-string v1, "KeyguardWallpaperViewController"

    const-string v2, "addView called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_4
    return-void

    .line 587
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->removeAllViews()V

    goto/16 :goto_0

    .line 604
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 609
    .restart local v0    # "isPreloadedWallpaper":Z
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->resetBlendedFilter()V

    goto :goto_2
.end method

.method private createUpdateEffectView(Ljava/lang/String;)V
    .locals 8
    .param p1, "nameOfEffect"    # Ljava/lang/String;

    .prologue
    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.keyguard.sec.effect.KeyguardEffectView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "nameOfClass":Ljava/lang/String;
    const-string v3, "OpenTheme"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 523
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->getOpenThemeWallpaperView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v2

    .line 524
    .local v2, "themeView":Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eq v3, v2, :cond_1

    .line 525
    const-string v3, "KeyguardOpenThemeEffect"

    const-string v4, "change OpenTheme"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iput-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 527
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->addViewWindow()V

    .line 528
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    .line 529
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v3, Landroid/view/View;

    new-instance v4, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$5;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    .end local v2    # "themeView":Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    :cond_0
    :goto_0
    return-void

    .line 538
    .restart local v2    # "themeView":Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v3, :cond_0

    .line 539
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_0

    .line 544
    .end local v2    # "themeView":Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 546
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_0

    .line 550
    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mDisplayId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 567
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v3, :cond_0

    .line 569
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v3, v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    if-eqz v3, :cond_4

    .line 571
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    .line 575
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->addViewWindow()V

    .line 576
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->updateAfterCreation()V

    goto/16 :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "KeyguardWallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ClassNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 554
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "KeyguardWallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NoSuchMethodException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 556
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "KeyguardWallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SecurityException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 558
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v3, "KeyguardWallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " InstantiationException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 560
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "KeyguardWallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IllegalAccessException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 562
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "KeyguardWallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 564
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "KeyguardWallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " InvocationTargetException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getBackgroundEffectName(I)Ljava/lang/String;
    .locals 3
    .param p1, "effect"    # I

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 446
    .local v0, "nameOfEffect":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isZoomPanningEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isRichLockWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const-string v1, "Panning"

    .line 516
    :goto_0
    return-object v1

    .line 451
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeEnabled:Z

    if-eqz v1, :cond_1

    .line 452
    new-instance v1, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    .line 453
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->getOpenThemeWallpaperView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 455
    const-string v1, "OpenTheme"

    goto :goto_0

    .line 459
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 513
    const-string v0, "Wallpaper"

    :goto_1
    move-object v1, v0

    .line 516
    goto :goto_0

    .line 468
    :sswitch_0
    const-string v0, "Wallpaper"

    .line 469
    goto :goto_1

    .line 471
    :sswitch_1
    const-string v0, "RippleInk"

    .line 472
    goto :goto_1

    .line 474
    :sswitch_2
    const-string v0, "ParticleSpace"

    .line 475
    goto :goto_1

    .line 477
    :sswitch_3
    const-string v0, "WaterColor"

    .line 478
    goto :goto_1

    .line 480
    :sswitch_4
    const-string v0, "Blind"

    .line 481
    goto :goto_1

    .line 483
    :sswitch_5
    const-string v0, "BrilliantCut"

    .line 484
    goto :goto_1

    .line 486
    :sswitch_6
    const-string v0, "BrilliantRing"

    .line 487
    goto :goto_1

    .line 489
    :sswitch_7
    const-string v0, "ZoomPanning"

    .line 490
    goto :goto_1

    .line 492
    :sswitch_8
    const-string v0, "IndigoDiffusion"

    .line 493
    goto :goto_1

    .line 495
    :sswitch_9
    const-string v0, "Tilt"

    .line 496
    goto :goto_1

    .line 498
    :sswitch_a
    const-string v0, "AbstractTile"

    .line 499
    goto :goto_1

    .line 501
    :sswitch_b
    const-string v0, "GeometricMosaic"

    .line 502
    goto :goto_1

    .line 504
    :sswitch_c
    const-string v0, "WaterDroplet"

    .line 505
    goto :goto_1

    .line 507
    :sswitch_d
    const-string v0, "SparklingBubbles"

    .line 508
    goto :goto_1

    .line 510
    :sswitch_e
    const-string v0, "ColourDroplet"

    .line 511
    goto :goto_1

    .line 459
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_8
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x50 -> :sswitch_7
        0x51 -> :sswitch_0
        0x52 -> :sswitch_0
        0x53 -> :sswitch_0
        0x55 -> :sswitch_0
        0x65 -> :sswitch_9
    .end sparse-switch
.end method

.method private getCurrentEffectType()I
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ripple_effect"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private handleEffectChanged()V
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getCurrentEffectType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getBackgroundEffectName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->createUpdateEffectView(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private handleSetGradationLayer()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 299
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 303
    .local v0, "isPreloadedWallpaper":Z
    :goto_0
    const-string v1, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreloadedWallpaper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v1

    if-nez v1, :cond_4

    .line 305
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 306
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    .line 307
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    sget v2, Lcom/android/keyguard/R$drawable;->gradation_indi_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 308
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 313
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2, v5, v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->addView(Landroid/view/View;II)V

    .line 326
    .end local v0    # "isPreloadedWallpaper":Z
    :cond_1
    :goto_1
    return-void

    .line 300
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 317
    .restart local v0    # "isPreloadedWallpaper":Z
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1

    .line 320
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->removeView(Landroid/view/View;)V

    .line 322
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mStatusBarGradationView:Landroid/view/View;

    goto :goto_1
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 691
    :cond_0
    return-void
.end method

.method private handleWallpaperImageChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mMusicBackgroundSet:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isCategoriesWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_zoom_panning_effect"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->shouldShowAttributionInfoView()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isZoomPanningEffectEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleShowSlideEffect()V

    .line 350
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->changeEffectType()V

    .line 354
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleEffectChanged()V

    .line 355
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->updateMontblancEffectType()V

    goto :goto_0

    .line 344
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperSlider(Z)V

    goto :goto_1

    .line 347
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setWallpaperSlider(Z)V

    goto :goto_1
.end method

.method private setContentObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ripple_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 215
    iget v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mDisplayId:I

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path_2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 229
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_transparent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 237
    return-void

    .line 222
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mDisplayId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path_sub"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path_2_sub"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private setWallpaperFileObserver()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 240
    iget v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mDisplayId:I

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    .line 251
    :cond_0
    :goto_0
    const-string v0, "KeyguardWallpaperViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 296
    :goto_1
    return-void

    .line 245
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mDisplayId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path_sub"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    .line 265
    :cond_3
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$4;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$4;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_1
.end method


# virtual methods
.method public changeEffectType()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 416
    const-string v1, "KeyguardWallpaperViewController"

    const-string v2, "changeEffectType()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z

    if-eqz v1, :cond_0

    .line 419
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z

    .line 434
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_set_default_wallpaper"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 426
    .local v0, "changedDefaultWallpaperType":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 664
    const-string v0, "KeyguardWallpaperViewController"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 667
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mFileObserver:Landroid/os/FileObserver;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->removeAllViews()V

    .line 678
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->removeViewWindow()V

    .line 679
    return-void
.end method

.method public createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    .line 630
    const-string v1, "KeyguardWallpaperViewController"

    const-string v3, "createLayoutParams"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v2, -0x1

    .line 633
    .local v2, "heights":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 638
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x832

    const/16 v4, 0x318

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 646
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 647
    const-string v1, "KeyguardWallpaperService"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 649
    sget v1, Lcom/android/keyguard/R$style;->Animation_WallpaperWindow:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 650
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 651
    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 810
    const-string v1, "KeyguardWallpaperViewController:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOpenThemeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isOpenThemeActivated() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isOpenThemeActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEmergencyModeStateChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mEmergencyModeStateChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getCurrentEffectType()I

    move-result v0

    .line 816
    .local v0, "effect":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getCurrentEffectType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getBackgroundType(getCurrentEffectType()) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getBackgroundEffectName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBackgroundView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method public executeCommand(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 726
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 732
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    goto :goto_0

    .line 735
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    goto :goto_0

    .line 738
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    .line 739
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->cleanUp()V

    goto :goto_0

    .line 744
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_0

    .line 747
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    .line 748
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->screenTurnedOn()V

    goto :goto_0

    .line 753
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    .line 754
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->screenTurnedOff()V

    goto :goto_0

    .line 759
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    goto :goto_0

    .line 762
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/keyguard/R$style;->Animation_WallpaperWindow:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 764
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 768
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 770
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 730
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getDefaultWallpaperTypeForEffect()I
    .locals 4

    .prologue
    .line 709
    const/4 v0, 0x1

    .line 713
    .local v0, "defaultType":I
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    .line 789
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 722
    :cond_0
    return-void
.end method

.method public isCategoriesWallpaper()Z
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 411
    .local v0, "isCategoriesWallpaper":Z
    const-string v1, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCategoriesWallpaper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isOpenThemeActivated()Z
    .locals 4

    .prologue
    .line 794
    iget-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mOpenThemeManager:Lcom/android/keyguard/sec/KeyguardOpenThemeManager;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 795
    .local v0, "isEnabled":Z
    :goto_0
    const-string v1, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpenThemeActivated() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return v0

    .line 794
    .end local v0    # "isEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRichLockWallpaper()Z
    .locals 4

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 402
    :goto_0
    return v0

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "/data/data/com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 401
    .local v0, "isRichLock":Z
    const-string v1, "KeyguardWallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRichLockWallpaper() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isZoomPanningEffectEnabled()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isZoomPanningEffectEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public removeViewWindow()V
    .locals 2

    .prologue
    .line 655
    const-string v0, "KeyguardWallpaperViewController"

    const-string v1, "removeViewWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 661
    :cond_0
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 683
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 684
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 698
    :cond_0
    if-nez p1, :cond_1

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mMusicBackgroundSet:Z

    goto :goto_0

    .line 702
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mMusicBackgroundSet:Z

    .line 705
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setWallpaperSlider(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    const/4 v2, -0x1

    .line 359
    if-eqz p1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_0

    .line 361
    const-string v0, "KeyguardWallpaperViewController"

    const-string v1, "add WallpaperSlider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .line 363
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->addView(Landroid/view/View;II)V

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->notifyWallpaperStateChanged()V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "KeyguardWallpaperViewController"

    const-string v1, "remove WallpaperSlider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->removeView(Landroid/view/View;)V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->notifyWallpaperStateChanged()V

    goto :goto_0
.end method

.method public shouldShowAttributionInfoView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 800
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    :cond_0
    :goto_0
    return v0

    .line 803
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->isCategoriesWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 783
    :cond_0
    return-void
.end method

.method public updateMontblancEffectType()V
    .locals 6

    .prologue
    .line 378
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v2, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    if-eqz v2, :cond_1

    .line 379
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_montblanc_wallpaper"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 383
    .local v0, "montblancWallpaperInkType":I
    const/4 v1, 0x0

    .line 384
    .local v1, "type":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->settingsForImageType(I)V

    .line 390
    .end local v0    # "montblancWallpaperInkType":I
    .end local v1    # "type":I
    :cond_1
    return-void
.end method
