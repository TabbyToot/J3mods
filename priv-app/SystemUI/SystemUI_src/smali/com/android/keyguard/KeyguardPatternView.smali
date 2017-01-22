.class public Lcom/android/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$18;,
        Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;,
        Lcom/android/keyguard/KeyguardPatternView$OneHandMode;,
        Lcom/android/keyguard/KeyguardPatternView$FooterMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/keyguard/AppearAnimationCreator",
        "<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I

.field private static final DEBUG:Z = true

.field protected static final HINT_MESSAGE_A_SEC:I = 0x3e8

.field protected static final HINT_MESSAGE_DURATION:I = 0x1388

.field private static final INSTRUCTION_MESSAGE_WAIT_TIME:I = 0x7d0

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SecurityPatternView"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58

.field private static final VIBRATE_DURATION:I = 0x64


# instance fields
.field private isBouncerShowing:Z

.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field private mBackUpButtonView:Landroid/view/View;

.field private mBackupPINButton:Landroid/widget/Button;

.field private mBottomAreaNormal:Landroid/view/View;

.field private mBouncerEMA:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerKMA:Landroid/view/View;

.field private mCMASTextViewPattern:Landroid/widget/TextView;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mEMAPress:Z

.field private mEcaBottomView:Landroid/view/View;

.field private mEcaView:Landroid/view/View;

.field private mEnableFallback:Z

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field private mForgotPatternButton:Landroid/widget/Button;

.field protected mHandler:Landroid/os/Handler;

.field private mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInstructionsMessageRunnable:Ljava/lang/Runnable;

.field private mIsPassInputEventToEffectView:Z

.field private mIsTactileFeedbackEnabled:Z

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field private mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

.field private mLastPokeTime:J

.field private mLeftArrowImage:Landroid/widget/ImageButton;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

.field private mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

.field private mOnehandClickLitener:Landroid/view/View$OnClickListener;

.field private mOnehandLockPattern:Landroid/view/View;

.field private mPasswordTimeTick:I

.field private mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

.field private mRightArrowImage:Landroid/widget/ImageButton;

.field private mRightPressed:Z

.field private mSecPatternArea:Landroid/view/View;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSecurityTextViewDisplay:Landroid/widget/TextView;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTotalFailedPatternAttempts:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUseBlackTextOnWhiteWallpaper:Z

.field private mVibraterService:Landroid/os/SystemVibrator;

.field private mWhiteWallpaperObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x66ffffff

    :goto_0
    sput v0, Lcom/android/keyguard/KeyguardPatternView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 215
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    iput v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 113
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 114
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 124
    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    .line 131
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 136
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 154
    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    .line 155
    iput v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    .line 163
    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .line 165
    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    .line 168
    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 182
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 190
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    .line 201
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    .line 953
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$10;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    .line 1210
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardPatternView$15;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    .line 1308
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    .line 1309
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$16;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$16;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 216
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardProperties;->usePatternBGEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iput-boolean v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 220
    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v6, 0x10c000e

    invoke-static {v1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    .line 224
    new-instance v0, Lcom/android/keyguard/DisappearAnimationUtils;

    const-wide/16 v2, 0x7d

    const v4, 0x3f99999a    # 1.2f

    const v5, 0x3f4ccccd    # 0.8f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v6, 0x10c000f

    invoke-static {v1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    .line 228
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 234
    return-void

    :cond_1
    move v0, v8

    .line 233
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsTactileFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mVibraterService:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardPatternView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # J

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/KeyguardPatternView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    return p1
.end method

.method static synthetic access$1708(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private disableDevicePermanently()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 1158
    const-string v0, "SecurityPatternView"

    const-string v2, "disableDevicePermanently start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v2, Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " has exceeded number of authentication failure limit"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1167
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    .line 1168
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->setEnabled(Z)V

    .line 1169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v3, 0x1040b30

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1170
    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->faceunlock_multiple_failures:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 572
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 559
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, " "

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 560
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 561
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    sget v0, Lcom/android/keyguard/R$string;->kg_pattern_instructions:I

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(IZ)V

    goto :goto_0

    .line 564
    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    .line 565
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 570
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_pattern_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method

.method private enableClipping(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1065
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->setClipChildren(Z)V

    .line 1066
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1067
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1068
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    .line 790
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->setEnabled(Z)V

    .line 791
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 793
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 797
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$8;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$8;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$8;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 825
    return-void
.end method

.method private initCMASText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1371
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1375
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    const-string v0, "SecurityPatternView"

    const-string v1, "[SPR] Presidential Alert!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1383
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateCMASText()V

    goto :goto_0

    .line 1379
    :cond_2
    const-string v0, "SecurityPatternView"

    const-string v1, "[No SPR] Emergency Alert!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_vzw:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1385
    :cond_3
    const-string v0, "SecurityPatternView"

    const-string v1, "[No USA model] disable CMAS Text!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isCenteredMessageArea()Z
    .locals 1

    .prologue
    .line 1186
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    .prologue
    .line 1139
    const/4 v2, 0x0

    .line 1140
    .local v2, "isDeviceDisableForMaxFailedAttempt":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1142
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    .line 1143
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 1144
    .local v3, "maxNumFailedAttemptForDisable":I
    const-string v4, "SecurityPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    if-lez v3, :cond_0

    .line 1147
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    .line 1148
    .local v0, "curNumFailedAttempts":I
    const-string v4, "SecurityPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    if-lt v0, v3, :cond_1

    const/4 v2, 0x1

    .line 1153
    .end local v0    # "curNumFailedAttempts":I
    .end local v3    # "maxNumFailedAttemptForDisable":I
    :cond_0
    :goto_0
    const-string v4, "SecurityPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return v2

    .line 1149
    .restart local v0    # "curNumFailedAttempts":I
    .restart local v3    # "maxNumFailedAttemptForDisable":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isHintMessageArea()Z
    .locals 1

    .prologue
    .line 1303
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnehandMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1072
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return v0

    .line 1075
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1076
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTactileFeedbackEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    .line 1174
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1175
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_vibration_feedback"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1175
    goto :goto_0

    .line 1178
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 736
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardPatternView$1;)V

    .line 737
    .local v0, "accountAnalyzer":Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    .line 738
    return-void
.end method

.method private movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 973
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v1, :cond_3

    .line 974
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 977
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 978
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 980
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 982
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 983
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 984
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pattern_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 985
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 986
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void

    .line 988
    :cond_3
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v1, :cond_2

    .line 989
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 990
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 992
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    .line 993
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 995
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 997
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 998
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x800005

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 999
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pattern_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1001
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private registerOnehandAnyScreenObserver()V
    .locals 0

    .prologue
    .line 1191
    return-void
.end method

.method private resizeKeyboardScreen()V
    .locals 7

    .prologue
    .line 1261
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    sget v5, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1265
    .local v4, "patternview":Landroid/view/View;
    sget v5, Lcom/android/keyguard/R$id;->textview_keyguard_message_area:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1266
    .local v0, "massagearea":Landroid/view/View;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1270
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_view_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 1272
    .local v3, "patternViewHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_message_area_min_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 1274
    .local v1, "messageAreaMaginBottom":I
    if-eqz v4, :cond_2

    .line 1275
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1276
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1277
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1279
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1281
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1282
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1285
    .end local v1    # "messageAreaMaginBottom":I
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "patternViewHeight":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_view_max_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 1287
    .restart local v3    # "patternViewHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_message_area_max_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 1289
    .restart local v1    # "messageAreaMaginBottom":I
    if-eqz v4, :cond_4

    .line 1290
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1291
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1292
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1294
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    if-eqz v0, :cond_0

    .line 1295
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1296
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1297
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setOnehandPatternView()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1218
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1219
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1220
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 1221
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1223
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 1224
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1226
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1227
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1229
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1230
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1231
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1258
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void

    .line 1232
    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1234
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1235
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x51

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1236
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1238
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 1240
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1241
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1242
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1243
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1244
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1249
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_direction"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    .line 1251
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    if-eqz v1, :cond_6

    .line 1252
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 1249
    goto :goto_1

    .line 1254
    :cond_6
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    goto :goto_0
.end method

.method private unregisterOnehandAnyScreenObserver()V
    .locals 0

    .prologue
    .line 1200
    return-void
.end method

.method private updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 13
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x41600000    # 14.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 358
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .line 359
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v6, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 364
    sget-object v6, Lcom/android/keyguard/KeyguardPatternView$18;->$SwitchMap$com$android$keyguard$KeyguardPatternView$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 418
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    :cond_3
    sget v6, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 420
    .local v0, "emergencyButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 422
    sget-object v6, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    if-eq p1, v6, :cond_4

    sget-object v6, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    if-ne p1, v6, :cond_0

    .line 423
    :cond_4
    const/4 v1, 0x0

    .line 424
    .local v1, "emergencyButtonAreaHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_emergency_button_area_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 425
    .local v3, "emergencyButtonAreaWidth":I
    const/4 v2, 0x0

    .line 426
    .local v2, "emergencyButtonAreaMaginBottom":I
    sget-object v6, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    if-ne p1, v6, :cond_e

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_e

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v6

    if-nez v6, :cond_e

    .line 430
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_max_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 432
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setMaxLines(I)V

    .line 433
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 434
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "vi_VN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 435
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 437
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setMaxLines(I)V

    .line 438
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 439
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "vi_VN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 440
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 442
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->pattern_bottom_area_button_area_min_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 445
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setMaxLines(I)V

    .line 446
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 447
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "vi_VN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 448
    invoke-virtual {v0, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 469
    :cond_7
    :goto_2
    if-eqz v1, :cond_0

    .line 470
    sget v6, Lcom/android/keyguard/R$id;->keyguard_emergency_button_area:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 471
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 472
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 474
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 475
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 476
    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 477
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 478
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 367
    .end local v0    # "emergencyButton":Landroid/widget/Button;
    .end local v1    # "emergencyButtonAreaHeight":I
    .end local v2    # "emergencyButtonAreaMaginBottom":I
    .end local v3    # "emergencyButtonAreaWidth":I
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    :pswitch_0
    const-string v6, "SecurityPatternView"

    const-string v7, "mode normal"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 370
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    if-nez v6, :cond_8

    .line 372
    new-instance v6, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 374
    :cond_8
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 376
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 380
    :pswitch_1
    const-string v6, "SecurityPatternView"

    const-string v7, "mode ForgotLockPattern"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 382
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 383
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 386
    :goto_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    if-nez v6, :cond_9

    .line 388
    new-instance v7, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v6, p0

    :goto_4
    invoke-direct {v7, v6}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 391
    :cond_9
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 392
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateCMASText()V

    goto/16 :goto_1

    .line 385
    :cond_a
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 388
    :cond_b
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_4

    .line 396
    :pswitch_2
    const-string v6, "SecurityPatternView"

    const-string v7, "mode BackupPIN"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 398
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 399
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    if-nez v6, :cond_c

    .line 401
    new-instance v7, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v6, p0

    :goto_5
    invoke-direct {v7, v6}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 404
    :cond_c
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 405
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateCMASText()V

    goto/16 :goto_1

    .line 401
    :cond_d
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_5

    .line 409
    :pswitch_3
    const-string v6, "SecurityPatternView"

    const-string v7, "mode VerifyUnlocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 412
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 415
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 451
    .restart local v0    # "emergencyButton":Landroid/widget/Button;
    .restart local v1    # "emergencyButtonAreaHeight":I
    .restart local v2    # "emergencyButtonAreaMaginBottom":I
    .restart local v3    # "emergencyButtonAreaWidth":I
    :cond_e
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    if-eq p1, v6, :cond_f

    .line 452
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 453
    div-int/lit8 v3, v3, 0x2

    .line 454
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setMaxLines(I)V

    .line 455
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->pattern_bottom_area_button_area_min_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    goto/16 :goto_2

    .line 458
    :cond_f
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 460
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setMaxLines(I)V

    .line 461
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 462
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setMaxLines(I)V

    .line 463
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->pattern_bottom_area_button_area_max_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 466
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setMaxLines(I)V

    .line 467
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 580
    const-string v0, "SecurityPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup() called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iput-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 582
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 583
    iput-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    .line 584
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setPatternCallback(Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;)V

    .line 585
    return-void
.end method

.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "animatedCell"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 1086
    if-eqz p7, :cond_0

    .line 1087
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->scale:F

    .line 1088
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 1090
    :cond_0
    if-eqz p7, :cond_2

    move/from16 v2, p6

    :goto_0
    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    .line 1091
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v2, 0x0

    iget v4, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    aput v4, v3, v2

    const/4 v4, 0x1

    if-eqz p7, :cond_3

    const/4 v2, 0x0

    :goto_1
    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 1093
    .local v12, "animator":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1094
    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1095
    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1096
    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$13;

    move/from16 v0, p7

    invoke-direct {v2, p0, v0, p1}, Lcom/android/keyguard/KeyguardPatternView$13;-><init>(Lcom/android/keyguard/KeyguardPatternView;ZLcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1109
    if-eqz p9, :cond_1

    .line 1110
    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$14;

    move-object/from16 v0, p9

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardPatternView$14;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1118
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    const/4 v11, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/keyguard/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 1122
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1124
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v11, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/keyguard/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 1128
    :cond_1
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1129
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate()V

    .line 1130
    return-void

    .line 1090
    .end local v12    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move/from16 v2, p6

    .line 1091
    goto :goto_1
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # F
    .param p7, "x4"    # Z
    .param p8, "x5"    # Landroid/view/animation/Interpolator;
    .param p9, "x6"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getFailedAttemptMessage(I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "attempts"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 695
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_4

    .line 696
    const/4 v3, 0x0

    .line 697
    .local v3, "remaining":I
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    .line 699
    .local v0, "failedAttemptsBeforeWipe":I
    if-lez v0, :cond_0

    move v1, v4

    .line 700
    .local v1, "isITPolicyEnabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 701
    sub-int v3, v0, p1

    .line 704
    :goto_1
    if-ne v3, v4, :cond_2

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 717
    .end local v0    # "failedAttemptsBeforeWipe":I
    .end local v1    # "isITPolicyEnabled":Z
    .end local v3    # "remaining":I
    .local v2, "message":Ljava/lang/CharSequence;
    :goto_2
    return-object v2

    .end local v2    # "message":Ljava/lang/CharSequence;
    .restart local v0    # "failedAttemptsBeforeWipe":I
    .restart local v3    # "remaining":I
    :cond_0
    move v1, v5

    .line 699
    goto :goto_0

    .line 703
    .restart local v1    # "isITPolicyEnabled":Z
    :cond_1
    rsub-int/lit8 v3, p1, 0x5

    goto :goto_1

    .line 707
    :cond_2
    const/16 v6, 0xa

    if-gt v3, v6, :cond_3

    if-le v3, v4, :cond_3

    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 712
    .end local v2    # "message":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 715
    .end local v0    # "failedAttemptsBeforeWipe":I
    .end local v1    # "isITPolicyEnabled":Z
    .end local v2    # "message":Ljava/lang/CharSequence;
    .end local v3    # "remaining":I
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public getFailedAutoWipeAttemptMessage()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 721
    const-string v1, ""

    .line 722
    .local v1, "message":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    .line 723
    .local v0, "attempts":I
    rsub-int/lit8 v2, v0, 0x5

    .line 724
    .local v2, "remaining":I
    if-ne v2, v5, :cond_1

    .line 725
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 730
    :cond_0
    :goto_0
    return-object v1

    .line 726
    :cond_1
    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    if-le v2, v5, :cond_0

    .line 728
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x0

    return v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 930
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    .line 931
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaBottomView:Landroid/view/View;

    .line 932
    .local v0, "appearedView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 933
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 934
    return-void

    .line 931
    .end local v0    # "appearedView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    goto :goto_0
.end method

.method protected isCountDownTimerRunning()Z
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 833
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 862
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 863
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$9;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardPatternView$9;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    .line 876
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 879
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->registerOnehandAnyScreenObserver()V

    .line 880
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 909
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 910
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->resizeKeyboardScreen()V

    .line 911
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 898
    const-string v0, "SecurityPatternView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->unregisterOnehandAnyScreenObserver()V

    .line 902
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 905
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 246
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 247
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 248
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_b

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 251
    sget v1, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecLockPatternView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    .line 252
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setSaveEnabled(Z)V

    .line 253
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setFocusable(Z)V

    .line 254
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    new-instance v4, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 256
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->setPatternCallback(Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;)V

    .line 259
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->setInStealthMode(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 264
    sget v1, Lcom/android/keyguard/R$id;->keyguard_emergency_carrier_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    .line 265
    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area_normal:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    .line 266
    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_cmas_text_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    .line 268
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPatternView$5;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setOnTouchEventHandlerForKeyguardEffect(Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;)V

    .line 279
    :cond_0
    sget v1, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    .line 280
    sget v1, Lcom/android/keyguard/R$id;->backup_pin_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    .line 282
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    sget v3, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 285
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$6;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPatternView$6;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    sget v3, Lcom/android/keyguard/R$string;->kg_lockscreen_backup_pin_button_text:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 294
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$7;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPatternView$7;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->setFocusableInTouchMode(Z)V

    .line 304
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 305
    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 306
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area_eca:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaBottomView:Landroid/view/View;

    .line 308
    sget v1, Lcom/android/keyguard/R$id;->textview_keyguard_message_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    .line 310
    :cond_3
    sget v1, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    .line 311
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 312
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    sget v2, Lcom/android/keyguard/KeyguardPatternView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 313
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 316
    :cond_4
    sget v1, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

    .line 317
    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 318
    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    .line 319
    sget v1, Lcom/android/keyguard/R$id;->sec_emergency_button_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerEMA:Landroid/view/View;

    .line 321
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 322
    :cond_5
    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area_backup:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    .line 323
    .local v0, "backupHelpMessage":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 324
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 328
    .end local v0    # "backupHelpMessage":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 329
    sget v1, Lcom/android/keyguard/R$id;->onehand_lockpattern:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    .line 330
    sget v1, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    .line 331
    sget v1, Lcom/android/keyguard/R$id;->onehand_left_arrow_pattern:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    .line 332
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    .line 333
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_left_handed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 337
    :cond_7
    sget v1, Lcom/android/keyguard/R$id;->onehand_right_arrow_pattern:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    .line 338
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_8

    .line 339
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_right_handed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 344
    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    .line 348
    :cond_9
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 349
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    .line 351
    :cond_a
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsTactileFeedbackEnabled:Z

    .line 352
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mVibraterService:Landroid/os/SystemVibrator;

    .line 354
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->initCMASText()V

    .line 355
    return-void

    .line 248
    :cond_b
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_c
    move v1, v3

    .line 259
    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 843
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 845
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 849
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 853
    :cond_2
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    .line 858
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 488
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 490
    .local v2, "result":Z
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    if-eqz v4, :cond_0

    .line 491
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 496
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 497
    .local v0, "elapsed":J
    if-eqz v2, :cond_1

    const-wide/16 v4, 0x1af4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 500
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 501
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 502
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 503
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/sec/SecLockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 504
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 505
    return v2

    :cond_3
    move v2, v3

    .line 503
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 589
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 590
    const-string v0, "SecurityPatternView"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-eqz p1, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    .line 595
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 509
    const-string v2, "SecurityPatternView"

    const-string v3, "reset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecLockPatternView;->enableInput()V

    .line 515
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setEnabled(Z)V

    .line 516
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    .line 519
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->resizeKeyboardScreen()V

    .line 522
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_3

    .line 525
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 526
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 527
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 532
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 536
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    .line 551
    .end local v0    # "deadline":J
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    .line 552
    return-void

    .line 529
    .restart local v0    # "deadline":J
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 540
    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1

    .line 542
    :cond_2
    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1

    .line 547
    .end local v0    # "deadline":J
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    goto :goto_1
.end method

.method protected setHintOrMessageText(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "important"    # Z

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    .line 1328
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z

    .prologue
    .line 1331
    const/16 v0, 0x1388

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    .line 1332
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;ZI)V
    .locals 6
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z
    .param p3, "timeout"    # I

    .prologue
    const/4 v1, 0x0

    .line 1335
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateBlackTextOnWhiteWallpaper()V

    .line 1336
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1337
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, p1, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1339
    const-string v2, "ko"

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1340
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_status_help_font_size_kor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1341
    :cond_2
    const/16 v2, 0x3e8

    if-ne p3, v2, :cond_3

    const/4 v1, 0x1

    .line 1342
    .local v1, "isCountDownTimer":Z
    :cond_3
    if-eqz v1, :cond_5

    .line 1343
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1362
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1363
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1364
    :cond_4
    if-lez p3, :cond_0

    .line 1365
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    int-to-long v4, p3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1345
    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1346
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1347
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1348
    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$17;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$17;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1359
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1360
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 238
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 242
    return-void
.end method

.method protected setNullHintMessage()V
    .locals 2

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1322
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1324
    :cond_1
    return-void
.end method

.method public showBouncer(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/4 v3, 0x1

    .line 920
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    .line 921
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaBottomView:Landroid/view/View;

    .line 922
    .local v0, "disappearedView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    .line 923
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPatternView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 924
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 926
    :cond_0
    return-void

    .line 921
    .end local v0    # "disappearedView":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    goto :goto_0
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 937
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-nez v1, :cond_1

    .line 938
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 939
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, p0

    .line 941
    .local v0, "view":Landroid/view/View;
    :goto_1
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 944
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerEMA:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 945
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerEMA:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 946
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    .line 948
    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCountDownTimerRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 949
    sget v1, Lcom/android/keyguard/R$string;->kg_pattern_bouncer_instructions:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(IZ)V

    .line 951
    :cond_4
    return-void

    :cond_5
    move v1, v3

    .line 939
    goto :goto_0

    .line 940
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_1

    :cond_7
    move-object v0, p0

    goto :goto_1
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public startAppearAnimation()V
    .locals 10

    .prologue
    .line 1008
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    .line 1009
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setAlpha(F)V

    .line 1010
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    .line 1011
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 1015
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$11;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPatternView$11;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    .line 1024
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xdc

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v6}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v8}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 1032
    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 10
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v7, 0x0

    .line 1036
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    .line 1037
    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    .line 1038
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    .line 1039
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/DisappearAnimationUtils;->getStartTranslation()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 1043
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$12;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$12;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/keyguard/DisappearAnimationUtils;->startAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    .line 1053
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    invoke-virtual {v6}, Lcom/android/keyguard/DisappearAnimationUtils;->getStartTranslation()F

    move-result v6

    neg-float v6, v6

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v6, v8

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    invoke-virtual {v8}, Lcom/android/keyguard/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/DisappearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 1061
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 5

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 884
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 886
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->keyguard_message_area_hint_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 890
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public updateCMASText()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 1391
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    const/4 v0, 0x0

    .line 1395
    .local v0, "disableNoti":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_show_notifications"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 1401
    :goto_1
    const-string v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNoti = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 1403
    const-string v3, "SecurityPatternView"

    const-string v4, "updateCMASText( )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1405
    const-string v3, "SecurityPatternView"

    const-string v4, "updateCMASText( setVisibility = VISIBLE )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1395
    goto :goto_1

    .line 1397
    :catch_0
    move-exception v1

    .line 1398
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCMASText() can not found setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v0, 0x0

    goto :goto_1

    .line 1408
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1411
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
