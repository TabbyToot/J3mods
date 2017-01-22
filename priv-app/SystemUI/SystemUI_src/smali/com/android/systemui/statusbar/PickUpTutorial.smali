.class public Lcom/android/systemui/statusbar/PickUpTutorial;
.super Landroid/app/Activity;
.source "PickUpTutorial.java"


# static fields
.field private static final BACK:I = 0x8

.field private static final HELP_PLUG_PKG:Ljava/lang/String; = "com.samsung.helpplugin"

.field private static final LCD_OFF:I = 0x4

.field private static final LCD_OFF_STATE:I = 0x5

.field private static final LCD_ON:I = 0x3

.field private static final LCD_ON_STATE:I = 0x6

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PickUpTutorial"

.field private static final VIBRATE_RUN:I = 0x1

.field public static mContext:Landroid/content/Context;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field mAnimation:Landroid/view/animation/Animation;

.field private mBack:Z

.field private mCount:I

.field private mDownDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLCDisOn:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPaused:Z

.field private mPhoneDetect:Landroid/widget/FrameLayout;

.field private mPhonePutDown:Landroid/widget/FrameLayout;

.field private mPickUpDialog:Landroid/app/AlertDialog;

.field private mPickUpTutorial:Landroid/widget/FrameLayout;

.field private mReadyToShowPutDownDialog:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private pm:Landroid/os/PowerManager;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 76
    iput-object v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mDownDialog:Landroid/app/AlertDialog;

    .line 77
    iput-object v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpDialog:Landroid/app/AlertDialog;

    .line 84
    iput v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/PickUpTutorial$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$1;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/android/systemui/statusbar/PickUpTutorial$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$2;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/PickUpTutorial;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$608(Lcom/android/systemui/statusbar/PickUpTutorial;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/PickUpTutorial;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->tryPickUpDialog()V

    return-void
.end method

.method private canNavigationBarMove()Z
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ResourceName"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 487
    const/4 v2, 0x0

    .line 488
    .local v2, "mResources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 490
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 491
    :try_start_0
    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 500
    :goto_0
    if-eqz v2, :cond_2

    .line 501
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 502
    .local v1, "id":I
    if-eqz v1, :cond_1

    .line 503
    const-string v4, "STATUSBAR-PickUpTutorial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ResourceName id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .end local v1    # "id":I
    :goto_1
    return v1

    .line 493
    :cond_0
    :try_start_1
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "PackageManager is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    .line 494
    goto :goto_1

    .line 496
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 506
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "id":I
    :cond_1
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "not find resource!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 507
    goto :goto_1

    .line 510
    .end local v1    # "id":I
    :cond_2
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "Resource is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 511
    goto :goto_1
.end method

.method private putDownDialog()V
    .locals 4

    .prologue
    .line 324
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 325
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "putDownDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 370
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/statusbar/PickUpTutorial$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$3;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 379
    return-void
.end method

.method public static setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewer"    # Landroid/view/View;
    .param p2, "imageName"    # Ljava/lang/String;

    .prologue
    .line 516
    move-object v2, p1

    .line 517
    .local v2, "mImageViewer":Landroid/view/View;
    move-object v1, p0

    .line 518
    .local v1, "mContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 519
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 520
    const-string v6, "drawable"

    const-string v7, "com.samsung.helpplugin"

    invoke-static {v1, p2, v6, v7}, Lcom/android/systemui/statusbar/PickUpTutorial;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 522
    .local v5, "resId":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 524
    :try_start_0
    const-string v6, "com.samsung.helpplugin"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 526
    .local v3, "mResources":Landroid/content/res/Resources;
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v3    # "mResources":Landroid/content/res/Resources;
    .end local v5    # "resId":I
    :cond_0
    :goto_0
    return-void

    .line 527
    .restart local v5    # "resId":I
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 531
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v6, "STATUSBAR-PickUpTutorial"

    const-string v7, "The resource not downloaded yet"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryPickUpDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 383
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 433
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhonePutDown GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 439
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhoneDetect VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 441
    return-void
.end method


# virtual methods
.method public isDownloadable()Z
    .locals 2

    .prologue
    .line 481
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_HELP_HUB_APK_TYPE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 225
    sparse-switch p2, :sswitch_data_0

    .line 248
    const-string v1, "STATUSBAR-PickUpTutorial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 227
    :sswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    :cond_1
    const-string v1, "ro.build.scafe.cream"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "white"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 236
    .local v0, "lightThemeContext":Landroid/content/Context;
    :goto_1
    const v1, 0x7f0a04f0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->finish()V

    .line 238
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-nez v1, :cond_0

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    goto :goto_0

    .line 234
    .end local v0    # "lightThemeContext":Landroid/content/Context;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    .restart local v0    # "lightThemeContext":Landroid/content/Context;
    goto :goto_1

    .line 244
    .end local v0    # "lightThemeContext":Landroid/content/Context;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->finish()V

    goto :goto_0

    .line 225
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 316
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->finish()V

    .line 319
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 465
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 471
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg_land"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 94
    iput-object p0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->activity:Landroid/app/Activity;

    .line 95
    sput-object p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const v0, 0x7f040068

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->setContentView(I)V

    .line 102
    const v0, 0x7f0f0205

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 124
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mVibrator:Landroid/os/Vibrator;

    .line 125
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "PickUp Tutorial"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 139
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    const v1, 0x7f050057

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    .line 141
    const v0, 0x7f0f0082

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    .line 142
    const v0, 0x7f0f0083

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->putDownDialog()V

    .line 146
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg_land"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 312
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 287
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    .line 289
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 290
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 292
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 297
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 272
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 275
    iput v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    .line 276
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    .line 277
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    .line 279
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 304
    return-void
.end method

.method public setMotionSensor(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 254
    const-string v0, "STATUSBAR-PickUpTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMotionSensor()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->activity:Landroid/app/Activity;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 259
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 260
    if-eqz p1, :cond_1

    .line 261
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    goto :goto_0
.end method
