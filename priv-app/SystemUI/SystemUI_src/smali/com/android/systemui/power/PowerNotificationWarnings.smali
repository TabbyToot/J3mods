.class public Lcom/android/systemui/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;,
        Lcom/android/systemui/power/PowerNotificationWarnings$CocktailProvider;
    }
.end annotation


# static fields
.field static final ACTION_BATTERY_LOW_CLOSE_BUTTON:Ljava/lang/String; = "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

.field static final ACTION_BATTERY_LOW_COCKTAIL_BUTTON:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

.field static final ACTION_BATTERY_LOW_COCKTAIL_TOUCH:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_TOUCH"

.field private static final ACTION_COVER_REMOTEVIEWES_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field private static final ACTION_COVER_REQUEST_REMOTEVIEWS:Ljava/lang/String; = "com.samsung.cover.REQUEST_REMOTEVIEWS"

.field private static final ACTION_DISMISSED_WARNING:Ljava/lang/String; = "PNW.dismissedWarning"

.field private static final ACTION_SHOW_BATTERY_SETTINGS:Ljava/lang/String; = "PNW.batterySettings"

.field private static final ACTION_START_SAVER:Ljava/lang/String; = "PNW.startSaver"

.field private static final ACTION_STOP_SAVER:Ljava/lang/String; = "PNW.stopSaver"

.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final BASIC_MODE:I = 0x0

.field private static final DEBUG:Z

.field private static final EXTRA_REMOTEVIEWS:Ljava/lang/String; = "remote"

.field private static final EXTRA_REMOTEVIEWS_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_REMOTEVIEWS_TYPE_BATTERY:Ljava/lang/String; = "battery"

.field private static final EXTRA_REMOTEVIEWS_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final ID_NOTIFICATION:I = 0x64

.field private static final ID_NOTIFICATION_BATTERY_SWELLING_RECOVERY:I = 0x6c

.field private static final ID_NOTIFICATION_BATTERY_SWELLING_WARNING:I = 0x6b

.field private static final ID_NOTIFICATION_CHARGING_INTERRUPTION:I = 0x6e

.field private static final ID_NOTIFICATION_CHARGING_STATE:I = 0x6f

.field private static final ID_NOTIFICATION_FACE_DETECTION_FAIL:I = 0x6a

.field private static final ID_NOTIFICATION_FULL_BATTERY:I = 0x65

.field private static final ID_NOTIFICATION_HIGH_VOLTAGE_CHARGER:I = 0x69

.field private static final ID_NOTIFICATION_INCOMPATIBLE_CHARGER:I = 0x67

.field private static final ID_NOTIFICATION_OVER_HEAT:I = 0x6d

.field private static final ID_NOTIFICATION_SLOW_CHARGER:I = 0x68

.field private static final ID_NOTIFICATION_WIRELESS_CHARGER:I = 0x66

.field static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final POWER_SAVING_MODE:I = 0x1

.field private static final PSM_ACTIVITY:Ljava/lang/String; = "com.android.settings.Settings$PowerSavingModeSettingsActivity"

.field private static final PSM_ACTIVITY_GENERIC:Ljava/lang/String; = "com.android.settings.Settings$GenericPowerSavingModeActivity"

.field private static final PSM_DB_SWITCH:Ljava/lang/String; = "psm_switch"

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SHOWING_INVALID_CHARGER:I = 0x3

.field private static final SHOWING_LOW_BATTERY_WARNING:I = 0x1

.field private static final SHOWING_NOTHING:I = 0x0

.field private static final SHOWING_SAVER:I = 0x2

.field private static final SHOWING_STRINGS:[Ljava/lang/String;

.field static final SOUND_PATH_BATTERY_CAUTION:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_caution.ogg"

.field static final SOUND_PATH_BATTERY_SWELLING_WARNING:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

.field static final SOUND_PATH_CHARGER_CONNECTION:Ljava/lang/String; = "system/media/audio/ui/Charger_Connection.ogg"

.field static final SOUND_TYPE_BATTERY_CAUTION:I = 0x3

.field static final SOUND_TYPE_BATTERY_SWELLING_WARNING:I = 0x4

.field static final SOUND_TYPE_CHARGER_CONNECTION:I = 0x1

.field static final SOUND_TYPE_LOW_BATTERY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PowerUI.Notification"

.field private static final TAG_NOTIFICATION:Ljava/lang/String; = "low_battery"

.field private static final TAG_NOTIFICATION_BATTERY_SWELLING_RECOVERY:Ljava/lang/String; = "battery_swelling_recovery"

.field private static final TAG_NOTIFICATION_BATTERY_SWELLING_WARNING:Ljava/lang/String; = "battery_swelling_warning"

.field private static final TAG_NOTIFICATION_CHARGING_INTERRUPTION:Ljava/lang/String; = "charging_interruption"

.field private static final TAG_NOTIFICATION_CHARGING_STATE:Ljava/lang/String; = "charging_state"

.field private static final TAG_NOTIFICATION_FACE_DETECTION_FAIL:Ljava/lang/String; = "face_detection_fail"

.field private static final TAG_NOTIFICATION_FULL_BATTERY:Ljava/lang/String; = "full_battery"

.field private static final TAG_NOTIFICATION_HIGH_VOLTAGE_CHARGER:Ljava/lang/String; = "afc_charger"

.field private static final TAG_NOTIFICATION_INCOMPATIBLE_CHARGER:Ljava/lang/String; = "incompatible_charger"

.field private static final TAG_NOTIFICATION_OVER_HEAT:Ljava/lang/String; = "over_heat"

.field private static final TAG_NOTIFICATION_SLOW_CHARGER:Ljava/lang/String; = "slow_charger"

.field private static final TAG_NOTIFICATION_WIRELESS_CHARGER:Ljava/lang/String; = "wireless_charger"

.field private static final ULTRA_POWER_SAVING_MODE:I = 0x2


# instance fields
.field mAbnormalChargingDialog:Landroid/app/AlertDialog;

.field mAbnormalChargingNotification:Landroid/app/Notification;

.field mAbnormalChargingTextView:Landroid/widget/TextView;

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryOnline:I

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBatterySwellingDialog:Landroid/app/AlertDialog;

.field private mBatterySwellingRecovery:Z

.field mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

.field mBatterySwellingTask:Ljava/lang/Runnable;

.field private mBatterySwellingWarning:Z

.field private mBucket:I

.field private mBucketDroppedNegativeTimeMs:J

.field private mCallState:I

.field private mChargingInterruption:Z

.field mChargingInterruptionDialog:Landroid/app/AlertDialog;

.field mChargingInterruptionTask:Ljava/lang/Runnable;

.field private mChargingTime:J

.field private mChargingType:I

.field private mCocktailLowBatteryWarning:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentBatteryMode:I

.field private mDeviceType:I

.field private mFaceDetectionFail:Z

.field mFaceDetectionFailureNotification:Landroid/app/Notification;

.field mFaceDetectionFailureTask:Ljava/lang/Runnable;

.field private mFullBattery:Z

.field mFullBatteryNotification:Landroid/app/Notification;

.field private final mHandler:Landroid/os/Handler;

.field private mHighVoltageCharger:Z

.field mHighVoltageChargerDialog:Landroid/app/AlertDialog;

.field mHighVoltageChargerNotification:Landroid/app/Notification;

.field mHighVoltageChargerTask:Ljava/lang/Runnable;

.field private mIncompatibleCharger:Z

.field mIncompatibleChargerDialog:Landroid/app/AlertDialog;

.field private mInvalidCharger:Z

.field private mIsNeedToRemoveLowBatteryWarning:Z

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryWarning:Z

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field private mOldBatteryLevel:I

.field private final mOpenBatterySettings:Landroid/content/Intent;

.field private final mOpenSaverSettings:Landroid/content/Intent;

.field private mOverHeat:Z

.field mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

.field mOverheatShutdownTask:Ljava/lang/Runnable;

.field mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaySound:Z

.field private mPlugType:I

.field private final mPowerMan:Landroid/os/PowerManager;

.field private final mPowersavingObserver:Landroid/database/ContentObserver;

.field mPowersavingmodeDialog:Landroid/app/AlertDialog;

.field private final mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

.field private mRemainTime:I

.field private mSaver:Z

.field private mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mScreenOffTime:J

.field private volatile mService:Lcom/android/internal/policy/IKeyguardService;

.field private mShowChargingNotice:Z

.field private mShowing:I

.field private mSlowCharger:Z

.field private final mSmartManagerBatterySettings:Landroid/content/Intent;

.field private final mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mSupportMultiUserMode:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWirelessCharger:Z

.field private mWirelessChargerToast:Landroid/widget/Toast;

.field mWirelessChargingConnectDialog:Landroid/app/AlertDialog;

.field mWirelessChargingDisconnectDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 137
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    .line 192
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SHOWING_NOTHING"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHOWING_LOW_BATTERY_WARNING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHOWING_SAVER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SHOWING_INVALID_CHARGER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 212
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const/4 v5, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 221
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$1;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    .line 222
    const-string v3, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    .line 223
    const-string v3, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    .line 224
    const-string v3, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    .line 234
    iput v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    .line 235
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryOnline:I

    .line 236
    iput v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    .line 237
    iput v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    .line 238
    iput v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 240
    iput v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mRemainTime:I

    .line 241
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 263
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsNeedToRemoveLowBatteryWarning:Z

    .line 264
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    .line 299
    iput v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCallState:I

    .line 1239
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$4;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    .line 1323
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$6;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionTask:Ljava/lang/Runnable;

    .line 1916
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$14;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    .line 2115
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$20;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$20;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    .line 2122
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$21;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$21;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    .line 2429
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$24;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$24;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    .line 2479
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$25;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$25;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerTask:Ljava/lang/Runnable;

    .line 2751
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$26;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$26;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 2765
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$27;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$27;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2773
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$28;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$28;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 2788
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$29;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings$29;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    .line 319
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 320
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 321
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 322
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    invoke-virtual {v3}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->init()V

    .line 324
    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 325
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.keyguard.KeyguardService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguardConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v3, v9, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 329
    sget-boolean v3, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 330
    const-string v3, "PowerUI.Notification"

    const-string v4, "*** Keyguard: can\'t bind to com.android.systemui.keyguard.KeyguardService"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhone:Landroid/telephony/TelephonyManager;

    .line 336
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 337
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 339
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v4, ""

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    .line 341
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    .line 342
    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Support MUM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_1

    .line 347
    const-string v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 352
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-eqz v3, :cond_3

    .line 361
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 362
    .local v2, "powerSaving":I
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 370
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 380
    .end local v2    # "powerSaving":I
    :cond_1
    :goto_3
    return-void

    .line 332
    :cond_2
    sget-boolean v3, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 333
    const-string v3, "PowerUI.Notification"

    const-string v4, "*** Keyguard started"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PowerUI.Notification"

    const-string v4, "Unable to register notification listener"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-static {v3, v4, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 366
    .restart local v2    # "powerSaving":I
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v8, v5, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2

    .line 373
    :cond_4
    if-eqz v2, :cond_5

    .line 374
    iput v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_3

    .line 376
    :cond_5
    iput v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_3
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSaverNotification()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCoverLowBatteryWarning()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->cancelFaceDetectionFailureNotification()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/power/PowerNotificationWarnings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCallState:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/systemui/power/PowerNotificationWarnings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mRemainTime:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/PowerNotificationWarnings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isUseGEDBattery()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation()V

    return-void
.end method

.method private addStopSaverAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "nb"    # Landroid/app/Notification$Builder;

    .prologue
    .line 782
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0325

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PNW.stopSaver"

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 785
    return-void
.end method

.method private attachLowBatterySound(Landroid/app/Notification$Builder;)V
    .locals 11
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v10, 0x1

    .line 946
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 948
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "low_battery_sound_timeout"

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 950
    .local v1, "silenceAfter":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    sub-long v2, v6, v8

    .line 951
    .local v2, "offTime":J
    if-lez v1, :cond_1

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 954
    const-string v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen off too long ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms, limit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms): not waking up the user with low battery sound"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 960
    const-string v6, "PowerUI.Notification"

    const-string v7, "playing low battery sound. pick-a-doop!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_2
    const-string v6, "power_sounds_enabled"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 964
    const-string v6, "low_battery_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 966
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 967
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 968
    .local v5, "soundUri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 969
    sget-object v6, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 970
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playing sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private attachSECSounds(Landroid/app/Notification$Builder;I)V
    .locals 6
    .param p1, "b"    # Landroid/app/Notification$Builder;
    .param p2, "soundType"    # I

    .prologue
    const/4 v4, 0x1

    .line 1057
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1059
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "power_sounds_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1060
    const/4 v1, 0x0

    .line 1061
    .local v1, "soundPath":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1078
    const-string v1, "system/media/audio/ui/TW_Battery_caution.ogg"

    .line 1081
    :goto_0
    if-eqz v1, :cond_2

    .line 1082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1083
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1084
    sget-object v3, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 1085
    sget-boolean v3, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playing sound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    .end local v1    # "soundPath":Ljava/lang/String;
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 1063
    .restart local v1    # "soundPath":Ljava/lang/String;
    :pswitch_0
    const-string v1, "system/media/audio/ui/Charger_Connection.ogg"

    .line 1064
    goto :goto_0

    .line 1066
    :pswitch_1
    const-string v3, "low_battery_sound"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1068
    goto :goto_0

    .line 1070
    :pswitch_2
    const-string v1, "system/media/audio/ui/TW_Battery_caution.ogg"

    .line 1071
    goto :goto_0

    .line 1074
    :pswitch_3
    const-string v1, "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

    .line 1075
    goto :goto_0

    .line 1087
    .restart local v2    # "soundUri":Landroid/net/Uri;
    :cond_1
    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri is null. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1090
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_2
    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path is null. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1061
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private cancelFaceDetectionFailureNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2420
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 2421
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2424
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x7f0a0459

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2425
    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 2427
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method private dismissFullBatteryNotification()V
    .locals 4

    .prologue
    .line 2285
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing full battery notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    .line 2287
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 2288
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "full_battery"

    const/16 v2, 0x65

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2289
    return-void
.end method

.method private dismissHighVoltageChargerNotification()V
    .locals 2

    .prologue
    .line 2213
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    if-eqz v0, :cond_0

    .line 2214
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing high voltage charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    .line 2217
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 2218
    return-void
.end method

.method private dismissIncompatibleChargerNotification()V
    .locals 4

    .prologue
    .line 1641
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    if-eqz v0, :cond_0

    .line 1642
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing incompatible charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    .line 1645
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1647
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "incompatible_charger"

    const/16 v2, 0x67

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1648
    return-void
.end method

.method private dismissInvalidChargerNotification()V
    .locals 2

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing invalid charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 1104
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1105
    return-void
.end method

.method private dismissLowBatteryWarningNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 828
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsNeedToRemoveLowBatteryWarning:Z

    if-eqz v0, :cond_2

    .line 829
    :cond_0
    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing low battery notification : mLowBatteryWarning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsNeedToRemoveLowBatteryWarning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsNeedToRemoveLowBatteryWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    .line 832
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsNeedToRemoveLowBatteryWarning:Z

    .line 833
    iput v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mRemainTime:I

    .line 834
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 835
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCoverLowBatteryWarning()V

    .line 836
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCocktailLowBatteryWarning(Z)V

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 840
    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 844
    :cond_2
    return-void
.end method

.method private dismissSaverNotification()V
    .locals 2

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing saver notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    .line 790
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 791
    return-void
.end method

.method private dismissSlowChargerNotification()V
    .locals 4

    .prologue
    .line 1775
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    if-eqz v0, :cond_0

    .line 1776
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing slow charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    .line 1782
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1789
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "slow_charger"

    const/16 v2, 0x68

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1790
    :goto_0
    return-void

    .line 1778
    :cond_0
    const-string v0, "PowerUI.Notification"

    const-string v1, "slow charger notification is already dismissed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dismissWirelessChargerNotification()V
    .locals 2

    .prologue
    .line 1452
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    if-eqz v0, :cond_0

    .line 1453
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing wireless charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    .line 1457
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1459
    :cond_0
    return-void
.end method

.method private getChargeTimeRemaining()J
    .locals 4

    .prologue
    .line 1436
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_0

    .line 1437
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1442
    :goto_0
    return-wide v2

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerUI.Notification"

    const-string v2, "Error calling IBatteryStats: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1442
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getFormattedTime(J)Ljava/lang/String;
    .locals 11
    .param p1, "millis"    # J

    .prologue
    .line 2644
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isUseGEDBattery()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2645
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, p2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 2687
    :goto_0
    return-object v0

    .line 2649
    :cond_0
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 2651
    .local v4, "secondsLong":J
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .local v2, "minutes":I
    const/4 v3, 0x0

    .line 2653
    .local v3, "seconds":I
    const-wide/16 v6, 0xe10

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 2654
    const-wide/16 v6, 0xe10

    div-long v6, v4, v6

    long-to-int v1, v6

    .line 2655
    mul-int/lit16 v6, v1, 0xe10

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 2657
    :cond_1
    const-wide/16 v6, 0x3c

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 2658
    const-wide/16 v6, 0x3c

    div-long v6, v4, v6

    long-to-int v2, v6

    .line 2659
    mul-int/lit8 v6, v2, 0x3c

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 2661
    :cond_2
    long-to-int v3, v4

    .line 2663
    if-nez v1, :cond_3

    const/4 v6, 0x2

    if-lt v2, v6, :cond_3

    const/16 v6, 0x1e

    if-lt v3, v6, :cond_3

    .line 2664
    add-int/lit8 v2, v2, 0x1

    .line 2666
    :cond_3
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    .line 2667
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a03fd

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 2669
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_4
    if-lez v1, :cond_5

    .line 2670
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a03fe

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 2671
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_5
    if-lez v2, :cond_8

    .line 2672
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "el"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2673
    const/4 v6, 0x1

    if-ne v2, v6, :cond_6

    .line 2674
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a03ff

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 2676
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x1040089

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 2678
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a03ff

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 2681
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    if-le v3, v6, :cond_9

    .line 2682
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x104008d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 2684
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x104008e

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private hasBatterySettings()Z
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSaverSettings()Z
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAvailablePowerSaving()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2691
    const/4 v1, 0x0

    .line 2693
    .local v1, "isEmergencyMode":Z
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 2694
    .local v0, "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    .line 2697
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "kids_home_mode"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_0

    move v2, v4

    .line 2699
    .local v2, "isKidsMode":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    .line 2707
    .local v3, "isSetupwizard":Z
    :goto_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    :goto_2
    return v4

    .end local v2    # "isKidsMode":Z
    .end local v3    # "isSetupwizard":Z
    :cond_0
    move v2, v5

    .line 2697
    goto :goto_0

    .restart local v2    # "isKidsMode":Z
    :cond_1
    move v3, v5

    .line 2699
    goto :goto_1

    .restart local v3    # "isSetupwizard":Z
    :cond_2
    move v4, v5

    .line 2707
    goto :goto_2
.end method

.method private isUseGEDBattery()Z
    .locals 1

    .prologue
    .line 1141
    sget-boolean v0, Lcom/android/systemui/power/PowerUI$Sales;->ATT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v0, :cond_1

    .line 1142
    :cond_0
    const/4 v0, 0x1

    .line 1144
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 799
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private setSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    .line 1138
    return-void
.end method

.method private static settings(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 804
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x5c800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private showChargingInterruptionNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1278
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v5, v3, :cond_0

    .line 1279
    const v2, 0x7f0a03f7

    .line 1294
    .local v2, "messageId":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    .line 1295
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1320
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 1321
    .end local v2    # "messageId":I
    :goto_2
    return-void

    .line 1280
    :cond_0
    const/4 v3, 0x7

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v3, v4, :cond_1

    .line 1281
    const v2, 0x7f0a03f8

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 1282
    .end local v2    # "messageId":I
    :cond_1
    const/4 v3, 0x6

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v3, v4, :cond_2

    .line 1286
    const v2, 0x7f0a03f5

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 1287
    .end local v2    # "messageId":I
    :cond_2
    const/16 v3, 0x8

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v3, v4, :cond_3

    .line 1288
    const v2, 0x7f0a03f9

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 1290
    .end local v2    # "messageId":I
    :cond_3
    const-string v3, "PowerUI.Notification"

    const-string v4, "status is NotCharging but health is wrong value"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1298
    .restart local v2    # "messageId":I
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1299
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1300
    const v3, 0x7f0a03f4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1301
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1302
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1304
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1305
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$5;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1316
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1317
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1318
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private showFullBatteryNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2352
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0a03fa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2353
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0a03fc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2355
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020283

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090089

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2371
    .local v1, "nb":Landroid/app/Notification$Builder;
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachSECSounds(Landroid/app/Notification$Builder;I)V

    .line 2372
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 2375
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2376
    .local v0, "n":Landroid/app/Notification;
    const v4, -0x7f7f7f80

    iput v4, v0, Landroid/app/Notification;->commonValue:I

    .line 2378
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 2379
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020034

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2381
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v5, "full_battery"

    const/16 v6, 0x65

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2382
    return-void
.end method

.method private showHighVoltageChargerNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2248
    const-string v3, "PowerUI.Notification"

    const-string v4, "showHighVoltageChargerNotification()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0453

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2252
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020266

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0452

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "sys"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2265
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2267
    .local v0, "n":Landroid/app/Notification;
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_0

    .line 2268
    const v3, -0x7f7f7f80

    iput v3, v0, Landroid/app/Notification;->commonValue:I

    .line 2270
    :cond_0
    iget-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1

    .line 2271
    iget-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v4, 0x1020034

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2273
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v4, "afc_charger"

    const/16 v5, 0x69

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2274
    return-void
.end method

.method private showIncompatibleChargerNotification()V
    .locals 14

    .prologue
    .line 1676
    const-string v10, "PowerUI.Notification"

    const-string v11, "showIncompatibleChargerNotification()"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0430

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1679
    .local v9, "title":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0433

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1681
    .local v8, "notiText":Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f020626

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, -0x2

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const-string v11, "sys"

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106005a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1694
    .local v7, "nb":Landroid/app/Notification$Builder;
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v10, :cond_2

    .line 1695
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1700
    :goto_0
    const/4 v10, 0x3

    invoke-direct {p0, v7, v10}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachSECSounds(Landroid/app/Notification$Builder;I)V

    .line 1701
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 1703
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 1704
    .local v6, "n":Landroid/app/Notification;
    iget-object v10, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_0

    .line 1705
    iget-object v10, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v11, 0x1020034

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1707
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v11, "incompatible_charger"

    const/16 v12, 0x67

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12, v6, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1710
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v11, "com.android.systemui.power_abnormal_charging"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1711
    .local v0, "abnormalChargingSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_3

    .line 1712
    const-string v10, "DoNotShowIncompatibleChargerWarning"

    const/4 v11, 0x0

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1713
    const-string v10, "PowerUI.Notification"

    const-string v11, "Incompatible charging notice doesn\'t show again"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_1
    :goto_1
    return-void

    .line 1697
    .end local v0    # "abnormalChargingSharedPrefs":Landroid/content/SharedPreferences;
    .end local v6    # "n":Landroid/app/Notification;
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0434

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 1718
    .restart local v0    # "abnormalChargingSharedPrefs":Landroid/content/SharedPreferences;
    .restart local v6    # "n":Landroid/app/Notification;
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-nez v10, :cond_1

    .line 1719
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f040008

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1720
    .local v5, "incompatibleChargerConnectView":Landroid/view/View;
    const v10, 0x7f0f007a

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1723
    .local v3, "disableAlertCheckBox":Landroid/widget/CheckBox;
    const/4 v10, 0x2

    iget v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-ne v10, v11, :cond_4

    .line 1724
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0432

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1728
    .local v2, "dialogText":Ljava/lang/CharSequence;
    :goto_2
    const v10, 0x7f0f0088

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1730
    new-instance v10, Lcom/android/systemui/power/PowerNotificationWarnings$10;

    invoke-direct {v10, p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings$10;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1738
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1739
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1740
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1741
    const v10, 0x104000a

    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$11;

    invoke-direct {v11, p0, v3, v0}, Lcom/android/systemui/power/PowerNotificationWarnings$11;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1751
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1753
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1754
    .local v4, "incompatibleChargerConnectDialog":Landroid/app/AlertDialog;
    new-instance v10, Lcom/android/systemui/power/PowerNotificationWarnings$12;

    invoke-direct {v10, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$12;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1760
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d9

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 1761
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1762
    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 1726
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialogText":Ljava/lang/CharSequence;
    .end local v4    # "incompatibleChargerConnectDialog":Landroid/app/AlertDialog;
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0431

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "dialogText":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private showInvalidChargerNotification()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    .line 482
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0200be

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0a01e2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0a01e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 493
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 494
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v3, 0x1020034

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 497
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    if-eqz v2, :cond_1

    .line 498
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v7, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "low_battery"

    invoke-virtual {v2, v3, v7, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private showLowBatteryWarningNotification()V
    .locals 18

    .prologue
    .line 504
    const-string v13, "PowerUI.Notification"

    const-string v14, "showLowBatteryWarningNotification"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-boolean v13, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v13, :cond_a

    .line 511
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_7

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0410

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 536
    .local v11, "title":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0421

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 538
    .local v10, "text":Ljava/lang/CharSequence;
    sget-boolean v13, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-ne v13, v14, :cond_0

    .line 539
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v13, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "en"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 540
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "phone"

    const-string v15, "tablet"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 545
    :cond_0
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0200be

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    invoke-virtual {v13, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v13

    const-string v14, "sys"

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x106005a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 562
    .local v8, "nb":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    .line 563
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 565
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->hasBatterySettings()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 566
    const-string v13, "PNW.batterySettings"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 600
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    if-eqz v13, :cond_3

    .line 601
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCallState:I

    if-eqz v13, :cond_8

    .line 602
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 606
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 610
    :cond_3
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 612
    .local v7, "n":Landroid/app/Notification;
    new-instance v9, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f04000c

    invoke-direct {v9, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 613
    .local v9, "remoteViews":Landroid/widget/RemoteViews;
    const v13, 0x7f0f0091

    invoke-virtual {v9, v13, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 614
    const v13, 0x7f0f0092

    invoke-virtual {v9, v13, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 615
    const v13, 0x7f0f0094

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v15, 0x7f0a0422

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 616
    const v13, 0x7f0f0094

    const-string v14, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 629
    iput-object v9, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 630
    iput-object v9, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 632
    iget-object v13, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v13, :cond_4

    .line 633
    iget-object v13, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v14, 0x1020034

    const/16 v15, 0x8

    invoke-virtual {v13, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 636
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    if-eqz v13, :cond_9

    .line 637
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v14, "low_battery"

    const/16 v15, 0x64

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v7, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 753
    .end local v7    # "n":Landroid/app/Notification;
    .end local v8    # "nb":Landroid/app/Notification$Builder;
    .end local v9    # "remoteViews":Landroid/widget/RemoteViews;
    :goto_2
    sget-boolean v13, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    if-eqz v13, :cond_6

    .line 754
    sget-boolean v13, Lcom/android/systemui/power/PowerUI;->mScoverOpen:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 755
    :cond_5
    const-string v13, "PowerUI.Notification"

    const-string v14, "show Low battery gadget"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCocktailLowBatteryWarning(Z)V

    .line 759
    :cond_6
    return-void

    .line 514
    .end local v10    # "text":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0414

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 604
    .restart local v8    # "nb":Landroid/app/Notification$Builder;
    .restart local v10    # "text":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachLowBatterySound(Landroid/app/Notification$Builder;)V

    goto/16 :goto_1

    .line 639
    .restart local v7    # "n":Landroid/app/Notification;
    .restart local v9    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v14, "low_battery"

    const/16 v15, 0x64

    invoke-virtual {v13, v14, v15, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_2

    .line 641
    .end local v7    # "n":Landroid/app/Notification;
    .end local v8    # "nb":Landroid/app/Notification$Builder;
    .end local v9    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v10    # "text":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_e

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0410

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 644
    .restart local v11    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    .line 645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0413

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a03a7

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 667
    .restart local v10    # "text":Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    if-eqz v13, :cond_b

    .line 668
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 669
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 674
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_11

    .line 675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13, v11}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 647
    .end local v10    # "text":Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_d

    .line 648
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0412

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a03a7

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "text":Ljava/lang/CharSequence;
    goto :goto_3

    .line 651
    .end local v10    # "text":Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0411

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "text":Ljava/lang/CharSequence;
    goto :goto_3

    .line 654
    .end local v10    # "text":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a01de

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 656
    .restart local v11    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    .line 657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0417

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a03a7

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 659
    .end local v10    # "text":Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_10

    .line 660
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0416

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a03a7

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 663
    .end local v10    # "text":Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0415

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 683
    :cond_11
    const v6, 0x7f020009

    .line 685
    .local v6, "imageId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f040009

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 686
    .local v12, "v":Landroid/view/View;
    const v13, 0x7f0f0089

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    const v13, 0x7f0f008a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 690
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
    .local v2, "b":Landroid/app/AlertDialog$Builder;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 692
    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 693
    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 694
    const v13, 0x104000a

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 698
    sget-boolean v13, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-nez v13, :cond_12

    .line 699
    :cond_12
    const v3, 0x7f0a041b

    .line 700
    .local v3, "buttonTextId":I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 701
    .local v5, "dialogIntent":Landroid/content/Intent;
    if-eqz v5, :cond_13

    .line 702
    sget-boolean v13, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-eqz v13, :cond_15

    .line 703
    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.Settings$GenericPowerSavingModeActivity"

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    :cond_13
    :goto_4
    if-eqz v5, :cond_14

    .line 713
    const/high16 v13, 0x58800000    # 1.12589991E15f

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 717
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isAvailablePowerSaving()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 718
    new-instance v13, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Intent;)V

    invoke-virtual {v2, v3, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 733
    :cond_14
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 734
    .local v4, "d":Landroid/app/AlertDialog;
    new-instance v13, Lcom/android/systemui/power/PowerNotificationWarnings$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/power/PowerNotificationWarnings$2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 743
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7d9

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 744
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 746
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 747
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 705
    .end local v4    # "d":Landroid/app/AlertDialog;
    :cond_15
    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.Settings$PowerSavingModeSettingsActivity"

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4
.end method

.method private showSaverNotification()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 762
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0323

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0324

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 771
    .local v0, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->addStopSaverAction(Landroid/app/Notification$Builder;)V

    .line 772
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->hasSaverSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 775
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    if-eqz v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v2, "low_battery"

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 779
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v2, "low_battery"

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private showSlowChargerNotification()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1818
    const-string v5, "PowerUI.Notification"

    const-string v6, "showSlowChargerNotification()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0435

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1827
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0a043b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1833
    .local v3, "tickerText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0438

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1834
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f020271

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "sys"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106005a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1848
    .local v1, "nb":Landroid/app/Notification$Builder;
    const/4 v5, 0x3

    invoke-direct {p0, v1, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachSECSounds(Landroid/app/Notification$Builder;I)V

    .line 1849
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 1851
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1852
    .local v0, "n":Landroid/app/Notification;
    iget-object v5, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_0

    .line 1853
    iget-object v5, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v6, 0x1020034

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1855
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v6, "slow_charger"

    const/16 v7, 0x68

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v0, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1856
    return-void
.end method

.method private showStartSaverConfirmation()V
    .locals 3

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    .line 1134
    :goto_0
    return-void

    .line 1120
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 1121
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x7f0a01e5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 1122
    const v1, 0x10406ac

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 1123
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1124
    const v1, 0x7f0a01e6

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 1126
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$3;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1132
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 1133
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    goto :goto_0
.end method

.method private showWirelessChargerNotification()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1480
    const-string v6, "PowerUI.Notification"

    const-string v7, "showWirelessChargerNotification()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    sget-boolean v6, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v6, :cond_0

    .line 1485
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a042f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1492
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mJPNWirelessChargerPopUp:Z

    if-eqz v6, :cond_4

    .line 1493
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v7, "com.android.systemui.power_wireless_charging"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1494
    .local v5, "wirelessChargingSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_2

    .line 1495
    const-string v6, "WirelessChargingNotice"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1496
    const-string v6, "PowerUI.Notification"

    const-string v7, "Wireless charging notice doesn\'t show again"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    .end local v5    # "wirelessChargingSharedPrefs":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 1486
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    sget-boolean v6, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v6, :cond_1

    .line 1487
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a042c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1489
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a042a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1501
    .restart local v5    # "wirelessChargingSharedPrefs":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargingConnectDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_3

    .line 1502
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f04000d

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1503
    .local v4, "wirelessChargerConnectView":Landroid/view/View;
    const v6, 0x7f0f007a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1505
    .local v1, "disableAlertCheckBox":Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a042b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1506
    const v6, 0x7f0f0088

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    new-instance v6, Lcom/android/systemui/power/PowerNotificationWarnings$7;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings$7;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1516
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1517
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x1040814

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1518
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1519
    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/power/PowerNotificationWarnings$8;

    invoke-direct {v7, p0, v1, v5}, Lcom/android/systemui/power/PowerNotificationWarnings$8;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1529
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1531
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1532
    .local v3, "wirelessChargerConnectDialog":Landroid/app/AlertDialog;
    new-instance v6, Lcom/android/systemui/power/PowerNotificationWarnings$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$9;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1538
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1539
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1540
    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargingConnectDialog:Landroid/app/AlertDialog;

    .line 1551
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "disableAlertCheckBox":Landroid/widget/CheckBox;
    .end local v3    # "wirelessChargerConnectDialog":Landroid/app/AlertDialog;
    .end local v4    # "wirelessChargerConnectView":Landroid/view/View;
    .end local v5    # "wirelessChargingSharedPrefs":Landroid/content/SharedPreferences;
    :cond_3
    :goto_2
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    goto/16 :goto_1

    .line 1543
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    if-eqz v6, :cond_5

    .line 1544
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v6, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1545
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v6, v8}, Landroid/widget/Toast;->setDuration(I)V

    .line 1546
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1548
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private updateCoverLowBatteryWarning()V
    .locals 5

    .prologue
    .line 847
    const-string v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverLowBatteryWarning :: mLowBatteryWarning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04000a

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 849
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 850
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v3, "visibility"

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 851
    const-string v2, "type"

    const-string v3, "battery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 853
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 854
    return-void

    .line 850
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 416
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification mLowBatteryWarning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlaySound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSaver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInvalidCharger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_1

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showInvalidChargerNotification()V

    .line 421
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 436
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    if-eqz v0, :cond_2

    .line 423
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showLowBatteryWarningNotification()V

    .line 424
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 425
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_3

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSaverNotification()V

    .line 427
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 429
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSupportMultiUserMode:Z

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "low_battery"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 434
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 432
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "low_battery"

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private updateNotificationSEC()V
    .locals 2

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruption:Z

    if-eqz v0, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showChargingInterruptionNotification()V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    if-eqz v0, :cond_2

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showFullBatteryNotification()V

    goto :goto_0

    .line 447
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    if-eqz v0, :cond_3

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWirelessChargerNotification()V

    goto :goto_0

    .line 450
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    if-eqz v0, :cond_4

    .line 451
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showIncompatibleChargerNotification()V

    goto :goto_0

    .line 453
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    if-eqz v0, :cond_5

    .line 454
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSlowChargerNotification()V

    goto :goto_0

    .line 456
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    if-eqz v0, :cond_6

    .line 458
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    if-lez v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showHighVoltageChargerNotification()V

    goto :goto_0

    .line 461
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFail:Z

    if-eqz v0, :cond_7

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWirelessChargerNotification()V

    goto :goto_0

    .line 476
    :cond_7
    const-string v0, "PowerUI.Notification"

    const-string v1, "updateNotificationSEC : No notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelHighVoltageChargerNotification()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2469
    const-string v1, "PowerUI.Notification"

    const-string v2, "cancelHighVoltageChargerNotification()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 2471
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2473
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x7f0a0453

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2474
    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    .line 2476
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v2, "afc_charger"

    const/16 v3, 0x69

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2477
    return-void
.end method

.method public cancelOverheatShutdownWarningTask()V
    .locals 2

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2049
    return-void
.end method

.method public dismissBatterySwellingRecoveryNotice()V
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1929
    :cond_0
    return-void
.end method

.method public dismissBatterySwellingWarning()V
    .locals 2

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1872
    return-void
.end method

.method public dismissChargingInterruptionWarning()V
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1260
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruption:Z

    .line 1261
    return-void
.end method

.method public dismissChargingNotice()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1428
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1430
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "charging_state"

    const/16 v2, 0x6f

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1431
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    .line 1432
    return-void
.end method

.method public dismissFullBatteryNotice()V
    .locals 3

    .prologue
    .line 2280
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing full battery notice: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissFullBatteryNotification()V

    .line 2282
    return-void
.end method

.method public dismissHighVoltageChargerNotice()V
    .locals 0

    .prologue
    .line 2209
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighVoltageChargerNotification()V

    .line 2210
    return-void
.end method

.method public dismissIncompatibleChargerWarning()V
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1637
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissIncompatibleChargerNotification()V

    .line 1638
    return-void
.end method

.method public dismissInvalidChargerWarning()V
    .locals 0

    .prologue
    .line 1098
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissInvalidChargerNotification()V

    .line 1099
    return-void
.end method

.method public dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 823
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V

    .line 825
    return-void
.end method

.method public dismissOverheatShutdownNotice()V
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2142
    :cond_0
    return-void
.end method

.method public dismissOverheatShutdownWarning()V
    .locals 2

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2055
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2058
    :cond_0
    return-void
.end method

.method public dismissPowersavingmodeNotice()V
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1975
    :cond_0
    return-void
.end method

.method public dismissSlowChargerWarning()V
    .locals 0

    .prologue
    .line 1771
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSlowChargerNotification()V

    .line 1772
    return-void
.end method

.method public dismissWirelessChargingDisconnectWarning()V
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargingDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargingDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1583
    :cond_0
    return-void
.end method

.method public dismissWirelessChargingNotice()V
    .locals 0

    .prologue
    .line 1448
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissWirelessChargerNotification()V

    .line 1449
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2713
    const-string v0, "mSaver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2714
    const-string v0, "mLowBatteryWarning="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2715
    const-string v0, "mPlaySound="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2716
    const-string v0, "mInvalidCharger="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2717
    const-string v0, "mShowing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2718
    const-string v0, "mSaverConfirmation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    const-string v0, "not null"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2719
    return-void

    .line 2718
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCocktailLowBatteryWarningShowing()Z
    .locals 1

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    return v0
.end method

.method public isInvalidChargerWarningShowing()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    return v0
.end method

.method public isKeyguardInputRestricted()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2722
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2723
    .local v0, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v0, :cond_0

    .line 2733
    :goto_0
    return v3

    .line 2731
    :cond_0
    const-string v1, "PowerUI.Notification"

    const-string v2, "isKeyguardInputRestricted(): NO SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2737
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2738
    .local v0, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v0, :cond_0

    .line 2748
    :goto_0
    return v3

    .line 2746
    :cond_0
    const-string v1, "PowerUI.Notification"

    const-string v2, "isKeyguardShowingAndNotOccluded(): NO SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isLowBatteryWarningShowing()Z
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFaceDetectionFailureNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0a0459

    const/4 v8, 0x0

    .line 2388
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    .line 2389
    const-string v5, "PowerUI.Notification"

    const-string v6, "Face detection is already failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :goto_0
    return-void

    .line 2393
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2395
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    .line 2396
    const-string v5, "PowerUI.Notification"

    const-string v6, "notifyFaceDetectionFailureNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2400
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0a03fa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2401
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2403
    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    .line 2404
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 2405
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const v6, 0x7f02052e

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 2406
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 2407
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2410
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2411
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2413
    .local v2, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2415
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v9, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2416
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public notifyHighVoltageChargerNotification()V
    .locals 8

    .prologue
    const v6, 0x7f0a0453

    .line 2442
    const-string v3, "PowerUI.Notification"

    const-string v4, "notifyHighVoltageChargerNotification()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2445
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 2446
    const-string v3, "PowerUI.Notification"

    const-string v4, "notifyHighVoltageChargerNotification : fail to get NotificationManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :goto_0
    return-void

    .line 2449
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2451
    .local v2, "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    if-nez v3, :cond_1

    .line 2452
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    .line 2453
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const v4, 0x7f020266

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 2454
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 2455
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2456
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2458
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040007

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2459
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2460
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 2463
    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2464
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 14
    .param p1, "soundType"    # I

    .prologue
    .line 2492
    const/4 v10, 0x1

    if-ne p1, v10, :cond_0

    .line 2494
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v5

    .line 2495
    .local v5, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/app/enterprise/knoxcustom/SystemManager;->getChargerConnectionSoundEnabledState()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2496
    const-string v10, "PowerUI.Notification"

    const-string v11, "playSound : Knox Custom disabled SOUND_TYPE_CHARGER_CONNECTION"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    .end local v5    # "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    :goto_0
    return-void

    .line 2503
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2507
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 2508
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 2509
    .local v1, "audioMode":I
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x4

    if-eq v10, v1, :cond_2

    const/4 v10, 0x3

    if-eq v10, v1, :cond_2

    .line 2510
    const-string v10, "PowerUI.Notification"

    const-string v11, "recording so doesn\'t play sound"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2514
    .end local v1    # "audioMode":I
    :cond_1
    const/4 v1, 0x0

    .line 2517
    .restart local v1    # "audioMode":I
    :cond_2
    const-string v10, "PowerUI.Notification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playSound : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v10, :cond_3

    .line 2520
    const-string v10, "PowerUI.Notification"

    const-string v11, "playSound : NotificationPlayer is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    new-instance v10, Lcom/android/systemui/media/NotificationPlayer;

    const-string v11, "PowerUI.Notification"

    invoke-direct {v10, v11}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 2523
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v10, :cond_3

    .line 2524
    const-string v10, "PowerUI.Notification"

    const-string v11, "playSound : fail to new NotificationPlayer"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2530
    :cond_3
    if-eqz v0, :cond_8

    .line 2531
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 2536
    .local v7, "ringerMode":I
    :goto_1
    const/4 v10, 0x2

    if-ne v10, v7, :cond_4

    const/4 v10, 0x1

    if-ne v10, p1, :cond_4

    sget-boolean v10, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    if-eqz v10, :cond_4

    .line 2537
    const/4 v7, 0x1

    .line 2538
    const-string v10, "PowerUI.Notification"

    const-string v11, "ring mode but vibrates in Note3"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "alertoncall_mode"

    const/4 v12, 0x1

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const/4 v6, 0x1

    .line 2542
    .local v6, "notifyDuringCalls":Z
    :goto_2
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    .line 2543
    .local v9, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v9, :cond_7

    .line 2545
    const/4 v4, 0x1

    .line 2546
    .local v4, "isIdle":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_b

    .line 2547
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    if-eqz v10, :cond_5

    .line 2549
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v4, 0x1

    .line 2555
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    const/4 v10, 0x4

    if-eq v10, v1, :cond_6

    const/4 v10, 0x3

    if-ne v10, v1, :cond_7

    .line 2558
    :cond_6
    if-eqz v6, :cond_c

    .line 2559
    const-string v10, "PowerUI.Notification"

    const-string v11, "calling so vibrate"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2560
    const/4 v7, 0x1

    .line 2572
    .end local v4    # "isIdle":Z
    :cond_7
    :goto_4
    const/4 v10, 0x2

    if-ne v10, v7, :cond_d

    .line 2574
    packed-switch p1, :pswitch_data_0

    .line 2590
    :try_start_1
    const-string v10, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2594
    .local v8, "soundUri":Landroid/net/Uri;
    :goto_5
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v10, v11, v8, v12, v13}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 2595
    const-string v10, "PowerUI.Notification"

    const-string v11, "RINGER_MODE_NORMAL"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2623
    .end local v8    # "soundUri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 2624
    .local v2, "exception":Ljava/lang/Exception;
    const-string v10, "PowerUI.Notification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playSound : Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2533
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v6    # "notifyDuringCalls":Z
    .end local v7    # "ringerMode":I
    .end local v9    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    const/4 v7, 0x2

    .restart local v7    # "ringerMode":I
    goto/16 :goto_1

    .line 2541
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2549
    .restart local v4    # "isIdle":Z
    .restart local v6    # "notifyDuringCalls":Z
    .restart local v9    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 2553
    :cond_b
    :try_start_2
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v4

    goto :goto_3

    .line 2562
    :cond_c
    const-string v10, "PowerUI.Notification"

    const-string v11, "calling and doesn\'t notify during calls"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2566
    :catch_1
    move-exception v2

    .line 2567
    .local v2, "exception":Landroid/os/RemoteException;
    const-string v10, "PowerUI.Notification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playSound : Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2576
    .end local v2    # "exception":Landroid/os/RemoteException;
    .end local v4    # "isIdle":Z
    :pswitch_0
    :try_start_3
    const-string v10, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2577
    .restart local v8    # "soundUri":Landroid/net/Uri;
    goto :goto_5

    .line 2579
    .end local v8    # "soundUri":Landroid/net/Uri;
    :pswitch_1
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "low_battery_sound"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2580
    .restart local v8    # "soundUri":Landroid/net/Uri;
    goto :goto_5

    .line 2582
    .end local v8    # "soundUri":Landroid/net/Uri;
    :pswitch_2
    const-string v10, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2583
    .restart local v8    # "soundUri":Landroid/net/Uri;
    goto :goto_5

    .line 2586
    .end local v8    # "soundUri":Landroid/net/Uri;
    :pswitch_3
    const-string v10, "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2587
    .restart local v8    # "soundUri":Landroid/net/Uri;
    goto/16 :goto_5

    .line 2596
    .end local v8    # "soundUri":Landroid/net/Uri;
    :cond_d
    const/4 v10, 0x1

    if-ne v10, v7, :cond_f

    .line 2598
    packed-switch p1, :pswitch_data_1

    .line 2608
    const/16 v3, 0xb

    .line 2612
    .local v3, "hapticFeedback":I
    :goto_6
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v10, :cond_e

    .line 2613
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    const/4 v11, -0x1

    const/4 v12, 0x0

    sget-object v13, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v10, v3, v11, v12, v13}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2617
    :goto_7
    const-string v10, "PowerUI.Notification"

    const-string v11, "RINGER_MODE_VIBRATE"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2600
    .end local v3    # "hapticFeedback":I
    :pswitch_4
    const/16 v3, 0xa

    .line 2601
    .restart local v3    # "hapticFeedback":I
    goto :goto_6

    .line 2605
    .end local v3    # "hapticFeedback":I
    :pswitch_5
    const/16 v3, 0xb

    .line 2606
    .restart local v3    # "hapticFeedback":I
    goto :goto_6

    .line 2615
    :cond_e
    const-string v10, "PowerUI.Notification"

    const-string v11, "playSound : Vibrator is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2618
    .end local v3    # "hapticFeedback":I
    :cond_f
    if-nez v7, :cond_10

    .line 2619
    const-string v10, "PowerUI.Notification"

    const-string v11, "RINGER_MODE_SILENT"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2621
    :cond_10
    const-string v10, "PowerUI.Notification"

    const-string v11, "unknown RINGER_MODE"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2598
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public runBatterySwellingTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1863
    return-void
.end method

.method public runOverheatShutdownTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2039
    return-void
.end method

.method public runOverheatShutdownWarningTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2044
    return-void
.end method

.method public showBatterySwellingRecoveryNotice()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1933
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 1935
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1936
    const-string v3, "PowerUI.Notification"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_1
    move v2, v3

    .line 1933
    goto :goto_0

    .line 1940
    .restart local v2    # "isShutdownOn":Z
    :cond_2
    sget-boolean v4, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_3

    .line 1941
    const-string v3, "PowerUI.Notification"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1945
    :cond_3
    const-string v4, "PowerUI.Notification"

    const-string v5, "showBatterySwellingRecoveryNotice()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 1949
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1950
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1951
    const v3, 0x7f0a0425

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1952
    const v3, 0x7f0a0426

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1953
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1955
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1956
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$15;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$15;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1962
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1963
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1964
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    .line 1965
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1
.end method

.method public showBatterySwellingWarning()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1876
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 1878
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1879
    const-string v3, "PowerUI.Notification"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v3

    .line 1876
    goto :goto_0

    .line 1883
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    sget-boolean v4, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_2

    .line 1884
    const-string v3, "PowerUI.Notification"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1888
    :cond_2
    const-string v4, "PowerUI.Notification"

    const-string v5, "showBatterySwellingWarning()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_3

    .line 1892
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1893
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1894
    const v3, 0x7f0a0423

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1895
    const v3, 0x7f0a0424

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1896
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1898
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1899
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$13;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1905
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1906
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1907
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    .line 1909
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 1911
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    .line 1913
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public showChargingInterruptionWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1265
    const-string v2, "PowerUI.Notification"

    const-string v3, "showChargingInterruptionWarning()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1267
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1268
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show Charging interruption warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :goto_0
    return-void

    .line 1272
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruption:Z

    .line 1273
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showChargingNotice(I)V
    .locals 20
    .param p1, "chargingType"    # I

    .prologue
    .line 1334
    const-string v9, ""

    .line 1335
    .local v9, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1336
    .local v8, "oldChargingType":I
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1338
    .local v6, "oldChargingTime":J
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1339
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getChargeTimeRemaining()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1341
    const-string v12, "PowerUI.Notification"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "showChargingNotice oldChargingType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " currentChargingType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " oldChargingTime : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mChargingTime : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v8, v12, :cond_0

    .line 1424
    :goto_0
    return-void

    .line 1348
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    packed-switch v12, :pswitch_data_0

    .line 1380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0429

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1381
    .local v11, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0402

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1385
    .local v10, "tickerText":Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_5

    .line 1386
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0401

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1393
    :goto_2
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f020266

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    invoke-virtual {v12, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, -0x2

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const-string v13, "sys"

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1060059

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1408
    .local v5, "nb":Landroid/app/Notification$Builder;
    sget-boolean v12, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_2

    .line 1409
    :cond_1
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1412
    :cond_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_6

    .line 1413
    new-instance v12, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v12, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v12, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1419
    .local v4, "n":Landroid/app/Notification;
    :goto_3
    iget-object v12, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v12, :cond_3

    .line 1420
    iget-object v12, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v13, 0x1020034

    const/16 v14, 0x8

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1422
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v13, "charging_state"

    const/16 v14, 0x6f

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v13, v14, v4, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1423
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    goto/16 :goto_0

    .line 1350
    .end local v4    # "n":Landroid/app/Notification;
    .end local v5    # "nb":Landroid/app/Notification$Builder;
    .end local v10    # "tickerText":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :pswitch_0
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mUseOtherChargingText:Z

    if-eqz v12, :cond_4

    .line 1351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a02fc

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1354
    .restart local v11    # "title":Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0402

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1355
    .restart local v10    # "tickerText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1353
    .end local v10    # "tickerText":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0429

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "title":Ljava/lang/CharSequence;
    goto :goto_4

    .line 1358
    .end local v11    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0452

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1359
    .restart local v11    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0453

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1360
    .restart local v10    # "tickerText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1363
    .end local v10    # "tickerText":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0427

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1364
    .restart local v11    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0404

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1365
    .restart local v10    # "tickerText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1368
    .end local v10    # "tickerText":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0428

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1369
    .restart local v11    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0405

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1370
    .restart local v10    # "tickerText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1373
    .end local v10    # "tickerText":Ljava/lang/CharSequence;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0435

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1374
    .restart local v11    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0a043b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1375
    .restart local v10    # "tickerText":Ljava/lang/CharSequence;
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a0438

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1376
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1377
    goto/16 :goto_1

    .line 1389
    :cond_5
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v14, 0x7f0a02c1

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 1415
    .restart local v5    # "nb":Landroid/app/Notification$Builder;
    :cond_6
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .restart local v4    # "n":Landroid/app/Notification;
    goto/16 :goto_3

    .line 1348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public showFullBatteryNotice()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 2301
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2302
    .local v1, "uri_Service1":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getSealedState"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2305
    .local v9, "cr_SealedState":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 2307
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2308
    const-string v0, "getSealedState"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2309
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2310
    .local v3, "uri_Service2":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getSealedHideNotificationMessages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 2313
    .local v8, "cr_SealedHideNotification":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2315
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2316
    const-string v0, "getSealedHideNotificationMessages"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2318
    const-string v0, "PowerUI.Notification"

    const-string v2, "now KNOX state : Don\'t show notifications in Sealed Mode if Battery Full Warning Notifications set to Disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2322
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2327
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2349
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 2322
    .restart local v3    # "uri_Service2":Landroid/net/Uri;
    .restart local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2327
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2334
    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2335
    const-string v0, "PowerUI.Notification"

    const-string v2, "GATE tool is running so don\'t show Full Charge notice"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2322
    .restart local v3    # "uri_Service2":Landroid/net/Uri;
    .restart local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2327
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2339
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    .line 2340
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 2342
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 2343
    .local v11, "powerManager":Landroid/os/PowerManager;
    if-nez v11, :cond_4

    .line 2344
    const-string v0, "PowerUI.Notification"

    const-string v2, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2347
    :cond_4
    const v0, 0x10000006

    const-string v2, "PowerUI.Notification"

    invoke-virtual {v11, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 2348
    .local v10, "fullBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v4, 0x4e20

    invoke-virtual {v10, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method public showHighVoltageChargerNotice()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2222
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 2223
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 2224
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show High Voltage Charger notice while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :goto_0
    return-void

    .line 2228
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 2229
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show High Voltage Charger notice"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2243
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    .line 2244
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showIncompatibleChargerWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1652
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1653
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1654
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show Incompatible charging warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :goto_0
    return-void

    .line 1658
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 1659
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show Incompatible charging warning"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1663
    :cond_2
    sget-boolean v2, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-nez v2, :cond_3

    .line 1664
    const-string v1, "PowerUI.Notification"

    const-string v2, "showIncompatibleChargerWarning should be called in VZW"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1667
    :cond_3
    const-string v2, "PowerUI.Notification"

    const-string v3, "showIncompatibleChargerWarning()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 1671
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    .line 1672
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showInvalidChargerWarning()V
    .locals 1

    .prologue
    .line 1109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 1110
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1111
    return-void
.end method

.method public showLowBatteryWarning(Z)V
    .locals 14
    .param p1, "playSound"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 866
    const-string v0, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show low battery warning: level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] playSound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "SHOULD_SHUT_DOWN"

    invoke-static {v0, v4, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v13, v0, :cond_0

    move v11, v13

    .line 872
    .local v11, "isShutdownOn":Z
    :cond_0
    if-eqz v11, :cond_1

    .line 873
    const-string v0, "PowerUI.Notification"

    const-string v2, "Shutdown is ON"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :goto_0
    return-void

    .line 877
    :cond_1
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-eq v0, v4, :cond_2

    .line 878
    const-string v0, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON and Not critical Low battery"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 897
    :cond_2
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 898
    .local v1, "uri_Service1":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getSealedState"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 901
    .local v9, "cr_SealedState":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 903
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 904
    const-string v0, "getSealedState"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 905
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 906
    .local v3, "uri_Service2":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getSealedHideNotificationMessages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 909
    .local v8, "cr_SealedHideNotification":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 911
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 912
    const-string v0, "getSealedHideNotificationMessages"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 914
    const-string v0, "PowerUI.Notification"

    const-string v2, "now KNOX state : Don\'t show notifications in Sealed Mode if Battery Low Warning Notifications set to Disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 923
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 918
    :cond_3
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 923
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 930
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 931
    iput-boolean v13, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z

    .line 932
    iput-boolean v13, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIsNeedToRemoveLowBatteryWarning:Z

    .line 933
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 934
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCoverLowBatteryWarning()V

    .line 936
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 937
    .local v12, "powerManager":Landroid/os/PowerManager;
    if-nez v12, :cond_6

    .line 938
    const-string v0, "PowerUI.Notification"

    const-string v2, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 918
    .end local v12    # "powerManager":Landroid/os/PowerManager;
    .restart local v3    # "uri_Service2":Landroid/net/Uri;
    .restart local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 923
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 941
    .restart local v12    # "powerManager":Landroid/os/PowerManager;
    :cond_6
    const v0, 0x10000006

    const-string v2, "PowerUI.Notification"

    invoke-virtual {v12, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 942
    .local v10, "fullBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v4, 0x3a98

    invoke-virtual {v10, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0
.end method

.method public showOverheatShutdownNotice()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2146
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 2148
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2149
    const-string v5, "PowerUI.Notification"

    const-string v6, "don\'t show Overheat shutdown notice while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v5

    .line 2146
    goto :goto_0

    .line 2153
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_2

    .line 2154
    const-string v5, "PowerUI.Notification"

    const-string v6, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2158
    :cond_2
    const-string v6, "PowerUI.Notification"

    const-string v7, "showOverheatShutdownNotice()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    sget-boolean v6, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v6, :cond_5

    .line 2164
    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-ne v6, v7, :cond_4

    .line 2165
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0441

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2166
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0443

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2176
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_3

    .line 2178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2179
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2180
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2181
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2183
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/power/PowerNotificationWarnings$22;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$22;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2192
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$23;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$23;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2198
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 2199
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2200
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    .line 2202
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1

    .line 2168
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0440

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2169
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0442

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2

    .line 2172
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0447

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2173
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0448

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public showOverheatShutdownWarning()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2062
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 2064
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2065
    const-string v5, "PowerUI.Notification"

    const-string v6, "don\'t show Overheat shutdown warning while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v5

    .line 2062
    goto :goto_0

    .line 2069
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    const-string v6, "PowerUI.Notification"

    const-string v7, "showOverheatShutdownWarning()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownNotice()V

    .line 2077
    sget-boolean v6, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v6, :cond_4

    .line 2078
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a043c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2079
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a043f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2080
    .local v0, "button_text":Ljava/lang/CharSequence;
    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-ne v6, v7, :cond_3

    .line 2081
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a043e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2091
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-nez v6, :cond_2

    .line 2092
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2093
    .local v1, "d":Landroid/app/ProgressDialog;
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2094
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2095
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2096
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$18;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$18;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v0, v5}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2103
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$19;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$19;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2108
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 2109
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 2110
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    .line 2112
    .end local v1    # "d":Landroid/app/ProgressDialog;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1

    .line 2083
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a043d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2

    .line 2086
    .end local v0    # "button_text":Ljava/lang/CharSequence;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0444

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2087
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0446

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2088
    .restart local v0    # "button_text":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0445

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public showPowersavingmodeNotice()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1979
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 1981
    .local v3, "isShutdownOn":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1982
    const-string v4, "PowerUI.Notification"

    const-string v5, "don\'t show Power saving mode notice while Shutdown is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    :goto_1
    return-void

    .end local v3    # "isShutdownOn":Z
    :cond_0
    move v3, v4

    .line 1979
    goto :goto_0

    .line 1986
    .restart local v3    # "isShutdownOn":Z
    :cond_1
    sget-boolean v5, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v5, :cond_2

    .line 1987
    const-string v4, "PowerUI.Notification"

    const-string v5, "FTA Mode is ON so don\'t show Power saving mode notice"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1991
    :cond_2
    const-string v5, "PowerUI.Notification"

    const-string v6, "showPowersavingmodeNotice()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_4

    .line 1995
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1996
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1997
    const v4, 0x7f0a03a0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1998
    const v4, 0x7f0a039f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2000
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2001
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 2002
    const-string v4, "com.samsung.settings.PSM_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2003
    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2005
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2006
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$16;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$16;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Intent;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2021
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2022
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$17;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$17;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2028
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2029
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2030
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    .line 2032
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1
.end method

.method public showSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    .line 409
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->dismiss()V

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 413
    return-void
.end method

.method public showSlowChargerWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1794
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1795
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1796
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show Slow charging warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :goto_0
    return-void

    .line 1800
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 1801
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show Slow charging warning"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1805
    :cond_2
    sget-boolean v2, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-nez v2, :cond_3

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-eq v2, v3, :cond_3

    .line 1806
    const-string v1, "PowerUI.Notification"

    const-string v2, "showSlowChargerWarning should be called in VZW or Tablet"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1809
    :cond_3
    const-string v2, "PowerUI.Notification"

    const-string v3, "showSlowChargerWarning()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 1813
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    .line 1814
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showWirelessChargingDisconnectWarning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1587
    const-string v1, "PowerUI.Notification"

    const-string v2, "showWirelessChargingDisconnectWarning()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    sget-boolean v1, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v1, :cond_0

    .line 1590
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show Wireless charging disconnect warning"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :goto_0
    return-void

    .line 1594
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0456

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1596
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 1597
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 1599
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1626
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_0

    .line 1601
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public showWirelessChargingNotice()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1463
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1464
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1465
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show wireless charging popup while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :goto_0
    return-void

    .line 1469
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 1470
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON and don\'t show wireless charging popup"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1474
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    .line 1475
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1476
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_0
.end method

.method public turnOnScreen()V
    .locals 5

    .prologue
    .line 2630
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 2631
    .local v1, "powerManager":Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 2632
    const-string v2, "PowerUI.Notification"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :goto_0
    return-void

    .line 2637
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2638
    :catch_0
    move-exception v0

    .line 2639
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(IIJIIII)V
    .locals 3
    .param p1, "batteryLevel"    # I
    .param p2, "bucket"    # I
    .param p3, "screenOffTime"    # J
    .param p5, "batteryHealth"    # I
    .param p6, "batteryOnline"    # I
    .param p7, "deviceType"    # I
    .param p8, "plugType"    # I

    .prologue
    .line 389
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    .line 390
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 391
    if-ltz p2, :cond_1

    .line 392
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 396
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 397
    iput-wide p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    .line 399
    iput p5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    .line 400
    iput p6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryOnline:I

    .line 401
    iput p7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    .line 402
    iput p8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    .line 404
    return-void

    .line 393
    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ge p2, v0, :cond_0

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    goto :goto_0
.end method

.method public updateCocktailLowBatteryWarning(Z)V
    .locals 11
    .param p1, "visibility"    # Z

    .prologue
    .line 1000
    sget-boolean v6, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    if-nez v6, :cond_1

    .line 1043
    :cond_0
    return-void

    .line 1003
    :cond_1
    const-string v6, "PowerUI.Notification"

    const-string v7, "update Low battery gadget"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    .line 1008
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v1

    .line 1009
    .local v1, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v8, "com.android.systemui.power.PowerNotificationWarnings$CocktailProvider"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 1011
    .local v0, "cocktailIds":[I
    if-eqz p1, :cond_a

    .line 1012
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0a01df

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1013
    .local v5, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x12

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/16 v9, 0xa

    if-lt v6, v9, :cond_2

    const/4 v6, 0x3

    :goto_0
    const/16 v9, 0x21

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1014
    new-instance v7, Landroid/text/style/TypefaceSpan;

    const-string v6, "Roboto_Medium"

    invoke-direct {v7, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/16 v9, 0xa

    if-lt v6, v9, :cond_3

    const/4 v6, 0x3

    :goto_1
    const/16 v9, 0x21

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1016
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f04000b

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1017
    .local v4, "remoteViews":Landroid/widget/RemoteViews;
    const v6, 0x7f0f008d

    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1018
    const v7, 0x7f0f008e

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_4

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0410

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1019
    const v7, 0x7f0f008b

    const-string v8, "setBackgroundColor"

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v9, -0x2

    if-ne v6, v9, :cond_5

    const-string v6, "#9e2416"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    :goto_3
    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1020
    const v7, 0x7f0f008f

    const-string v8, "setBackgroundColor"

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v9, -0x2

    if-ne v6, v9, :cond_6

    const-string v6, "#c9331b"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    :goto_4
    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1021
    const v6, 0x7f0f008f

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1022
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    if-eqz v6, :cond_8

    .line 1023
    const v7, 0x7f0f008c

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/16 v8, 0xa

    if-gt v6, v8, :cond_7

    const v6, 0x7f02050b

    :goto_5
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1028
    :goto_6
    new-instance v6, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v6, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/widget/RemoteViews;)V

    const v7, 0x10004

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v6

    const/16 v7, 0x9f

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setDisplayPolicy(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v3

    .line 1034
    .local v3, "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 1035
    aget v6, v0, v2

    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    .line 1036
    aget v6, v0, v2

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    .line 1034
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1013
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    .end local v4    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_2
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 1014
    :cond_3
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 1018
    .restart local v4    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0414

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1019
    :cond_5
    const-string v6, "#04222d"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 1020
    :cond_6
    const-string v6, "#1d424f"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    .line 1023
    :cond_7
    const v6, 0x7f020509

    goto :goto_5

    .line 1025
    :cond_8
    const v7, 0x7f0f008c

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_9

    const v6, 0x7f02050a

    :goto_8
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_6

    :cond_9
    const v6, 0x7f020508

    goto :goto_8

    .line 1039
    .end local v4    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v5    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 1040
    aget v6, v0, v2

    const v7, 0x10004

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->closeCocktail(II)V

    .line 1039
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public updateLowBatteryWarning()V
    .locals 0

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 819
    return-void
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 1116
    return-void
.end method
