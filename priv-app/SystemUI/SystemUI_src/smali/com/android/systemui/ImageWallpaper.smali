.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$ExtractColor;,
        Lcom/android/systemui/ImageWallpaper$DrawableEngine;
    }
.end annotation


# static fields
.field static final CUSTOM_WALLPAPER:I = 0x0

.field private static final DEBUG:Z

.field static final FIXED_SIZED_SURFACE:Z = true

.field private static final GL_LOG_TAG:Ljava/lang/String; = "ImageWallpaperGL"

.field private static NEED_CUSTOMIZING:Z = false

.field static final PRELOAD_WALLPAPER:I = 0x1

.field private static final PROPERTY_KERNEL_QEMU:Ljava/lang/String; = "ro.kernel.qemu"

.field private static final SETTINGS_WALLPAPER_TILT_STATUS:Ljava/lang/String; = "wallpaper_tilt_status"

.field private static final TAG:Ljava/lang/String; = "ImageWallpaper"

.field static final THEME_WALLPAPER:I = 0x2

.field static final USE_OPENGL:Z = true


# instance fields
.field private SUPPORT_MOBILE_KEYBOARD:Z

.field private SUPPORT_TILT_WALLPAPER:Z

.field mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

.field mIsHwAccelerated:Z

.field private mLastKeyboard:I

.field private mNewKeyboard:I

.field private mProductName:Ljava/lang/String;

.field public mTiltChanged:Z

.field mWallpaperManager:Landroid/app/WallpaperManager;

.field public mWallpaperTiltSettingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-eq v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/ImageWallpaper;->DEBUG:Z

    .line 76
    sput-boolean v1, Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z

    return-void

    :cond_0
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 84
    iput v2, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    .line 85
    iput v2, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    .line 92
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TILT_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z

    .line 93
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    .line 1346
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 70
    sput-boolean p0, Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/systemui/ImageWallpaper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ImageWallpaper;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ImageWallpaper;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/ImageWallpaper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ImageWallpaper;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/ImageWallpaper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ImageWallpaper;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/ImageWallpaper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ImageWallpaper;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/ImageWallpaper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ImageWallpaper;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    return p1
.end method

.method private static isEmulator()Z
    .locals 3

    .prologue
    .line 125
    const-string v0, "1"

    const-string v1, "ro.kernel.qemu"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_1

    .line 145
    sget-boolean v0, Lcom/android/systemui/ImageWallpaper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "ImageWallpaper"

    const-string v1, "onConfigurationChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    .line 148
    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNewKeyboard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastKeyboard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v0, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    iget v1, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    if-eq v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 102
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 103
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mProductName:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->isEmulator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mProductName:Ljava/lang/String;

    const-string v1, "o7lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mProductName:Ljava/lang/String;

    const-string v1, "o5lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mProductName:Ljava/lang/String;

    const-string v1, "j3lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    goto :goto_0
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->trimMemory(I)V

    .line 135
    :cond_0
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    return-object v0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->trimMemory(I)V

    .line 122
    :cond_0
    return-void
.end method
