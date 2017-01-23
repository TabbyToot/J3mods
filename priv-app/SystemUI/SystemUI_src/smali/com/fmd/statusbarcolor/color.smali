.class public Lcom/fmd/statusbarcolor/color;
.super Landroid/widget/RelativeLayout;
.source "color.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fmd/statusbarcolor/color$SettingsObserver;
    }
.end annotation


# instance fields
.field private ClassName:Ljava/lang/String;

.field private FilterSeekbarValue:I

.field private IntervalForMonitoring:I

.field private IntervalForTransition:I

.field private LauncherClass:Ljava/lang/String;

.field private LauncherColors:[I

.field private NumberOfPointsForMonitoring:I

.field private PackageName:Ljava/lang/String;

.field private PrevColor:I

.field private PrevColors:[I

.field private ScaleFactor:I

.field private StatusBarHeight:I

.field private TargetColor:I

.field private TempColor:I

.field private TransitionStep:I

.field private TransitionTempColor:I

.field public UPDATE:Ljava/lang/Runnable;

.field public Updater:Landroid/os/Handler;

.field public UpdaterTime:I

.field private Width:I

.field private isDSBColorEnabled:I

.field private isFilterEnabled:I

.field private isGradientEnabled:I

.field private isLauncher:I

.field private isLauncherColorsArrayEmpty:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field public mContext:Landroid/content/Context;

.field private mDefaultDisplay:Landroid/view/Display;

.field public mIsFullScreen:I

.field public mIsKeyguardLocked:I

.field public mIsLockScreenDisabled:I

.field public mIsScreenOff:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field public mRecentsActivityVisible:I

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field public mStatusbarExpanded:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;

    const v0, 0x2

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->NumberOfPointsForMonitoring:I

    new-array v1, v0, [I

    const v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iput-object v1, p0, Lcom/fmd/statusbarcolor/color;->PrevColors:[I

    const v2, 0x3

    mul-int v0, v0, v2

    new-array v1, v0, [I

    const v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iput-object v1, p0, Lcom/fmd/statusbarcolor/color;->LauncherColors:[I

    const v0, 0x0

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->mStatusbarExpanded:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->mIsFullScreen:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->mRecentsActivityVisible:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->TargetColor:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->PrevColor:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->TransitionTempColor:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isDSBColorEnabled:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isFilterEnabled:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isGradientEnabled:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncher:I

    const v0, 0xc8

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->IntervalForMonitoring:I

    const v0, 0x28

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->IntervalForTransition:I

    const v0, 0x1

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncherColorsArrayEmpty:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->mIsKeyguardLocked:I

    const v0, 0x4

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->TempColor:I

    const-string v0, ""

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->PackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->ClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->LauncherClass:Ljava/lang/String;

    iput-object p1, p0, Lcom/fmd/statusbarcolor/color;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/fmd/statusbarcolor/color$1;

    invoke-direct {v0, p0}, Lcom/fmd/statusbarcolor/color$1;-><init>(Lcom/fmd/statusbarcolor/color;)V

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->UPDATE:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->Updater:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x01050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v3, 0xa

    iput v3, p0, Lcom/fmd/statusbarcolor/color;->ScaleFactor:I

    move v2, v0

    div-int/2addr v2, v3

    mul-int v1, v2, v3

    if-eq v1, v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    :cond_0
    iput v0, p0, Lcom/fmd/statusbarcolor/color;->StatusBarHeight:I

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mDefaultDisplay:Landroid/view/Display;

    new-instance v0, Lcom/fmd/statusbarcolor/color$Receiver;

    invoke-direct {v0, p0}, Lcom/fmd/statusbarcolor/color$Receiver;-><init>(Lcom/fmd/statusbarcolor/color;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1, v0}, Lcom/fmd/statusbarcolor/color;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    new-instance v0, Lcom/fmd/statusbarcolor/color$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/fmd/statusbarcolor/color$SettingsObserver;-><init>(Lcom/fmd/statusbarcolor/color;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/fmd/statusbarcolor/color$SettingsObserver;->observe()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private static getAverageColor([II)I
    .locals 9
    .param p0, "colorsArray"    # [I
    .param p1, "SimilarColors"    # I

    .prologue
    array-length v0, p0

    const v1, 0x1

    sub-int v2, v0, v1

    const v3, 0x0

    move v4, p1

    const v5, 0x0

    const v6, 0x0

    const v7, 0x0

    const v8, 0xff

    :cond_0
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_1

    aget v0, p0, v2

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    add-int v5, v5, v1

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int v6, v6, v1

    and-int/lit16 v1, v0, 0xff

    add-int v7, v7, v1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    const v1, 0x1

    sub-int v2, v2, v1

    shr-int/lit8 v4, v4, 0x1

    if-gez v2, :cond_0

    div-int v5, v5, v3

    div-int v6, v6, v3

    div-int v7, v7, v3

    const v4, 0x0

    if-lez v5, :cond_2

    if-ge v5, v8, :cond_3

    :goto_0
    if-lez v6, :cond_4

    if-ge v6, v8, :cond_5

    :goto_1
    if-lez v7, :cond_6

    if-ge v7, v8, :cond_7

    :goto_2
    invoke-static {v8, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3

    :cond_2
    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v8

    goto :goto_0

    :cond_4
    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_1

    :cond_6
    move v7, v4

    goto :goto_2

    :cond_7
    move v7, v8

    goto :goto_2
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 416
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 410
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 412
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 414
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getStepColor(IIII)I
    .locals 10
    .param p0, "NewColor"    # I
    .param p1, "PrevColor"    # I
    .param p2, "Step"    # I
    .param p3, "NumberOfSteps"    # I

    .prologue
    const v8, 0x0

    const v9, 0xff

    int-to-float v0, p2

    int-to-float v1, p3

    div-float v7, v0, v1

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    sub-int v2, v0, v1

    if-nez v2, :cond_0

    move v3, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    sub-int v4, v0, v1

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    add-int/2addr v4, v1

    if-ltz v4, :cond_4

    if-gt v4, v9, :cond_5

    :goto_0
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    sub-int v5, v0, v1

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    add-int/2addr v5, v1

    if-ltz v5, :cond_6

    if-gt v5, v9, :cond_7

    :goto_1
    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    sub-int v6, v0, v1

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v1

    if-ltz v6, :cond_8

    if-gt v6, v9, :cond_9

    goto :goto_3

    :cond_0
    int-to-float v3, v2

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v3, v1

    if-ltz v3, :cond_2

    if-gt v3, v9, :cond_3

    :goto_2
    if-gtz v2, :cond_1

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, p1, 0xff

    goto :goto_3

    :cond_1
    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p0, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, p0, 0xff

    :goto_3
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :cond_2
    move v3, v8

    goto :goto_2

    :cond_3
    move v3, v9

    goto :goto_2

    :cond_4
    move v4, v8

    goto :goto_0

    :cond_5
    move v4, v9

    goto :goto_0

    :cond_6
    move v5, v8

    goto :goto_1

    :cond_7
    move v5, v9

    goto :goto_1

    :cond_8
    move v6, v8

    goto :goto_3

    :cond_9
    move v6, v9

    goto :goto_3
.end method

.method private static isColorsSimilar(II)I
    .locals 7
    .param p0, "color1"    # I
    .param p1, "color2"    # I

    .prologue
    const/16 v3, 0x10

    const/4 v6, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [F

    new-array v5, v0, [F

    invoke-static {p0, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v0, 0x0

    aget v1, v4, v0

    invoke-static {p1, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v5, v0

    sub-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-gt v0, v3, :cond_0

    const/16 v3, 0x10

    invoke-static {p0, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v0, 0x1

    aget v1, v4, v0

    invoke-static {p1, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v5, v0

    sub-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-gt v0, v3, :cond_0

    const/16 v3, 0x10

    invoke-static {p0, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v0, 0x2

    aget v1, v4, v0

    invoke-static {p1, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v5, v0

    sub-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-gt v0, v3, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6
.end method

.method private static isLauncherColorsContainColors([I[I)Z
    .locals 7
    .param p0, "LauncherColorsArray"    # [I
    .param p1, "ColorsArray"    # [I

    .prologue
    const v6, 0x0

    array-length v5, p1

    array-length v4, p0

    const v0, 0x0

    :cond_0
    const v1, 0x0

    :cond_1
    aget v2, p0, v0

    aget v3, p1, v1

    if-ne v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v5, :cond_1

    const v6, 0x1

    :goto_0
    return v6

    :cond_2
    div-int v0, v0, v5

    mul-int v0, v0, v5

    add-int v0, v0, v5

    if-lt v0, v4, :cond_0

    goto :goto_0
.end method

.method private static putColorsInLauncherColors([I[I)V
    .locals 5
    .param p0, "ColorsArray"    # [I
    .param p1, "LauncherColorsArray"    # [I

    .prologue
    array-length v1, p1

    array-length v4, p0

    sub-int v0, v1, v4

    const v3, 0x1

    :cond_0
    sub-int v0, v0, v3

    aget v1, p1, v0

    add-int v2, v0, v4

    aput v1, p1, v2

    if-gtz v0, :cond_0

    const v0, 0x0

    :cond_1
    aget v1, p0, v0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_1

    return-void
.end method


# virtual methods
.method public SetColor()V
    .locals 15

    .prologue
    const v10, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v14, v0

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    iput v1, p0, Lcom/fmd/statusbarcolor/color;->mIsKeyguardLocked:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/fmd/statusbarcolor/color;->TempColor:I

    const v2, 0x1

    if-eq v2, v1, :cond_37

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->setBackgroundColor(I)V

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->TransitionTempColor:I

    iget v1, p0, Lcom/fmd/statusbarcolor/color;->NumberOfPointsForMonitoring:I

    new-array v0, v1, [I

    const v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->PrevColors:[I

    iput v2, p0, Lcom/fmd/statusbarcolor/color;->TempColor:I

    iput v1, p0, Lcom/fmd/statusbarcolor/color;->mRecentsActivityVisible:I

    const v1, 0x8

    const v0, 0x7f0f038f

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0390

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_1
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->mIsScreenOff:I

    if-nez v0, :cond_3a

    iget v0, p0, Lcom/fmd/statusbarcolor/color;->mIsFullScreen:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/fmd/statusbarcolor/color;->TempColor:I

    const v2, 0x2

    if-eq v0, v2, :cond_37

    iget v1, p0, Lcom/fmd/statusbarcolor/color;->NumberOfPointsForMonitoring:I

    new-array v0, v1, [I

    const v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->PrevColors:[I

    iput v2, p0, Lcom/fmd/statusbarcolor/color;->TempColor:I

    iput v1, p0, Lcom/fmd/statusbarcolor/color;->TransitionTempColor:I

    goto/16 :goto_b

    :cond_2
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->mRecentsActivityVisible:I

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->PackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/fmd/statusbarcolor/color;->LauncherClass:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "launcher"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "home"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/fmd/statusbarcolor/color;->ClassName:Ljava/lang/String;

    iput-object v2, p0, Lcom/fmd/statusbarcolor/color;->LauncherClass:Ljava/lang/String;

    :cond_4
    :goto_1
    iput-object v4, p0, Lcom/fmd/statusbarcolor/color;->PackageName:Ljava/lang/String;

    const v2, 0x0

    iput v2, p0, Lcom/fmd/statusbarcolor/color;->mStatusbarExpanded:I

    :cond_5
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->ClassName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/fmd/statusbarcolor/color;->LauncherClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-object v5, p0, Lcom/fmd/statusbarcolor/color;->ClassName:Ljava/lang/String;

    :cond_6
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->mStatusbarExpanded:I

    if-nez v0, :cond_31

    iget v0, p0, Lcom/fmd/statusbarcolor/color;->isDSBColorEnabled:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->LauncherClass:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncher:I

    if-eqz v0, :cond_7

    const v0, 0x0

    goto :goto_2

    :cond_7
    const v0, 0x0

    :goto_2
    iget v1, p0, Lcom/fmd/statusbarcolor/color;->TempColor:I

    const v2, 0x3

    if-eq v2, v1, :cond_31

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->PrevColor:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->TransitionTempColor:I

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->setBackgroundColor(I)V

    new-array v0, v1, [I

    const v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->PrevColors:[I

    iput v2, p0, Lcom/fmd/statusbarcolor/color;->TempColor:I

    goto/16 :goto_a

    :cond_8
    const-string v0, "com.google.android.finsky.billing.instrumentmanager.InstrumentManagerActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x0

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncher:I

    goto/16 :goto_a

    :cond_9
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->ScaleFactor:I

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->takeScreenshot(I)V

    iget v6, p0, Lcom/fmd/statusbarcolor/color;->Width:I

    const v8, 0x4

    move v13, v8

    iget v7, p0, Lcom/fmd/statusbarcolor/color;->NumberOfPointsForMonitoring:I

    if-le v7, v8, :cond_a

    move v13, v7

    :cond_a
    new-array v12, v13, [I

    const v0, 0x2

    if-eq v13, v0, :cond_d

    const v0, 0x1

    if-eq v13, v0, :cond_e

    sub-int v2, v13, v0

    div-int v3, v6, v2

    const v0, 0x0

    :cond_b
    mul-int v2, v3, v0

    add-int/lit8 v1, v0, 0x1

    if-lt v1, v13, :cond_c

    const v1, 0x1

    sub-int v2, v6, v1

    :cond_c
    aput v2, v12, v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v13, :cond_b

    goto :goto_3

    :cond_d
    div-int/lit8 v3, v6, 0x2

    const v0, 0x1

    aput v3, v12, v0

    :cond_e
    const v0, 0x0

    aput v0, v12, v0

    :goto_3
    iget v2, p0, Lcom/fmd/statusbarcolor/color;->StatusBarHeight:I

    new-array v6, v8, [I

    new-array v9, v7, [I

    const v0, 0x0

    iget-object v3, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_f
    aget v1, v12, v0

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    if-ge v0, v8, :cond_10

    aput v11, v6, v0

    :cond_10
    if-ge v0, v7, :cond_11

    aput v11, v9, v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v13, :cond_f

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v11, p0, Lcom/fmd/statusbarcolor/color;->PrevColors:[I

    invoke-static {v11, v9}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_12
    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->LauncherClass:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncher:I

    if-nez v0, :cond_13

    iget-object v11, p0, Lcom/fmd/statusbarcolor/color;->LauncherColors:[I

    invoke-static {v11, v9}, Lcom/fmd/statusbarcolor/color;->isLauncherColorsContainColors([I[I)Z

    move-result v0

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncher:I

    if-eqz v0, :cond_14

    :cond_13
    const v7, 0x0

    goto/16 :goto_7

    :cond_14
    const v0, 0x1

    if-eq v8, v0, :cond_29

    const v0, 0x2

    if-eq v8, v0, :cond_26

    new-array v4, v8, [I

    const v0, 0x0

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_15
    aget v2, v6, v0

    const v1, 0x0

    const v5, 0x0

    :cond_16
    shl-int/lit8 v5, v5, 0x1

    aget v3, v6, v1

    if-ne v2, v3, :cond_17

    or-int/lit8 v5, v5, 0x1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v8, :cond_16

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v8, :cond_15

    const v0, 0x3

    if-eq v8, v0, :cond_23

    const v0, 0x4

    if-eq v8, v0, :cond_22

    const v0, 0x0

    aget v1, v4, v0

    const v0, 0x1d

    if-ge v1, v0, :cond_20

    const v0, 0x17

    if-eq v1, v0, :cond_20

    const v0, 0x1b

    if-eq v1, v0, :cond_20

    const v0, 0x1

    aget v1, v4, v0

    const v0, 0xf

    if-eq v1, v0, :cond_21

    const v0, 0x0

    aget v1, v4, v0

    const v0, 0x11

    if-ne v1, v0, :cond_18

    const v0, 0x1

    aget v1, v4, v0

    const v0, 0xe

    if-eq v1, v0, :cond_21

    :cond_18
    :goto_4
    const v0, 0x0

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_19
    aget v2, v6, v0

    const v1, 0x0

    const v5, 0x0

    :cond_1a
    shl-int/lit8 v5, v5, 0x1

    aget v3, v6, v1

    invoke-static {v2, v3}, Lcom/fmd/statusbarcolor/color;->isColorsSimilar(II)I

    move-result v12

    if-eqz v12, :cond_1b

    or-int/lit8 v5, v5, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v8, :cond_1a

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v8, :cond_19

    const v0, 0x3

    if-eq v8, v0, :cond_25

    const v0, 0x4

    if-eq v8, v0, :cond_24

    const v0, 0x0

    aget v1, v4, v0

    const v0, 0x1d

    if-ge v1, v0, :cond_1c

    const v0, 0x17

    if-eq v1, v0, :cond_1c

    const v0, 0x1b

    if-eq v1, v0, :cond_1c

    const v0, 0x1

    aget v1, v4, v0

    const v0, 0xf

    if-eq v1, v0, :cond_1e

    const v0, 0x0

    aget v1, v4, v0

    const v0, 0x11

    if-ne v1, v0, :cond_2a

    const v0, 0x1

    aget v1, v4, v0

    const v0, 0xe

    if-eq v1, v0, :cond_1e

    goto/16 :goto_6

    :cond_1c
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncherColorsArrayEmpty:I

    if-eqz v0, :cond_1d

    const v7, 0x0

    goto/16 :goto_7

    :cond_1d
    const v0, 0x0

    aget v1, v4, v0

    invoke-static {v6, v1}, Lcom/fmd/statusbarcolor/color;->getAverageColor([II)I

    move-result v7

    goto/16 :goto_5

    :cond_1e
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncherColorsArrayEmpty:I

    if-eqz v0, :cond_1f

    const v7, 0x0

    goto/16 :goto_7

    :cond_1f
    const v0, 0x1

    aget v1, v4, v0

    invoke-static {v6, v1}, Lcom/fmd/statusbarcolor/color;->getAverageColor([II)I

    move-result v7

    goto/16 :goto_5

    :cond_20
    const v0, 0x0

    aget v7, v6, v0

    goto/16 :goto_5

    :cond_21
    const v0, 0x1

    aget v7, v6, v0

    goto/16 :goto_5

    :cond_22
    const v0, 0x0

    aget v1, v4, v0

    const v0, 0xd

    if-ge v1, v0, :cond_20

    const v0, 0xb

    if-eq v1, v0, :cond_20

    const v0, 0x1

    aget v1, v4, v0

    const v0, 0x7

    if-eq v1, v0, :cond_21

    const v0, 0x0

    aget v1, v4, v0

    const v0, 0x9

    if-ne v1, v0, :cond_18

    const v0, 0x1

    aget v1, v4, v0

    const v0, 0x6

    if-eq v1, v0, :cond_21

    goto/16 :goto_4

    :cond_23
    const v0, 0x0

    aget v1, v4, v0

    const v0, 0x5

    if-ge v1, v0, :cond_20

    const v0, 0x1

    aget v1, v4, v0

    const v0, 0x3

    if-eq v1, v0, :cond_21

    goto/16 :goto_4

    :cond_24
    const v0, 0x0

    aget v1, v4, v0

    const v0, 0xd

    if-ge v1, v0, :cond_1c

    const v0, 0xb

    if-eq v1, v0, :cond_1c

    const v0, 0x1

    aget v1, v4, v0

    const v0, 0x7

    if-eq v1, v0, :cond_1e

    const v0, 0x0

    aget v1, v4, v0

    const v0, 0x9

    if-ne v1, v0, :cond_2a

    const v0, 0x1

    aget v1, v4, v0

    const v0, 0x6

    if-eq v1, v0, :cond_1e

    goto :goto_6

    :cond_25
    const v0, 0x0

    aget v1, v4, v0

    const v0, 0x5

    if-ge v1, v0, :cond_1c

    const v0, 0x1

    aget v1, v4, v0

    const v0, 0x3

    if-eq v1, v0, :cond_1e

    goto :goto_6

    :cond_26
    const v0, 0x0

    aget v1, v6, v0

    const v0, 0x1

    aget v0, v6, v0

    if-ne v0, v1, :cond_27

    move v7, v1

    goto :goto_5

    :cond_27
    invoke-static {v0, v1}, Lcom/fmd/statusbarcolor/color;->isColorsSimilar(II)I

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncherColorsArrayEmpty:I

    if-eqz v0, :cond_28

    const v7, 0x0

    goto :goto_7

    :cond_28
    const v0, 0x3

    invoke-static {v6, v0}, Lcom/fmd/statusbarcolor/color;->getAverageColor([II)I

    move-result v7

    goto :goto_5

    :cond_29
    const v0, 0x0

    aget v7, v6, v0

    :goto_5
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->isFilterEnabled:I

    iget v1, p0, Lcom/fmd/statusbarcolor/color;->isGradientEnabled:I

    or-int v0, v0, v1

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2c

    const/4 v1, 0x3

    new-array v3, v1, [F

    invoke-static {v7, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const v1, 0x2

    aget v2, v3, v1

    const v0, 0x3f333333    # 0.7f

    cmpl-float v1, v2, v0

    if-lez v1, :cond_2c

    sub-float/2addr v2, v0

    const v1, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v1

    const v1, 0x1

    aget v1, v3, v1

    cmpl-float v1, v1, v2

    if-gez v1, :cond_2c

    const v2, 0x2

    aput v0, v3, v2

    const v0, 0xff

    invoke-static {v0, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    goto :goto_7

    :cond_2a
    :goto_6
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncherColorsArrayEmpty:I

    if-eqz v0, :cond_2b

    const v7, 0x0

    goto :goto_7

    :cond_2b
    iget v7, p0, Lcom/fmd/statusbarcolor/color;->TargetColor:I

    goto :goto_8

    :cond_2c
    :goto_7
    iput v7, p0, Lcom/fmd/statusbarcolor/color;->TargetColor:I

    :goto_8
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->PrevColor:I

    if-eq v7, v0, :cond_2f

    iget v0, p0, Lcom/fmd/statusbarcolor/color;->TempColor:I

    if-eq v7, v0, :cond_2d

    iget v0, p0, Lcom/fmd/statusbarcolor/color;->TransitionTempColor:I

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->PrevColor:I

    const v0, 0x1

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->TransitionStep:I

    iput v7, p0, Lcom/fmd/statusbarcolor/color;->TempColor:I

    :cond_2d
    const v2, 0x4

    iget v3, p0, Lcom/fmd/statusbarcolor/color;->TransitionStep:I

    if-ge v3, v2, :cond_2e

    iget v1, p0, Lcom/fmd/statusbarcolor/color;->PrevColor:I

    invoke-static {v7, v1, v3, v2}, Lcom/fmd/statusbarcolor/color;->getStepColor(IIII)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fmd/statusbarcolor/color;->TransitionStep:I

    :goto_9
    iput v0, p0, Lcom/fmd/statusbarcolor/color;->TransitionTempColor:I

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->setBackgroundColor(I)V

    goto :goto_a

    :cond_2e
    iput v7, p0, Lcom/fmd/statusbarcolor/color;->PrevColor:I

    :cond_2f
    const v0, 0x0

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->TransitionStep:I

    const v0, 0x4

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->TempColor:I

    iput-object v9, p0, Lcom/fmd/statusbarcolor/color;->PrevColors:[I

    move v0, v7

    goto :goto_9

    :cond_30
    iget v0, p0, Lcom/fmd/statusbarcolor/color;->TransitionStep:I

    if-gtz v0, :cond_12

    if-eqz v10, :cond_31

    iget-object v11, p0, Lcom/fmd/statusbarcolor/color;->LauncherColors:[I

    invoke-static {v11, v9}, Lcom/fmd/statusbarcolor/color;->isLauncherColorsContainColors([I[I)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {v9, v11}, Lcom/fmd/statusbarcolor/color;->putColorsInLauncherColors([I[I)V

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->isLauncherColorsArrayEmpty:I

    :cond_31
    :goto_a
    iget v3, p0, Lcom/fmd/statusbarcolor/color;->isLauncher:I

    if-eqz v3, :cond_34

    const v1, 0x8

    const v0, 0x7f0f0390

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/fmd/statusbarcolor/color;->isGradientEnabled:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_32

    const v1, 0x0

    :cond_32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x8

    const v0, 0x7f0f038f

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/fmd/statusbarcolor/color;->FilterSeekbarValue:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget v2, p0, Lcom/fmd/statusbarcolor/color;->isFilterEnabled:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_33

    const v1, 0x0

    :cond_33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_34
    const v1, 0x8

    const v0, 0x7f0f0390

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/fmd/statusbarcolor/color;->isGradientEnabled:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_35

    const v1, 0x0

    :cond_35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x8

    const v0, 0x7f0f038f

    invoke-virtual {p0, v0}, Lcom/fmd/statusbarcolor/color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/fmd/statusbarcolor/color;->FilterSeekbarValue:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget v2, p0, Lcom/fmd/statusbarcolor/color;->isFilterEnabled:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_36

    const v1, 0x0

    :cond_36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_37
    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sub-int/2addr v0, v14

    iget v2, p0, Lcom/fmd/statusbarcolor/color;->TransitionStep:I

    if-eqz v2, :cond_38

    iget v1, p0, Lcom/fmd/statusbarcolor/color;->IntervalForTransition:I

    goto :goto_c

    :cond_38
    iget v1, p0, Lcom/fmd/statusbarcolor/color;->IntervalForMonitoring:I

    :goto_c
    if-le v1, v0, :cond_39

    sub-int v0, v1, v0

    goto :goto_d

    :cond_39
    const v0, 0x0

    :goto_d
    iput v0, p0, Lcom/fmd/statusbarcolor/color;->UpdaterTime:I

    :goto_e
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    iput v0, p0, Lcom/fmd/statusbarcolor/color;->mIsLockScreenDisabled:I

    goto :goto_e
.end method

.method public UpdateSettings()V
    .locals 3

    .prologue
    const v2, 0x0

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dynamic_status_bar_gradient_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/fmd/statusbarcolor/color;->isGradientEnabled:I

    const-string v1, "dynamic_status_bar_filter_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/fmd/statusbarcolor/color;->isFilterEnabled:I

    const-string v1, "dynamic_status_bar_filter_value"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    div-int/lit16 v1, v1, 0x64

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/fmd/statusbarcolor/color;->FilterSeekbarValue:I

    const-string v1, "dynamic_status_bar_color_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget v0, p0, Lcom/fmd/statusbarcolor/color;->isDSBColorEnabled:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/fmd/statusbarcolor/color;->isDSBColorEnabled:I

    :cond_0
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "FMD.StatusbarExpandedOpened"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "FMD.StatusbarExpandedClosed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "FMD.ActivityFlags"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "FMD.Recents"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public takeScreenshot(I)V
    .locals 12
    .param p1, "ScaleFactor"    # I

    .prologue
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, p0, Lcom/fmd/statusbarcolor/color;->mDefaultDisplay:Landroid/view/Display;

    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const v1, 0x2

    new-array v9, v1, [F

    const v1, 0x0

    iget v2, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, p1

    iput v2, p0, Lcom/fmd/statusbarcolor/color;->Width:I

    int-to-float v2, v2

    aput v2, v9, v1

    const v1, 0x1

    iget v5, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v5, p1

    int-to-float v2, v5

    aput v2, v9, v1

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fmd/statusbarcolor/color;->getDegreesForRotation(I)F

    move-result v8

    const v1, 0x0

    cmpl-float v1, v8, v1

    if-lez v1, :cond_2

    const v4, 0x1

    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    neg-float v2, v8

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v10, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    const v1, 0x0

    const v2, 0x0

    aget v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v9, v1

    const v1, 0x1

    const v2, 0x1

    aget v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v9, v1

    :cond_0
    const v1, 0x0

    aget v1, v9, v1

    float-to-int v1, v1

    const v2, 0x1

    aget v2, v9, v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    move-object v6, v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    if-eqz v4, :cond_1

    iget v1, p0, Lcom/fmd/statusbarcolor/color;->Width:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v1, 0x0

    aget v1, v9, v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v9, v2

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/fmd/statusbarcolor/color;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method
