.class public Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
.super Ljava/lang/Thread;
.source "KeyguardSpassUnlockThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SHOW_BACKUP_PASSWORD_BASED_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyguardSpassUnlockThread"


# instance fields
.field private final FINGERPRINT_START_DELAY:I

.field private final FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

.field private final MSG_DESTROY_FINGERPRINT_THREAD:I

.field private final MSG_FINGERPRINT_DATABASE_ERROR:I

.field private final MSG_FINGERPRINT_IDENTIFY_START:I

.field private final MSG_FINGERPRINT_IDENTIFY_STOP:I

.field private final MSG_FINGERPRINT_RESPONDING_ERROR:I

.field private final MSG_FINGERPRINT_SENSOR_ERROR:I

.field private final MSG_FINGERPRINT_SENSOR_FAILURE:I

.field private final MSG_FINGERPRINT_SENSOR_START:I

.field private final MSG_FINGERPRINT_SENSOR_STOP:I

.field private final SCREEN_TIMEOUT:I

.field private mAttributionViewEnableHandlerId:I

.field mBoostHelper:Landroid/os/DVFSHelper;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastRegistered:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mExpiredTime:J

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mIsActive:Z

.field private mIsRegisteredClient:Z

.field private volatile mIsRunning:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

.field private mSpassThreadHandler:Landroid/os/Handler;

.field private mToken:Landroid/os/IBinder;

.field private mVibraterService:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    const-string v0, "KeyguardSpassUnlockThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 38
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->SCREEN_TIMEOUT:I

    .line 40
    const/16 v0, 0x45c

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_IDENTIFY_START:I

    .line 41
    const/16 v0, 0x45d

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_IDENTIFY_STOP:I

    .line 42
    const/16 v0, 0x45f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_START:I

    .line 43
    const/16 v0, 0x460

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_STOP:I

    .line 44
    const/16 v0, 0x461

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_ERROR:I

    .line 45
    const/16 v0, 0x462

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_FAILURE:I

    .line 46
    const/16 v0, 0x463

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_RESPONDING_ERROR:I

    .line 47
    const/16 v0, 0x464

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_DESTROY_FINGERPRINT_THREAD:I

    .line 48
    const/16 v0, 0x465

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_DATABASE_ERROR:I

    .line 50
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->FINGERPRINT_START_DELAY:I

    .line 65
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mAttributionViewEnableHandlerId:I

    .line 80
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;-><init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    .line 468
    const-string v0, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

    .line 472
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$3;-><init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "FingerPrintManager is not possilbe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->request(II)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartIdentify()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleDestoryFingerPrintThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleUnlock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleReportFailedAttempts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->vibrateFingerprintError()V

    return-void
.end method

.method private boostCpuClock()V
    .locals 7

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 594
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "Spass boostCpuClock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    const-string v2, "KEYGUARD_SPASS_BOOST"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    .line 597
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v6

    .line 598
    .local v6, "freqTable":[I
    if-eqz v6, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    const v3, 0x124f80

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 603
    .end local v6    # "freqTable":[I
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 604
    return-void
.end method

.method private handleDestoryFingerPrintThread()V
    .locals 2

    .prologue
    .line 570
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleDestoryFingerPrintThread()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    monitor-enter p0

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->removeAllMsgs()V

    .line 573
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_3

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    .line 586
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_4

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 589
    :cond_4
    monitor-exit p0

    .line 590
    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReportFailedAttempts()V
    .locals 3

    .prologue
    .line 546
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleReportFailedAttempts()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedSecBiometricUnlockAttempt()V

    .line 548
    const-string v0, "KeyguardSpassUnlockThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportFailedAttempt( mFailedAttempts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedSecBiometricUnlockAttempts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedSecBiometricUnlockAttempts()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showBackupPasswordButton()V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxSecBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "reportFailedAttempt( too many failed. go to backup Password )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 562
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 563
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showBackupPassword()V

    .line 567
    :cond_1
    return-void
.end method

.method private handleStartIdentify()V
    .locals 6

    .prologue
    const/16 v5, 0x45f

    .line 340
    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartIdentify( mIsRegisteredClient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 344
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 345
    .local v0, "currentUserId":I
    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartIdentify currentUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v1

    .line 348
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 349
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v0    # "currentUserId":I
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 350
    .restart local v0    # "currentUserId":I
    .restart local v1    # "result":I
    :cond_1
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 351
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify: RESULT_IN_PROGRESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 353
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 355
    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 356
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify: RESULT_INVALID_TOKEN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 358
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 360
    :cond_3
    const/4 v2, -0x4

    if-eq v1, v2, :cond_4

    const/4 v2, -0x5

    if-ne v1, v2, :cond_5

    .line 362
    :cond_4
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify: RESULT_DATABASE_FAILURE or RESULT_NO_REGISTERED_FINGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x465

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 367
    :cond_5
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify request failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x463

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 372
    .end local v0    # "currentUserId":I
    .end local v1    # "result":I
    :cond_6
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleStartIdentify is called but isSensorReady is false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x461

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private handleUnlock()V
    .locals 2

    .prologue
    .line 535
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    .line 538
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->boostCpuClock()V

    .line 539
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->dismissKeyguard()V

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->cleanUp()V

    .line 542
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 483
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    if-nez v1, :cond_0

    .line 484
    const-string v1, "KeyguardSpassUnlockThread"

    const-string v2, "registerBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 486
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 488
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    .line 490
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private registerClient()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 435
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 437
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_1

    .line 438
    const-string v1, "KeyguardSpassUnlockThread"

    const-string v3, "registerClient() : FingerPrintManager is not possilbe"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return v2

    .line 442
    :cond_1
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "builder":Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    if-eqz v0, :cond_3

    .line 445
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 446
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 447
    const v3, -0x7ffffffd

    invoke-virtual {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setPrivilegedAttr(I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 449
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    .line 450
    const-string v3, "KeyguardSpassUnlockThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerClient() mToken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 453
    :cond_3
    const-string v1, "KeyguardSpassUnlockThread"

    const-string v3, "registerClient() : FingerprintClientSpecBuilder is not possible"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "unregisterBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    .line 498
    :cond_0
    return-void
.end method

.method private vibrateFingerprintError()V
    .locals 6

    .prologue
    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->isEnableIntensity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;

    const v2, 0xc36d

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/SystemVibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 520
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 522
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x464

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 525
    :cond_0
    return-void
.end method

.method public handleFingerPrintDataBaseError()V
    .locals 2

    .prologue
    .line 401
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleFingerPrintDataBaseError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x465

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_database_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 410
    return-void
.end method

.method public handleRespondingError()V
    .locals 2

    .prologue
    .line 389
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleRespondingError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x463

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 394
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_not_responding_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 398
    return-void
.end method

.method public handleSensorError()V
    .locals 2

    .prologue
    .line 413
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleSensorError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 418
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_sensor_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    .line 422
    return-void
.end method

.method public handleSensorFailure()V
    .locals 2

    .prologue
    .line 425
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleSensorFailure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x462

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_not_responding_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    .line 432
    :cond_1
    return-void
.end method

.method handleStartFingerPrintSensor()V
    .locals 8

    .prologue
    const/16 v7, 0x45c

    const/4 v6, 0x1

    .line 293
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStopIdentify()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleStartFingerPrintSensor  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    if-eqz v2, :cond_4

    .line 301
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    if-nez v2, :cond_3

    .line 302
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    :cond_2
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    .line 305
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "sensor is already running."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_3
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "fingerprint is already running."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_4
    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start( mIsRegisteredClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRunning()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.fingerprint.service"

    const-string v3, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mExpiredTime:J

    .line 322
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->registerClient()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    .line 323
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    .line 325
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    if-eqz v2, :cond_5

    .line 327
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterBroadcastReceiver()V

    .line 328
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "Failed to call FingerprintServiceStarter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->registerBroadcastReceiver()V

    goto/16 :goto_0
.end method

.method public handleStopIdentify()V
    .locals 2

    .prologue
    .line 381
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleStopIdentify()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    .line 385
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    .line 386
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 502
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 508
    :cond_0
    monitor-exit p0

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 513
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    :cond_0
    return-void
.end method

.method protected removeAllMsgs()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x462

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x463

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x464

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 529
    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 532
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 123
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;-><init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    .line 259
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 260
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 114
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 110
    return-void
.end method

.method public setSpassCallback(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    .line 118
    return-void
.end method

.method public startIdentify()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 278
    :cond_0
    return-void
.end method

.method public stopIdentify()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 283
    :cond_0
    return-void
.end method

.method public stopSensor()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    :cond_0
    return-void
.end method

.method public unregisterClient()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    .line 461
    const-string v0, "KeyguardSpassUnlockThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterClient() mToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    .line 463
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    .line 464
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    .line 466
    :cond_0
    return-void
.end method
