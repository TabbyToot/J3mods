.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController;
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CTCSimObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EthernetHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    }
.end annotation


# static fields
.field public static final ACTION_AIRPLANE_OFF:Ljava/lang/String; = "com.android.systemui.action.airplane_off"

.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

.field public static final ACTION_UPDATE_NETWORK_EMERGENCY_ONLY:Ljava/lang/String; = "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

.field static final CHATTY:Z = false

.field private static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field static final DEBUG:Z = true

.field private static final EVENT_CHANGE_FAKE_CALL_STATE:I = 0x47

.field private static final EVENT_REFRESHVIEW:I = 0x48

.field private static final EVENT_UPDATE_SIGNAL_STRENGTH:I = 0x46

.field private static final EXTRA_IS_VALID_PLMN:Ljava/lang/String; = "isValidPlmn"

.field protected static final INET_CONDITION_THRESHOLD:I = 0x32

.field public static final NETWORK_MANUALLY_SELECTED:Ljava/lang/String; = "network_manually_selected"

.field static final REQ_AIRPLANE_NOTIFICATION:I = 0x333

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field static final REQ_ROAMING_NOTIFICATION:I = 0x222

.field private static final RJI_WIFI:Ljava/lang/String; = "Jio WiFi"

.field private static final RSSI_AIRPLANE_STATE:I = 0x0

.field private static final RSSI_IN_SVC_STATE:I = 0x2

.field private static final RSSI_NO_SVC_STATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "StatusBar.NetworkController"

.field protected static mAppopsStrictEnabled:Z

.field private static sCodeToState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field LTE_ON_CDMA_FALSE:I

.field LTE_ON_CDMA_TRUE:I

.field LTE_ON_CDMA_UNKNOWN:I

.field isUpdateSignalForced:Z

.field mATTMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mATTNetworkName:Ljava/lang/String;

.field mAirplaneIconId:I

.field protected mAirplaneMode:Z

.field mAlertDialog:Landroid/app/AlertDialog;

.field mAlwaysShowCdmaRssi:Z

.field private mBluetoothTetherDisconnected:Z

.field protected mBluetoothTetherIconId:I

.field protected mBluetoothTethered:Z

.field mBootDataSvcAcquired:Z

.field mBootVoiceSvcAcquired:Z

.field private mCAIndicator:Z

.field public mCTCSimEnabledFirst:Z

.field public mCTCSimObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CTCSimObserver;

.field private mCarrierText:Ljava/lang/String;

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnected:Z

.field protected mConnectedNetworkType:I

.field protected mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionEthernet:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCurSvcSate:I

.field private mCurrentSignalStrength:I

.field mDataActive:Z

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataIconList:[I

.field mDataNetType:I

.field private mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

.field private mDataRoamingSetting:Z

.field private mDataRoamingTypeForVZW:I

.field protected mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeATTstyle:Z

.field protected mDataTypeBrand:Ljava/lang/String;

.field mDataTypeDisabledIconId:I

.field mDataTypeIconId:I

.field mDataTypeIconIdCombinedSignal:I

.field mDataTypeTMOstyle:Z

.field mDefaultDisplay:Landroid/view/Display;

.field private mDemoDataTypeIconId:I

.field private mDemoInetCondition:I

.field private mDemoMobileLevel:I

.field private mDemoMode:Z

.field private mDemoQSDataTypeIconId:I

.field private mDemoWifiLevel:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mDisplayState:I

.field private mEFSPN:I

.field mEmergencyViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;",
            ">;"
        }
    .end annotation
.end field

.field private mEmgcCallState:Z

.field mEthernetActivity:I

.field mEthernetActivityIconId:I

.field mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

.field mEthernetConnected:Z

.field mEthernetIconId:I

.field mEthernetManager:Landroid/net/EthernetManager;

.field private mFakeSignalStrength:I

.field private final mHandler:Landroid/os/Handler;

.field protected mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field protected mInetCondition:I

.field mIsCmccCard:Z

.field protected mIsWimaxEnabled:Z

.field private mKeepFakeDuration:I

.field private mKeepFakeState:Z

.field protected mLastAirplaneMode:Z

.field mLastBluetoothTethered:Z

.field private mLastCB:Ljava/lang/String;

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field protected mLastConnectedNetworkType:I

.field mLastDataDirectionIconId:I

.field mLastDataSignalIconId:I

.field mLastDataState:I

.field mLastDataTypeIconId:I

.field mLastEthernetActivityIconId:I

.field protected mLastInetCondition:I

.field private mLastLocale:Ljava/util/Locale;

.field private mLastMPTCPSettingEnabled:Z

.field mLastMobileActivityIconId:I

.field mLastMobileDataEnabled:Z

.field private mLastNwboosterDataTypeIconId:I

.field private mLastNwboosterRilEnabled:Z

.field private mLastNwboosterSettingEnabled:Z

.field mLastPhoneSignalIconId:I

.field mLastPhoneState:I

.field private mLastPlmn:Ljava/lang/String;

.field mLastRoamingIconId:I

.field mLastSglteMode:I

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field mLastSignalLevel:I

.field mLastSimIconId:I

.field private mLastSpn:Ljava/lang/String;

.field mLastVoiceRadioState:I

.field mLastVoiceRegState:I

.field mLastWifiActivityIconId:I

.field mLastWifiConnected:Z

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

.field private mMPTCPObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;

.field private mMPTCPSettingEnabled:Z

.field protected mMaxLevelOfSignalStrengthIndicator:I

.field private mMessageUpdateNotDone:Z

.field mMobileActivityIconId:I

.field mMobileDataEnabled:Z

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreIconView:Landroid/view/View;

.field private mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

.field public mNetworkManuallySelected:Ljava/lang/String;

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mNoSim:Z

.field mNoSimIconId:I

.field private mNwboosterDataTypeIconId:I

.field private mNwboosterRilEnabled:Z

.field private mNwboosterSettingEnabled:Z

.field protected mOperator:Ljava/lang/String;

.field private mOperatorLogoIconView:Landroid/view/View;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSvcSate:I

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSWifiIconId:I

.field mRoamingIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mSglteMode:I

.field mShow4GforLTE:Z

.field private mShowAirPlane:Z

.field mShowAtLeastThreeGees:Z

.field private mShowLAC:Z

.field mShowPhoneRSSIForData:Z

.field mShowRsrpSignalLevelforLTE:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSingleLine:Z

.field private mTargetSignalStrength:I

.field private mTransitionState:Z

.field protected mVoiceCapable:Z

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiCallingConnected:Z

.field mWifiCaptiveNotLogin:Z

.field mWifiCarrierIcon:[[I

.field protected mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field protected mWimaxConnected:Z

.field protected mWimaxExtraState:I

.field protected mWimaxIconId:I

.field protected mWimaxIdle:Z

.field protected mWimaxSignal:I

.field protected mWimaxState:I

.field protected mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    .line 4293
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->initializeCodeToState()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sCodeToState:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 374
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 141
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 142
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    .line 143
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 144
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    .line 145
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    .line 148
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v4, v4, v7

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 165
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 166
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 167
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 168
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    .line 169
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    .line 170
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneState:I

    .line 172
    const-string v4, ""

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 188
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 189
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 190
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    move-object v4, v5

    .line 191
    check-cast v4, [[I

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    .line 200
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetIconId:I

    .line 201
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetActivityIconId:I

    .line 202
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetActivity:I

    .line 207
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 210
    const v4, 0x7f0204d2

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 214
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    .line 217
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 218
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 219
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 220
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    .line 221
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 222
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    .line 223
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    .line 224
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 225
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    .line 229
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 230
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 232
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    .line 234
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    .line 235
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    .line 238
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 239
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 241
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 242
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 244
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataSignalIconId:I

    .line 245
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSglteMode:I

    .line 246
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSglteMode:I

    .line 257
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    .line 258
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    .line 259
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I

    .line 260
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I

    .line 261
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    .line 262
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    .line 263
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    .line 264
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    .line 269
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayState:I

    .line 270
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isUpdateSignalForced:Z

    .line 274
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    .line 275
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    .line 279
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    .line 281
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I

    .line 282
    const/16 v4, 0x1b58

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeDuration:I

    .line 287
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 288
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 289
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 290
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    .line 291
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 294
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 295
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 296
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 297
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 298
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 299
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    .line 300
    const-string v4, ""

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 304
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    .line 307
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCB:Ljava/lang/String;

    .line 316
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    .line 322
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBootVoiceSvcAcquired:Z

    .line 323
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBootDataSvcAcquired:Z

    .line 1217
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 4258
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_UNKNOWN:I

    .line 4259
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_FALSE:I

    .line 4260
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_TRUE:I

    .line 4280
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    .line 4281
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    .line 4285
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    .line 4289
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    .line 4290
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    .line 4291
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEFSPN:I

    .line 4296
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkManuallySelected:Ljava/lang/String;

    .line 4346
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    .line 4348
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 4362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    .line 4685
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

    .line 4754
    const v4, 0x7f02031f

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4755
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 4756
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 4757
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 4758
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    .line 4759
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 4780
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    .line 4781
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMPTCPSettingEnabled:Z

    .line 4801
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCTCSimEnabledFirst:Z

    .line 4970
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 4971
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    .line 4972
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    .line 4975
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastEthernetActivityIconId:I

    .line 375
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 379
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 381
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 383
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    .line 385
    const v4, 0x7f0b001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 386
    const v4, 0x7f0b001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 387
    const v4, 0x112005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 389
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0b0024

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    .line 391
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0b0028

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 397
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateEthernetIcons()V

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 401
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0b001b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    .line 403
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v8, 0x7f0a01f2

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    .line 404
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v8, 0x1040395

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    .line 406
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 408
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->createWifiHandler()V

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->createEthernetHandler()V

    .line 418
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 419
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    const-string v4, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    const-string v4, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string v4, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->m4GDataDistinguishable:Z

    if-eqz v4, :cond_1

    .line 442
    :cond_0
    const-string v4, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    :cond_1
    const-string v4, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v4, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v4

    if-nez v4, :cond_2

    .line 453
    const-string v4, "com.samsung.intent.action.WIFI_CAPTIVE_NOT_LOGIN"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    :cond_2
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v8, "KT"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 457
    const-string v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x1120063

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 461
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v4, :cond_4

    .line 462
    const-string v4, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v4, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v4, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    :cond_4
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v4, :cond_5

    const-string v4, "USA"

    const-string v8, "ro.csc.country_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_7

    .line 469
    :cond_6
    const-string v4, "com.android.systemui.action.airplane_off"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    :cond_7
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseWifiCallingIcon:Z

    if-eqz v4, :cond_8

    .line 479
    const-string v4, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v4, "com.sec.epdg.EPDG_NOTAVAILABLE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v4, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    :cond_8
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 491
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 502
    const v4, 0x1120053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "data_roaming"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

    invoke-virtual {v4, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateStatusBarNetworkSettings()V

    .line 514
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "mobile_data"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_d

    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    .line 516
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ne v4, v6, :cond_9

    .line 518
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

    .line 519
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "mobile_data"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

    const/4 v9, -0x2

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 523
    :cond_9
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

    .line 524
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "smart_bonding"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 529
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v4, :cond_a

    .line 530
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;

    .line 531
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "mptcp_value_internal"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 536
    :cond_a
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v6, "LGT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v6, "KT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 537
    :cond_b
    const-string v4, "display"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 539
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultDisplay:Landroid/view/Display;

    .line 540
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 551
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_c
    return-void

    :cond_d
    move v4, v7

    .line 514
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeDuration:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCurrentRSSIState()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return p1
.end method

.method static synthetic access$2208(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2210(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->displaySignalStrength(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCtcCard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isPsOnly()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private applyCHN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    const v4, 0x7f020346

    const/4 v3, 0x2

    .line 5023
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyCHN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5025
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v0, :cond_0

    .line 5026
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5027
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 5028
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 5029
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 5033
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 5035
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 5039
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",make Data type icon visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5040
    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    .line 5043
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-nez v0, :cond_4

    .line 5044
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCtcCard()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v1, 0x7f0202aa

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v1, 0x7f02029f

    if-ne v0, v1, :cond_4

    .line 5046
    :cond_3
    const v0, 0x7f02029b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5047
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "DataType icon is changed to 1x for indicate cdma call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    :cond_4
    return-void
.end method

.method private applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 3
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    const v2, 0x7f0202dd

    .line 5164
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-nez v0, :cond_0

    .line 5165
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileActivityIcon(I)V

    .line 5168
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetActivityIconId:I

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiActivityIcon(I)V

    .line 5169
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v0, :cond_6

    .line 5170
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5171
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconIdCombinedSignal:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setRoamingIcon(I)V

    .line 5185
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    .line 5186
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setBtTetherState(Z)V

    .line 5187
    return-void

    .line 5168
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_0

    .line 5173
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    const v1, 0x7f0202b8

    if-ne v0, v1, :cond_4

    .line 5174
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 5180
    :cond_3
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setRoamingIcon(I)V

    goto :goto_1

    .line 5175
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    const v1, 0x7f02039d

    if-ne v0, v1, :cond_5

    .line 5176
    const v0, 0x7f0203a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_2

    .line 5177
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    const v1, 0x7f0202d9

    if-ne v0, v1, :cond_3

    .line 5178
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_2

    .line 5183
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setRoamingIcon(I)V

    goto :goto_1
.end method

.method private applyJPN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 3
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 5145
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyJPN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 5148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCaptiveNotLogin:Z

    if-nez v0, :cond_1

    .line 5149
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster, wifi and data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5150
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    .line 5156
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setBtTetherState(Z)V

    .line 5157
    return-void

    .line 5153
    :cond_1
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5154
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    goto :goto_0
.end method

.method private applyOpen(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 0
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 5160
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 5161
    return-void
.end method

.method private applyPermanentDataIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 5054
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyPermanentDataIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 5057
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_0

    .line 5058
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->shouldShowPermanentDataIcon()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setHasService(Z)V

    .line 5060
    :cond_0
    return-void
.end method

.method private applySGLTE(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 18
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 5077
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "applyForSGLTE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5078
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCHN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 5081
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5082
    .local v15, "dataTypeIcon":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    .line 5083
    .local v17, "mobileActivityIconId":I
    const/16 v16, 0x1

    .line 5084
    .local v16, "mShowDataIcon":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_2

    .line 5085
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 5090
    .local v6, "csState":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isSglteMode()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_5

    .line 5091
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v1, :cond_3

    .line 5092
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 5093
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 5094
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 5095
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: DataState is unknown."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v2, 0x7f0202cb

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v2, 0x7f0202cd

    if-ne v1, v2, :cond_1

    .line 5107
    :cond_0
    const/16 v16, 0x0

    .line 5108
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: mShowDataIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5131
    :cond_1
    :goto_2
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: set mShowPhoneRSSIForData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5133
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_3
    if-eqz v16, :cond_b

    move v10, v15

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    const v1, 0x7f0202f2

    if-ne v15, v1, :cond_c

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v14

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v14}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 5142
    return-void

    .line 5087
    .end local v6    # "csState":I
    :cond_2
    const/4 v6, 0x3

    .restart local v6    # "csState":I
    goto/16 :goto_0

    .line 5096
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-ne v6, v1, :cond_4

    .line 5097
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 5098
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 5099
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 5100
    const v1, 0x7f020627

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 5101
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: DataState is DATA_DISCONNECTED."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5103
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 5104
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    goto/16 :goto_1

    .line 5110
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 5111
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 5112
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 5113
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 5114
    if-eqz v15, :cond_6

    .line 5115
    const v15, 0x7f0202cb

    .line 5117
    :cond_6
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: RssiDisplayNum = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5118
    :cond_7
    const/4 v1, 0x1

    if-eq v6, v1, :cond_8

    const/4 v1, 0x3

    if-ne v6, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v1

    if-nez v1, :cond_9

    .line 5119
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 5120
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 5121
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 5122
    const/4 v15, 0x0

    .line 5123
    const/16 v17, 0x0

    .line 5124
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: No service & RssiDisplayNum = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5126
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 5127
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 5128
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 5129
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: roam"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5133
    :cond_a
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_3

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_5
.end method

.method private applyTMO(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 5011
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyTMO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5012
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 5014
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-nez v0, :cond_2

    .line 5017
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    .line 5018
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "No Data Icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    :cond_2
    return-void
.end method

.method private applyVZW(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 6
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4978
    const-string v1, "StatusBar.NetworkController"

    const-string v4, "applyVZW"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4979
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4981
    const/4 v0, -0x1

    .line 4982
    .local v0, "currentPhoneType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 4983
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 4987
    :cond_0
    const-string v1, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyVZW : mDataTypeDisabledIconId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsSVDO:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-eq v0, v3, :cond_1

    .line 4991
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0202be

    :goto_0
    if-ne v4, v1, :cond_1

    .line 4993
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0202bd

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4998
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v4, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v1, :cond_5

    .line 4999
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5000
    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setHasService(Z)V

    .line 5008
    :cond_2
    :goto_2
    return-void

    .line 4991
    :cond_3
    const v1, 0x7f0202c1

    goto :goto_0

    .line 4993
    :cond_4
    const v1, 0x7f0202c0

    goto :goto_1

    .line 5002
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v1, :cond_2

    .line 5003
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v1, :cond_7

    :cond_6
    move v1, v3

    :goto_3
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setHasService(Z)V

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method private checkCarrierWifiIcon()V
    .locals 6

    .prologue
    .line 2942
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2944
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 2945
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 2946
    .local v2, "ssid":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 2960
    .local v1, "networkid":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2961
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCarrierWifiIcon : getSSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getNetworkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isLGTWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2964
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getLGTWifiIcon(I)[[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    .line 2973
    .end local v1    # "networkid":I
    .end local v2    # "ssid":Ljava/lang/String;
    :goto_0
    return-void

    .line 2969
    :cond_0
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "checkCarrierWifiIcon : mWifiManager.getConnectionInfo() == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    :cond_1
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    goto :goto_0
.end method

.method private final displaySignalStrength(I)V
    .locals 7
    .param p1, "signalStrength"    # I

    .prologue
    const v6, 0x7f0202d9

    const v5, 0x7f0202b8

    .line 1948
    const/4 v0, -0x1

    .line 1951
    .local v0, "iconLevel":I
    move v0, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1953
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1954
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : !isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_2

    .line 1957
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1962
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1964
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isVoiceRatCDMA()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1965
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 1994
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1995
    .local v1, "iconList":[I
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1997
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1998
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataSignalIconId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1999
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    .line 2000
    return-void

    .line 1958
    .end local v1    # "iconList":[I
    :cond_2
    if-gez v0, :cond_0

    .line 1959
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_0

    .line 1967
    :cond_3
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_1

    .line 1972
    :cond_4
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_6

    .line 1975
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1980
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1981
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCdmaEriIcon()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 1982
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1976
    :cond_6
    if-gez v0, :cond_5

    .line 1977
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_2

    .line 1983
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1985
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isVoiceRatCDMA()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1986
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 1990
    :goto_3
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhone.isNetworkRoaming(), mRoamingIconId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1988
    :cond_8
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_3
.end method

.method private getAreaInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 632
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 633
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .local v0, "areaInfo":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    .line 636
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 638
    .local v1, "mccMnc":I
    if-lez v1, :cond_0

    .line 639
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v1    # "mccMnc":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 642
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final getCdmaEriIcon()I
    .locals 8

    .prologue
    const v3, 0x7f0202b8

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 5253
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    .line 5254
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 5255
    .local v0, "iconIndex":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 5257
    .local v1, "iconMode":I
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iconMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5259
    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 5265
    if-ne v0, v7, :cond_1

    .line 5284
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_0
    :goto_0
    return v2

    .line 5262
    .restart local v0    # "iconIndex":I
    .restart local v1    # "iconMode":I
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVZWEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 5268
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v4, :cond_0

    .line 5269
    packed-switch v1, :pswitch_data_1

    .line 5275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v4, v7, :cond_0

    move v2, v3

    .line 5277
    goto :goto_0

    :pswitch_1
    move v2, v3

    .line 5271
    goto :goto_0

    .line 5273
    :pswitch_2
    const v2, 0x7f02039d

    goto :goto_0

    .line 5259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 5269
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentRSSIState()I
    .locals 1

    .prologue
    .line 1940
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z

    if-nez v0, :cond_0

    .line 1941
    const/4 v0, 0x1

    .line 1943
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getDataServiceState()I
    .locals 7

    .prologue
    .line 4480
    const/4 v0, 0x1

    .line 4481
    .local v0, "dataServiceState":I
    const/4 v3, 0x0

    .line 4484
    .local v3, "getDataState":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDataRegState"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4485
    if-eqz v3, :cond_0

    .line 4486
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4488
    :cond_0
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataServiceState: dataServiceState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v0

    .line 4498
    .end local v0    # "dataServiceState":I
    .local v1, "dataServiceState":I
    :goto_0
    return v1

    .line 4490
    .end local v1    # "dataServiceState":I
    .restart local v0    # "dataServiceState":I
    :catch_0
    move-exception v2

    .line 4491
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState: NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4492
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0

    .line 4493
    .end local v1    # "dataServiceState":I
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "dataServiceState":I
    :catch_1
    move-exception v2

    .line 4494
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState: IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4495
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0

    .line 4496
    .end local v1    # "dataServiceState":I
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "dataServiceState":I
    :catch_2
    move-exception v2

    .line 4497
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState: InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4498
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0
.end method

.method private getDataTypeIconIdForSPR()I
    .locals 4

    .prologue
    .line 6754
    const/4 v0, 0x0

    .line 6755
    .local v0, "dataType":I
    const/4 v1, 0x0

    .line 6757
    .local v1, "dormantDataType":I
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6759
    :cond_0
    const v0, 0x7f0202d0

    .line 6760
    const v1, 0x7f0202cf

    .line 6769
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .end local v1    # "dormantDataType":I
    :goto_1
    return v1

    .line 6761
    .restart local v1    # "dormantDataType":I
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 6762
    const v0, 0x7f0202e0

    .line 6763
    const v1, 0x7f0202df

    goto :goto_0

    .line 6765
    :cond_2
    const v0, 0x7f0202a8

    .line 6766
    const v1, 0x7f0202a5

    goto :goto_0

    :cond_3
    move v1, v0

    .line 6769
    goto :goto_1
.end method

.method private getKTWifiActivityIcon()I
    .locals 2

    .prologue
    .line 3034
    const v0, 0x7f020333

    .line 3036
    .local v0, "imgId":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    packed-switch v1, :pswitch_data_0

    .line 3053
    :goto_0
    return v0

    .line 3038
    :pswitch_0
    const v0, 0x7f020331

    .line 3039
    goto :goto_0

    .line 3041
    :pswitch_1
    const v0, 0x7f020334

    .line 3042
    goto :goto_0

    .line 3044
    :pswitch_2
    const v0, 0x7f020332

    .line 3045
    goto :goto_0

    .line 3047
    :pswitch_3
    const v0, 0x7f020333

    .line 3048
    goto :goto_0

    .line 3036
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLGTWifiActivityIcon()I
    .locals 2

    .prologue
    .line 3006
    const v0, 0x7f0204dc

    .line 3008
    .local v0, "imgId":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    packed-switch v1, :pswitch_data_0

    .line 3023
    :goto_0
    return v0

    .line 3010
    :pswitch_0
    const v0, 0x7f0204da

    .line 3011
    goto :goto_0

    .line 3013
    :pswitch_1
    const v0, 0x7f0204d9

    .line 3014
    goto :goto_0

    .line 3016
    :pswitch_2
    const v0, 0x7f0204db

    .line 3017
    goto :goto_0

    .line 3019
    :pswitch_3
    const v0, 0x7f0204dc

    goto :goto_0

    .line 3008
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLGTWifiIcon(I)[[I
    .locals 6
    .param p1, "networkid"    # I

    .prologue
    .line 2987
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 2989
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 2990
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2991
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 2992
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLGTWifiIcon: networkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "eap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phase2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    if-nez v3, :cond_0

    .line 2996
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 3002
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    check-cast v3, [[I

    goto :goto_0
.end method

.method private getPhoneSignalDescriptionIconId(I)I
    .locals 2
    .param p1, "iconLevel"    # I

    .prologue
    .line 4461
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 4472
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 4474
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 4463
    .end local v0    # "iconId":I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 4464
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4466
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 4467
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4469
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 4470
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4461
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1265
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 1409
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private final getRoamingIcon()V
    .locals 7

    .prologue
    const v6, 0x7f0202d9

    const/4 v5, 0x1

    const v4, 0x7f0202b8

    const/4 v3, 0x0

    .line 5192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v1, :cond_2

    .line 5194
    :cond_1
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 5195
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "NoService, mRoamingIconId = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5248
    :goto_0
    return-void

    .line 5196
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getFemtocellIndicator()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 5198
    const v1, 0x7f0202ba

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 5199
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "getRoamingIcon() : FemtoCell"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5200
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    if-eq v1, v5, :cond_7

    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mLTEOnly:Z

    if-nez v1, :cond_7

    .line 5203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCdmaEriIcon()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 5205
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdma(), isCdmaEri(), mRoamingIconId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5207
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v1, :cond_6

    .line 5210
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 5211
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdma(), !isCdmaEri(), isNetworkRoaming(), mRoamingIconId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    :goto_1
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "isCdma(), !isCdmaEri(), mRoamingIconId = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5213
    :cond_6
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_1

    .line 5218
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v1, :cond_f

    .line 5225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isVoiceRatCDMA()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5226
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 5239
    :goto_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mRoamingIconForJPN:Z

    if-eqz v1, :cond_8

    .line 5240
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 5242
    :cond_8
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone.isNetworkRoaming(), mRoamingIconId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5228
    :cond_9
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 5231
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5233
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isVodafoneAUWithXSA()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isNationalRoaming()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_b
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->TWO:Z

    if-nez v1, :cond_c

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->SEE:Z

    if-eqz v1, :cond_e

    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isNationalRoamingForTWO()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5234
    :cond_d
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_2

    .line 5236
    :cond_e
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_2

    .line 5245
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_f
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 5246
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "Nothing, mRoamingIconId = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getUpdateDataNetType()V
    .locals 3

    .prologue
    .line 5310
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5312
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    if-eqz v0, :cond_12

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 5313
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType(): mDataTypeBrand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5314
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5315
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateORGDataNetType()V

    .line 5414
    :goto_0
    return-void

    .line 5317
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOYBDataNetType()V

    goto :goto_0

    .line 5320
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5321
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOYADataNetType()V

    goto :goto_0

    .line 5323
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOYCDataNetType()V

    goto :goto_0

    .line 5326
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OLB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOLBDataNetType()V

    goto :goto_0

    .line 5329
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VD2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5330
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVD2DataNetType()V

    goto :goto_0

    .line 5332
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5333
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVIDDataNetType()V

    goto :goto_0

    .line 5335
    :cond_6
    const-string v0, "MNX"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5337
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateLTE4GICONDataNetType()V

    goto :goto_0

    .line 5339
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "TMH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTMHDataNetType()V

    goto :goto_0

    .line 5342
    :cond_9
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updatePCTDataNetType()V

    goto/16 :goto_0

    .line 5345
    :cond_a
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CDR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5347
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->update4GLTEICONDataNetType()V

    goto/16 :goto_0

    .line 5349
    :cond_c
    const-string v0, "ANC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "DGT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "COL"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "CTU"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "BVO"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "TTT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "CGU"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5356
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateLTEICONDataNetType()V

    goto/16 :goto_0

    .line 5358
    :cond_e
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTFGDataNetType()V

    goto/16 :goto_0

    .line 5361
    :cond_f
    const-string v0, "SFR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5362
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSFRDataNetType()V

    goto/16 :goto_0

    .line 5364
    :cond_10
    const-string v0, "IUS"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateIUSDataNetType()V

    goto/16 :goto_0

    .line 5367
    :cond_11
    const-string v0, "LTE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateLTEICONDataNetType()V

    goto/16 :goto_0

    .line 5373
    :cond_12
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5412
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    goto/16 :goto_0

    .line 5375
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    goto/16 :goto_0

    .line 5378
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateATTDataNetType()V

    goto/16 :goto_0

    .line 5381
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAIODataNetType()V

    goto/16 :goto_0

    .line 5384
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTMODataNetType()V

    goto/16 :goto_0

    .line 5387
    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVZWDataNetType()V

    goto/16 :goto_0

    .line 5390
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSPRDataNetType()V

    goto/16 :goto_0

    .line 5394
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCMCCDataNetType()V

    goto/16 :goto_0

    .line 5397
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCUDataNetType()V

    goto/16 :goto_0

    .line 5401
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateZVVDataNetType()V

    .line 5402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateZVVLACInfo()V

    goto/16 :goto_0

    .line 5405
    :pswitch_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateZTMDataNetType()V

    goto/16 :goto_0

    .line 5409
    :pswitch_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateUSCCDataNetType()V

    goto/16 :goto_0

    .line 5373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v0, 0x7f0202b8

    const/4 v1, 0x1

    .line 5288
    if-ne p1, v1, :cond_1

    .line 5289
    const/4 v0, 0x0

    .line 5303
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 5291
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 5295
    :pswitch_2
    const v0, 0x7f02039d

    goto :goto_0

    .line 5297
    :pswitch_3
    if-nez p2, :cond_2

    .line 5298
    const v0, 0x7f0202ba

    goto :goto_0

    .line 5299
    :cond_2
    if-ne p2, v1, :cond_0

    .line 5300
    const v0, 0x7f02039f

    goto :goto_0

    .line 5291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1702
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1703
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1708
    :pswitch_0
    const/4 v0, 0x1

    .line 1711
    :cond_0
    :pswitch_1
    return v0

    .line 1703
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 2927
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 2928
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2938
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2932
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2933
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2934
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2935
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 2938
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private inetConditionForNetwork(I)I
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    const/4 v0, 0x1

    .line 2239
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    if-ne v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initializeCodeToState()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 561
    .local v0, "codeToState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-object v0
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaLTE()Z
    .locals 2

    .prologue
    .line 4263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_TRUE:I

    if-ne v0, v1, :cond_0

    .line 4264
    const/4 v0, 0x1

    .line 4266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCmccCard()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 7075
    const-string v1, ""

    .line 7076
    .local v1, "simNum":Ljava/lang/String;
    const-string v0, ""

    .line 7078
    .local v0, "imsi":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1

    .line 7091
    :cond_0
    :goto_0
    return v2

    .line 7081
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 7083
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 7084
    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7087
    :cond_2
    const-string v3, "46000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46002"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46007"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45412"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7088
    :cond_3
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "isCmccCard "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7089
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isCtcCard()Z
    .locals 3

    .prologue
    .line 7095
    const-string v1, "gsm.sim.cdmaoperator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7097
    .local v0, "cdmaNumeric":Ljava/lang/String;
    const-string v1, "46003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45507"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46012"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7098
    :cond_0
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "isCtcCard "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7099
    const/4 v1, 0x1

    .line 7101
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEurTMO()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 7153
    const-string v1, "DTM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7186
    :cond_0
    :goto_0
    return v0

    .line 7155
    :cond_1
    const-string v1, "DTR"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7157
    const-string v1, "DDE"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7159
    const-string v1, "COA"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7161
    const-string v1, "COS"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7163
    const-string v1, "CRO"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7165
    const-string v1, "MBM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7167
    const-string v1, "MAX"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7169
    const-string v1, "TRG"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7171
    const-string v1, "TMH"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7173
    const-string v1, "TMS"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7175
    const-string v1, "TMT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7177
    const-string v1, "TMZ"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7179
    const-string v1, "TNL"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7181
    const-string v1, "TPL"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7183
    const-string v1, "TTR"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7186
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isGsmRoaming()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3904
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3909
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKTWifi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 3027
    const-string v1, "ollehWiFi"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ollehWiFi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3030
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLGTWifi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2976
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2977
    const-string v1, "U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5G_U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+zone_5G"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2983
    :cond_0
    :goto_0
    return v0

    .line 2980
    :cond_1
    const-string v1, "U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5G_U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+zone_5G"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2983
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4734
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNationalRoaming()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 7192
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7193
    .local v3, "simNumeric":Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7195
    .local v1, "plmnNumeric":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 7196
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7197
    .local v2, "simMCC":Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7199
    .local v0, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7200
    const/4 v4, 0x1

    .line 7203
    .end local v0    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "simMCC":Ljava/lang/String;
    :cond_0
    return v4
.end method

.method private isNationalRoamingForTWO()Z
    .locals 2

    .prologue
    .line 7218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "21901"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7219
    const/4 v0, 0x1

    .line 7221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPsOnly()Z
    .locals 6

    .prologue
    .line 7233
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7234
    .local v1, "configPsOnlyList":Ljava/lang/String;
    const/4 v0, 0x0

    .line 7235
    .local v0, "configPsOnly":[Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 7236
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7239
    :cond_0
    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7241
    .local v3, "simNumeric":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 7242
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 7243
    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7244
    const/4 v4, 0x1

    .line 7248
    .end local v2    # "i":I
    :goto_1
    return v4

    .line 7242
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7248
    .end local v2    # "i":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isQsTypeIconWide(I)Z
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 856
    const v0, 0x7f0200fc

    if-eq v0, p1, :cond_0

    const v0, 0x7f0200ec

    if-eq v0, p1, :cond_0

    const v0, 0x7f0200ef

    if-eq v0, p1, :cond_0

    const v0, 0x7f0200f1

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRJILNetwork()Z
    .locals 4

    .prologue
    .line 5064
    const-string v0, ""

    .line 5065
    .local v0, "mOperatorName":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 5067
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRJILNetwork:mOperatorName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    if-eqz v0, :cond_1

    const-string v1, "Reliance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Jio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5069
    :cond_0
    const/4 v1, 0x1

    .line 5071
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 1

    .prologue
    .line 2545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2546
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v0

    .line 2548
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSglteMode()Z
    .locals 2

    .prologue
    .line 7141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    .line 7142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSglteMode:I

    .line 7143
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSglteMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7144
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "isSglteMode is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7145
    const/4 v0, 0x1

    .line 7149
    :goto_0
    return v0

    .line 7148
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "isSglteMode is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTypeIconWide(I)Z
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 851
    const v0, 0x7f0202f1

    if-eq v0, p1, :cond_0

    const v0, 0x7f0202e7

    if-eq v0, p1, :cond_0

    const v0, 0x7f0202e9

    if-eq v0, p1, :cond_0

    const v0, 0x7f0202ea

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVodafoneAUWithXSA()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7207
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7209
    .local v0, "simNumeric":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 7210
    const-string v2, "50503"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "XSA"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 7213
    :cond_0
    return v1
.end method

.method private isVoiceRatCDMA()Z
    .locals 2

    .prologue
    .line 1659
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1660
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 1661
    .local v0, "voiceRat":I
    packed-switch v0, :pswitch_data_0

    .line 1671
    .end local v0    # "voiceRat":I
    :cond_0
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1668
    .restart local v0    # "voiceRat":I
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1661
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isWCDMA()Z
    .locals 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 554
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 555
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataEnabled(Z)V

    goto :goto_0

    .line 557
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    :cond_0
    return-void
.end method

.method private radioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 4503
    packed-switch p1, :pswitch_data_0

    .line 4540
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4505
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4507
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 4509
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 4511
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 4513
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 4515
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 4518
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 4520
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 4522
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 4524
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 4526
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 4528
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 4530
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 4532
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 4534
    :pswitch_e
    const/16 v0, 0x11

    goto :goto_0

    .line 4536
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 4538
    :pswitch_10
    const/16 v0, 0x12

    goto :goto_0

    .line 4503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method private refreshLocale()V
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 1771
    return-void
.end method

.method private refreshMPTCPIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 6
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    const/4 v5, 0x2

    .line 4919
    const/4 v3, 0x0

    .line 4920
    .local v3, "typeIconId":I
    const/4 v2, 0x0

    .line 4921
    .local v2, "gigaIconId":I
    const/4 v0, 0x0

    .line 4922
    .local v0, "activity":I
    const/4 v1, 0x0

    .line 4924
    .local v1, "activityIconId":I
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v4, v5, :cond_0

    .line 4925
    const/4 v4, 0x0

    invoke-interface {p1, v4, v3, v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMPTCPIndicators(ZIII)V

    .line 4962
    :goto_0
    return-void

    .line 4927
    :cond_0
    const v3, 0x7f020340

    .line 4929
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v4, :cond_1

    .line 4930
    const v2, 0x7f02033e

    .line 4935
    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v4, v5, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v4, :cond_2

    .line 4936
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    or-int v0, v4, v5

    .line 4945
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 4956
    const v1, 0x7f0204ac

    .line 4960
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    invoke-interface {p1, v4, v3, v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMPTCPIndicators(ZIII)V

    goto :goto_0

    .line 4932
    :cond_1
    const v2, 0x7f02033f

    goto :goto_1

    .line 4937
    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v4, v5, :cond_3

    .line 4938
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    goto :goto_2

    .line 4939
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v4, :cond_4

    .line 4940
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    goto :goto_2

    .line 4942
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 4947
    :pswitch_0
    const v1, 0x7f0204a7

    .line 4948
    goto :goto_3

    .line 4950
    :pswitch_1
    const v1, 0x7f0204b7

    .line 4951
    goto :goto_3

    .line 4953
    :pswitch_2
    const v1, 0x7f0204a9

    .line 4954
    goto :goto_3

    .line 4945
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 17
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4824
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v4, v1, v2

    .line 4825
    .local v4, "nwboosterWifiIconId":I
    const v5, 0x7f0204b5

    .line 4826
    .local v5, "nwboosterDataActivityIconId":I
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v1, :cond_e

    .line 4827
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eqz v1, :cond_d

    .line 4828
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_3

    const/16 v16, 0x1

    .line 4830
    .local v16, "showBoosterIcon":Z
    :goto_0
    if-eqz v16, :cond_c

    .line 4831
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eqz v1, :cond_b

    .line 4832
    const/4 v13, 0x0

    .line 4833
    .local v13, "nw_data_in":Z
    const/4 v14, 0x0

    .line 4835
    .local v14, "nw_data_out":Z
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 4837
    :cond_0
    const/4 v13, 0x1

    .line 4847
    :cond_1
    :goto_1
    if-eqz v13, :cond_8

    if-eqz v14, :cond_8

    .line 4848
    const v5, 0x7f0204b4

    .line 4857
    :cond_2
    :goto_2
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 4872
    .end local v13    # "nw_data_in":Z
    .end local v14    # "nw_data_out":Z
    :goto_3
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshNwBoosterIndicator - setNWBoosterIndicators(true), showBoosterIcon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    .end local v16    # "showBoosterIcon":Z
    :goto_4
    return-void

    .line 4828
    :cond_3
    const/16 v16, 0x0

    goto :goto_0

    .line 4838
    .restart local v13    # "nw_data_in":Z
    .restart local v14    # "nw_data_out":Z
    .restart local v16    # "showBoosterIcon":Z
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 4840
    :cond_5
    const/4 v14, 0x1

    goto :goto_1

    .line 4841
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4843
    :cond_7
    const/4 v13, 0x1

    .line 4844
    const/4 v14, 0x1

    goto :goto_1

    .line 4849
    :cond_8
    if-eqz v13, :cond_9

    if-nez v14, :cond_9

    .line 4850
    const v5, 0x7f0204b3

    goto :goto_2

    .line 4851
    :cond_9
    if-nez v13, :cond_a

    if-eqz v14, :cond_a

    .line 4852
    const v5, 0x7f0204b6

    goto :goto_2

    .line 4853
    :cond_a
    if-nez v13, :cond_2

    if-nez v14, :cond_2

    .line 4854
    const v5, 0x7f0204b5

    goto :goto_2

    .line 4861
    .end local v13    # "nw_data_in":Z
    .end local v14    # "nw_data_out":Z
    :cond_b
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x4

    aget v9, v1, v2

    .line 4863
    .local v9, "mDimNWBoosterWifiIcon":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    const v10, 0x7f0204b4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v12, 0x0

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_3

    .line 4868
    .end local v9    # "mDimNWBoosterWifiIcon":I
    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 4870
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshNwBoosterIndicator - setNWBoosterIndicators(false)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4876
    .end local v16    # "showBoosterIcon":Z
    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 4878
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshNwBoosterIndicator - setNWBoosterIndicators(false)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4883
    :cond_e
    const v15, 0x7f020349

    .line 4884
    .local v15, "nwboosterOnIconId":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_12

    .line 4885
    const v5, 0x7f0204b3

    .line 4886
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eqz v1, :cond_10

    .line 4887
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v1, :cond_f

    .line 4888
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZI)V

    .line 4893
    :goto_5
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshNwBoosterIndicator - setNWBoosterIndicators(Running)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4890
    :cond_f
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_5

    .line 4895
    :cond_10
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v1, :cond_11

    .line 4896
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZI)V

    .line 4901
    :goto_6
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshNwBoosterIndicator - setNWBoosterIndicators(notRunning)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4898
    :cond_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_6

    .line 4905
    :cond_12
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v1, :cond_13

    .line 4906
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZI)V

    .line 4911
    :goto_7
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshNwBoosterIndicator - setNWBoosterIndicators(false)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4908
    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_7
.end method

.method private refreshOperatorLogoView()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 4200
    const-string v1, "ORANGE"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4201
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v1, :cond_0

    .line 4202
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "showOperatorLogoIcon !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCurrentRSSIState()I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 4205
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4207
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4208
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    .line 4246
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowKeyguardOperatorLogoIcon:Z

    if-eqz v1, :cond_1

    .line 4247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.action.OPERATOR_LOGO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4248
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4249
    const-string v1, "logo_show"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4252
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4254
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 4209
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 4210
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4212
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4213
    invoke-static {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 4215
    :cond_3
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4217
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4218
    invoke-static {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 4223
    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v1, :cond_0

    .line 4224
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "showOperatorLogoIcon !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCurrentRSSIState()I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 4227
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4229
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4230
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    .line 4231
    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 4232
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4233
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4234
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4235
    invoke-static {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    .line 4237
    :cond_6
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4238
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4239
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4240
    invoke-static {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    .line 4251
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v1, "logo_show"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private sendRefreshViewsMessage()V
    .locals 4

    .prologue
    const/16 v1, 0x48

    .line 1921
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1928
    :goto_0
    return-void

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1925
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "areaInfo"    # Ljava/lang/StringBuilder;

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 651
    .local v2, "location":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_0

    .line 653
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 655
    .local v1, "lac":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/16 v4, 0xff

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    const v4, 0xfffe

    if-eq v1, v4, :cond_0

    const v4, 0xffff

    if-eq v1, v4, :cond_0

    .line 657
    rem-int/lit8 v0, v1, 0x64

    .line 658
    .local v0, "areaCode":I
    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sCodeToState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 660
    .local v3, "state":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 661
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    .end local v0    # "areaCode":I
    .end local v1    # "lac":I
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCarrierText()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1467
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText()V

    .line 1469
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1470
    .local v2, "v":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_2

    .line 1471
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v3, :cond_3

    .line 1472
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1473
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    .line 1521
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    if-eqz v3, :cond_10

    .line 1522
    invoke-virtual {v2}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v3, v4, :cond_2

    .line 1523
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1524
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1525
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1526
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    .line 1527
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1529
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 1543
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1476
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x10403ad

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1478
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkManuallySelected:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkManuallySelected:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1480
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    goto :goto_1

    .line 1482
    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    goto :goto_1

    .line 1485
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isGsmRoaming()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1486
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1487
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEFSPN:I

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEFSPN:I

    if-ne v3, v5, :cond_8

    .line 1488
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1489
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1491
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_1

    .line 1494
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1495
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_1

    .line 1499
    :cond_9
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1500
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEFSPN:I

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEFSPN:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_c

    .line 1501
    :cond_a
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    .line 1502
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1503
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto/16 :goto_1

    .line 1505
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto/16 :goto_1

    .line 1508
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1509
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1510
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_1

    .line 1512
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1513
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_1

    .line 1517
    :cond_f
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSingleLine:Z

    goto/16 :goto_1

    .line 1532
    :cond_10
    invoke-virtual {v2}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1533
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1534
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 1535
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1536
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_11

    .line 1537
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1539
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    .line 1546
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_12
    return-void
.end method

.method private setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 4551
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowSpn:Z

    .line 4552
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    .line 4553
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowPlmn:Z

    .line 4554
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    .line 4555
    return-void
.end method

.method private setUpdateSignalForced()V
    .locals 3

    .prologue
    .line 1249
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isUpdateSignalForced:Z

    if-eqz v0, :cond_1

    .line 1250
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isUpdateSignalForced:Z

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    .line 1258
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    .line 1259
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUpdateSignalForced -  target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_1
    return-void
.end method

.method private shouldDisplayThreeGeesForSPR()Z
    .locals 2

    .prologue
    .line 6773
    const/4 v0, 0x0

    .line 6774
    .local v0, "result":Z
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 6790
    :goto_0
    :pswitch_0
    return v0

    .line 6787
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6774
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private shouldShowPermanentDataIcon()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4713
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 4715
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4722
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v1, :cond_1

    .line 4729
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 4725
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4715
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final update4GICONDataNetType()V
    .locals 3

    .prologue
    .line 5870
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5873
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update4GICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5875
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 5876
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5877
    const v0, 0x7f0202aa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5878
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5879
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5881
    :cond_0
    return-void
.end method

.method private final update4GLTEICONDataNetType()V
    .locals 3

    .prologue
    .line 5923
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5926
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update4GLTEICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5929
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 5930
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5931
    const v0, 0x7f0202b2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5932
    const v0, 0x7f02031c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5933
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5935
    :cond_0
    return-void
.end method

.method private final updateAIODataNetType()V
    .locals 5

    .prologue
    const v2, 0x7f0a024c

    const v4, 0x7f02031f

    const/4 v3, 0x0

    .line 6169
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 6211
    :pswitch_0
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType unknown radio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6213
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 6214
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6215
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6220
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 6221
    return-void

    .line 6171
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6172
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6173
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6178
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6179
    const v0, 0x7f0202cb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6180
    const v0, 0x7f020316

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6189
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6190
    const v0, 0x7f0202aa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6191
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6192
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6196
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6197
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6198
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6203
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6204
    const v0, 0x7f0202cd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6205
    const v0, 0x7f020317

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6206
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateATTDataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0a024c

    const v4, 0x7f02031f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6110
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    .line 6111
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 6155
    :pswitch_0
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType unknown radio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6157
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 6158
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6159
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6164
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 6166
    return-void

    .line 6113
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6114
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6115
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6120
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6121
    const v0, 0x7f0202cb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6122
    const v0, 0x7f020316

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6131
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6132
    const v0, 0x7f0202ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6133
    const v0, 0x7f020310

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 6136
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 6139
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6140
    const v0, 0x7f0202d5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6141
    const v0, 0x7f02031b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 6144
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 6147
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6148
    const v0, 0x7f0202cd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6149
    const v0, 0x7f020317

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateCMCCDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0a0250

    const v3, 0x7f0202c9

    const v2, 0x7f0202be

    .line 7018
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 7020
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateCMCCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7022
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 7059
    :goto_0
    :pswitch_0
    return-void

    .line 7027
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7028
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7029
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 7030
    const v0, 0x7f02029f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 7031
    const v0, 0x7f02030c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 7032
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 7039
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 7034
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 7035
    const v0, 0x7f0202d1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 7036
    const v0, 0x7f020318

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 7037
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_1

    .line 7043
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7044
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7045
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 7046
    const v0, 0x7f0202a7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 7047
    const v0, 0x7f02030d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 7048
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 7055
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 7050
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 7051
    const v0, 0x7f0202d2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 7052
    const v0, 0x7f020319

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 7053
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_2

    .line 7022
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateCUDataNetType()V
    .locals 2

    .prologue
    .line 7062
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 7064
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateCUDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7066
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 7072
    :goto_0
    return-void

    .line 7068
    :pswitch_0
    const v0, 0x7f0202b1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 7069
    const v0, 0x7f020312

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 7066
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateCarrierText()V
    .locals 4

    .prologue
    .line 1413
    const/4 v0, 0x0

    .line 1414
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_3

    .line 1415
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    const-string v2, "Jio WiFi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1416
    const-string v1, "Jio WiFi"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1422
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v1, v2, :cond_0

    .line 1424
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigOpBrandingForWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1425
    const/4 v0, 0x0

    .line 1426
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 1462
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1464
    :cond_1
    return-void

    .line 1418
    :cond_2
    const v0, 0x104011b

    goto :goto_0

    .line 1430
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1456
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto :goto_1

    .line 1433
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto :goto_1

    .line 1436
    :pswitch_1
    const v0, 0x1040395

    .line 1437
    goto :goto_1

    .line 1439
    :pswitch_2
    const v0, 0x10403b2

    .line 1440
    goto :goto_1

    .line 1442
    :pswitch_3
    const v0, 0x10403b0

    .line 1443
    goto :goto_1

    .line 1446
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto :goto_1

    .line 1449
    :pswitch_5
    const v0, 0x10403a4

    .line 1451
    goto :goto_1

    .line 1453
    :pswitch_6
    const v0, 0x10403ae

    .line 1454
    goto :goto_1

    .line 1430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2563
    const/4 v1, 0x0

    .line 2564
    .local v1, "iconId":I
    const/4 v2, 0x1

    .line 2567
    .local v2, "visible":Z
    const/4 v0, -0x1

    .line 2568
    .local v0, "currentPhoneType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    .line 2569
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 2571
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v3

    if-eqz v3, :cond_b

    if-ne v0, v7, :cond_b

    .line 2575
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_a

    .line 2577
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    .line 2578
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v3, v5, :cond_9

    .line 2579
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    packed-switch v3, :pswitch_data_0

    .line 2590
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2593
    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 2599
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-nez v3, :cond_3

    .line 2600
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v8, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v3, v9, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 2604
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2605
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 2606
    const/4 v2, 0x1

    .line 2610
    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v5, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_5

    .line 2612
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2613
    const/4 v1, 0x0

    .line 2614
    const/4 v2, 0x1

    .line 2615
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "CDMA_LTE : disabled icon displayed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_5
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v5, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->shouldShowPermanentDataIcon()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2622
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v3, :cond_6

    .line 2623
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2625
    :cond_6
    const/4 v1, 0x0

    .line 2626
    const/4 v2, 0x1

    .line 2636
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSIMNotification()V

    .line 2692
    :cond_8
    :goto_3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 2693
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2694
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    .line 2697
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon, mDataDirectionIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDataConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    return-void

    .line 2581
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 2582
    goto/16 :goto_0

    .line 2584
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v5

    .line 2585
    goto/16 :goto_0

    .line 2587
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 2588
    goto/16 :goto_0

    .line 2595
    :cond_9
    const/4 v1, 0x0

    .line 2596
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2630
    :cond_a
    const/4 v1, 0x0

    .line 2631
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    .line 2632
    const/4 v2, 0x0

    goto :goto_2

    .line 2642
    :cond_b
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v3, v5, :cond_10

    .line 2643
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    packed-switch v3, :pswitch_data_1

    .line 2655
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2663
    :goto_4
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v3, :cond_d

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-nez v3, :cond_d

    .line 2664
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v8, :cond_c

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v3, v9, :cond_d

    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v3, v5, :cond_d

    .line 2668
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2669
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 2670
    const/4 v2, 0x1

    .line 2675
    :cond_d
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_f

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v5, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_e

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_f

    .line 2677
    :cond_e
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2678
    const/4 v1, 0x0

    .line 2679
    const/4 v2, 0x1

    .line 2680
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "CDMA : disabled icon displayed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2686
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSIMNotification()V

    .line 2687
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCdmaLTE - mSimState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2645
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 2646
    goto :goto_4

    .line 2648
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v5

    .line 2649
    goto :goto_4

    .line 2651
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 2652
    goto :goto_4

    .line 2659
    :cond_10
    const/4 v1, 0x0

    .line 2660
    const/4 v2, 0x0

    goto :goto_4

    .line 2579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2643
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 10

    .prologue
    const v9, 0x7f0a0251

    const/4 v8, 0x0

    const v7, 0x7f0a024f

    const v6, 0x7f02030c

    const v5, 0x7f02029f

    .line 2243
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "updateDataNetType()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2246
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v3, :cond_0

    .line 2248
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 2249
    .local v0, "inetCondition":I
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2250
    const v3, 0x7f0202aa

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2251
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2252
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2256
    const v3, 0x7f02030f

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2523
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 2525
    return-void

    .line 2259
    .end local v0    # "inetCondition":I
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 2260
    .restart local v0    # "inetCondition":I
    const/4 v2, 0x1

    .line 2261
    .local v2, "showDataTypeIcon":Z
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v3

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 2510
    :pswitch_0
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataNetType unknown radio:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 2513
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2516
    const v3, 0x7f02031f

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 2261
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    goto :goto_1

    .line 2264
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_2

    .line 2265
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2266
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2269
    const v3, 0x7f02031f

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 2276
    :cond_2
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_3

    .line 2277
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2278
    const v3, 0x7f0202cb

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2280
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2281
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0255

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2285
    const v3, 0x7f020316

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 2293
    :cond_3
    :pswitch_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2294
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2296
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2297
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2301
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2307
    :pswitch_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    if-nez v3, :cond_4

    .line 2308
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2309
    const v3, 0x7f0202d1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2311
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2312
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2316
    const v3, 0x7f020318

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2319
    :cond_4
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2320
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2322
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2323
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2327
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2333
    :pswitch_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v3, :cond_5

    .line 2334
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2335
    const v3, 0x7f0202d2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2336
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2339
    const v3, 0x7f020319

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2341
    :cond_5
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2342
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2343
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2346
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2351
    :pswitch_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_6

    .line 2353
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2354
    const v3, 0x7f02029b

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2356
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2357
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0253

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2361
    const v3, 0x7f02030a

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2368
    :cond_6
    :pswitch_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_7

    .line 2369
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2370
    const v3, 0x7f02029b

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2372
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2373
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0253

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2377
    const v3, 0x7f02030a

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2387
    :cond_7
    :pswitch_8
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2388
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2390
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2391
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2395
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2401
    :pswitch_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v3, :cond_8

    const-string v3, "1"

    const-string v4, "ril.lte_wideband"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2403
    :cond_8
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "LTE WIDEBAND"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2405
    const v3, 0x7f0202d7

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2406
    const v3, 0x7f02031d

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2407
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0252

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2409
    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->m4GDataDistinguishable:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v3, :cond_a

    const-string v3, "1"

    const-string v4, "ril.lte_wideband"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2411
    :cond_a
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "LTE WIDEBAND"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShow4GforLTE:Z

    if-eqz v3, :cond_b

    .line 2413
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2414
    const v3, 0x7f0202b5

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2415
    const v3, 0x7f020313

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2416
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2419
    :cond_b
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2420
    const v3, 0x7f0202d7

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2421
    const v3, 0x7f02031d

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2422
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0252

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2428
    :cond_c
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->ATO:Z

    if-eqz v3, :cond_e

    .line 2429
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2430
    .local v1, "show4GforLTE_ATO":Z
    if-eqz v1, :cond_d

    .line 2431
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "show4GforLTE_ATO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2433
    const v3, 0x7f0202aa

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2434
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2435
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2438
    const v3, 0x7f02030f

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2441
    :cond_d
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "showLTE_ATO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2443
    const v3, 0x7f0202d4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2444
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2445
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0252

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2448
    const v3, 0x7f02031a

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2453
    .end local v1    # "show4GforLTE_ATO":Z
    :cond_e
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShow4GforLTE:Z

    if-eqz v3, :cond_10

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->INU:Z

    if-eqz v3, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isRJILNetwork()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2454
    :cond_f
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2455
    const v3, 0x7f0202aa

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2456
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2457
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2461
    const v3, 0x7f02030f

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2464
    :cond_10
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2465
    const v3, 0x7f0202d4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2466
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2467
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0252

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2471
    const v3, 0x7f02031a

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2477
    :pswitch_a
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_11

    .line 2478
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2479
    const v3, 0x7f0202cd

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2481
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2482
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a024c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2486
    const v3, 0x7f020317

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2489
    :cond_11
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2490
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2492
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2493
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2497
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2502
    :pswitch_b
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DC:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2503
    const v3, 0x7f0202bc

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2504
    const v3, 0x7f020315

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2505
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private updateEthernetIcons()V
    .locals 3

    .prologue
    .line 3132
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEthernetIcons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    if-eqz v0, :cond_0

    .line 3134
    const v0, 0x7f0202cc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetIconId:I

    .line 3135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0547

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionEthernet:Ljava/lang/String;

    .line 3137
    :cond_0
    return-void
.end method

.method private final updateIUSDataNetType()V
    .locals 3

    .prologue
    .line 5984
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5987
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIUSDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5989
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 5990
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5991
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5992
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5993
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 6008
    :cond_0
    :goto_0
    return-void

    .line 5994
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 5995
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5996
    const v0, 0x7f0202aa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5997
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5998
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5999
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6003
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6004
    const v0, 0x7f02029f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6005
    const v0, 0x7f02030c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6006
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateIconSet()V
    .locals 6

    .prologue
    .line 1549
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    .line 1550
    .local v2, "voiceNetworkType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 1553
    .local v1, "dataNetworkType":I
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIconSet, voice network type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data network type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    if-nez v1, :cond_0

    move v0, v2

    .line 1564
    .local v0, "chosenNetworkType":I
    :goto_0
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " chosenNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspaDataDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspapDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showAtLeastThreeGees="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    return-void

    .end local v0    # "chosenNetworkType":I
    :cond_0
    move v0, v1

    .line 1559
    goto :goto_0
.end method

.method private final updateLTE4GICONDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0a0252

    .line 6010
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 6013
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLTE4GICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6016
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 6017
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6018
    const v0, 0x7f0202aa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6019
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6020
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 6038
    :cond_0
    :goto_0
    return-void

    .line 6022
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 6023
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_2

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6024
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6025
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6026
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6027
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6028
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6031
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6032
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6033
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6034
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateLTEICONDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0a0252

    .line 5937
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5940
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLTEICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5942
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 5943
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5944
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5945
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5946
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5947
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5948
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5957
    :cond_1
    :goto_0
    return-void

    .line 5951
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5952
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5953
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5954
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateNoSIMNotification()V
    .locals 13

    .prologue
    const/16 v12, 0x111

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4561
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mDoNotShowNoSimNotification:Z

    if-eqz v7, :cond_1

    .line 4618
    :cond_0
    :goto_0
    return-void

    .line 4565
    :cond_1
    const-string v7, "ro.config.donot_nosim"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4566
    const-string v7, "StatusBar.NetworkController"

    const-string v8, "Don\'t show No SIM Notification"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4570
    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-nez v7, :cond_0

    .line 4574
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 4576
    .local v1, "mgr":Landroid/app/NotificationManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v7, v8, :cond_3

    .line 4577
    invoke-virtual {v1, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 4579
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4582
    .local v2, "res":Landroid/content/res/Resources;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v7, :cond_5

    .line 4583
    const v7, 0x7f0a047d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4591
    .local v6, "title":Ljava/lang/String;
    :goto_1
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v7, :cond_7

    .line 4592
    const v7, 0x7f0a047f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4597
    .local v5, "text":Ljava/lang/String;
    :goto_2
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f020342

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4606
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v7, :cond_4

    .line 4607
    const v7, 0x7f020347

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4609
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SIM_TYPE_POPUP"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4610
    .local v3, "resultIntent":Landroid/content/Intent;
    const-string v7, "SIM_TYPE"

    const-string v8, "NO_SIM"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4611
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v7, v10, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 4613
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4616
    .end local v3    # "resultIntent":Landroid/content/Intent;
    .end local v4    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v1, v12, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 4584
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mNoSIMNotificationForTMO:Z

    if-eqz v7, :cond_6

    .line 4585
    const v7, 0x7f0a047c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto :goto_1

    .line 4587
    .end local v6    # "title":Ljava/lang/String;
    :cond_6
    const v7, 0x7f0a047b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto :goto_1

    .line 4594
    :cond_7
    const v7, 0x7f0a047e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/String;
    goto :goto_2
.end method

.method private final updateOLBDataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0a0250

    const v4, 0x7f020319

    const v3, 0x7f0202d2

    .line 5734
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5736
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOLBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5738
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5739
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5740
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5741
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5742
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5746
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 5747
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 5748
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5749
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5750
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5751
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5761
    :cond_1
    :goto_0
    return-void

    .line 5754
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5755
    const v0, 0x7f02029f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5756
    const v0, 0x7f02030c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5757
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateORGDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0202d2

    const v6, 0x7f0202aa

    const v5, 0x7f02029f

    const v4, 0x7f0a0251

    const v3, 0x7f0a0250

    .line 5418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5420
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateORGDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 5425
    :cond_0
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5427
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 5428
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5429
    const v0, 0x7f0202d1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5430
    const v0, 0x7f020318

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5431
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5450
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 5451
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5453
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    .line 5454
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5455
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5456
    const v0, 0x7f020319

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5457
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5476
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 5477
    const-string v0, "IDE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_5

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5479
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5480
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5481
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5482
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5483
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5521
    :cond_6
    :goto_2
    return-void

    .line 5434
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5435
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5436
    const v0, 0x7f02030c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5437
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5441
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5442
    const v0, 0x7f0202a7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5443
    const v0, 0x7f02030d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5444
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5460
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5461
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5462
    const v0, 0x7f02030c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5463
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5467
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5468
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5469
    const v0, 0x7f020319

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5470
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5486
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5487
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5488
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5489
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5496
    :cond_c
    const-string v0, "FTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_d

    .line 5497
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND_ORANGE_TDM!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5499
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5500
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5501
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5505
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_e

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5506
    :cond_e
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5508
    const v0, 0x7f0202b5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5509
    const v0, 0x7f020313

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5510
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5513
    :cond_f
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5514
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5515
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5516
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private final updateOYADataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f02030f

    const v6, 0x7f0202aa

    const v5, 0x7f0a024f

    const v4, 0x7f02030c

    const v3, 0x7f02029f

    .line 5592
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYADataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5594
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v0, :cond_0

    .line 5595
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5596
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5597
    const v0, 0x7f02031f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5598
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5602
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5603
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5604
    const v0, 0x7f0202cb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5605
    const v0, 0x7f020316

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5606
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5610
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 5614
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5615
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5616
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5617
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5618
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5637
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 5638
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5639
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5640
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5641
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5642
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5660
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 5661
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_5

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5662
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5663
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5664
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5665
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5666
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5677
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 5678
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5679
    const v0, 0x7f0202cd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5680
    const v0, 0x7f020317

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5681
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5687
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 5688
    return-void

    .line 5621
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    .line 5622
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5623
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5624
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5625
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5628
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5629
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5630
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5631
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5645
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_b

    .line 5646
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5647
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5648
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5649
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5652
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5653
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5654
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5655
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5669
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5670
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5671
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5672
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private final updateOYBDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0a0252

    const v6, 0x7f0a0251

    const v5, 0x7f0a024c

    const v4, 0x7f02030f

    const v3, 0x7f0202aa

    .line 5524
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5526
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v0, :cond_0

    .line 5527
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5528
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5529
    const v0, 0x7f02031f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5530
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5534
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5535
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5536
    const v0, 0x7f0202cb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5537
    const v0, 0x7f020316

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5538
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5542
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 5546
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5547
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5548
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5549
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5554
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 5555
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5556
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5557
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5563
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 5564
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_5

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5565
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5566
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5567
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5568
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5569
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5580
    :cond_6
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 5581
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5582
    const v0, 0x7f0202cd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5583
    const v0, 0x7f020317

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5588
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 5589
    return-void

    .line 5572
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5573
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5574
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateOYCDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0a0252

    const v3, 0x7f0a0250

    .line 5690
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5691
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5731
    :cond_0
    :goto_0
    return-void

    .line 5694
    :cond_1
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYCDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5696
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 5700
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_5

    .line 5701
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5702
    const v0, 0x7f0202d2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5703
    const v0, 0x7f020319

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5704
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5715
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 5716
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_4

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5717
    :cond_4
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5718
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5719
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5720
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5721
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5707
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5708
    const v0, 0x7f0202d1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5709
    const v0, 0x7f020318

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5710
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 5724
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5725
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5726
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5727
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private final updatePCTDataNetType()V
    .locals 3

    .prologue
    .line 5905
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5908
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePCTDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5910
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 5911
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5912
    const v0, 0x7f0202aa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5913
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5914
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5921
    :cond_0
    :goto_0
    return-void

    .line 5915
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 5916
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5917
    const v0, 0x7f0202b2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5918
    const v0, 0x7f02031c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5919
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateRoamingNotification()V
    .locals 13

    .prologue
    const v12, 0x7f0a0483

    const/16 v11, 0x222

    const/4 v10, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4623
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 4626
    .local v2, "mgr":Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "data_roaming"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    .line 4629
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    const v9, 0x7f0202ba

    if-eq v6, v9, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v6, :cond_3

    .line 4632
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    if-eqz v6, :cond_1

    .line 4633
    invoke-virtual {v2, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4634
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    .line 4635
    const-string v6, "StatusBar.NetworkController"

    const-string v7, "updateRomaingNotification cancel"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v6, v8

    .line 4626
    goto :goto_0

    .line 4638
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 4639
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x7f0a0480

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4641
    .local v5, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4642
    .local v1, "currentRoamingType":I
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    if-eqz v6, :cond_8

    .line 4643
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v6, :cond_5

    .line 4644
    :cond_4
    const v6, 0x7f0a0482

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4645
    .local v4, "text":Ljava/lang/String;
    const/4 v1, 0x1

    .line 4666
    :goto_2
    const-string v6, "StatusBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRomaingNotification Type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4667
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    if-eq v6, v1, :cond_1

    .line 4668
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v8, 0x7f02026e

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4677
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4678
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    .line 4679
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRomaingNotification DataRoaming:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDataRoamingTypeForVZW:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4646
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v4    # "text":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eq v6, v10, :cond_6

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-ne v6, v7, :cond_7

    .line 4649
    :cond_6
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4650
    .restart local v4    # "text":Ljava/lang/String;
    const/4 v1, 0x3

    goto/16 :goto_2

    .line 4652
    .end local v4    # "text":Ljava/lang/String;
    :cond_7
    const v6, 0x7f0a0481

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4653
    .restart local v4    # "text":Ljava/lang/String;
    const/4 v1, 0x2

    goto/16 :goto_2

    .line 4656
    .end local v4    # "text":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eq v6, v10, :cond_9

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-ne v6, v7, :cond_a

    .line 4659
    :cond_9
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4660
    .restart local v4    # "text":Ljava/lang/String;
    const/4 v1, 0x3

    goto/16 :goto_2

    .line 4662
    .end local v4    # "text":Ljava/lang/String;
    :cond_a
    const-string v4, "No Notification"

    .line 4663
    .restart local v4    # "text":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private final updateSFRDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f02030b

    const v5, 0x7f0202a7

    const v4, 0x7f02029f

    const v3, 0x7f02029d

    const v2, 0x7f0a0250

    .line 6040
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 6042
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateSFRDataNetType"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-nez v0, :cond_1

    .line 6045
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    sparse-switch v0, :sswitch_data_0

    .line 6107
    :cond_1
    :goto_0
    return-void

    .line 6047
    :sswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6048
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6049
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6050
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6055
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 6056
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6057
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6058
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6059
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6067
    :cond_2
    :sswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DC:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6068
    const v0, 0x7f0202bc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6069
    const v0, 0x7f020315

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6070
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6076
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 6077
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6078
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6079
    const v0, 0x7f02030d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6080
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6083
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6084
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6085
    const v0, 0x7f02030c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6086
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6091
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 6092
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6093
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6094
    const v0, 0x7f02030d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6095
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6098
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6099
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6100
    const v0, 0x7f02030c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6045
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xf -> :sswitch_4
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private final updateSPRDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0a024c

    const v5, 0x7f02029f

    const v4, 0x7f0a024f

    const v3, 0x7f0202a8

    const v2, 0x7f02030c

    .line 6800
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v0, :cond_0

    .line 6801
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 6829
    :pswitch_0
    const v0, 0x7f0202a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconIdCombinedSignal:I

    .line 6830
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 6834
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6835
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 7012
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 7014
    return-void

    .line 6813
    :pswitch_1
    const v0, 0x7f0202a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconIdCombinedSignal:I

    .line 6814
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6818
    :pswitch_2
    const v0, 0x7f0202d6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconIdCombinedSignal:I

    .line 6819
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6824
    :pswitch_3
    const v0, 0x7f0202ce

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconIdCombinedSignal:I

    .line 6825
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6837
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_2

    .line 6839
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_1

    .line 6840
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6841
    const v0, 0x7f0202b0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6842
    const v0, 0x7f020311

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6848
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 6844
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6845
    const v0, 0x7f0202e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6846
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_2

    .line 6851
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_1

    .line 6993
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_f

    .line 6994
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6995
    const v0, 0x7f0202cd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6996
    const v0, 0x7f020317

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6997
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6853
    :pswitch_5
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_3

    .line 6854
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6858
    :goto_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6859
    const v0, 0x7f02031f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6860
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6856
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    goto :goto_3

    .line 6864
    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_4

    .line 6865
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6866
    const v0, 0x7f0202cb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6867
    const v0, 0x7f020316

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6873
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6869
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_GSM_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6870
    const v0, 0x7f0202d0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6871
    const v0, 0x7f020316

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_4

    .line 6877
    :pswitch_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_5

    .line 6878
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6879
    const v0, 0x7f0202cd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6880
    const v0, 0x7f020317

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6886
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6882
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_GSM_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6883
    const v0, 0x7f0202d0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6884
    const v0, 0x7f020317

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_5

    .line 6890
    :pswitch_8
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_6

    .line 6891
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6892
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6893
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6899
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6895
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6896
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6897
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_6

    .line 6905
    :pswitch_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_8

    .line 6906
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_7

    .line 6907
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6908
    const v0, 0x7f0202d1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6909
    const v0, 0x7f020318

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6915
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6911
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6912
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6913
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_7

    .line 6918
    :cond_8
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_9

    .line 6919
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6920
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6921
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6927
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6923
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6924
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6925
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_8

    .line 6933
    :pswitch_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_b

    .line 6934
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_a

    .line 6935
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6936
    const v0, 0x7f0202d2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6937
    const v0, 0x7f020319

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6943
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6939
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6940
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6941
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_9

    .line 6946
    :cond_b
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_c

    .line 6947
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6948
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6949
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6955
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6951
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6952
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6953
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_a

    .line 6967
    :pswitch_b
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_d

    .line 6968
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6969
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6970
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6976
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6972
    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6973
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6974
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_b

    .line 6980
    :pswitch_c
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_e

    .line 6981
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6982
    const v0, 0x7f0202b0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6983
    const v0, 0x7f020311

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6989
    :goto_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6985
    :cond_e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6986
    const v0, 0x7f0202e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6987
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_c

    .line 7000
    :cond_f
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 7001
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 7002
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 7003
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 6851
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private final updateSimIcon()V
    .locals 3

    .prologue
    .line 2553
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 2555
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    .line 2559
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    .line 2560
    return-void

    .line 2557
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    goto :goto_0
.end method

.method private updateStatusBarNetworkSettings()V
    .locals 2

    .prologue
    .line 4186
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getMaxLevelOfSignalStrengthIndicator()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    .line 4190
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    .line 4193
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    .line 4195
    return-void
.end method

.method private final updateTFGDataNetType()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 5959
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5962
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTFGDataNetType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5965
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 5966
    .local v1, "sNetworkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_1

    .line 5982
    :cond_0
    :goto_0
    return-void

    .line 5969
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5971
    .local v0, "NetworkSubstring":Ljava/lang/String;
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkSubstring:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5974
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 5975
    const-string v2, "334"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "716"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "734"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "704"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "706"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "748"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "740"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "714"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "710"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5976
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5977
    const v2, 0x7f0202d4

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5978
    const v2, 0x7f02031a

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5979
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private final updateTMHDataNetType()V
    .locals 3

    .prologue
    .line 5883
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5886
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTMHDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5888
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 5889
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5890
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5891
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5892
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5893
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5894
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5903
    :cond_1
    :goto_0
    return-void

    .line 5897
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5898
    const v0, 0x7f0202aa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5899
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5900
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateTMODataNetType()V
    .locals 10

    .prologue
    const v9, 0x7f0202a9

    const v8, 0x7f0a024c

    const v7, 0x7f02031f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6224
    const/4 v0, 0x0

    .line 6225
    .local v0, "isNetworkRoaming":Z
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 6226
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v2, :pswitch_data_0

    .line 6377
    :pswitch_0
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType unknown radio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6379
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 6380
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6381
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6386
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 6388
    return-void

    .line 6228
    :pswitch_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6229
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6230
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6231
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6236
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_a

    .line 6237
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    .line 6239
    .local v1, "voice":I
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v.s.:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v.t.:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6241
    if-nez v1, :cond_0

    .line 6242
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6243
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6244
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6245
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6247
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6248
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6249
    const v2, 0x7f0202cb

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6250
    const v2, 0x7f020316

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6251
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0255

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6253
    :cond_1
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xf

    if-ne v1, v2, :cond_5

    .line 6258
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    .line 6259
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 6261
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 6262
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6263
    if-nez v0, :cond_4

    .line 6264
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6265
    const v2, 0x7f0202b6

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6266
    const v2, 0x7f020314

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6267
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0251

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6270
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6271
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6272
    const v2, 0x7f02030e

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6273
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6276
    :cond_5
    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    .line 6277
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_6

    .line 6278
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 6280
    :cond_6
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 6281
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6282
    if-nez v0, :cond_7

    .line 6283
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6284
    const v2, 0x7f0202d8

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6285
    const v2, 0x7f02031e

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6286
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6289
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6290
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6291
    const v2, 0x7f02030e

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6292
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6295
    :cond_8
    if-ne v1, v6, :cond_9

    .line 6296
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6297
    const v2, 0x7f0202cd

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6298
    const v2, 0x7f020317

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6299
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6302
    :cond_9
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6303
    const v2, 0x7f02031e

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 6306
    .end local v1    # "voice":I
    :cond_a
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6307
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 6312
    :pswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6313
    const v2, 0x7f0202cb

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6314
    const v2, 0x7f020316

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6315
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0255

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6323
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_b

    .line 6324
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 6326
    :cond_b
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 6327
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6328
    if-nez v0, :cond_c

    .line 6329
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6330
    const v2, 0x7f0202b6

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6331
    const v2, 0x7f020314

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6332
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0251

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6335
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6336
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6337
    const v2, 0x7f02030e

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6338
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6343
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_d

    .line 6344
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 6346
    :cond_d
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 6347
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6362
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6363
    const v2, 0x7f0202d8

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6364
    const v2, 0x7f02031e

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6365
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6369
    :pswitch_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6370
    const v2, 0x7f0202cd

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6371
    const v2, 0x7f020317

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6372
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 6226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final updateTelephonySignalStrength()V
    .locals 11

    .prologue
    const v10, 0x7f0200fd

    const/4 v9, 0x0

    const v8, 0x7f020628

    const v7, 0x7f020627

    const v6, 0x7f0204b0

    .line 2005
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_5

    .line 2012
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "3"

    const-string v4, "ril.simtype"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "2"

    const-string v4, "ril.simtype"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2014
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setUpdateSignalForced()V

    .line 2017
    :cond_2
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength -mTransitionState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    if-eqz v3, :cond_4

    .line 2023
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    .line 2236
    :goto_0
    return-void

    .line 2026
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    .line 2027
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x46

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2034
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_d

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eqz v3, :cond_d

    .line 2037
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_a

    .line 2039
    :cond_6
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2040
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2041
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2042
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 2045
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_8

    .line 2046
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2047
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2230
    :cond_7
    :goto_1
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength, No signal level. mPhoneSignalIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDataSignalIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mQSPhoneSignalIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mContentDescriptionPhoneSignal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2059
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_9

    .line 2060
    const v3, 0x7f020629

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2061
    const v3, 0x7f020629

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_1

    .line 2062
    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v3, :cond_7

    .line 2063
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2064
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_1

    .line 2078
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_b

    .line 2079
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2080
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2088
    :goto_2
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2090
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto/16 :goto_1

    .line 2081
    :cond_b
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v3, :cond_c

    .line 2082
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2083
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_2

    .line 2085
    :cond_c
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2086
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_2

    .line 2095
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v3, :cond_15

    .line 2099
    :cond_e
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v3, :cond_f

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_12

    .line 2100
    :cond_f
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2101
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2102
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2103
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 2106
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_10

    .line 2107
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2108
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_1

    .line 2120
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_11

    .line 2121
    const v3, 0x7f020629

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2122
    const v3, 0x7f020629

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_1

    .line 2123
    :cond_11
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v3, :cond_7

    .line 2124
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2125
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_1

    .line 2128
    :cond_12
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_13

    .line 2129
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2130
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2138
    :goto_3
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2139
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto/16 :goto_1

    .line 2131
    :cond_13
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v3, :cond_14

    .line 2132
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2133
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_3

    .line 2135
    :cond_14
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2136
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_3

    .line 2145
    :cond_15
    const/4 v2, 0x0

    .line 2147
    .local v2, "psIconLevel":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v3, :cond_17

    .line 2148
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 2150
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: mAlwaysShowCdmaRssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set to cdmaLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead of level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :goto_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v3, :cond_18

    .line 2172
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too high"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 2180
    :cond_16
    :goto_5
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 2183
    .local v1, "iconList":[I
    aget v3, v1, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2184
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2188
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 2193
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataSignalIconId(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2212
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: iconLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2166
    .end local v0    # "iconLevel":I
    .end local v1    # "iconList":[I
    :cond_17
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0    # "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_4

    .line 2175
    :cond_18
    if-gez v0, :cond_16

    .line 2176
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too low"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_5
.end method

.method private final updateUSCCDataNetType()V
    .locals 2

    .prologue
    .line 6742
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 6744
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateUSCCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6745
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 6751
    :goto_0
    return-void

    .line 6747
    :pswitch_0
    const v0, 0x7f0202b7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    goto :goto_0

    .line 6745
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private final updateVD2DataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0a0252

    .line 5763
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5765
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVD2DataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5767
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 5768
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5769
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5770
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5771
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5772
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5773
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5783
    :cond_1
    :goto_0
    return-void

    .line 5776
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5777
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5778
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5779
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateVIDDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0a024f

    const v6, 0x7f02030f

    const v5, 0x7f02030c

    const v4, 0x7f0202aa

    const v3, 0x7f02029f

    .line 5785
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5787
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVIDDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5789
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5790
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5795
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5796
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5797
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5798
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5809
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 5812
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5817
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5818
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5819
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5820
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5831
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 5832
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5837
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5838
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5839
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5840
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5852
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 5853
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_7

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5854
    :cond_7
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5855
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5856
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5857
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5858
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5868
    :cond_8
    :goto_3
    return-void

    .line 5801
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5802
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5803
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5804
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5823
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5824
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5825
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5826
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5843
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5844
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5845
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5846
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2

    .line 5861
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5862
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5863
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5864
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_3
.end method

.method private final updateVZWDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0a024f

    const v6, 0x7f02030c

    const v2, 0x7f0202c1

    const v1, 0x7f0202be

    const v5, 0x7f02029f

    .line 6396
    const-string v3, "ril.cdma.ine911"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6397
    .local v0, "ine911":Z
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    const-string v4, "volte"

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isVoiceRatCDMA()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsSVLTE:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsSVDO:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 6541
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_16

    .line 6542
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6543
    const v1, 0x7f0202cd

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6544
    const v1, 0x7f020317

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6545
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_15

    const v1, 0x7f0202c8

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6547
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a024c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 6560
    :cond_4
    :goto_2
    :pswitch_1
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " voLTECall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    const-string v4, "volte"

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " voiceNetTpe:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataNetType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ine911:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6563
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 6565
    return-void

    .line 6397
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    goto/16 :goto_0

    .line 6409
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_4

    .line 6410
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6411
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6412
    const v1, 0x7f02031f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6413
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6414
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a024c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2

    .line 6431
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_7

    .line 6432
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6433
    const v1, 0x7f0202cb

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6434
    const v1, 0x7f020316

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6435
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_6

    const v1, 0x7f0202c7

    :goto_3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6437
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0255

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 6435
    :cond_6
    const v1, 0x7f0202c3

    goto :goto_3

    .line 6444
    :cond_7
    :pswitch_4
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6445
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6446
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6447
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v3, :cond_8

    :goto_4
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6449
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move v1, v2

    .line 6447
    goto :goto_4

    .line 6455
    :pswitch_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v3, :cond_a

    .line 6456
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6457
    const v1, 0x7f0202d1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6458
    const v1, 0x7f020318

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6459
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_9

    const v1, 0x7f0202c9

    :goto_5
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6461
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0250

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 6459
    :cond_9
    const v1, 0x7f0202c5

    goto :goto_5

    .line 6464
    :cond_a
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6465
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6466
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6467
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v3, :cond_b

    :goto_6
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6469
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    move v1, v2

    .line 6467
    goto :goto_6

    .line 6474
    :pswitch_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v3, :cond_d

    .line 6475
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6476
    const v1, 0x7f0202d2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6477
    const v1, 0x7f020319

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6478
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_c

    const v1, 0x7f0202ca

    :goto_7
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6480
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0250

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 6478
    :cond_c
    const v1, 0x7f0202c6

    goto :goto_7

    .line 6483
    :cond_d
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6484
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6485
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6486
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v3, :cond_e

    :goto_8
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6488
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    move v1, v2

    .line 6486
    goto :goto_8

    .line 6494
    :pswitch_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_10

    .line 6495
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6496
    const v1, 0x7f02029b

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6497
    const v1, 0x7f02030a

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6498
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_f

    const v1, 0x7f0202bd

    :goto_9
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6500
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0253

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 6498
    :cond_f
    const v1, 0x7f0202c0

    goto :goto_9

    .line 6507
    :cond_10
    :pswitch_8
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v3, :cond_12

    .line 6508
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6509
    const v1, 0x7f02029b

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6510
    const v1, 0x7f02030a

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6511
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_11

    const v1, 0x7f0202bd

    :goto_a
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6513
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0253

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 6511
    :cond_11
    const v1, 0x7f0202c0

    goto :goto_a

    .line 6523
    :cond_12
    :pswitch_9
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6524
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6525
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6526
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v3, :cond_13

    :goto_b
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6528
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_13
    move v1, v2

    .line 6526
    goto :goto_b

    .line 6532
    :pswitch_a
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6533
    const v1, 0x7f0202b0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6534
    const v1, 0x7f020311

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6535
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_14

    const v1, 0x7f0202bf

    :goto_c
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6537
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 6535
    :cond_14
    const v1, 0x7f0202c2

    goto :goto_c

    .line 6545
    :cond_15
    const v1, 0x7f0202c4

    goto/16 :goto_1

    .line 6550
    :cond_16
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6551
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6552
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6553
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v3, :cond_17

    :goto_d
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6555
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_17
    move v1, v2

    .line 6553
    goto :goto_d

    .line 6397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateZTMDataNetType()V
    .locals 3

    .prologue
    const v2, 0x7f0202e1

    .line 6675
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 6676
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 6679
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 6681
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateZTMDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6683
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 6731
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 6732
    const v0, 0x7f0202e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6738
    :goto_0
    return-void

    .line 6685
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 6686
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6692
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 6693
    const v0, 0x7f0202e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6699
    :cond_2
    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6704
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 6705
    const v0, 0x7f0202e5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6707
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6712
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 6713
    const v0, 0x7f0202e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6715
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6723
    :pswitch_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6727
    :pswitch_7
    const v0, 0x7f0202e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6734
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6683
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final updateZVVDataNetType()V
    .locals 3

    .prologue
    const v2, 0x7f0202e1

    .line 6578
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 6579
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 6582
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 6584
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateZVVDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6586
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 6634
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 6635
    const v0, 0x7f0202e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6641
    :goto_0
    return-void

    .line 6588
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 6589
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6595
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 6596
    const v0, 0x7f0202e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6602
    :cond_2
    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6607
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 6608
    const v0, 0x7f0202e5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6610
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6615
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 6616
    const v0, 0x7f0202e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6618
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6626
    :pswitch_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6630
    :pswitch_7
    const v0, 0x7f0202e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6637
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 6586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final updateZVVLACInfo()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6644
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 6645
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 6647
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 6662
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    .line 6664
    :goto_0
    return-void

    .line 6659
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 6647
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addATTMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 4365
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4366
    return-void
.end method

.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    return-void
.end method

.method public addEmergencyLabelView(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 1
    .param p1, "v"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    return-void
.end method

.method public addMoreIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    .line 766
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 777
    return-void
.end method

.method public addOperatorLogoIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    .line 762
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 772
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    return-void
.end method

.method protected createEthernetHandler()V
    .locals 6

    .prologue
    .line 696
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 698
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 700
    .local v3, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v5, "ethernet"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/EthernetManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetManager:Landroid/net/EthernetManager;

    .line 701
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    .line 703
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    if-eqz v4, :cond_0

    .line 704
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetManager:Landroid/net/EthernetManager;

    invoke-virtual {v4}, Landroid/net/EthernetManager;->getEthernetServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 706
    .local v1, "ethernetMessenger":Landroid/os/Messenger;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v4, :cond_0

    .line 707
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EthernetHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EthernetHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 708
    .local v2, "ethernethandler":Landroid/os/Handler;
    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    .line 709
    if-eqz v1, :cond_0

    .line 710
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 714
    .end local v1    # "ethernetMessenger":Landroid/os/Messenger;
    .end local v2    # "ethernethandler":Landroid/os/Handler;
    :cond_0
    return-void

    .line 701
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 684
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 685
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 686
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 687
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 688
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 689
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 691
    :cond_0
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 4090
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-nez v4, :cond_1

    const-string v4, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4091
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 4092
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 4093
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 4094
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 4095
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    .line 4096
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 4181
    :cond_0
    :goto_0
    return-void

    .line 4097
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v4, :cond_3

    const-string v4, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4098
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 4099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 4100
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_1

    .line 4102
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto :goto_0

    .line 4103
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v4, :cond_0

    const-string v4, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4104
    const-string v4, "airplane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4105
    .local v9, "airplane":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 4106
    const-string v4, "show"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4107
    .local v2, "show":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 4108
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    const v4, 0x7f020281

    invoke-interface {v1, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_2

    .line 4111
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v2    # "show":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v4, "fully"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4112
    .local v11, "fully":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 4113
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 4115
    :cond_5
    const-string v4, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4116
    .local v16, "wifi":Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 4117
    const-string v4, "show"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4118
    .restart local v2    # "show":Z
    const-string v4, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4119
    .local v14, "level":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 4120
    const-string v4, "null"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    :goto_4
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 4123
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    if-gez v4, :cond_9

    const v3, 0x7f0204fd

    .line 4125
    .local v3, "iconId":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 4126
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    const-string v4, "Demo"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    goto :goto_6

    .line 4113
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v2    # "show":Z
    .end local v3    # "iconId":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "level":Ljava/lang/String;
    .end local v16    # "wifi":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 4120
    .restart local v2    # "show":Z
    .restart local v14    # "level":Ljava/lang/String;
    .restart local v16    # "wifi":Ljava/lang/String;
    :cond_8
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_4

    .line 4123
    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    aget v3, v4, v5

    goto :goto_5

    .line 4131
    .restart local v3    # "iconId":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    .line 4133
    .end local v2    # "show":Z
    .end local v3    # "iconId":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "level":Ljava/lang/String;
    :cond_b
    const-string v4, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4134
    .local v15, "mobile":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 4135
    const-string v4, "show"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4136
    .restart local v2    # "show":Z
    const-string v4, "datatype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4137
    .local v10, "datatype":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 4138
    const-string v4, "1x"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v4, 0x7f02029b

    :goto_7
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 4149
    const-string v4, "1x"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const v4, 0x7f0200ec

    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    .line 4160
    :cond_c
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 4161
    .local v13, "icons":[[I
    const-string v4, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4162
    .restart local v14    # "level":Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 4163
    const-string v4, "null"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, -0x1

    :goto_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 4166
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    if-gez v4, :cond_1f

    const v3, 0x7f020627

    .line 4168
    .restart local v3    # "iconId":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 4169
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const-string v5, "Demo"

    const-string v6, "Demo"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const v8, 0x7f0202f2

    if-ne v7, v8, :cond_20

    const/4 v7, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v8

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_b

    .line 4138
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v3    # "iconId":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "icons":[[I
    .end local v14    # "level":Ljava/lang/String;
    :cond_e
    const-string v4, "3g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x7f02029f

    goto :goto_7

    :cond_f
    const-string v4, "4g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f0202aa

    goto :goto_7

    :cond_10
    const-string v4, "e"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v4, 0x7f0202cb

    goto/16 :goto_7

    :cond_11
    const-string v4, "g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const v4, 0x7f0202cd

    goto/16 :goto_7

    :cond_12
    const-string v4, "h"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const v4, 0x7f0202d1

    goto/16 :goto_7

    :cond_13
    const-string v4, "lte"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const v4, 0x7f0202d4

    goto/16 :goto_7

    :cond_14
    const-string v4, "roam"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const v4, 0x7f0202d9

    goto/16 :goto_7

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 4149
    :cond_16
    const-string v4, "3g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x7f0200ef

    goto/16 :goto_8

    :cond_17
    const-string v4, "4g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const v4, 0x7f0200f1

    goto/16 :goto_8

    :cond_18
    const-string v4, "e"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const v4, 0x7f0200f3

    goto/16 :goto_8

    :cond_19
    const-string v4, "g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const v4, 0x7f0200f9

    goto/16 :goto_8

    :cond_1a
    const-string v4, "h"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const v4, 0x7f0200fa

    goto/16 :goto_8

    :cond_1b
    const-string v4, "lte"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const v4, 0x7f0200fc

    goto/16 :goto_8

    :cond_1c
    const-string v4, "roam"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const v4, 0x7f0200ff

    goto/16 :goto_8

    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 4163
    .restart local v13    # "icons":[[I
    .restart local v14    # "level":Ljava/lang/String;
    :cond_1e
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v13, v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_9

    .line 4166
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v4, v13, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    aget v3, v4, v5

    goto/16 :goto_a

    .line 4169
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .restart local v3    # "iconId":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_20
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 4178
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3935
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3936
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3939
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3940
    const-string v0, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3941
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3942
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3943
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3944
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3945
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3946
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3947
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3948
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3949
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3950
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3951
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3953
    const-string v0, "  mEmgcCallState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3954
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3956
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3957
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3958
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3959
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3960
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3961
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3962
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3963
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3964
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3965
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3966
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3967
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3968
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3969
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3970
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3971
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3972
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3973
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3974
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3975
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3976
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3977
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3978
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3979
    const-string v0, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3980
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3981
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3982
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3983
    const-string v0, "  mDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3984
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3985
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3986
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3987
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3988
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3989
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3990
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3991
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3992
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3993
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3994
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3995
    const-string v0, "  mQSDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3996
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3997
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3998
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4000
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4001
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4002
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4003
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4004
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4005
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4006
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4007
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4008
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4009
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4010
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4011
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4013
    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4015
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4016
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4018
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 4019
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4020
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4021
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4022
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4023
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4025
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4026
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4027
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4030
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4031
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4032
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4034
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4035
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4036
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4038
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4039
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4040
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4041
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4042
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4043
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4044
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4045
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4046
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4047
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4048
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4049
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4050
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4052
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4053
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4054
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4055
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4056
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4057
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4058
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4059
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4060
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4061
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4063
    const-string v0, "---Ethernet---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4064
    const-string v0, "  mEthernetConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4065
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4066
    return-void

    .line 3936
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1

    .prologue
    .line 7226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 3921
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 3922
    const/4 v0, 0x0

    .line 3924
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method protected getDataSignalIconId(II)I
    .locals 7
    .param p1, "inetCondition"    # I
    .param p2, "iconLevel"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4420
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 4441
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v1, :cond_4

    .line 4442
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v1, v5, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v1, v6, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v1, :cond_3

    .line 4443
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_PURE:[[I

    aget-object v1, v1, v3

    aget v0, v1, p2

    .line 4451
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 4422
    .end local v0    # "iconId":I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4423
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_CTC:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4424
    .end local v0    # "iconId":I
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v1, :cond_2

    .line 4425
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v1, v5, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v1, v6, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v1, :cond_1

    .line 4426
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_PURE:[[I

    aget-object v1, v1, v3

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4428
    .end local v0    # "iconId":I
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_PURE:[[I

    aget-object v1, v1, v4

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4431
    .end local v0    # "iconId":I
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 4433
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4435
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 4436
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4438
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 4439
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4445
    .end local v0    # "iconId":I
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_PURE:[[I

    aget-object v1, v1, v4

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4448
    .end local v0    # "iconId":I
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 4420
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getGsmSignalLevel()I
    .locals 1

    .prologue
    .line 3928
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 3929
    const/4 v0, 0x0

    .line 3931
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method protected getPhoneSignalIconList(I)[I
    .locals 7
    .param p1, "inetCondition"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4378
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 4399
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v1, :cond_4

    .line 4400
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v1, v5, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v1, v6, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v1, :cond_3

    .line 4401
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_PURE:[[I

    aget-object v0, v1, v3

    .line 4409
    .local v0, "iconList":[I
    :goto_0
    return-object v0

    .line 4380
    .end local v0    # "iconList":[I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4381
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 4382
    .end local v0    # "iconList":[I
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUsePureSignalCluster:Z

    if-eqz v1, :cond_2

    .line 4383
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v1, v5, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v1, v6, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v1, :cond_1

    .line 4384
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_PURE:[[I

    aget-object v0, v1, v3

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 4386
    .end local v0    # "iconList":[I
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_PURE:[[I

    aget-object v0, v1, v4

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 4389
    .end local v0    # "iconList":[I
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 4391
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 4393
    .end local v0    # "iconList":[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 4394
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 4396
    .end local v0    # "iconList":[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 4397
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 4403
    .end local v0    # "iconList":[I
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_PURE:[[I

    aget-object v0, v1, v4

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 4406
    .end local v0    # "iconList":[I
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 4378
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 4069
    if-eqz p1, :cond_0

    .line 4070
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4072
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4077
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 4073
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 4074
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 4077
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 3914
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 3915
    const/4 v0, 0x0

    .line 3917
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2529
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_2

    .line 2532
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 2533
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 2534
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 2535
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 2541
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 11
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 963
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v0, :cond_6

    :cond_0
    const/4 v10, 0x1

    .line 964
    .local v10, "wifiEnabled":Z
    :goto_0
    if-eqz v10, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 966
    .local v7, "wifiDesc":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    :cond_1
    const/4 v4, 0x1

    .line 969
    .local v4, "wifiIn":Z
    :goto_2
    if-eqz v10, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    :cond_2
    const/4 v5, 0x1

    .line 972
    .local v5, "wifiOut":Z
    :goto_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    :cond_3
    const/4 v8, 0x1

    .line 977
    .local v8, "mobileIn":Z
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    :cond_4
    const/4 v9, 0x1

    .line 979
    .local v9, "mobileOut":Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 998
    :cond_5
    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 999
    return-void

    .line 963
    .end local v4    # "wifiIn":Z
    .end local v5    # "wifiOut":Z
    .end local v7    # "wifiDesc":Ljava/lang/String;
    .end local v8    # "mobileIn":Z
    .end local v9    # "mobileOut":Z
    .end local v10    # "wifiEnabled":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_0

    .line 964
    .restart local v10    # "wifiEnabled":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 966
    .restart local v7    # "wifiDesc":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 969
    .restart local v4    # "wifiIn":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    .line 975
    .restart local v5    # "wifiOut":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 977
    .restart local v8    # "mobileIn":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    .line 984
    .restart local v9    # "mobileOut":Z
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    goto :goto_6
.end method

.method public onDisplayCtcSimAddAlert()V
    .locals 3

    .prologue
    .line 7118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7119
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0529

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7120
    const v1, 0x7f0a052a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 7121
    const v1, 0x7f0a052c

    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7126
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 7132
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlertDialog:Landroid/app/AlertDialog;

    .line 7133
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 7135
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 7136
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1007
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 1008
    .local v7, "action":Ljava/lang/String;
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.intent.action.WIFI_CAPTIVE_NOT_LOGIN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 1014
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    .line 1212
    :cond_1
    :goto_0
    return-void

    .line 1015
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1016
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSimState(Landroid/content/Intent;)V

    .line 1017
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCmccCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    .line 1018
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - ACTION_SIM_STATE_CHANGED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 1020
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto :goto_0

    .line 1021
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1023
    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1024
    .local v12, "plmn":Ljava/lang/String;
    const-string v0, "efspn"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEFSPN:I

    .line 1025
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_4

    .line 1026
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "mDisplayPlmnIcon == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string v0, "isValidPlmn"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1028
    const/4 v12, 0x0

    .line 1032
    :cond_4
    const-string v0, "showSpn"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1039
    const-string v0, "showSpn"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1045
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    .line 1048
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1049
    .end local v12    # "plmn":Ljava/lang/String;
    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1051
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 1052
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1053
    :cond_7
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1054
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 1055
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 1056
    :cond_8
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1057
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 1060
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 1062
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1063
    :cond_9
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1066
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 1067
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1068
    :cond_b
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1069
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 1071
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSIMNotification()V

    .line 1075
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_c

    .line 1076
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    .line 1087
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto/16 :goto_0

    .line 1078
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x1040395

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_1

    .line 1082
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x1040395

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_1

    .line 1090
    :cond_e
    const-string v0, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1091
    const-string v0, "caindicator"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1092
    const-string v0, "caindicator"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    .line 1093
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE WIDEBAND with extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-eqz v0, :cond_12

    .line 1100
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    :cond_f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v1, 0x7f0202d4

    if-ne v0, v1, :cond_11

    .line 1103
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:LTE+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1105
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1106
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1095
    :cond_10
    const-string v0, "ril.lte_wideband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1096
    .local v8, "currentBandwidth":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    .line 1097
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE WIDEBAND without extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1108
    .end local v8    # "currentBandwidth":Ljava/lang/String;
    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v1, 0x7f0202aa

    if-ne v0, v1, :cond_1

    .line 1109
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:4G+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const v0, 0x7f0202b5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1111
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1112
    const v0, 0x7f020313

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1116
    :cond_12
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v1, 0x7f0202d7

    if-ne v0, v1, :cond_13

    .line 1117
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:LTE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const v0, 0x7f0202d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1119
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1120
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1122
    :cond_13
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v1, 0x7f0202b5

    if-ne v0, v1, :cond_1

    .line 1123
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:4G"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const v0, 0x7f0202aa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1125
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1126
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1133
    :cond_14
    const-string v0, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1134
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "START_NETWORK_BOOSTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 1136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1137
    :cond_15
    const-string v0, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1138
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "STOP_NETWORK_BOOSTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 1140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1145
    :cond_16
    const-string v0, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    const v1, 0x10403ad

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1147
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    const/4 v5, 0x1

    const-string v0, "cbMsgBody"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1148
    :cond_17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1150
    :cond_18
    const-string v0, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1151
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    if-nez v0, :cond_1

    .line 1152
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1156
    :cond_19
    const-string v0, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1157
    const-string v0, "network_manually_selected"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkManuallySelected:Ljava/lang/String;

    goto/16 :goto_0

    .line 1160
    :cond_1a
    const-string v0, "com.android.systemui.action.airplane_off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setAirplaneModeOff()V

    goto/16 :goto_0

    .line 1164
    :cond_1b
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    .line 1168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    .line 1169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 1170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1166
    :cond_1c
    const/4 v0, 0x0

    goto :goto_3

    .line 1171
    :cond_1d
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1172
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->unregisterPhoneStateListener(Landroid/content/Context;)V

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 1176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText()V

    .line 1177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 1178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    .line 1179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 1180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1183
    :cond_1e
    const-string v0, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1184
    const-string v0, "ikeerror"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1185
    .local v9, "error":I
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPSEC_CONNECTION_EVENT received : error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    if-nez v9, :cond_1f

    .line 1187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCallingConnected:Z

    .line 1191
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 1192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1189
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCallingConnected:Z

    goto :goto_4

    .line 1194
    .end local v9    # "error":I
    :cond_20
    const-string v0, "com.sec.epdg.EPDG_NOTAVAILABLE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1195
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "EPDG_NOTAVAILABLE received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCallingConnected:Z

    .line 1197
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 1198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V

    goto/16 :goto_0

    .line 1200
    :cond_21
    const-string v0, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1201
    const-string v0, "networkType"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1202
    .local v11, "networkType":I
    const-string v0, "ipsecevent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1203
    .local v10, "ipsecevent":Ljava/lang/String;
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPSEC_EVENT_REG_LISTENER_IMS received : networkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , ipsecevent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/16 v0, 0xb

    if-ne v11, v0, :cond_23

    if-eqz v10, :cond_23

    const-string v0, "IPSEC_DISCONNECTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "IPSEC_PEER_DISCONNECTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1206
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCallingConnected:Z

    .line 1208
    :cond_23
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 1209
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0
.end method

.method public onUserSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 7230
    return-void
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 9
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    const v6, 0x7f0202f2

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 861
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 959
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 868
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v0, :cond_1

    .line 869
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshMPTCPIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 873
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    if-eqz v0, :cond_2

    .line 874
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionEthernet:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    .line 894
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCaptiveNotLogin:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiCaptiveNotLogin(Z)V

    .line 897
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_6

    .line 899
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-ne v0, v6, :cond_5

    move v6, v1

    :goto_3
    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 954
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_0

    .line 879
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_5
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_5

    .line 899
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_3

    .line 921
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v0, v2, :cond_7

    .line 922
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyVZW(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 940
    :goto_6
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_c

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_7
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-ne v0, v6, :cond_d

    move v6, v1

    :goto_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v7

    move-object v0, p1

    move v1, v8

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 923
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v0, v2, :cond_8

    .line 924
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyTMO(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_6

    .line 927
    :cond_8
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-nez v0, :cond_9

    .line 928
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCHN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_6

    .line 929
    :cond_9
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_a

    .line 930
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyPermanentDataIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_6

    .line 931
    :cond_a
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForJPN:Z

    if-eqz v0, :cond_b

    .line 932
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyJPN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_6

    .line 934
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyOpen(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_6

    .line 940
    :cond_c
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_7

    :cond_d
    move v6, v7

    goto :goto_8
.end method

.method refreshViews()V
    .locals 19

    .prologue
    .line 3227
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 3229
    .local v7, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 3230
    .local v6, "combinedSignalIconId":I
    const-string v5, ""

    .line 3231
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v15, ""

    .line 3232
    .local v15, "wifiLabel":Ljava/lang/String;
    const-string v12, ""

    .line 3234
    .local v12, "mobileLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v8

    .line 3237
    .local v8, "emergencyOnly":Z
    const-string v11, ""

    .line 3240
    .local v11, "mATTmobileLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    .line 3241
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 3242
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 3243
    const-string v12, ""

    .line 3398
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1c

    .line 3399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_17

    .line 3400
    const v16, 0x7f0a029a

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3402
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 3446
    :cond_1
    :goto_1
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1b

    .line 3447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 3448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 3449
    .local v13, "serviceState":I
    if-eqz v13, :cond_2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v0, v13, :cond_2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v0, v13, :cond_3

    .line 3453
    :cond_2
    const-string v16, "StatusBar.NetworkController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NetworkName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 3463
    .end local v13    # "serviceState":I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 3464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3473
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 3474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a01f3

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3475
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 3476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a0258

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3480
    const-string v16, "StatusBar.NetworkController"

    const-string v17, "mBluetoothTethered:mDataTypeIconId is BT Tether Icon"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 3482
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 3483
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 3489
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v16, v0

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1e

    const/16 v16, 0x1

    :goto_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    .line 3490
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 3491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 3505
    :goto_5
    const v16, 0x7f0a02a9

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3509
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_23

    .line 3513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a0259

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 3515
    const v16, 0x7f02049d

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    .line 3516
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 3517
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 3521
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 3525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1f

    .line 3527
    const-string v12, ""

    .line 3596
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 3597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    move/from16 v16, v0

    if-gez v16, :cond_28

    const v16, 0x7f02010e

    :goto_7
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 3599
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    move/from16 v16, v0

    if-gez v16, :cond_29

    const v16, 0x7f0200fd

    :goto_8
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 3601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 3605
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v16, v0

    const v17, 0x7f020627

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 3606
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 3617
    :cond_8
    const-string v17, "StatusBar.NetworkController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "refreshViews connected={"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2a

    const-string v16, " wifi"

    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2b

    const-string v16, " data"

    :goto_a
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " } level="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    if-nez v16, :cond_2c

    const-string v16, "??"

    :goto_b
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " combinedSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mobileLabel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " wifiLabel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " emergencyOnly="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " combinedLabel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mAirplaneMode="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataActivity="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mPhoneSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mQSPhoneSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataDirectionIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataTypeIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mQSDataTypeIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mNoSimIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mWifiIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mQSWifiIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mWifiActivityIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mBluetoothTetherIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 3668
    .local v3, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_c

    .line 3273
    .end local v3    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 3277
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v16, :cond_a

    .line 3278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 3279
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 3284
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 3285
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 3287
    move-object v5, v12

    .line 3288
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 3289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3292
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v16, :cond_f

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeForSPR:Z

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    move/from16 v16, v0

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 3294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_1

    .line 3305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 3306
    const v16, 0x7f02027f

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 3378
    :cond_b
    :goto_d
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->shouldShowPermanentDataIcon()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 3380
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_16

    .line 3381
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 3389
    :cond_c
    :goto_e
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v16

    if-nez v16, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 3392
    :cond_d
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 3393
    const-string v16, "StatusBar.NetworkController"

    const-string v17, "Invisible Data Activity Icon"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3296
    :pswitch_0
    const v16, 0x7f02027d

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 3299
    :pswitch_1
    const v16, 0x7f020280

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 3302
    :pswitch_2
    const v16, 0x7f02027e

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 3308
    :cond_e
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 3312
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    move/from16 v16, v0

    if-nez v16, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    move/from16 v16, v0

    if-nez v16, :cond_10

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v16, :cond_13

    .line 3313
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_2

    .line 3329
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    move/from16 v16, v0

    if-eqz v16, :cond_12

    .line 3330
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 3336
    :goto_f
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v16, :cond_b

    .line 3337
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataTypeIconIdForSPR()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    goto/16 :goto_d

    .line 3315
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_f

    .line 3318
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_f

    .line 3321
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_f

    .line 3324
    :pswitch_6
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v16, :cond_11

    .line 3325
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_f

    .line 3332
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_f

    .line 3340
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_3

    .line 3356
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v16, v0

    if-eqz v16, :cond_15

    .line 3357
    const v16, 0x7f0204ac

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 3364
    :goto_10
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v16, :cond_b

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-nez v16, :cond_b

    .line 3365
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    if-eqz v16, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    .line 3369
    const-string v16, "StatusBar.NetworkController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "refreshViews: DATA_SUSPENDED : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_d

    .line 3342
    :pswitch_7
    const v16, 0x7f0204a7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_10

    .line 3345
    :pswitch_8
    const v16, 0x7f0204b7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_10

    .line 3348
    :pswitch_9
    const v16, 0x7f0204a9

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_10

    .line 3359
    :cond_15
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_10

    .line 3383
    :cond_16
    const v16, 0x7f02049e

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_e

    .line 3405
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 3410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_4

    .line 3427
    :goto_11
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v16, :cond_18

    .line 3428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    move-object/from16 v16, v0

    if-eqz v16, :cond_18

    .line 3429
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "KT"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 3430
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getKTWifiActivityIcon()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 3439
    :cond_18
    :goto_12
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-nez v16, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCaptiveNotLogin:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 3440
    :cond_19
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 3412
    :pswitch_a
    const v16, 0x7f0204a7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_11

    .line 3415
    :pswitch_b
    const v16, 0x7f0204b7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_11

    .line 3418
    :pswitch_c
    const v16, 0x7f0204a9

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_11

    .line 3421
    :pswitch_d
    const v16, 0x7f0204ac

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_11

    .line 3432
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getLGTWifiActivityIcon()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_12

    .line 3459
    :cond_1b
    move-object v5, v15

    goto/16 :goto_2

    .line 3466
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1d

    .line 3467
    const-string v15, ""

    goto/16 :goto_3

    .line 3469
    :cond_1d
    const v16, 0x7f0a0299

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 3489
    :cond_1e
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 3493
    :pswitch_e
    const v16, 0x7f0204a7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetActivityIconId:I

    goto/16 :goto_5

    .line 3496
    :pswitch_f
    const v16, 0x7f0204b7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetActivityIconId:I

    goto/16 :goto_5

    .line 3499
    :pswitch_10
    const v16, 0x7f0204a9

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetActivityIconId:I

    goto/16 :goto_5

    .line 3502
    :pswitch_11
    const v16, 0x7f0204ac

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetActivityIconId:I

    goto/16 :goto_5

    .line 3529
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_22

    .line 3531
    const-string v15, ""

    .line 3533
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v16, :cond_20

    .line 3534
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_21

    .line 3535
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 3545
    :cond_20
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3546
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_6

    .line 3537
    :cond_21
    move-object v5, v12

    goto :goto_13

    .line 3542
    :cond_22
    const v16, 0x104011b

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3543
    move-object v5, v15

    goto :goto_13

    .line 3549
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 3552
    const v16, 0x7f0a0299

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3554
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v16, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_25

    .line 3555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_25

    .line 3556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 3557
    .restart local v13    # "serviceState":I
    if-eqz v13, :cond_24

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v0, v13, :cond_24

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v0, v13, :cond_25

    .line 3561
    :cond_24
    const-string v16, "StatusBar.NetworkController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NetworkName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 3570
    .end local v13    # "serviceState":I
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_26

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 3572
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_15
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3574
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 3577
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    goto/16 :goto_6

    .line 3570
    :cond_26
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    goto :goto_14

    .line 3572
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_15

    .line 3597
    :cond_28
    sget-object v16, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    move/from16 v17, v0

    aget v16, v16, v17

    goto/16 :goto_7

    .line 3599
    :cond_29
    sget-object v16, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    move/from16 v17, v0

    aget v16, v16, v17

    goto/16 :goto_8

    .line 3617
    :cond_2a
    const-string v16, ""

    goto/16 :goto_9

    :cond_2b
    const-string v16, ""

    goto/16 :goto_a

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_b

    .line 3671
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiConnected:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSimIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMPTCPSettingEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileDataEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastBluetoothTethered:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastEthernetActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3c

    .line 3710
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2f

    .line 3711
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 3714
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_30

    .line 3715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 3719
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_31

    .line 3720
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 3742
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_32

    .line 3743
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    .line 3747
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_33

    .line 3748
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 3752
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_34

    .line 3753
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 3756
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiConnected:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_35

    .line 3757
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiConnected:Z

    .line 3760
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_36

    .line 3761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    .line 3764
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_37

    .line 3765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    .line 3769
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_38

    .line 3770
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 3773
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v6, :cond_39

    .line 3774
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 3778
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3a

    .line 3779
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    .line 3783
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-nez v16, :cond_3d

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v16, :cond_3d

    .line 3784
    :cond_3b
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 3785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3786
    .local v2, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_16
    if-ge v9, v2, :cond_3d

    .line 3787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3788
    .local v14, "v":Landroid/widget/TextView;
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3786
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 3705
    .end local v2    # "N":I
    .end local v9    # "i":I
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3706
    .local v4, "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_17

    .line 3793
    .end local v4    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3e

    .line 3794
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneState:I

    .line 3798
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3799
    .restart local v2    # "N":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_18
    if-ge v9, v2, :cond_40

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3801
    .restart local v14    # "v":Landroid/widget/TextView;
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3802
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3f

    .line 3803
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3799
    :goto_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    .line 3805
    :cond_3f
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19

    .line 3810
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_40
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "CU"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_41

    .line 3811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3812
    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v2, :cond_43

    .line 3813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3814
    .restart local v14    # "v":Landroid/widget/TextView;
    const v16, 0x104011b

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3812
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 3818
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3819
    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v2, :cond_43

    .line 3820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3821
    .restart local v14    # "v":Landroid/widget/TextView;
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3822
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_42

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    if-nez v16, :cond_42

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v16, :cond_42

    .line 3823
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3819
    :cond_42
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 3842
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3843
    const/4 v9, 0x0

    :goto_1c
    if-ge v9, v2, :cond_45

    .line 3844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3845
    .restart local v14    # "v":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/widget/TextView;->getVisibility()I

    move-result v16

    if-nez v16, :cond_44

    .line 3846
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3847
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3848
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3849
    const-string v16, "StatusBar.NetworkController"

    const-string v17, "update carrier label"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    :goto_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 3851
    :cond_44
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 3857
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_46

    .line 3858
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 3861
    :cond_46
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_47

    .line 3862
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 3865
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_48

    .line 3866
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 3871
    :cond_48
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMPTCPSettingEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_49

    .line 3872
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMPTCPSettingEnabled:Z

    .line 3876
    :cond_49
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4a

    .line 3877
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    .line 3880
    :cond_4a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4b

    .line 3881
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 3884
    :cond_4b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4c

    .line 3885
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    .line 3888
    :cond_4c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4d

    .line 3889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    .line 3892
    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastBluetoothTethered:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4e

    .line 3893
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 3896
    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileDataEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4f

    .line 3897
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileDataEnabled:Z

    .line 3900
    :cond_4f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCarrierText()V

    .line 3901
    return-void

    .line 3491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 3294
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3313
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 3340
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 3410
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 720
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 721
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 722
    .local v1, "subIdtemp":[I
    if-eqz v1, :cond_0

    .line 723
    aget v0, v1, v3

    .line 724
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 725
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerPhoneStateListener subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    .end local v0    # "subId":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x1e1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 735
    return-void

    .line 727
    :cond_0
    const v2, 0x7fffffff

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_0
.end method

.method public removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method

.method protected setAirplaneModeOff()V
    .locals 3

    .prologue
    .line 1765
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1766
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 1767
    return-void
.end method

.method public setStackedMode(Z)V
    .locals 1
    .param p1, "stacked"    # Z

    .prologue
    .line 1002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    .line 1003
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 805
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 819
    return-void
.end method

.method protected unregisterPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 741
    :cond_0
    return-void
.end method

.method protected updateAirplaneMode()V
    .locals 13

    .prologue
    const/16 v12, 0x333

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1717
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 1721
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    .line 1727
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v7, :cond_0

    const-string v7, "USA"

    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1729
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1731
    .local v5, "mNotiManager":Landroid/app/NotificationManager;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v7, :cond_2

    .line 1732
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1734
    .local v6, "settinglaunchIntent":Landroid/content/Intent;
    const-string v7, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1735
    const v7, 0x10008000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1736
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/high16 v10, 0x8000000

    invoke-static {v7, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1738
    .local v1, "airplanePendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1739
    .local v2, "airplaneoffIntent":Landroid/content/Intent;
    const-string v7, "com.android.systemui.action.airplane_off"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/high16 v10, 0x10000000

    invoke-static {v7, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1742
    .local v3, "airplaneoffPendingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1743
    .local v0, "airplaneNoti":Landroid/app/Notification$Builder;
    const v7, 0x7f020270

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0525

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a054e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1749
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1750
    .local v4, "mAirplaneNotification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1751
    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 1752
    iput v8, v4, Landroid/app/Notification;->priority:I

    .line 1753
    iput v8, v4, Landroid/app/Notification;->visibility:I

    .line 1754
    const v7, 0x10101010

    iput v7, v4, Landroid/app/Notification;->commonValue:I

    .line 1756
    invoke-virtual {v5, v12, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1762
    .end local v0    # "airplaneNoti":Landroid/app/Notification$Builder;
    .end local v1    # "airplanePendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "airplaneoffIntent":Landroid/content/Intent;
    .end local v3    # "airplaneoffPendingIntent":Landroid/app/PendingIntent;
    .end local v4    # "mAirplaneNotification":Landroid/app/Notification;
    .end local v5    # "mNotiManager":Landroid/app/NotificationManager;
    .end local v6    # "settinglaunchIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v7, v9

    .line 1717
    goto/16 :goto_0

    .line 1758
    .restart local v5    # "mNotiManager":Landroid/app/NotificationManager;
    :cond_2
    invoke-virtual {v5, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3147
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3149
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 3152
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 3153
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v5, :cond_5

    .line 3154
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 3155
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 3161
    :goto_1
    const-string v5, "inetCondition"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3172
    .local v1, "connectionStatus":I
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v8, 0x7

    if-ne v5, v8, :cond_6

    .line 3173
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 3176
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v5, :cond_0

    .line 3177
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    .line 3188
    :cond_0
    :goto_2
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v5, :cond_1

    .line 3189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->checkCarrierWifiIcon()V

    .line 3196
    :cond_1
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/16 v8, 0x9

    if-ne v5, v8, :cond_8

    :goto_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    .line 3197
    const-string v5, "StatusBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EthernetConnected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    if-eqz v5, :cond_3

    .line 3200
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetManager:Landroid/net/EthernetManager;

    invoke-virtual {v5}, Landroid/net/EthernetManager;->getEthernetServiceMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 3202
    .local v2, "ethernetMessenger":Landroid/os/Messenger;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v5, :cond_2

    .line 3203
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EthernetHandler;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EthernetHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 3204
    .local v3, "ethernethandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3205
    if-eqz v2, :cond_2

    .line 3206
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v3, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 3209
    .end local v3    # "ethernethandler":Landroid/os/Handler;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateEthernetIcons()V

    .line 3215
    .end local v2    # "ethernetMessenger":Landroid/os/Messenger;
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    .line 3217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 3218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 3219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 3220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 3221
    return-void

    .end local v1    # "connectionStatus":I
    :cond_4
    move v5, v7

    .line 3152
    goto/16 :goto_0

    .line 3157
    :cond_5
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 3158
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 3181
    .restart local v1    # "connectionStatus":I
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-eqz v5, :cond_7

    .line 3182
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    .line 3184
    :cond_7
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_2

    :cond_8
    move v6, v7

    .line 3196
    goto :goto_3
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 2705
    const-string v2, "CarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2709
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2710
    .local v0, "something":Z
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 2711
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2712
    const-string v2, "KDDI"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2713
    const-string p4, "au"

    .line 2716
    :cond_0
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    const/4 v0, 0x1

    .line 2719
    :cond_1
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 2720
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2721
    const-string v2, "KDDI"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2722
    const-string p2, "au"

    .line 2725
    :cond_2
    if-eqz v0, :cond_3

    .line 2726
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2728
    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    const/4 v0, 0x1

    .line 2733
    :cond_4
    if-eqz v0, :cond_9

    .line 2734
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_8

    .line 2735
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2736
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 2758
    :goto_0
    return-void

    .line 2737
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x10403ad

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2740
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2741
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x13

    if-le v2, v3, :cond_7

    .line 2742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 2743
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2745
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2748
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2751
    :cond_9
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_a

    .line 2752
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2754
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "showCB"    # Z
    .param p6, "CBmsg"    # Ljava/lang/String;

    .prologue
    .line 2766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2767
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2768
    .local v0, "something":Z
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCB:Ljava/lang/String;

    .line 2770
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 2771
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    const/4 v0, 0x1

    .line 2774
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2775
    if-eqz v0, :cond_1

    .line 2776
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2778
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2779
    const/4 v0, 0x1

    .line 2781
    :cond_2
    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    .line 2782
    if-eqz v0, :cond_3

    .line 2783
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    :cond_3
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2786
    const/4 v0, 0x1

    .line 2789
    :cond_4
    if-eqz v0, :cond_5

    .line 2790
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2795
    :goto_0
    return-void

    .line 2792
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1575
    const-string v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1577
    .local v5, "stateExtra":Ljava/lang/String;
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimState, sim state is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const-string v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1583
    const-string v6, "reason"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, "absentReason":Ljava/lang/String;
    const-string v6, "PERM_DISABLED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1585
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1635
    .end local v0    # "absentReason":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    .line 1637
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 1638
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_1

    .line 1587
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1591
    .end local v0    # "absentReason":Ljava/lang/String;
    :cond_1
    const-string v6, "CARD_IO_ERROR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1592
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1594
    :cond_2
    const-string v6, "READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "IMSI"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "LOADED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1597
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1599
    :cond_4
    const-string v6, "LOCKED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1600
    const-string v6, "reason"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1602
    .local v4, "lockedReason":Ljava/lang/String;
    const-string v6, "PIN"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1603
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1605
    :cond_5
    const-string v6, "PUK"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1606
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1615
    :cond_6
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v7, "NETWORK_LOCKED"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1621
    :goto_2
    :try_start_1
    const-class v6, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v7, "PERSO_LOCKED"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1623
    :catch_0
    move-exception v2

    .line 1624
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "StatusBar.NetworkController"

    const-string v7, "updateSimState:PERSO_LOCKED is not a constant in State"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1617
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 1618
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "StatusBar.NetworkController"

    const-string v7, "updateSimState:NETWORK_LOCKED is not a constant in State"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1628
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "lockedReason":Ljava/lang/String;
    :cond_7
    const-string v6, "NOT_READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1629
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 1631
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 1640
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimState:mSimState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    return-void
.end method

.method protected updateWifiIcons()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2880
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 2881
    .local v0, "inetCondition":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v1, :cond_4

    .line 2882
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2883
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 2884
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    .line 2888
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v1, :cond_0

    .line 2889
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2893
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v1, :cond_1

    .line 2894
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    if-eqz v1, :cond_1

    .line 2895
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2900
    :cond_1
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2902
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCaptiveNotLogin:Z

    if-eqz v1, :cond_2

    .line 2903
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_NOT_LOGIN_CAPTIVE:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2908
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWifiCallingIcon:Z

    if-eqz v1, :cond_3

    .line 2909
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCallingConnected:Z

    if-eqz v1, :cond_3

    .line 2910
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2924
    :cond_3
    :goto_0
    return-void

    .line 2915
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_5

    .line 2916
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2917
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 2922
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0232

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 2919
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_7

    const v1, 0x7f0204ee

    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2920
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_6

    const v2, 0x7f02010e

    :cond_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    goto :goto_1

    :cond_7
    move v1, v2

    .line 2919
    goto :goto_2
.end method

.method protected updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2826
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2827
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2828
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    .line 2876
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 2877
    return-void

    :cond_1
    move v4, v5

    .line 2828
    goto :goto_0

    .line 2831
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2832
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 2834
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 2835
    .local v3, "wasConnected":Z
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 2837
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v4, :cond_6

    .line 2839
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 2840
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 2841
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2843
    :cond_3
    if-eqz v1, :cond_5

    .line 2844
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 2849
    :goto_3
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v4, :cond_0

    .line 2850
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->checkCarrierWifiIcon()V

    goto :goto_1

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    move v4, v5

    .line 2835
    goto :goto_2

    .line 2846
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 2853
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v4, :cond_0

    .line 2854
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 2856
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "wasConnected":Z
    :cond_7
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2866
    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    .line 2867
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    goto :goto_1

    .line 2871
    :cond_8
    const-string v4, "com.samsung.intent.action.WIFI_CAPTIVE_NOT_LOGIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2872
    const-string v4, "show_wifi_icon_captive_not_login"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCaptiveNotLogin:Z

    .line 2873
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWifiState : mWifiCaptiveNotLogin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCaptiveNotLogin:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected updateWimaxIcons()V
    .locals 3

    .prologue
    .line 3085
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_2

    .line 3086
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_1

    .line 3087
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 3088
    .local v0, "inetCondition":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    if-eqz v1, :cond_0

    .line 3089
    sget v1, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 3101
    .end local v0    # "inetCondition":I
    :goto_0
    return-void

    .line 3091
    .restart local v0    # "inetCondition":I
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_0

    .line 3095
    .end local v0    # "inetCondition":I
    :cond_1
    sget v1, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 3096
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a023c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_0

    .line 3099
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_0
.end method

.method protected final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3059
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3060
    .local v0, "action":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 3061
    .local v1, "wasConnected":Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3062
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3064
    .local v2, "wimaxStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 3079
    .end local v2    # "wimaxStatus":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    .line 3081
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 3082
    return-void

    .restart local v2    # "wimaxStatus":I
    :cond_1
    move v3, v4

    .line 3064
    goto :goto_0

    .line 3066
    .end local v2    # "wimaxStatus":I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3067
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    goto :goto_1

    .line 3068
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3069
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    .line 3071
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 3074
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 3076
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 3074
    goto :goto_2

    :cond_5
    move v3, v4

    .line 3076
    goto :goto_3
.end method
