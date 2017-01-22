.class Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ALPHA:F = 0.5f

.field private static DEBUG:Z = false

.field private static final SCREENSHOT_DROP_IN_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_IN_MIN_SCALE:F = 0.725f

.field private static final SCREENSHOT_DROP_OUT_DELAY:I = 0x1f4

.field private static final SCREENSHOT_DROP_OUT_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE:F = 0.45f

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE_OFFSET:F = 0.0f

.field private static final SCREENSHOT_DROP_OUT_SCALE_DURATION:I = 0x172

.field private static final SCREENSHOT_FAST_DROP_OUT_DURATION:I = 0x140

.field private static final SCREENSHOT_FAST_DROP_OUT_MIN_SCALE:F = 0.6f

.field private static final SCREENSHOT_FLASH_TO_PEAK_DURATION:I = 0x82

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final SCREENSHOT_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GlobalScreenshot"

.field private static final is3LMAllowed:Z

.field private static mIsCaptureEffectViewForShutterAndMove:Z


# instance fields
.field private mActivtyMngr:Landroid/app/ActivityManager;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

.field private mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

.field private mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

.field private mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

.field private mCapturedDisplay:I

.field private mCapturedOrigin:I

.field private mContext:Landroid/content/Context;

.field private mDegree:F

.field private mDegrees:F

.field private mDirection:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasCocktailBar:Z

.field private mIsBasedLandscape:Z

.field private mIsCropCapture:Z

.field private mIsDualScreenEnabled:Z

.field private final mLeftToRight:I

.field private mMainScreenBitmap:Landroid/graphics/Bitmap;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnAnimation:Z

.field private final mRightToLeft:I

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotView:Landroid/widget/ImageView;

.field final mShutterEffectLock:Ljava/lang/Object;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSubBackgroundView:Landroid/widget/ImageView;

.field private mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

.field private mSubCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

.field private mSubContext:Landroid/content/Context;

.field private mSubDegrees:F

.field private mSubDisplay:Landroid/view/Display;

.field private mSubDisplayMatrix:Landroid/graphics/Matrix;

.field private mSubDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mSubScreenBitmap:Landroid/graphics/Bitmap;

.field private mSubScreenshotFlash:Landroid/widget/ImageView;

.field private mSubScreenshotLayout:Landroid/view/View;

.field private mSubScreenshotView:Landroid/widget/ImageView;

.field private mSubWindowManager:Landroid/view/WindowManager;

.field private mSvcContext:Landroid/content/Context;

.field private mSweepDirection:I

.field private mTakeMainDisplay:Z

.field private mTakeSubDisplay:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorDuration:J

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 672
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    .line 697
    sput-boolean v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    return-void

    :cond_0
    move v0, v1

    .line 672
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    const-wide/16 v4, 0x64

    iput-wide v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibratorDuration:J

    .line 723
    iput v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftToRight:I

    .line 724
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightToLeft:I

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    .line 743
    iput-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    .line 752
    iput-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    .line 1373
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    .line 777
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSvcContext:Landroid/content/Context;

    .line 778
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 779
    .local v9, "uiType":Ljava/lang/String;
    const-string v0, "capuccino"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "latte"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    :cond_0
    sput-boolean v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    .line 784
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 785
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 786
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7df

    const v6, 0x1080500

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 794
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 797
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 798
    .local v8, "r":Landroid/content/res/Resources;
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 799
    const v0, 0x1050006

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 806
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    .line 807
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v0, v3}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->load(I)V

    .line 808
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSvcContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    .line 810
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 818
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSvcContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHasCocktailBar:Z

    .line 820
    iput-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 826
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    if-eqz v0, :cond_2

    .line 827
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMatrix:Landroid/graphics/Matrix;

    .line 828
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 831
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 669
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p1, "x1"    # Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p1, "x1"    # Z

    .prologue
    .line 669
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/screenshot/GlobalScreenshot;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p1, "x1"    # Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p1, "x1"    # Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    return-object p1
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 8

    .prologue
    .line 1820
    const v3, 0x3e9aca6b

    .line 1822
    .local v3, "flashPeakDurationPct":F
    const v2, 0x3f1aca6b

    .line 1823
    .local v2, "flashDurationPct":F
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 1833
    .local v1, "flashAlphaInterpolator":Landroid/view/animation/Interpolator;
    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 1843
    .local v4, "scaleInterpolator":Landroid/view/animation/Interpolator;
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1844
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x1ae

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1845
    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1864
    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$12;

    invoke-direct {v5, p0, v4, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1878
    return-object v0

    .line 1843
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .prologue
    .line 1883
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1884
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1885
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$13;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$13;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1894
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 1896
    :cond_0
    const-wide/16 v8, 0x140

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1897
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$14;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$14;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1950
    :goto_0
    return-object v0

    .line 1911
    :cond_1
    const v5, 0x3f5c4771

    .line 1913
    .local v5, "scaleDurationPct":F
    new-instance v6, Lcom/android/systemui/screenshot/GlobalScreenshot$15;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$15;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 1925
    .local v6, "scaleInterpolator":Landroid/view/animation/Interpolator;
    int-to-float v7, p1

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    .line 1926
    .local v3, "halfScreenWidth":F
    int-to-float v7, p2

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    .line 1927
    .local v2, "halfScreenHeight":F
    const/4 v4, 0x0

    .line 1928
    .local v4, "offsetPct":F
    new-instance v1, Landroid/graphics/PointF;

    neg-float v7, v3

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    neg-float v8, v2

    const v9, 0x3ee66666    # 0.45f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-direct {v1, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1933
    .local v1, "finalPos":Landroid/graphics/PointF;
    const-wide/16 v8, 0x1ae

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1934
    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$16;

    invoke-direct {v7, p0, v6, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$16;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 1883
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getAnimationMode(I)I
    .locals 7
    .param p1, "display"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    .line 1538
    const/4 v0, 0x0

    .line 1539
    .local v0, "mode":I
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v4, :cond_13

    .line 1540
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    if-eqz v1, :cond_12

    .line 1541
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedOrigin:I

    if-ne v1, v4, :cond_c

    .line 1542
    if-nez p1, :cond_4

    .line 1543
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v1, :cond_3

    .line 1544
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 1545
    const/4 v0, 0x4

    .line 1612
    :cond_0
    :goto_0
    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getAnimationMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    return v0

    .line 1546
    :cond_1
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    .line 1547
    const/4 v0, 0x5

    goto :goto_0

    .line 1549
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1552
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1554
    :cond_4
    if-ne p1, v4, :cond_0

    .line 1555
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v1, :cond_b

    .line 1556
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    .line 1557
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    .line 1558
    const/4 v0, 0x7

    goto :goto_0

    .line 1560
    :cond_5
    const/16 v0, 0x9

    goto :goto_0

    .line 1562
    :cond_6
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_8

    .line 1563
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7

    .line 1564
    const/16 v0, 0x8

    goto :goto_0

    .line 1566
    :cond_7
    const/16 v0, 0xa

    goto :goto_0

    .line 1569
    :cond_8
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    .line 1570
    const/16 v0, 0xb

    goto :goto_0

    .line 1571
    :cond_9
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_a

    .line 1572
    const/16 v0, 0xc

    goto :goto_0

    .line 1574
    :cond_a
    const/4 v0, 0x6

    goto :goto_0

    .line 1578
    :cond_b
    const/4 v0, 0x0

    goto :goto_0

    .line 1581
    :cond_c
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedOrigin:I

    if-ne v1, v5, :cond_0

    .line 1582
    if-nez p1, :cond_f

    .line 1583
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v1, :cond_d

    .line 1584
    const/16 v0, 0xd

    goto :goto_0

    .line 1586
    :cond_d
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v5, :cond_e

    .line 1587
    const/4 v0, 0x1

    goto :goto_0

    .line 1588
    :cond_e
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v6, :cond_0

    .line 1589
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1592
    :cond_f
    if-ne p1, v4, :cond_0

    .line 1593
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v1, :cond_10

    .line 1594
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1596
    :cond_10
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v5, :cond_11

    .line 1597
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1598
    :cond_11
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v6, :cond_0

    .line 1599
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1605
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1607
    :cond_13
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v5, :cond_14

    .line 1608
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1609
    :cond_14
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v6, :cond_0

    .line 1610
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method private getCurrentDegree()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 880
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 881
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 882
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 884
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    .line 885
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 887
    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 888
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_2

    .line 889
    iput-boolean v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsBasedLandscape:Z

    .line 900
    :cond_1
    :goto_0
    return-void

    .line 891
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsBasedLandscape:Z

    goto :goto_0

    .line 893
    :cond_3
    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 894
    :cond_4
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_5

    .line 895
    iput-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsBasedLandscape:Z

    goto :goto_0

    .line 897
    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsBasedLandscape:Z

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 907
    packed-switch p1, :pswitch_data_0

    .line 915
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 909
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 911
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 913
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 907
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMergedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "leftBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rightBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1189
    const/4 v0, 0x0

    .line 1190
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1191
    const-string v4, "GlobalScreenshot"

    const-string v5, "leftBitmap and rightBitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :goto_0
    return-object v3

    .line 1194
    :cond_0
    if-nez p1, :cond_1

    .line 1195
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 1210
    goto :goto_0

    .line 1196
    :cond_1
    if-nez p2, :cond_2

    .line 1197
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 1199
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {p1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1201
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1202
    .local v2, "p":Landroid/graphics/Paint;
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1203
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1205
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1206
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v1, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1207
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, p2, v4, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1208
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private initView()Z
    .locals 9

    .prologue
    const v8, 0x7f0f00be

    const v7, 0x7f0f00bd

    const v6, 0x7f0f00bc

    const v5, 0x7f040019

    const/4 v4, 0x1

    .line 1489
    iget-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1490
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 1491
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1493
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 1494
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 1495
    sget-boolean v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    if-eqz v2, :cond_4

    .line 1496
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 1500
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f0f00bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 1501
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1502
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1511
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    if-eqz v2, :cond_3

    .line 1512
    iget-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1513
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    .line 1514
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1515
    .local v1, "subLayoutInflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    .line 1517
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubBackgroundView:Landroid/widget/ImageView;

    .line 1518
    sget-boolean v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    if-eqz v2, :cond_5

    .line 1519
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;

    .line 1523
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    const v3, 0x7f0f00bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotFlash:Landroid/widget/ImageView;

    .line 1524
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1525
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1534
    .end local v1    # "subLayoutInflater":Landroid/view/LayoutInflater;
    :cond_3
    return v4

    .line 1498
    .restart local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 1521
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v1    # "subLayoutInflater":Landroid/view/LayoutInflater;
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method private isAvailableCapacity()Z
    .locals 14

    .prologue
    const v13, 0x7f0a0209

    const/4 v9, 0x0

    .line 1268
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 1270
    .local v7, "extStoragePath":Ljava/io/File;
    if-eqz v7, :cond_3

    .line 1273
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 1281
    .local v4, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 1284
    .local v0, "availableBlocks":J
    mul-long v2, v0, v4

    .line 1286
    .local v2, "availableSpace":J
    sget-boolean v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 1287
    const-string v10, "GlobalScreenshot"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GlobalScreenshot availableSpace = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1290
    const-string v10, "GlobalScreenshot"

    const-string v11, "GlobalScreenshot [UBS Enabled Mode]"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-direct {p0, v13}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 1303
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSpace":J
    .end local v4    # "blockSize":J
    .end local v8    # "stat":Landroid/os/StatFs;
    :goto_0
    return v9

    .line 1274
    :catch_0
    move-exception v6

    .line 1275
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "ScreenCapture"

    const-string v11, "isAvailableCapacity"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1276
    invoke-direct {p0, v13}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    goto :goto_0

    .line 1293
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "availableBlocks":J
    .restart local v2    # "availableSpace":J
    .restart local v4    # "blockSize":J
    .restart local v8    # "stat":Landroid/os/StatFs;
    :cond_1
    const-wide/16 v10, 0x2800

    cmp-long v10, v2, v10

    if-gez v10, :cond_2

    .line 1294
    const-string v10, "GlobalScreenshot"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GlobalScreenshot available Space = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const v10, 0x7f0a045a

    invoke-direct {p0, v10}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    goto :goto_0

    .line 1298
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 1301
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSpace":J
    .end local v4    # "blockSize":J
    .end local v8    # "stat":Landroid/os/StatFs;
    :cond_3
    const-string v10, "GlobalScreenshot"

    const-string v11, "GlobalScreenshot extStoragePath == null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-direct {p0, v13}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    goto :goto_0
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nManager"    # Landroid/app/NotificationManager;
    .param p2, "screenshot_failed_text_case"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0a0209

    const/4 v6, 0x1

    .line 1955
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1958
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f02026b

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "err"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1967
    .local v0, "b":Landroid/app/Notification$Builder;
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1969
    .local v1, "n":Landroid/app/Notification;
    const/16 v3, 0x315

    invoke-virtual {p1, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1970
    return-void
.end method

.method private playCaptureSound()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1790
    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service.camera.running :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "service.camera.running"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service.camera.sfs.running:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "service.camera.sfs.running"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v8, :cond_1

    .line 1792
    const-string v3, "service.camera.running"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "service.camera.sfs.running"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1793
    const-string v3, "GlobalScreenshot"

    const-string v4, "Camera is running!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v3, v7, v8}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    .line 1816
    :cond_0
    :goto_0
    return-void

    .line 1799
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1800
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1801
    .local v1, "extraRingerMode":I
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1803
    .local v2, "forcedShutterSound":I
    const-string v3, "service.camera.running"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "service.camera.sfs.running"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v2, v8, :cond_2

    .line 1804
    const-string v3, "GlobalScreenshot"

    const-string v4, "Camera is running and SFS is off!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v3, v7, v8}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    goto :goto_0

    .line 1807
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1808
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v3, v7, v7}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    goto :goto_0

    .line 1809
    :cond_3
    if-ne v1, v8, :cond_0

    .line 1810
    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVibrator.isEnableIntensity() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1812
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    const v4, 0xc36c

    const/4 v5, -0x1

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    goto/16 :goto_0
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "screenBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 838
    const/4 v2, 0x0

    .line 839
    .local v2, "topActivityName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActivtyMngr:Landroid/app/ActivityManager;

    .line 840
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActivtyMngr:Landroid/app/ActivityManager;

    if-eqz v3, :cond_2

    .line 841
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActivtyMngr:Landroid/app/ActivityManager;

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 842
    .local v1, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 843
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 844
    if-eqz v2, :cond_2

    const-string v3, "com.samsung.palmswipetutorial.PalmSwipeActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.samsung.pickuptutorial.PalmSwipeTutorial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 847
    :cond_0
    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 848
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 849
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 877
    .end local v1    # "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return-void

    .line 856
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getCurrentDegree()V

    .line 858
    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    .line 859
    .local v0, "data":Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 862
    iput-object p2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 863
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsBasedLandscape:Z

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->isBasedLandscape:Z

    .line 864
    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->degree:F

    .line 866
    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 867
    iput-object p1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 869
    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->screenCaptureType:I

    .line 875
    new-instance v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v8, 0x315

    invoke-direct {v3, v6, v0, v7, v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V

    new-array v5, v5, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    aput-object v0, v5, v4

    invoke-virtual {v3, v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    move v3, v5

    .line 869
    goto :goto_1
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 1308
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSvcContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSvcContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZ)V
    .locals 6
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "statusBarVisible"    # Z
    .param p5, "navBarVisible"    # Z

    .prologue
    .line 1219
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1220
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1223
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 1224
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 1225
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1229
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1230
    .local v0, "r":Landroid/content/res/Resources;
    const v3, 0x7f0e02c7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    .line 1231
    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    .line 1233
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1234
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1235
    .local v1, "screenshotDropInAnim":Landroid/animation/ValueAnimator;
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1237
    .local v2, "screenshotFadeOutAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 1238
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1239
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1251
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1264
    return-void
.end method

.method private startAnimationForShutterAndMoveEffect(Ljava/lang/Runnable;IIZZ)V
    .locals 12
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "statusBarVisible"    # Z
    .param p5, "navBarVisible"    # Z

    .prologue
    .line 1621
    iget-object v11, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1622
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1623
    const-string v1, "GlobalScreenshot"

    const-string v2, "GlobalScreenshot startAnimationForShutterAndMoveEffect start!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_0
    const/16 v3, 0x7d6

    .line 1626
    .local v3, "windowType":I
    const/16 v4, 0x500

    .line 1628
    .local v4, "windowFlag":I
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isEasyOneHandRunning()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1629
    const/16 v3, 0x8cf

    .line 1637
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v1, :cond_b

    .line 1638
    or-int/lit16 v4, v4, 0x400

    .line 1639
    xor-int/lit16 v4, v4, 0x400

    .line 1644
    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1651
    .local v0, "mEffectViewParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1652
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1654
    const/4 v8, 0x0

    .line 1655
    .local v8, "frame":Landroid/widget/FrameLayout;
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v1, :cond_3

    .line 1656
    new-instance v8, Landroid/widget/FrameLayout;

    .end local v8    # "frame":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1657
    .restart local v8    # "frame":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getAnimationMode(I)I

    move-result v6

    .line 1658
    .local v6, "animationMode":I
    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    .line 1660
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1661
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1662
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1663
    :try_start_1
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v1, :cond_2

    .line 1664
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1665
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1666
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1668
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    :try_start_2
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v1, :cond_c

    .line 1671
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1672
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1676
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1681
    .end local v6    # "animationMode":I
    :cond_3
    :goto_3
    const/4 v10, 0x0

    .line 1682
    .local v10, "subFrame":Landroid/widget/FrameLayout;
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v1, :cond_6

    .line 1683
    new-instance v10, Landroid/widget/FrameLayout;

    .end local v10    # "subFrame":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    invoke-direct {v10, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1684
    .restart local v10    # "subFrame":Landroid/widget/FrameLayout;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getAnimationMode(I)I

    move-result v6

    .line 1685
    .restart local v6    # "animationMode":I
    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    .line 1687
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1688
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v10, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1689
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1690
    :try_start_4
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v1, :cond_4

    .line 1691
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1692
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1694
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-nez v1, :cond_5

    .line 1695
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1697
    :cond_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1699
    :try_start_5
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1705
    .end local v6    # "animationMode":I
    :cond_6
    :goto_4
    :try_start_6
    new-instance v9, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    invoke-direct {v9, p0, v8, v10, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Ljava/lang/Runnable;)V

    .line 1707
    .local v9, "onCaptureAnimationListener":Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v1, :cond_7

    .line 1708
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-virtual {v1, v9}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;)V

    .line 1709
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1724
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v1, :cond_9

    .line 1725
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-nez v1, :cond_8

    .line 1726
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-virtual {v1, v9}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;)V

    .line 1728
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1745
    :cond_9
    monitor-exit v11

    .line 1746
    return-void

    .line 1632
    .end local v0    # "mEffectViewParams":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "frame":Landroid/widget/FrameLayout;
    .end local v9    # "onCaptureAnimationListener":Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    .end local v10    # "subFrame":Landroid/widget/FrameLayout;
    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHasCocktailBar:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_1

    .line 1633
    const/16 v3, 0x8ae

    .line 1634
    or-int/lit8 v4, v4, 0x8

    goto/16 :goto_0

    .line 1641
    :cond_b
    or-int/lit16 v4, v4, 0x400

    goto/16 :goto_1

    .line 1668
    .restart local v0    # "mEffectViewParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "animationMode":I
    .restart local v8    # "frame":Landroid/widget/FrameLayout;
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1

    .line 1745
    .end local v0    # "mEffectViewParams":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "windowType":I
    .end local v4    # "windowFlag":I
    .end local v6    # "animationMode":I
    .end local v8    # "frame":Landroid/widget/FrameLayout;
    :catchall_1
    move-exception v1

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    .line 1674
    .restart local v0    # "mEffectViewParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "windowType":I
    .restart local v4    # "windowFlag":I
    .restart local v6    # "animationMode":I
    .restart local v8    # "frame":Landroid/widget/FrameLayout;
    :cond_c
    :try_start_9
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 1677
    :catch_0
    move-exception v7

    .line 1678
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_a
    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenshotLayout "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    .line 1697
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    .restart local v10    # "subFrame":Landroid/widget/FrameLayout;
    :catchall_2
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v1

    .line 1700
    :catch_1
    move-exception v7

    .line 1701
    .restart local v7    # "e":Ljava/lang/IllegalStateException;
    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSubScreenshotLayout "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_4
.end method

.method private startAnimationForShutterClickEffect(Ljava/lang/Runnable;IIZZ)V
    .locals 11
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "statusBarVisible"    # Z
    .param p5, "navBarVisible"    # Z

    .prologue
    .line 1379
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1380
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1381
    const-string v1, "GlobalScreenshot"

    const-string v2, "GlobalScreenshot startAnimationForShutterClickEffect start!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 1387
    .local v8, "orientation":I
    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v8}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    .line 1389
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1391
    .local v7, "frame":Landroid/widget/FrameLayout;
    const/16 v3, 0x7d6

    .line 1392
    .local v3, "windowType":I
    const/16 v4, 0x500

    .line 1394
    .local v4, "windowFlag":I
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isEasyOneHandRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1395
    const/16 v3, 0x8cf

    .line 1403
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v1, :cond_3

    .line 1404
    or-int/lit16 v4, v4, 0x400

    .line 1405
    xor-int/lit16 v4, v4, 0x400

    .line 1411
    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1418
    .local v0, "mEffectViewParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1419
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1421
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1422
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1424
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1425
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1426
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1427
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1430
    :try_start_2
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v1, :cond_4

    .line 1431
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1432
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1436
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1441
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v2, p0, p1, v7}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;)V

    .line 1473
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1485
    monitor-exit v9

    .line 1486
    return-void

    .line 1398
    .end local v0    # "mEffectViewParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHasCocktailBar:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 1399
    const/16 v3, 0x8ae

    .line 1400
    or-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 1407
    :cond_3
    or-int/lit16 v4, v4, 0x400

    goto :goto_1

    .line 1427
    .restart local v0    # "mEffectViewParams":Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 1485
    .end local v0    # "mEffectViewParams":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "windowType":I
    .end local v4    # "windowFlag":I
    .end local v7    # "frame":Landroid/widget/FrameLayout;
    .end local v8    # "orientation":I
    :catchall_1
    move-exception v1

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 1434
    .restart local v0    # "mEffectViewParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "windowType":I
    .restart local v4    # "windowFlag":I
    .restart local v7    # "frame":Landroid/widget/FrameLayout;
    .restart local v8    # "orientation":I
    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 1437
    :catch_0
    move-exception v6

    .line 1438
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenshotLayout "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3
.end method


# virtual methods
.method isEasyOneHandRunning()Z
    .locals 1

    .prologue
    .line 1979
    const/4 v0, 0x0

    return v0
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZIII)V
    .locals 24
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z
    .param p4, "sweepDirection"    # I
    .param p5, "capturedDisplay"    # I
    .param p6, "capturedOrigin"    # I

    .prologue
    .line 923
    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    if-eqz v3, :cond_1

    .line 924
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    if-eqz v3, :cond_0

    .line 925
    const-string v3, "GlobalScreenshot"

    const-string v4, "Capture is not executed while animation is playing."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :goto_0
    return-void

    .line 928
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 932
    :cond_1
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    .line 933
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    .line 934
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedOrigin:I

    .line 936
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 937
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    .line 938
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v13

    .line 939
    .local v13, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-eqz v13, :cond_3

    .line 940
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayOfDevice(I)Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_2

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSvcContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 944
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    if-eqz v3, :cond_3

    .line 945
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayOfDevice(I)Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplay:Landroid/view/Display;

    .line 946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplay:Landroid/view/Display;

    if-eqz v3, :cond_3

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSvcContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {v3, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    .line 952
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    if-nez v3, :cond_4

    .line 953
    const-string v3, "GlobalScreenshot"

    const-string v4, "mContext is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const v3, 0x7f0a045b

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 955
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 956
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 960
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    if-eqz v3, :cond_f

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 962
    .local v18, "pm":Landroid/os/PowerManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    :cond_5
    if-eqz v18, :cond_d

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v3

    if-nez v3, :cond_d

    :cond_6
    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    .line 964
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    :cond_7
    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    :cond_8
    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    .line 970
    .end local v18    # "pm":Landroid/os/PowerManager;
    :goto_3
    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSweepDirection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCapturedDisplay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", capturedOrigin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTakeMainDisplay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTakeSubDisplay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_9

    .line 980
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v3, :cond_10

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 987
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v3, :cond_a

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 991
    :cond_a
    const/4 v3, 0x2

    new-array v12, v3, [F

    .line 992
    .local v12, "dims":[F
    const/16 v19, 0x0

    .line 993
    .local v19, "requiresRotation":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_b

    .line 994
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    aput v4, v12, v3

    .line 995
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    aput v4, v12, v3

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    .line 997
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_11

    const/16 v19, 0x1

    .line 998
    :goto_5
    if-eqz v19, :cond_b

    .line 1000
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    neg-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1003
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v12, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v12, v3

    .line 1004
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v12, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v12, v3

    .line 1007
    :cond_b
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v21, v0

    .line 1008
    .local v21, "subDims":[F
    const/16 v22, 0x0

    .line 1009
    .local v22, "subRequiresRotation":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v3, :cond_c

    .line 1010
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    aput v4, v21, v3

    .line 1011
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    aput v4, v21, v3

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    .line 1013
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    const/16 v22, 0x1

    .line 1014
    :goto_6
    if-eqz v22, :cond_c

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    neg-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1018
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v21, v3

    .line 1019
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v21, v3

    .line 1026
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v16

    .line 1027
    .local v16, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1028
    const-string v3, "GlobalScreenshot"

    const-string v4, "ScreenCapture is Disabled: Emergencymode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/16 v3, 0x800

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1030
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v4, 0x7f0a020c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1036
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 1037
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 962
    .end local v12    # "dims":[F
    .end local v16    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v19    # "requiresRotation":Z
    .end local v21    # "subDims":[F
    .end local v22    # "subRequiresRotation":Z
    .restart local v18    # "pm":Landroid/os/PowerManager;
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 964
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 967
    .end local v18    # "pm":Landroid/os/PowerManager;
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    .line 968
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    goto/16 :goto_3

    .line 983
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_4

    .line 997
    .restart local v12    # "dims":[F
    .restart local v19    # "requiresRotation":Z
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1013
    .restart local v21    # "subDims":[F
    .restart local v22    # "subRequiresRotation":Z
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 1031
    .restart local v16    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_13
    const/16 v3, 0x200

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v4, 0x104099d

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 1034
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v4, 0x104099c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 1056
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAvailableCapacity()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1057
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 1058
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 1063
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    .line 1064
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_17

    .line 1065
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v3, :cond_1b

    .line 1066
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v12, v5

    float-to-int v5, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1067
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    aget v3, v12, v3

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v4, v12, v4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    .line 1071
    .end local v2    # "rect":Landroid/graphics/Rect;
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_17

    .line 1072
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    .line 1075
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    .line 1076
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v3, :cond_18

    .line 1077
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    aget v4, v21, v4

    float-to-int v4, v4

    const/4 v5, 0x1

    aget v5, v21, v5

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_SUB:I

    invoke-static/range {v3 .. v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_18

    .line 1079
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    .line 1082
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getMergedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1083
    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v3, :cond_19

    .line 1084
    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenBitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_1c

    .line 1087
    :cond_1a
    const v3, 0x7f0a045b

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    .line 1088
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 1089
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 1069
    :cond_1b
    const/4 v3, 0x0

    aget v3, v12, v3

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v4, v12, v4

    float-to-int v4, v4

    invoke-static {v3, v4}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 1099
    :cond_1c
    if-nez v19, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-nez v3, :cond_1f

    if-eqz v22, :cond_1f

    .line 1100
    :cond_1d
    const/16 v23, 0x0

    .local v23, "width":I
    const/16 v17, 0x0

    .local v17, "height":I
    const/4 v14, 0x0

    .local v14, "dx":I
    const/4 v15, 0x0

    .line 1101
    .local v15, "dy":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v3, :cond_23

    .line 1102
    const/4 v3, 0x1

    aget v3, v12, v3

    float-to-int v0, v3

    move/from16 v23, v0

    .line 1103
    const/4 v3, 0x0

    aget v3, v12, v3

    const/4 v4, 0x0

    aget v4, v21, v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v17, v0

    .line 1111
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-nez v3, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_25

    .line 1112
    :cond_1e
    move/from16 v14, v23

    .line 1113
    move/from16 v15, v17

    .line 1119
    :goto_a
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1120
    .local v20, "ss":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1121
    .local v11, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1122
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-nez v3, :cond_26

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v3, :cond_26

    .line 1123
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1127
    :goto_b
    neg-int v3, v14

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    neg-int v4, v15

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1129
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1132
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1133
    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v3, :cond_1f

    .line 1134
    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotated mScreenBitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v14    # "dx":I
    .end local v15    # "dy":I
    .end local v17    # "height":I
    .end local v20    # "ss":Landroid/graphics/Bitmap;
    .end local v23    # "width":I
    :cond_1f
    if-eqz v19, :cond_20

    .line 1138
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_20

    .line 1140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1141
    .restart local v20    # "ss":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1142
    .restart local v11    # "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1143
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1144
    const/4 v3, 0x0

    aget v3, v12, v3

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v12, v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1146
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1149
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    .line 1150
    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v3, :cond_20

    .line 1151
    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotated mMainScreenBitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v20    # "ss":Landroid/graphics/Bitmap;
    :cond_20
    if-eqz v22, :cond_21

    .line 1156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1157
    .restart local v20    # "ss":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1158
    .restart local v11    # "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1159
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1160
    const/4 v3, 0x0

    aget v3, v21, v3

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v21, v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1162
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1165
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    .line 1166
    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v3, :cond_21

    .line 1167
    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotated mSubScreenBitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v20    # "ss":Landroid/graphics/Bitmap;
    :cond_21
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v9

    .line 1171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    .line 1176
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->initView()Z

    .line 1177
    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    if-eqz v3, :cond_27

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimationForShutterAndMoveEffect(Ljava/lang/Runnable;IIZZ)V

    .line 1185
    :cond_22
    :goto_c
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1104
    .restart local v14    # "dx":I
    .restart local v15    # "dy":I
    .restart local v17    # "height":I
    .restart local v23    # "width":I
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_24

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    .line 1106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    goto/16 :goto_9

    .line 1108
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    goto/16 :goto_9

    .line 1115
    :cond_25
    move/from16 v14, v17

    .line 1116
    move/from16 v15, v23

    goto/16 :goto_a

    .line 1125
    .restart local v11    # "c":Landroid/graphics/Canvas;
    .restart local v20    # "ss":Landroid/graphics/Bitmap;
    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->rotate(F)V

    goto/16 :goto_b

    .line 1181
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v14    # "dx":I
    .end local v15    # "dy":I
    .end local v17    # "height":I
    .end local v20    # "ss":Landroid/graphics/Bitmap;
    .end local v23    # "width":I
    :cond_27
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimationForShutterClickEffect(Ljava/lang/Runnable;IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c
.end method
