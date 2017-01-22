.class public Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$3;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    }
.end annotation


# static fields
.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

.field public static final ACTION_UPDATE_NETWORK_EMERGENCY_ONLY:Ljava/lang/String; = "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

.field static final CHATTY:Z = false

.field static final DEBUG:Z = true

.field private static final NB_SIM:I = 0x2

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field private static final SIM_0:I = 0x0

.field private static final SIM_1:I = 0x1

.field public static final SimIconImage:[I

.field public static final SimIconImageV2:[I

.field static final TAG:Ljava/lang/String; = "StatusBar.MSimNetworkController"

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
.field PHONE_ID1:I

.field PHONE_ID2:I

.field mBootDataSvcAcquired:Z

.field mBootVoiceSvcAcquired:Z

.field private mCAIndicator:Z

.field mCallState:[I

.field private mCarrierTextSub:[Ljava/lang/String;

.field mCurrentSimSlot:I

.field private mDataKeyDialog:Landroid/app/AlertDialog;

.field mDataStateDual:[I

.field private mDefaultPhoneId:I

.field private mEFSPN:[I

.field private mForceRefresh:Z

.field mIsCmccCard:[Z

.field mIsCtcCard:[Z

.field mIsDSDSlimited:[Z

.field mIsDialingEmergencyCall:[Z

.field mLastBluetoothTethered:Z

.field private mLastCB:Ljava/lang/String;

.field mLastCallState:[I

.field mLastDataState:I

.field mLastDataStateDual:[I

.field mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mLastMobileActivityIconId:[I

.field private mLastNwboosterDataTypeIconId:I

.field private mLastNwboosterRilEnabled:Z

.field private mLastNwboosterSettingEnabled:Z

.field mLastRoamingIconId:[I

.field mLastRssiIconId:[I

.field mLastSeperatedDataState:[I

.field mLastSimDataServiceState:[I

.field mLastSimFocus:[Z

.field mLastSimIconId:I

.field mLastSimIconVisible:Z

.field mLastWifiActivityIconId:I

.field mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

.field mMSimContentDescriptionDataType:[Ljava/lang/String;

.field mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

.field mMSimDataActivity:[I

.field mMSimDataConnected:[Z

.field mMSimDataDirectionIconId:[I

.field mMSimDataServiceState:[I

.field mMSimDataSignalIconId:[I

.field mMSimDataTypeIconId:[I

.field private mMSimIconId:[I

.field mMSimLastCombinedSignalIconId:[I

.field mMSimLastDataDirectionIconId:[I

.field mMSimLastDataTypeIconId:[I

.field mMSimLastPhoneSignalIconId:[I

.field mMSimLastSimIconId:[I

.field mMSimLastcombinedActivityIconId:[I

.field mMSimMobileActivityIconId:[I

.field mMSimNetworkName:[Ljava/lang/String;

.field mMSimPhoneSignalIconId:[I

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field mMSimServiceState:[Landroid/telephony/ServiceState;

.field mMSimSignalStrength:[Landroid/telephony/SignalStrength;

.field mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mMSimcombinedActivityIconId:[I

.field mMSimcombinedSignalIconId:[I

.field mMobileActivityIconId:[I

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

.field private mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

.field mNoMSimIconId:[I

.field private mNwboosterDataTypeIconId:I

.field private mNwboosterRilEnabled:Z

.field private mNwboosterSettingEnabled:Z

.field mPhoneCount:I

.field mPlmn:[Ljava/lang/String;

.field mRoamingIconId:[I

.field mRssiIconId:[I

.field mSeperatedDataNetType:[I

.field mSeperatedDataState:[I

.field private mShowLAC:[Z

.field mShowPlmn:[Z

.field mShowSpn:[Z

.field private mSim1Icon:I

.field private mSim2Icon:I

.field private mSimEnabled:[Z

.field mSimFocus:[Z

.field mSimIconId:I

.field mSimIconVisible:Z

.field mSimSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSpn:[Ljava/lang/String;

.field private mSubIdPhoneIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSubsLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiActivityIconId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->initializeCodeToState()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->sCodeToState:Ljava/util/HashMap;

    .line 231
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImage:[I

    .line 238
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    return-void

    .line 231
    :array_0
    .array-data 4
        0x7f020273
        0x7f020274
        0x7f020277
        0x7f02027a
        0x7f020276
    .end array-data

    .line 238
    :array_1
    .array-data 4
        0x7f020273
        0x7f020274
        0x7f020272
        0x7f02027b
        0x7f020279
        0x7f020278
        0x7f020277
        0x7f02027a
        0x7f020276
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 299
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    .line 150
    new-array v3, v4, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowLAC:[Z

    .line 151
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    .line 194
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 195
    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID1:I

    .line 196
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID2:I

    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    .line 202
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCB:Ljava/lang/String;

    .line 208
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 209
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 210
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconVisible:Z

    .line 211
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    .line 214
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 246
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBootVoiceSvcAcquired:Z

    .line 247
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBootDataSvcAcquired:Z

    .line 3809
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 3811
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 3817
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    .line 3922
    const v3, 0x7f02031f

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 3923
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 3924
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 3925
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 3926
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    .line 3927
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 300
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 301
    .local v2, "numPhones":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener numPhones: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    .line 303
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    .line 304
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    .line 305
    new-array v3, v2, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 306
    new-array v3, v2, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 307
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    .line 308
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    .line 309
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    .line 310
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    .line 311
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    .line 312
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 313
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    .line 314
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    .line 315
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    .line 316
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    .line 317
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    .line 318
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    .line 319
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    .line 320
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    .line 321
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    .line 322
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    .line 323
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    .line 324
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    .line 325
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    .line 326
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    .line 327
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    .line 328
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 329
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    .line 331
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    if-nez v3, :cond_1

    .line 332
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    .line 334
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    if-nez v3, :cond_2

    .line 335
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    .line 337
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    if-nez v3, :cond_3

    .line 338
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    .line 340
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    if-nez v3, :cond_4

    .line 341
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    .line 343
    :cond_4
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    .line 344
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    .line 347
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    .line 348
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    .line 349
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    .line 350
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    .line 351
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    .line 353
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    .line 354
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    .line 355
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    .line 360
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    .line 361
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    .line 362
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    .line 364
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    .line 367
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    .line 368
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    .line 369
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    .line 370
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRssiIconId:[I

    .line 371
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    .line 372
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    .line 375
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    .line 378
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 379
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v1

    .line 380
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v1

    .line 381
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    .line 382
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    .line 384
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v7, v3, v1

    .line 385
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v7, v3, v1

    .line 386
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aput v6, v3, v1

    .line 387
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aput v6, v3, v1

    .line 388
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v7, v3, v1

    .line 389
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aput v6, v3, v1

    .line 390
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aput v6, v3, v1

    .line 391
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    aput v7, v3, v1

    .line 392
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    aput v7, v3, v1

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    aput v7, v3, v1

    .line 394
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aput v7, v3, v1

    .line 395
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aput v7, v3, v1

    .line 396
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 397
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aput v8, v3, v1

    .line 398
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aput v7, v3, v1

    .line 399
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    aput v7, v3, v1

    .line 401
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aput v7, v3, v1

    .line 402
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aput v7, v3, v1

    .line 403
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    aput v7, v3, v1

    .line 405
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    aput-boolean v7, v3, v1

    .line 407
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aput v7, v3, v1

    .line 408
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    aput v7, v3, v1

    .line 409
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aput-boolean v7, v3, v1

    .line 410
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aput-boolean v7, v3, v1

    .line 412
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aput-boolean v7, v3, v1

    .line 414
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v7, v3, v1

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 417
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 420
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 421
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 424
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    .line 425
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 426
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    .line 427
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataServiceState:I

    .line 428
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    .line 429
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 430
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 432
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 433
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneSignalIconId:I

    .line 434
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 436
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataDirectionIconId:I

    .line 437
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataSignalIconId:I

    .line 438
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeIconId:I

    .line 439
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSimIconId:I

    .line 441
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 442
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 444
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 446
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 447
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 448
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataTypeIconId:I

    .line 449
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 450
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mForceRefresh:Z

    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 454
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v3, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v3, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v3, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v3, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v3, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_7

    const-string v3, "USA"

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_9

    .line 469
    :cond_8
    const-string v3, "com.android.systemui.action.airplane_off"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->m4GDataDistinguishable:Z

    if-eqz v3, :cond_b

    .line 473
    :cond_a
    const-string v3, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    :cond_b
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v3, :cond_c

    .line 477
    const-string v3, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    :cond_c
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mFolderDevice:Z

    if-eqz v3, :cond_d

    .line 481
    const-string v3, "android.settings.DATA_NETWORK_KEY_PRESSED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    :cond_d
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    .line 487
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 491
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->initDualSimUiValue()V

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 494
    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    .line 495
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 497
    return-void

    .line 150
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 151
    nop

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isPsOnly(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalIconForCTCRoamingCall()V

    return-void
.end method

.method private applyCHN(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 7
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const v6, 0x7f0203cf

    const/4 v5, 0x2

    const v4, 0x7f0203bd

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4054
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsDSDS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4055
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isMutiSIMDSDSRadioOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4056
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, p2

    .line 4057
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, p2

    .line 4058
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, p2

    aput v2, v0, p2

    .line 4059
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "isMutiSIMDSDSRadioOff is true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_13

    .line 4064
    :cond_1
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - isDialingEmergencyCall"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4066
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v3

    .line 4067
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v3

    .line 4068
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4069
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f0209c0

    aput v1, v0, v3

    .line 4071
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v3

    .line 4093
    :cond_4
    :goto_0
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4094
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCTC(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 4096
    :cond_5
    const-string v0, "CU"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4097
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCU(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 4118
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, p2

    const v1, 0x7f0202d9

    if-ne v0, v1, :cond_7

    .line 4120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f0202da

    aput v1, v0, p2

    .line 4122
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v2

    const v1, 0x7f020627

    if-ne v0, v1, :cond_8

    .line 4123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v2

    aput v2, v0, v2

    .line 4125
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v3

    const v1, 0x7f020627

    if-ne v0, v1, :cond_9

    .line 4126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v3

    aput v2, v0, v3

    .line 4128
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p2

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setRssiIcon(II)V

    .line 4129
    const v0, 0x7f020498

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileFocusIcon(II)V

    .line 4132
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 4133
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_1a

    .line 4134
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v5, :cond_18

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_18

    .line 4137
    :cond_c
    invoke-interface {p1, v5, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4142
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v5, :cond_19

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_19

    .line 4145
    :cond_e
    invoke-interface {p1, v5, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4151
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForLTESwitch:Z

    if-nez v0, :cond_10

    .line 4152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, p2

    if-ne v0, v5, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_10

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p2

    const v1, 0x7f0202aa

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p2

    const v1, 0x7f02029f

    if-ne v0, v1, :cond_10

    .line 4154
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f02029b

    aput v1, v0, p2

    .line 4155
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "DataType icon is changed to 1x for indicate cdma call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    :cond_10
    :goto_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v0, :cond_11

    .line 4165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v3, v0, p2

    .line 4167
    :cond_11
    return-void

    .line 4073
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v3

    .line 4074
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v3

    .line 4075
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v3

    aput v2, v0, v3

    goto/16 :goto_0

    .line 4077
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_4

    .line 4078
    :cond_14
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - isDialingEmergencyCall"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4080
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v2

    .line 4081
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v2

    .line 4082
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 4083
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f0209c0

    aput v1, v0, v2

    .line 4085
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v2

    goto/16 :goto_0

    .line 4087
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v2

    .line 4088
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v2

    .line 4089
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v2

    aput v2, v0, v2

    goto/16 :goto_0

    .line 4140
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    invoke-interface {p1, v0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_1

    .line 4148
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    invoke-interface {p1, v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_2

    .line 4159
    :cond_1a
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, p2

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_3
.end method

.method private applyCTC(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 9
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const v8, 0x7f020627

    const v7, 0x7f020345

    const v4, 0x7f0203cf

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4185
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsDsdsOnlyRoaming:Z

    if-eqz v2, :cond_3

    .line 4186
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4187
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v5

    if-ne v2, v6, :cond_1a

    .line 4189
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v2, v6

    .line 4190
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v2, v6

    .line 4191
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f0209c0

    aput v3, v2, v6

    .line 4192
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v2, v6

    .line 4203
    :cond_3
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4204
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v3, v5

    aput v5, v2, v5

    .line 4205
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v8, v2, v5

    .line 4206
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v8, v2, v5

    .line 4215
    :cond_4
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4216
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v3, v6

    aput v5, v2, v6

    .line 4217
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v8, v2, v6

    .line 4218
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v8, v2, v6

    .line 4227
    :cond_5
    :goto_2
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v2, :cond_6

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4228
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v7, v2, v5

    .line 4229
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v7, v2, v5

    .line 4231
    :cond_6
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v2, :cond_7

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4232
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v7, v2, v6

    .line 4233
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v7, v2, v6

    .line 4236
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, v5

    if-eq v2, v7, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, v5

    if-ne v2, v8, :cond_9

    .line 4238
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v3, v5

    aput v5, v2, v5

    .line 4240
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, v6

    if-eq v2, v7, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, v6

    if-ne v2, v8, :cond_b

    .line 4242
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v3, v6

    aput v5, v2, v6

    .line 4245
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, v5

    const v3, 0x7f0202d9

    if-ne v2, v3, :cond_c

    .line 4246
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f0202da

    aput v3, v2, v5

    .line 4248
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, v6

    const v3, 0x7f0202d9

    if-ne v2, v3, :cond_d

    .line 4249
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f0202da

    aput v3, v2, v6

    .line 4252
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, v5

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, v5

    const v3, 0x7f0209c0

    if-ne v2, v3, :cond_e

    .line 4253
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v5, v2, v5

    .line 4255
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, v6

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, v6

    const v3, 0x7f0209c0

    if-ne v2, v3, :cond_f

    .line 4256
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v5, v2, v6

    .line 4259
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v2, v2, p2

    invoke-interface {p1, v2, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4261
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsDsdsOnlyRoaming:Z

    if-eqz v2, :cond_14

    .line 4262
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v2, v2, v5

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v2, v2, v6

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v2, v2, v5

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_14

    .line 4265
    :cond_12
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_13

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v5

    if-ne v2, v6, :cond_20

    .line 4267
    :cond_13
    invoke-interface {p1, v5, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4275
    :cond_14
    :goto_3
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4276
    :cond_15
    invoke-interface {p1, v5, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4277
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshSignalCluster - sim1 Off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    :cond_16
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4280
    :cond_17
    invoke-interface {p1, v5, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 4281
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshSignalCluster - sim2 Off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    :cond_18
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v2, :cond_19

    .line 4285
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v1

    .line 4286
    .local v1, "slotSwiching":Ljava/lang/String;
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply for CTC : slotSwiching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4288
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v5, v2, v5

    .line 4289
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v5, v2, v5

    .line 4290
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v5, v2, v5

    .line 4291
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v2, v5

    .line 4292
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v5, v2, v5

    .line 4295
    .end local v1    # "slotSwiching":Ljava/lang/String;
    :cond_19
    add-int/lit8 v2, p2, 0x1

    rem-int/lit8 v0, v2, 0x2

    .line 4296
    .local v0, "opPhoneId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v6, v2, p2

    .line 4297
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v6, v2, v0

    .line 4298
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, p2

    invoke-interface {p1, v2, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setRssiIcon(II)V

    .line 4299
    return-void

    .line 4193
    .end local v0    # "opPhoneId":I
    :cond_1a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v6

    if-ne v2, v6, :cond_3

    .line 4195
    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v2, v5

    .line 4196
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v2, v5

    .line 4197
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f0209c0

    aput v3, v2, v5

    .line 4198
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v2, v5

    goto/16 :goto_0

    .line 4207
    :cond_1c
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v5

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4209
    :cond_1d
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f0209c0

    aput v3, v2, v5

    .line 4210
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v2, v5

    .line 4211
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v2, v5

    .line 4212
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v2, v5

    goto/16 :goto_1

    .line 4219
    :cond_1e
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v6

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4221
    :cond_1f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v3, 0x7f0209c0

    aput v3, v2, v6

    .line 4222
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v2, v6

    .line 4223
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v2, v6

    .line 4224
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v2, v6

    goto/16 :goto_2

    .line 4268
    :cond_20
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_21

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, v6

    if-ne v2, v6, :cond_14

    .line 4270
    :cond_21
    invoke-interface {p1, v5, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_3
.end method

.method private applyCU(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f020346

    .line 4169
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "applyCU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v0, :cond_0

    .line 4172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, v3

    .line 4173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, v3

    .line 4175
    :cond_0
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v0, :cond_1

    .line 4176
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, v4

    .line 4177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, v4

    .line 4179
    :cond_1
    return-void
.end method

.method private applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 3
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    .line 4348
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileActivityIcon(II)V

    .line 4349
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiActivityIcon(I)V

    .line 4350
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setRoamingIcon(II)V

    .line 4351
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 4353
    .local v0, "mCurrentDataActiveSim":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4354
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataState(II)V

    .line 4360
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setBtTetherState(Z)V

    .line 4361
    return-void

    .line 4356
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataState(II)V

    goto :goto_0
.end method

.method private applyOpen(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 0
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    .line 4344
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 4345
    return-void
.end method

.method private getAreaInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1598
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1599
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1601
    .local v0, "areaInfo":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    .line 1602
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1603
    .local v1, "mccMnc":I
    if-lez v1, :cond_0

    .line 1604
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    .end local v1    # "mccMnc":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1607
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final getCHNEriIcon(II)I
    .locals 3
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v1, 0x7f0202d9

    const/4 v0, 0x0

    .line 4436
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 4445
    :goto_0
    return v0

    .line 4439
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 4441
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 4443
    goto :goto_0

    .line 4439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getCTCEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 4422
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4431
    :goto_0
    return v0

    .line 4425
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4427
    :pswitch_1
    const v0, 0x7f0202da

    goto :goto_0

    .line 4429
    :pswitch_2
    const v0, 0x7f02039e

    goto :goto_0

    .line 4425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getCdmaEriIcon(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 4365
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    if-gtz v3, :cond_1

    const-string v3, "ja3gduosctc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4398
    :cond_0
    :goto_0
    return v2

    .line 4369
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 4370
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 4371
    .local v0, "iconIndex":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 4373
    .local v1, "iconMode":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iconMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4376
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$3;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4384
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 4387
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v3, :cond_0

    .line 4388
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 4390
    :pswitch_0
    const v2, 0x7f0202b8

    goto :goto_0

    .line 4378
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCTCEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 4381
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCHNEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 4392
    :pswitch_3
    const v2, 0x7f02039d

    goto :goto_0

    .line 4376
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4388
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final getCdmaPhoneSignalIconId(I)I
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    .line 2834
    const/4 v0, 0x0

    .line 2835
    .local v0, "evdoIconLevel":I
    const/4 v3, 0x0

    .line 2837
    .local v3, "lteIconLevel":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    .local v1, "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 2838
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v2

    .line 2840
    .local v2, "iconList":[I
    const-string v6, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId( "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ) CTC "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LTE: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2845
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2846
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaEriIcon(I)I

    move-result v6

    aput v6, v5, p1

    .line 2848
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2850
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v5

    mul-int/lit8 v0, v5, 0x5

    .line 2852
    if-nez v1, :cond_5

    .line 2853
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 2913
    :cond_1
    :goto_1
    array-length v5, v2

    add-int/lit8 v4, v5, -0x1

    .line 2914
    .local v4, "maxLevel":I
    if-le v1, v4, :cond_1a

    .line 2915
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId: maxLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    move v1, v4

    .line 2928
    :cond_2
    :goto_2
    aget v5, v2, v1

    return v5

    .line 2840
    .end local v4    # "maxLevel":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Evdo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cdma "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2856
    :cond_5
    add-int/2addr v1, v0

    .line 2858
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaCall(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2861
    :cond_8
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2862
    :cond_9
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2866
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2864
    :cond_a
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_3

    .line 2868
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2869
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2870
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2874
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2872
    :cond_d
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_4

    .line 2876
    :cond_e
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    goto/16 :goto_1

    .line 2879
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2880
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v5

    mul-int/lit8 v3, v5, 0x5

    .line 2882
    if-nez v1, :cond_10

    .line 2883
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2886
    :cond_10
    add-int/2addr v1, v3

    .line 2888
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSRLteCall(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2891
    :cond_13
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2892
    :cond_14
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2896
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2894
    :cond_15
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_5

    .line 2898
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2899
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2900
    :cond_17
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2904
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2902
    :cond_18
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_6

    .line 2906
    :cond_19
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    goto/16 :goto_1

    .line 2921
    .restart local v4    # "maxLevel":I
    :cond_1a
    if-gez v1, :cond_2

    .line 2922
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId: iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method private getCurrentSimSlot()I
    .locals 1

    .prologue
    .line 4696
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    return v0
.end method

.method private getMobileLabelForCHN()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4302
    const-string v1, ""

    .line 4304
    .local v1, "mobileLabel":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v3, :cond_7

    .line 4305
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v5

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v6

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_2

    .line 4308
    const-string v3, "persist.radio.multisim.stackid"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4309
    .local v0, "crossMapping":Ljava/lang/String;
    const-string v3, "1,0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4310
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v1, v3, v6

    .line 4324
    .end local v0    # "crossMapping":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4325
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v3, :cond_9

    .line 4326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v2

    .line 4327
    .local v2, "slotSwiching":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4340
    .end local v2    # "slotSwiching":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 4312
    .restart local v0    # "crossMapping":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v1, v3, v5

    goto :goto_0

    .line 4314
    .end local v0    # "crossMapping":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v5

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_3

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 4315
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v1, v3, v6

    goto :goto_0

    .line 4316
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v6

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_5

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v3

    if-nez v3, :cond_6

    .line 4317
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v1, v3, v5

    goto :goto_0

    .line 4319
    :cond_6
    const-string v1, ""

    goto :goto_0

    .line 4321
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a049d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4330
    .restart local v2    # "slotSwiching":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4333
    .end local v2    # "slotSwiching":Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4335
    :cond_a
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v3

    if-nez v3, :cond_0

    .line 4337
    const-string v1, ""

    goto/16 :goto_1
.end method

.method private getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 601
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    const/4 v0, 0x0

    .line 604
    .end local v0    # "phoneId":I
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 1197
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 1352
    .local v0, "mMSimPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private final getRoamingIcon(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 4451
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    .line 4453
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v0, :cond_2

    .line 4454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f0209c0

    aput v1, v0, p1

    .line 4485
    :goto_0
    return-void

    .line 4456
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v1, v0, p1

    .line 4457
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoService, mRoamingIconId = 0phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4459
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4461
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4462
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaEriIcon(I)I

    move-result v1

    aput v1, v0, p1

    .line 4463
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), isCdmaEri(), mRoamingIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4465
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v1, v0, p1

    .line 4466
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), !isCdmaEri(), mRoamingIconId = 0 phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4469
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v0, :cond_6

    .line 4478
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f0202d9

    aput v1, v0, p1

    .line 4479
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkRoaming(), mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4482
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v1, v0, p1

    .line 4483
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing final, mRoamingIconId = 0 phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getRssiTypeIconCMCC(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1709
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSglteMode(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1710
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1711
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1712
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0202ad

    aput v1, v0, p1

    .line 1738
    :cond_0
    :goto_0
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:isWCDMA = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLTE() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mRssiIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 1742
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v0, p1

    .line 1744
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mRssiIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_1
    return-void

    .line 1714
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0202a2

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1717
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1718
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1719
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1720
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0202b4

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1722
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0202a6

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1725
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1726
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0202ac

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1727
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isPsWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0202a1

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1730
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f02029e

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1736
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v0, p1

    goto/16 :goto_0
.end method

.method private getRssiTypeIconCTC(I)V
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    const v8, 0x7f02029e

    const v7, 0x7f02029c

    const v6, 0x7f0202af

    const v5, 0x7f0202a4

    const/4 v4, 0x0

    .line 1631
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCTC( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "LTE "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmalevel "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasDataService(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1636
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-gez v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1637
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    .line 1693
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_6

    .line 1694
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1695
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1696
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f0209c0

    aput v1, v0, p1

    .line 1698
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v4, v0, p1

    .line 1706
    :cond_6
    :goto_3
    return-void

    .line 1631
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "WCDMA"

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Evdo"

    goto/16 :goto_0

    :cond_9
    const-string v0, "2g(1x) "

    goto/16 :goto_0

    :cond_a
    const-string v0, ""

    goto/16 :goto_1

    .line 1638
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1639
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto :goto_2

    .line 1642
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v8, v0, p1

    goto :goto_2

    .line 1645
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1646
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaCall(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1647
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-lez v0, :cond_e

    .line 1651
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0202a0

    aput v1, v0, p1

    goto :goto_2

    .line 1654
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    goto/16 :goto_2

    .line 1656
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1657
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-lez v0, :cond_11

    .line 1658
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSRLteCall(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v7, v0, p1

    goto/16 :goto_2

    .line 1668
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f0202ab

    aput v1, v0, p1

    goto/16 :goto_2

    .line 1672
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto/16 :goto_2

    .line 1679
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v7, v0, p1

    goto/16 :goto_2

    .line 1683
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1684
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    goto/16 :goto_2

    .line 1685
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1686
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto/16 :goto_2

    .line 1688
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v8, v0, p1

    goto/16 :goto_2

    .line 1699
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasDataService(I)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1701
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v4, v0, p1

    .line 1702
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v4, v0, p1

    .line 1703
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "getRssiTypeIconCTC : mRoamingIconId =0 mRssiIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private final getSGLTEPhoneSignalIconId(III)I
    .locals 8
    .param p1, "csLevel"    # I
    .param p2, "psLevel"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 2935
    const/4 v4, 0x0

    .line 2936
    .local v4, "wcdmaIconLevel":I
    const/4 v2, 0x0

    .line 2938
    .local v2, "lteIconLevel":I
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v1

    .line 2940
    .local v1, "iconList":[I
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSglteMode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2941
    mul-int/lit8 v5, p2, 0x5

    add-int v0, v5, p1

    .line 2942
    .local v0, "iconLevel":I
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    .line 2948
    :goto_0
    array-length v5, v1

    add-int/lit8 v3, v5, -0x1

    .line 2949
    .local v3, "maxLevel":I
    if-le v0, v3, :cond_2

    .line 2950
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSGLTEPhoneSignalIconId: maxLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    move v0, v3

    .line 2963
    :cond_0
    :goto_1
    aget v5, v1, v0

    return v5

    .line 2944
    .end local v0    # "iconLevel":I
    .end local v3    # "maxLevel":I
    :cond_1
    move v0, p1

    .line 2945
    .restart local v0    # "iconLevel":I
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    goto :goto_0

    .line 2956
    .restart local v3    # "maxLevel":I
    :cond_2
    if-gez v0, :cond_0

    .line 2957
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSGLTEPhoneSignalIconId: iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getSimActive(I)I
    .locals 4
    .param p1, "simSlot"    # I

    .prologue
    const/4 v3, 0x1

    .line 4686
    if-nez p1, :cond_0

    .line 4687
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4692
    .local v0, "value":I
    :goto_0
    return v0

    .line 4689
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private getSimIconIndex(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 4746
    if-nez p1, :cond_0

    .line 4747
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim1Icon:I

    .line 4749
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim2Icon:I

    goto :goto_0
.end method

.method private getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 4938
    const/4 v1, 0x0

    .line 4939
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4940
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 4941
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4942
    .local v2, "values":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object v3, v2, p2

    if-eqz v3, :cond_0

    .line 4943
    aget-object v1, v2, p2

    .line 4946
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p3    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p3

    .restart local p3    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p3, v1

    goto :goto_0
.end method

.method private getUpdateDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 731
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType() mDataNetType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mDataTypeBrand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 733
    const-string v0, "ORANGE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 736
    :cond_1
    const-string v0, "OYB"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    const-string v0, "OYA"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    const-string v0, "OYC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    const-string v0, "OLB"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    const-string v0, "VD2"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    const-string v0, "MNX"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    const-string v0, "TMH"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTMHDataNetType(I)V

    goto :goto_0

    .line 761
    :cond_2
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CDR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    const-string v0, "ANC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DGT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "COL"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CTU"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BVO"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TTT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 774
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateLTEICONDataNetType(I)V

    goto/16 :goto_0

    .line 776
    :cond_4
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 777
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTFGDataNetType(I)V

    goto/16 :goto_0

    .line 779
    :cond_5
    const-string v0, "SFR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    const-string v0, "IUS"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 783
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateIUSDataNetType(I)V

    goto/16 :goto_0

    .line 785
    :cond_6
    const-string v0, "LTE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 786
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateLTEICONDataNetType(I)V

    goto/16 :goto_0

    .line 791
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$3;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 825
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    goto/16 :goto_0

    .line 793
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    goto/16 :goto_0

    .line 808
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCTCDataNetType(I)V

    goto/16 :goto_0

    .line 812
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCMCCDataNetType(I)V

    goto/16 :goto_0

    .line 815
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCUDataNetType(I)V

    goto/16 :goto_0

    .line 818
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateZVVLACInfo(I)V

    .line 819
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateZVVDataNetType(I)V

    goto/16 :goto_0

    .line 822
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateZTMDataNetType(I)V

    goto/16 :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v0, 0x7f0202b8

    const/4 v1, 0x1

    .line 4402
    if-ne p1, v1, :cond_1

    .line 4403
    const/4 v0, 0x0

    .line 4417
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 4405
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 4409
    :pswitch_2
    const v0, 0x7f02039d

    goto :goto_0

    .line 4411
    :pswitch_3
    if-nez p2, :cond_2

    .line 4412
    const v0, 0x7f0202ba

    goto :goto_0

    .line 4413
    :cond_2
    if-ne p2, v1, :cond_0

    .line 4414
    const v0, 0x7f02039f

    goto :goto_0

    .line 4405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasDataService(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1449
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 1450
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1455
    :pswitch_0
    const/4 v0, 0x1

    .line 1458
    :cond_0
    :pswitch_1
    return v0

    .line 1450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasService(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1434
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 1435
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1436
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1441
    :pswitch_0
    const/4 v1, 0x1

    .line 1444
    :cond_0
    :pswitch_1
    return v1

    .line 1436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDualSimUiValue()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4706
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4715
    .local v0, "mSimMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_1"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 4716
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_2"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 4733
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 4735
    return-void
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
    .line 1526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1527
    .local v0, "codeToState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    return-object v0
.end method

.method private isCdma(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

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

.method private isCdmaCall(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1760
    const/4 v0, 0x0

    .line 1761
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1763
    :cond_0
    const/4 v0, 0x1

    .line 1766
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdmaCall() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    return v0
.end method

.method private isCmccCard(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1497
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "numeric":Ljava/lang/String;
    const-string v1, "46000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45412"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1500
    :cond_0
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "isCmccCard "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v1, 0x1

    .line 1503
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCtcCard(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1507
    const-string v1, "gsm.sim.cdmaoperator.numeric"

    const-string v2, ""

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1509
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

    .line 1510
    :cond_0
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "isCtcCard "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v1, 0x1

    .line 1513
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCtcCardIn6Mode(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1518
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupport6ModeForCHN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 1519
    const/4 v0, 0x1

    .line 1521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 3639
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3642
    const/4 v0, 0x1

    .line 3644
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLTE(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMutiSIMDSDSRadioOff()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4048
    const-string v2, "ril.dsds.radio-off"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v2, "ril.dsds.radio.recv-end"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private isNetworkLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3022
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 3024
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v2, "isNetworkLocked() = true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3028
    :goto_0
    return v0

    .line 3027
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "isNetworkLocked() = false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkRoaming(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2819
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 2820
    .local v1, "subIdtemp":[I
    if-eqz v1, :cond_0

    .line 2821
    aget v0, v1, v2

    .line 2822
    .local v0, "subId":I
    if-lez v0, :cond_0

    .line 2823
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    .line 2828
    .end local v0    # "subId":I
    :cond_0
    return v2
.end method

.method private isNoSIMOfSlot(I)Z
    .locals 7
    .param p1, "simSlot"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 4541
    const/4 v2, 0x0

    .line 4542
    .local v2, "result":Z
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "9,9"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4543
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4544
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 4551
    :goto_0
    return v3

    .line 4547
    :cond_0
    if-nez p1, :cond_1

    const-string v4, "0"

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ne p1, v6, :cond_3

    const-string v3, "0"

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4549
    :cond_2
    const/4 v2, 0x1

    :cond_3
    move v3, v2

    .line 4551
    goto :goto_0
.end method

.method private isPsOnly(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5027
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5028
    .local v1, "configPsOnlyList":Ljava/lang/String;
    const/4 v0, 0x0

    .line 5029
    .local v0, "configPsOnly":[Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 5030
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5033
    :cond_0
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, "0"

    invoke-static {v7, v6, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5034
    .local v3, "sim1Numeric":Ljava/lang/String;
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, "0"

    invoke-static {v7, v5, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5036
    .local v4, "sim2Numeric":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 5037
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v0

    if-ge v2, v7, :cond_4

    .line 5038
    aget-object v7, v0, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    aget-object v7, v0, v2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-ne p1, v5, :cond_3

    .line 5044
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return v5

    .line 5037
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_4
    move v5, v6

    .line 5044
    goto :goto_1
.end method

.method private isPsWCDMA(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRJILNetwork(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 4966
    const-string v0, ""

    .line 4967
    .local v0, "mOperatorName":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 4969
    const-string v1, "StatusBar.MSimNetworkController"

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

    .line 4970
    if-eqz v0, :cond_1

    const-string v1, "Reliance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Jio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4971
    :cond_0
    const/4 v1, 0x1

    .line 4973
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 2186
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method

.method private isSIMLockedOfSlot(I)Z
    .locals 7
    .param p1, "simSlot"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 4555
    const/4 v2, 0x0

    .line 4557
    .local v2, "result":Z
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "9,9"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4558
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4559
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 4569
    :goto_0
    return v3

    .line 4565
    :cond_0
    if-nez p1, :cond_1

    const-string v4, "1"

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ne p1, v6, :cond_3

    const-string v3, "1"

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4567
    :cond_2
    const/4 v2, 0x1

    :cond_3
    move v3, v2

    .line 4569
    goto :goto_0
.end method

.method private isSIMOFFOfSlot(I)Z
    .locals 11
    .param p1, "simSlot"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 4573
    const/4 v2, 0x0

    .line 4575
    .local v2, "result":Z
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9,9"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4576
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4577
    const-string v1, "9,9"

    .line 4579
    :cond_0
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4580
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 4614
    :cond_1
    :goto_0
    return v6

    .line 4585
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 4586
    .local v3, "simDBvalue0":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 4587
    .local v4, "simDBvalue1":I
    const-string v7, "StatusBar.MSimNetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSIMOFFOfSlot simDBvalue0 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simDBvalue1 ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    const-string v7, "1"

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "1"

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4589
    :cond_3
    if-nez p1, :cond_4

    const-string v7, "2"

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    if-ne p1, v10, :cond_1

    const-string v7, "2"

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4591
    :cond_5
    const/4 v2, 0x1

    move v6, v2

    .line 4592
    goto :goto_0

    .line 4597
    :cond_6
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v7, :cond_9

    .line 4598
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    .line 4599
    .local v5, "slotSwiching":Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4600
    if-nez p1, :cond_7

    const-string v7, "2"

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    if-ne p1, v10, :cond_1

    const-string v7, "2"

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4602
    :cond_8
    const/4 v2, 0x1

    move v6, v2

    .line 4603
    goto/16 :goto_0

    .line 4609
    .end local v5    # "slotSwiching":Ljava/lang/String;
    :cond_9
    if-nez p1, :cond_a

    const-string v7, "2"

    aget-object v6, v0, v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v3, :cond_b

    :cond_a
    if-ne p1, v10, :cond_c

    const-string v6, "2"

    aget-object v7, v0, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    if-nez v4, :cond_c

    .line 4611
    :cond_b
    const/4 v2, 0x1

    :cond_c
    move v6, v2

    .line 4614
    goto/16 :goto_0
.end method

.method private isSRLteCall(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1750
    const/4 v0, 0x0

    .line 1751
    .local v0, "result":Z
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->isSRLTE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1753
    :cond_0
    const/4 v0, 0x1

    .line 1755
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSRLteCall() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    return v0
.end method

.method private isSglteMode(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 4951
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v1, v1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v1, v1, p1

    if-nez v1, :cond_0

    .line 4962
    :goto_0
    return v0

    .line 4954
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 4955
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSglteMode:I

    .line 4956
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSglteMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4957
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "isSglteMode is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    const/4 v0, 0x1

    goto :goto_0

    .line 4961
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "isSglteMode is false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSimCardInserted(I)Z
    .locals 8
    .param p0, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4508
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4509
    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4510
    if-nez p0, :cond_1

    .line 4537
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v4

    .line 4513
    goto :goto_0

    .line 4517
    :cond_2
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4518
    .local v1, "iccTemp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4519
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 4525
    const/4 v2, 0x0

    .line 4526
    .local v2, "key":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 4534
    :goto_1
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4537
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    .line 4528
    :pswitch_0
    aget-object v2, v0, v5

    .line 4529
    goto :goto_1

    .line 4531
    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_1

    :cond_3
    move v4, v5

    .line 4537
    goto :goto_2

    .line 4526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimStateNotReady()Z
    .locals 5

    .prologue
    .line 5242
    const/4 v2, 0x0

    .line 5243
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 5244
    .local v0, "cardStatusSlot0":I
    const/4 v1, 0x0

    .line 5255
    .local v1, "cardStatusSlot1":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-nez v3, :cond_1

    .line 5257
    :cond_0
    const/4 v2, 0x1

    .line 5261
    :cond_1
    return v2
.end method

.method private isSlot2Locked(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 2
    .param p1, "mSimstate_2"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 3015
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "Combination"

    const-string v1, "Combination"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3017
    const/4 v0, 0x1

    .line 3019
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWCDMA(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private radioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 4854
    packed-switch p1, :pswitch_data_0

    .line 4891
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4856
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4858
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 4860
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 4862
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 4864
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 4866
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 4869
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 4871
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 4873
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 4875
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 4877
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 4879
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 4881
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 4883
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 4885
    :pswitch_e
    const/16 v0, 0x11

    goto :goto_0

    .line 4887
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 4889
    :pswitch_10
    const/16 v0, 0x12

    goto :goto_0

    .line 4854
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

.method private refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;)V
    .locals 20
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .prologue
    .line 3948
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    aget v5, v2, v3

    .line 3949
    .local v5, "nwboosterWifiIconId":I
    const v6, 0x7f0204b5

    .line 3950
    .local v6, "nwboosterDataActivityIconId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_e

    .line 3951
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eqz v2, :cond_d

    .line 3952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v2, :cond_3

    const/16 v19, 0x1

    .line 3954
    .local v19, "showBoosterIcon":Z
    :goto_0
    if-eqz v19, :cond_c

    .line 3955
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eqz v2, :cond_b

    .line 3956
    const/16 v16, 0x0

    .line 3957
    .local v16, "nw_data_in":Z
    const/16 v17, 0x0

    .line 3959
    .local v17, "nw_data_out":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 3961
    :cond_0
    const/16 v16, 0x1

    .line 3971
    :cond_1
    :goto_1
    if-eqz v16, :cond_8

    if-eqz v17, :cond_8

    .line 3972
    const v6, 0x7f0204b4

    .line 3981
    :cond_2
    :goto_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 3996
    .end local v16    # "nw_data_in":Z
    .end local v17    # "nw_data_out":Z
    :goto_3
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshNwBoosterIndicator - setNWBoosterIndicators(true), showBoosterIcon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    .end local v19    # "showBoosterIcon":Z
    :goto_4
    return-void

    .line 3952
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 3962
    .restart local v16    # "nw_data_in":Z
    .restart local v17    # "nw_data_out":Z
    .restart local v19    # "showBoosterIcon":Z
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 3964
    :cond_5
    const/16 v17, 0x1

    goto :goto_1

    .line 3965
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3967
    :cond_7
    const/16 v16, 0x1

    .line 3968
    const/16 v17, 0x1

    goto :goto_1

    .line 3973
    :cond_8
    if-eqz v16, :cond_9

    if-nez v17, :cond_9

    .line 3974
    const v6, 0x7f0204b3

    goto :goto_2

    .line 3975
    :cond_9
    if-nez v16, :cond_a

    if-eqz v17, :cond_a

    .line 3976
    const v6, 0x7f0204b6

    goto :goto_2

    .line 3977
    :cond_a
    if-nez v16, :cond_2

    if-nez v17, :cond_2

    .line 3978
    const v6, 0x7f0204b5

    goto :goto_2

    .line 3985
    .end local v16    # "nw_data_in":Z
    .end local v17    # "nw_data_out":Z
    :cond_b
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aget v10, v2, v3

    .line 3987
    .local v10, "mDimNWBoosterWifiIcon":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    const v11, 0x7f0204b4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v13}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_3

    .line 3992
    .end local v10    # "mDimNWBoosterWifiIcon":I
    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 3994
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshNwBoosterIndicator - setNWBoosterIndicators(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4000
    .end local v19    # "showBoosterIcon":Z
    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 4002
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshNwBoosterIndicator - setNWBoosterIndicators(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4007
    :cond_e
    const/4 v15, 0x1

    .line 4008
    .local v15, "isNoSim":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v14, v2, :cond_f

    .line 4009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v14

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_10

    .line 4010
    const/4 v15, 0x0

    .line 4014
    :cond_f
    const v18, 0x7f020349

    .line 4015
    .local v18, "nwboosterOnIconId":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eqz v2, :cond_14

    if-nez v15, :cond_14

    .line 4016
    const v6, 0x7f0204b3

    .line 4017
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eqz v2, :cond_12

    .line 4018
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v2, :cond_11

    .line 4019
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZI)V

    .line 4024
    :goto_6
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshNwBoosterIndicator - setNWBoosterIndicators(Running)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4008
    .end local v18    # "nwboosterOnIconId":I
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 4021
    .restart local v18    # "nwboosterOnIconId":I
    :cond_11
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_6

    .line 4026
    :cond_12
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v2, :cond_13

    .line 4027
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZI)V

    .line 4032
    :goto_7
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "refreshNwBoosterIndicator - setNWBoosterIndicators(notRunning)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4029
    :cond_13
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_7

    .line 4036
    :cond_14
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v2, :cond_15

    .line 4037
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZI)V

    goto/16 :goto_4

    .line 4039
    :cond_15
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto/16 :goto_4
.end method

.method private refreshSignalIconForCTCRoamingCall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4978
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4979
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    .line 4980
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 4981
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 4982
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    .line 4983
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 4979
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4986
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    .line 4987
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 4988
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 4989
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 4986
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4992
    :cond_3
    return-void
.end method

.method private setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "areaInfo"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1614
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 1615
    .local v2, "location":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_0

    .line 1616
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 1617
    .local v1, "lac":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1618
    rem-int/lit8 v0, v1, 0x64

    .line 1619
    .local v0, "areaCode":I
    sget-object v4, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->sCodeToState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1620
    .local v3, "state":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1621
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1628
    .end local v0    # "areaCode":I
    .end local v1    # "lac":I
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCarrierText()V
    .locals 5

    .prologue
    .line 1174
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID1:I

    aget-object v0, v3, v4

    .line 1175
    .local v0, "carrierName":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1179
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1180
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1181
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1182
    .local v2, "v":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1185
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1186
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1187
    .restart local v2    # "v":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1191
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private setCurrentSimSlotIcon()V
    .locals 0

    .prologue
    .line 4758
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon_Other()V

    .line 4759
    return-void
.end method

.method private setCurrentSimSlotIcon_Other()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4762
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v1

    .line 4763
    .local v1, "numberOfSim":I
    const/4 v2, -0x1

    .line 4767
    .local v2, "simIconIndex":I
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v3, v4, :cond_4

    .line 4770
    :cond_0
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon setIcon: invisible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 4772
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 4832
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-ne v3, v5, :cond_8

    .line 4833
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 4838
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_3

    .line 4839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 4840
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon ReadySim =0::invisible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 4843
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4844
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4845
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon ReadySim =0::invisible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4846
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 4850
    :cond_3
    return-void

    .line 4773
    :cond_4
    if-ne v1, v5, :cond_6

    .line 4774
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4776
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon for SIM 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 4782
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 4786
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    .line 4787
    :cond_5
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4789
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon for SIM 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 4795
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 4799
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    .line 4801
    :cond_6
    if-ne v1, v4, :cond_1

    .line 4802
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCurrentSimSlot()I

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v3

    if-eqz v3, :cond_7

    .line 4803
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 4808
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 4812
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 4826
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v3, :cond_1

    .line 4827
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 4826
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4814
    .end local v0    # "i":I
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 4819
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 4823
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_2

    .line 4835
    :cond_8
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto/16 :goto_1
.end method

.method private setMobileLabelForZVV(Ljava/lang/String;I)V
    .locals 3
    .param p1, "networkName"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 3607
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x10403ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3609
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p2

    .line 3636
    :cond_0
    :goto_0
    return-void

    .line 3611
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isGsmRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3612
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3613
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    aget v0, v0, p2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    aget v0, v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 3614
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    goto :goto_0

    .line 3616
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v1, v1, p2

    aput-object v1, v0, p2

    goto :goto_0

    .line 3620
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowLAC:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3621
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    aget v0, v0, p2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    aget v0, v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    .line 3622
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3623
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v1, v1, p2

    aput-object v1, v0, p2

    goto/16 :goto_0

    .line 3625
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    goto/16 :goto_0

    .line 3628
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v0, v0, p2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v0, v0, p2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3629
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    goto/16 :goto_0

    .line 3631
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    goto/16 :goto_0
.end method

.method private setSimIconIndex(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "simId"    # I

    .prologue
    .line 4738
    if-nez p2, :cond_1

    .line 4739
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim1Icon:I

    .line 4743
    :cond_0
    :goto_0
    return-void

    .line 4740
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4741
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim2Icon:I

    goto :goto_0
.end method

.method private shouldShowPermanentDataIcon(I)Z
    .locals 3
    .param p1, "simIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 5274
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 5275
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 5276
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5282
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 5289
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 5285
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showDatakeyPopup()V
    .locals 4

    .prologue
    .line 5221
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 5222
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5223
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0567

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5224
    const v2, 0x7f0a0568

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5225
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5226
    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5234
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5235
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 5236
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5237
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataKeyDialog:Landroid/app/AlertDialog;

    .line 5239
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 610
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    return-void
.end method

.method private final updateCMCCDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const v2, 0x7f0a0250

    .line 1927
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1929
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCMCCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1960
    :goto_0
    :pswitch_0
    return-void

    .line 1936
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1937
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1939
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f02029f

    aput v1, v0, p1

    .line 1944
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1941
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1942
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0202d1

    aput v1, v0, p1

    goto :goto_1

    .line 1948
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1949
    :cond_2
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1951
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0202a7

    aput v1, v0, p1

    .line 1956
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1953
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1954
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0202d2

    aput v1, v0, p1

    goto :goto_2

    .line 1931
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

.method private final updateCTCDataNetType(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const v4, 0x7f0a0253

    const v2, 0x7f02029b

    const v3, 0x7f02029d

    .line 1982
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1984
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCTCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 2029
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p1

    const v1, 0x7f0202cd

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p1

    const v1, 0x7f0202cb

    if-ne v0, v1, :cond_2

    .line 2031
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 2033
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 2034
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2036
    :cond_3
    return-void

    .line 1988
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1989
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 1990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0255

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1995
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1996
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2000
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v2, v0, p1

    .line 2002
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1997
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    goto :goto_1

    .line 2006
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2007
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2011
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v2, v0, p1

    .line 2013
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 2008
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    goto :goto_2

    .line 2020
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2022
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f02029f

    aput v1, v0, p1

    .line 2023
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0250

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 1986
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private final updateCUDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1963
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1965
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCUDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1975
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 1979
    :cond_0
    return-void

    .line 1969
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0202b1

    aput v1, v0, p1

    .line 1970
    const v0, 0x7f020312

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1971
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1967
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateCarrierText(I)V
    .locals 4
    .param p1, "sub"    # I

    .prologue
    .line 1131
    const/4 v0, 0x0

    .line 1132
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 1133
    const v0, 0x10403b4

    .line 1168
    :goto_0
    if-eqz v0, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 1171
    :cond_0
    return-void

    .line 1136
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText for sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    sget-object v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$3;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1163
    const v0, 0x10403a0

    goto :goto_0

    .line 1143
    :pswitch_0
    const v0, 0x10403a0

    .line 1144
    goto :goto_0

    .line 1146
    :pswitch_1
    const v0, 0x10403b2

    .line 1147
    goto :goto_0

    .line 1149
    :pswitch_2
    const v0, 0x10403b0

    .line 1150
    goto :goto_0

    .line 1153
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    goto :goto_0

    .line 1156
    :pswitch_4
    const v0, 0x10403a4

    .line 1158
    goto :goto_0

    .line 1160
    :pswitch_5
    const v0, 0x10403ae

    .line 1161
    goto :goto_0

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataIcon(I)V
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2603
    const/4 v1, 0x0

    .line 2604
    .local v1, "iconId":I
    const/4 v2, 0x1

    .line 2605
    .local v2, "visible":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2608
    .local v0, "dataSub":I
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    .line 2609
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2619
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    .line 2620
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_1

    .line 2621
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2622
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    .line 2625
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2626
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-nez v3, :cond_2

    .line 2628
    const/4 v2, 0x0

    .line 2632
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_9

    .line 2634
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSim:Z

    .line 2635
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-ne v3, v7, :cond_8

    .line 2636
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v3, v3, p1

    packed-switch v3, :pswitch_data_0

    .line 2647
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v5

    .line 2650
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v1, v3, p1

    .line 2673
    :cond_4
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-eq v3, v7, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->shouldShowPermanentDataIcon(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2674
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v3, :cond_5

    .line 2675
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    aput v4, v3, p1

    .line 2677
    :cond_5
    const/4 v1, 0x0

    .line 2678
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v1, v3, p1

    .line 2679
    const/4 v2, 0x1

    .line 2705
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 2706
    const/4 v2, 0x0

    .line 2709
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v1, v3, p1

    .line 2710
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aput v1, v3, p1

    .line 2711
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v2, v3, p1

    .line 2712
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    .line 2714
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon when mMSimDataConnected["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mMSimMobileActivityIconId["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, " CDMA "

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mMSimState= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " dataSub = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    return-void

    .line 2638
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2639
    goto/16 :goto_0

    .line 2641
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 2642
    goto/16 :goto_0

    .line 2644
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 2645
    goto/16 :goto_0

    .line 2652
    :cond_8
    const/4 v1, 0x0

    .line 2653
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2656
    :cond_9
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "updateDataIcon no sim"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSim:Z

    .line 2659
    const/4 v1, 0x0

    .line 2660
    const/4 v2, 0x0

    .line 2663
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNoSIMNotification()V

    .line 2665
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v5

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v6

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_4

    .line 2667
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2668
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v3, v5

    .line 2669
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v3, v6

    goto/16 :goto_1

    .line 2684
    :cond_a
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-ne v3, v7, :cond_b

    .line 2685
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v3, v3, p1

    packed-switch v3, :pswitch_data_1

    .line 2697
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v5

    .line 2698
    goto/16 :goto_2

    .line 2687
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2688
    goto/16 :goto_2

    .line 2690
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 2691
    goto/16 :goto_2

    .line 2693
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 2694
    goto/16 :goto_2

    .line 2701
    :cond_b
    const/4 v1, 0x0

    .line 2702
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2714
    :cond_c
    const-string v3, " GSM : "

    goto/16 :goto_3

    .line 2636
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2685
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateDataKeyState()V
    .locals 15

    .prologue
    .line 5050
    const/4 v8, 0x0

    .line 5051
    .local v8, "syncStatus":Z
    const/4 v2, 0x0

    .line 5052
    .local v2, "dataStatus":Z
    const/4 v3, 0x0

    .line 5053
    .local v3, "gpsStatus":Z
    const/4 v9, 0x0

    .line 5054
    .local v9, "wifiStatus":Z
    const/4 v0, 0x0

    .line 5056
    .local v0, "btStatus":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 5057
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 5059
    .local v6, "onOff":Z
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v10

    if-nez v10, :cond_1

    .line 5217
    :cond_0
    :goto_0
    return-void

    .line 5063
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 5064
    .local v5, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 5067
    .local v4, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    const/4 v1, 0x1

    .line 5068
    .local v1, "conStatus":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 5069
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v8, 0x1

    .line 5071
    :goto_2
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v10, :cond_c

    .line 5072
    const/4 v2, 0x0

    .line 5077
    :cond_2
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gps"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 5078
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_e

    const/4 v9, 0x1

    .line 5079
    :goto_4
    if-eqz v4, :cond_3

    .line 5080
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v10

    const/16 v11, 0xc

    if-ne v10, v11, :cond_f

    const/4 v0, 0x1

    .line 5083
    :cond_3
    :goto_5
    const-string v10, "StatusBar.MSimNetworkController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "conStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  dataStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  wifiStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  gpsStatus:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    if-nez v8, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v9, :cond_4

    if-eqz v0, :cond_19

    .line 5087
    :cond_4
    const/4 v1, 0x1

    .line 5088
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_mode"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5089
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "connectivity_sync_status"

    if-eqz v8, :cond_10

    const/4 v10, 0x1

    :goto_6
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5090
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "connectivity_data_status"

    if-eqz v2, :cond_11

    const/4 v10, 0x1

    :goto_7
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5091
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "connectivity_gps_status"

    if-eqz v3, :cond_12

    const/4 v10, 0x1

    :goto_8
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5092
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "connectivity_wifi_status"

    if-eqz v9, :cond_13

    const/4 v10, 0x1

    :goto_9
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5093
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "connectivity_bt_status"

    if-eqz v0, :cond_14

    const/4 v10, 0x1

    :goto_a
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5095
    if-eqz v9, :cond_5

    .line 5096
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 5097
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0376

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5098
    const/4 v6, 0x1

    .line 5100
    :cond_5
    if-eqz v0, :cond_6

    .line 5101
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 5102
    if-eqz v6, :cond_15

    .line 5103
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5107
    :goto_b
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0377

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5110
    :cond_6
    if-eqz v2, :cond_7

    .line 5111
    if-eqz v5, :cond_7

    .line 5112
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 5114
    if-eqz v6, :cond_16

    .line 5115
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5119
    :goto_c
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0564

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5123
    :cond_7
    if-eqz v3, :cond_8

    .line 5124
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gps"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 5126
    if-eqz v6, :cond_17

    .line 5127
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5131
    :goto_d
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0378

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5134
    :cond_8
    if-eqz v8, :cond_9

    .line 5135
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 5136
    if-eqz v6, :cond_18

    .line 5137
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5141
    :goto_e
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0392

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5143
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0565

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5067
    .end local v1    # "conStatus":Z
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 5069
    .restart local v1    # "conStatus":Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 5074
    :cond_c
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimStateNotReady()Z

    move-result v10

    if-nez v10, :cond_d

    const/4 v2, 0x1

    :goto_f
    goto/16 :goto_3

    :cond_d
    const/4 v2, 0x0

    goto :goto_f

    .line 5078
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 5080
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 5089
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 5090
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 5091
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 5092
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 5093
    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 5105
    :cond_15
    const/4 v6, 0x1

    goto/16 :goto_b

    .line 5117
    :cond_16
    const/4 v6, 0x1

    goto/16 :goto_c

    .line 5129
    :cond_17
    const/4 v6, 0x1

    goto :goto_d

    .line 5139
    :cond_18
    const/4 v6, 0x1

    goto :goto_e

    .line 5145
    :cond_19
    const/4 v1, 0x0

    .line 5146
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    .line 5147
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_wifi_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1a

    .line 5148
    if-nez v9, :cond_1a

    .line 5149
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 5150
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0376

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5151
    const/4 v6, 0x1

    .line 5154
    :cond_1a
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_bt_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b

    .line 5155
    if-nez v0, :cond_1b

    .line 5156
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 5157
    if-eqz v6, :cond_20

    .line 5158
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5162
    :goto_10
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0377

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5165
    :cond_1b
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_data_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1c

    .line 5166
    if-eqz v5, :cond_1c

    .line 5167
    if-nez v2, :cond_1c

    .line 5168
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 5170
    if-eqz v6, :cond_21

    .line 5171
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5175
    :goto_11
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0564

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5180
    :cond_1c
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_gps_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1d

    .line 5181
    if-nez v3, :cond_1d

    .line 5182
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gps"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 5184
    if-eqz v6, :cond_22

    .line 5185
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5189
    :goto_12
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0378

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5193
    :cond_1d
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_sync_status"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    .line 5194
    if-eqz v5, :cond_1f

    .line 5195
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v10

    if-nez v10, :cond_1e

    .line 5196
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 5198
    :cond_1e
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v10

    if-nez v10, :cond_1f

    .line 5199
    const/4 v10, 0x1

    invoke-static {v10}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 5200
    if-eqz v6, :cond_23

    .line 5201
    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5205
    :goto_13
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0a0392

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5210
    :cond_1f
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "connectivity_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5211
    if-eqz v6, :cond_24

    .line 5212
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0566

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5160
    :cond_20
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 5173
    :cond_21
    const/4 v6, 0x1

    goto/16 :goto_11

    .line 5187
    :cond_22
    const/4 v6, 0x1

    goto :goto_12

    .line 5203
    :cond_23
    const/4 v6, 0x1

    goto :goto_13

    .line 5214
    :cond_24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->showDatakeyPopup()V

    goto/16 :goto_0
.end method

.method private final updateDataNetType(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const v9, 0x7f0a0251

    const/4 v8, 0x0

    const v7, 0x7f0a024f

    const v6, 0x7f02030c

    const v5, 0x7f02029f

    .line 2294
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2296
    .local v0, "dataSub":I
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType: phoneId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2303
    .local v1, "mBackUpNwboosterDataTypeIconId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2304
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v2, :cond_1

    .line 2306
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2307
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0202ea

    aput v3, v2, p1

    .line 2308
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2309
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2313
    const v2, 0x7f02030f

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2546
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v2, :cond_0

    if-eq p1, v0, :cond_0

    .line 2547
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2552
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    .line 2554
    return-void

    .line 2316
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v2, :cond_2

    .line 2317
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v2, v2, p1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2319
    :cond_2
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDataNetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    packed-switch v2, :pswitch_data_0

    .line 2535
    :pswitch_0
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType unknown radio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2538
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v8, v2, p1

    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2541
    const v2, 0x7f02031f

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 2324
    :pswitch_1
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "updateDataNetType NETWORK_TYPE_UNKNOWN"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_3

    .line 2327
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2328
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v8, v2, p1

    .line 2329
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2330
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a024c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2334
    const v2, 0x7f02031f

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2341
    :cond_3
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_4

    .line 2342
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2343
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0202cb

    aput v3, v2, p1

    .line 2345
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2346
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0255

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2350
    const v2, 0x7f020316

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2358
    :cond_4
    :pswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2359
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 2360
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2361
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2365
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2372
    :pswitch_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_5

    .line 2373
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2374
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0202d1

    aput v3, v2, p1

    .line 2376
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2377
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2381
    const v2, 0x7f020318

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2385
    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2386
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 2388
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2389
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2393
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2399
    :pswitch_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_6

    .line 2400
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2401
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0202d2

    aput v3, v2, p1

    .line 2402
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2405
    const v2, 0x7f020319

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2407
    :cond_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2408
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 2409
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2412
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2418
    :pswitch_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2419
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f02029b

    aput v3, v2, p1

    .line 2421
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2422
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0253

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2426
    const v2, 0x7f02030a

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2430
    :pswitch_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2431
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f02029b

    aput v3, v2, p1

    .line 2433
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2434
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0253

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2438
    const v2, 0x7f02030a

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2446
    :pswitch_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2447
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 2449
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2450
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2454
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2461
    :pswitch_9
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShow4GforLTE:Z

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->INU:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isRJILNetwork(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2462
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    if-nez v2, :cond_8

    const-string v2, "1"

    const-string v3, "ril.lte_wideband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2463
    :cond_8
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "LTE_WIDE_BAND!@!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2465
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0202b5

    aput v3, v2, p1

    .line 2466
    const v2, 0x7f020313

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2467
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    goto/16 :goto_0

    .line 2471
    :cond_9
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2472
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0202aa

    aput v3, v2, p1

    .line 2473
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2474
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2478
    const v2, 0x7f02030f

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2483
    :cond_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    if-nez v2, :cond_b

    const-string v2, "1"

    const-string v3, "ril.lte_wideband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2484
    :cond_b
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "LTE_WIDE_BAND!@!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2486
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0202d7

    aput v3, v2, p1

    .line 2487
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0252

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2491
    const v2, 0x7f02031d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2494
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2495
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0202d4

    aput v3, v2, p1

    .line 2496
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2497
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0252

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2501
    const v2, 0x7f02031a

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2508
    :pswitch_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_d

    .line 2509
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2510
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0202cd

    aput v3, v2, p1

    .line 2512
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2513
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a024c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2517
    const v2, 0x7f020317

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2521
    :cond_d
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2522
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 2524
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2525
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2529
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2321
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
    .end packed-switch
.end method

.method private updateDualSimUiBySettings(ILjava/lang/String;)V
    .locals 4
    .param p1, "simId"    # I
    .param p2, "imageIndex"    # Ljava/lang/String;

    .prologue
    .line 4660
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4661
    :cond_0
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageIndex NULL return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    :goto_0
    return-void

    .line 4664
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4665
    .local v0, "iconIndex":I
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 4667
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    goto :goto_0
.end method

.method private final updateIUSDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 2243
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 2246
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIUSDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2249
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0202d4

    aput v1, v0, p1

    .line 2251
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2252
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 2267
    :cond_0
    :goto_0
    return-void

    .line 2253
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 2254
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0202aa

    aput v1, v0, p1

    .line 2256
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2257
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0251

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 2258
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2262
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f02029f

    aput v1, v0, p1

    .line 2264
    const v0, 0x7f02030c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a024f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method private updateIconSet(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 2582
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v7

    .line 2584
    .local v7, "voiceNetorkType":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v6

    .line 2585
    .local v6, "dataNetorkType":I
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, voice network type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data network type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    if-nez v6, :cond_0

    move v1, v7

    .line 2593
    .local v1, "chosenNetworkType":I
    :goto_0
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, chosenNetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hspaDataDistinguishable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hspapDistinguishable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showAtLeastThreeGees="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShow4GforLTE:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->updateDataType(IIZZZI)V

    .line 2600
    return-void

    .end local v1    # "chosenNetworkType":I
    :cond_0
    move v1, v6

    .line 2590
    goto :goto_0
.end method

.method private final updateLTEICONDataNetType(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const v3, 0x7f0a0252

    .line 2191
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 2194
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLTEICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2198
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0202d7

    aput v1, v0, p1

    .line 2201
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 2215
    :cond_1
    :goto_0
    return-void

    .line 2206
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0202d4

    aput v1, v0, p1

    .line 2208
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2209
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2210
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method private updateNoSIMNotification()V
    .locals 14

    .prologue
    .line 3831
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mDoNotShowNoSimNotification:Z

    if-eqz v10, :cond_1

    .line 3899
    :cond_0
    :goto_0
    return-void

    .line 3835
    :cond_1
    const-string v10, "ro.config.donot_nosim"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3836
    const-string v10, "StatusBar.MSimNetworkController"

    const-string v11, "Don\'t show No SIM Notification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3840
    :cond_2
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-nez v10, :cond_0

    .line 3844
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 3847
    .local v4, "numPhones":I
    const/4 v2, 0x1

    .line 3848
    .local v2, "isNoSim":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 3849
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v10, v10, v1

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v10, v11, :cond_4

    .line 3850
    const/4 v2, 0x0

    .line 3856
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 3858
    .local v3, "mgr":Landroid/app/NotificationManager;
    if-nez v2, :cond_5

    .line 3859
    const/16 v10, 0x111

    invoke-virtual {v3, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 3848
    .end local v3    # "mgr":Landroid/app/NotificationManager;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3861
    .restart local v3    # "mgr":Landroid/app/NotificationManager;
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3864
    .local v5, "res":Landroid/content/res/Resources;
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_7

    .line 3865
    const v10, 0x7f0a047d

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3873
    .local v9, "title":Ljava/lang/String;
    :goto_2
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_9

    .line 3874
    const v10, 0x7f0a047f

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3879
    .local v8, "text":Ljava/lang/String;
    :goto_3
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x7f020342

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3887
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_6

    .line 3888
    const v10, 0x7f020347

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3890
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SIM_TYPE_POPUP"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3891
    .local v6, "resultIntent":Landroid/content/Intent;
    const-string v10, "SIM_TYPE"

    const-string v11, "NO_SIM"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3892
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 3894
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3897
    .end local v6    # "resultIntent":Landroid/content/Intent;
    .end local v7    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_6
    const/16 v10, 0x111

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 3866
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_7
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mNoSIMNotificationForTMO:Z

    if-eqz v10, :cond_8

    .line 3867
    const v10, 0x7f0a047c

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "title":Ljava/lang/String;
    goto :goto_2

    .line 3869
    .end local v9    # "title":Ljava/lang/String;
    :cond_8
    const v10, 0x7f0a047b

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "title":Ljava/lang/String;
    goto :goto_2

    .line 3876
    :cond_9
    const v10, 0x7f0a047e

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_3
.end method

.method private final updateSimIcon(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 2573
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon card ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 2575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const v1, 0x7f0200e1

    aput v1, v0, p1

    .line 2579
    :goto_0
    return-void

    .line 2577
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_0
.end method

.method private final updateTFGDataNetType(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, 0x3

    .line 2217
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 2220
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTFGDataNetType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2224
    .local v1, "sNetworkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_1

    .line 2241
    :cond_0
    :goto_0
    return-void

    .line 2227
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2229
    .local v0, "NetworkSubstring":Ljava/lang/String;
    const-string v2, "StatusBar.MSimNetworkController"

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

    .line 2232
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 2233
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

    .line 2234
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2235
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0202d4

    aput v3, v2, p1

    .line 2236
    const v2, 0x7f02031a

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2237
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0252

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    goto/16 :goto_0
.end method

.method private final updateTMHDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 2270
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 2273
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTMHDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2276
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2277
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0202d7

    aput v1, v0, p1

    .line 2280
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2281
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 2290
    :cond_1
    :goto_0
    return-void

    .line 2284
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 2285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0202aa

    aput v1, v0, p1

    .line 2286
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2287
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0251

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 12
    .param p1, "phoneId"    # I

    .prologue
    const v11, 0x7f0200fd

    const/4 v10, 0x1

    const v9, 0x7f020627

    const/4 v8, 0x0

    .line 1773
    if-nez p1, :cond_1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v4

    .line 1775
    .local v4, "simActive":I
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1777
    .local v0, "dataSub":I
    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1778
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1779
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1780
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    .line 1924
    :cond_0
    :goto_1
    return-void

    .line 1773
    .end local v0    # "dataSub":I
    .end local v4    # "simActive":I
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v4

    goto :goto_0

    .line 1783
    .restart local v0    # "dataSub":I
    .restart local v4    # "simActive":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v5, v5, p1

    if-eqz v5, :cond_5

    .line 1785
    const-string v5, "StatusBar.MSimNetworkController"

    const-string v6, " No service"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1787
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1802
    if-ne p1, v0, :cond_3

    .line 1803
    iput v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1805
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    .line 1807
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1808
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRssiTypeIconCTC(I)V

    goto :goto_1

    .line 1811
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p1

    if-nez v5, :cond_a

    .line 1813
    :cond_6
    const-string v6, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Null object, mMSimSignalStrength= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mMSimServiceState "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p1

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p1

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1818
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1819
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1821
    if-ne p1, v0, :cond_7

    .line 1822
    iput v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1824
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    goto/16 :goto_1

    .line 1813
    :cond_8
    const-string v5, " null "

    goto :goto_2

    :cond_9
    const-string v5, " null "

    goto :goto_3

    .line 1828
    :cond_a
    const/4 v3, 0x0

    .line 1829
    .local v3, "psIconLevel":I
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v5, :cond_d

    .line 1830
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    .local v1, "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 1831
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAlwaysShowCdmaRssi= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " set to cdmaLevel= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " instead of level= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCurrentSimSlot()I

    move-result v5

    if-ne v5, p1, :cond_e

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1853
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v10, v5, p1

    .line 1863
    :goto_5
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v1, v5, :cond_f

    .line 1864
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 1872
    :cond_b
    :goto_6
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v2

    .line 1889
    .local v2, "iconList":[I
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1890
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRssiTypeIconCTC(I)V

    .line 1891
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1892
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaPhoneSignalIconId(I)I

    move-result v6

    aput v6, v5, p1

    .line 1893
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1895
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v6, p1

    aput v6, v5, p1

    .line 1921
    :goto_7
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength: iconLevel= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1848
    .end local v1    # "iconLevel":I
    .end local v2    # "iconList":[I
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .restart local v1    # "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    goto/16 :goto_4

    .line 1855
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    goto/16 :goto_5

    .line 1867
    :cond_f
    if-gez v1, :cond_b

    .line 1868
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too low"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    goto/16 :goto_6

    .line 1897
    .restart local v2    # "iconList":[I
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v2, v1

    aput v6, v5, p1

    .line 1898
    if-ne p1, v0, :cond_11

    .line 1899
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v5, v5, v6

    aget v5, v5, v1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1902
    :cond_11
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1904
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v6, v1, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataSignalIconId(III)I

    move-result v6

    aput v6, v5, p1

    goto/16 :goto_7

    .line 1907
    :cond_12
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v2, v1

    aput v6, v5, p1

    .line 1908
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1910
    if-ne p1, v0, :cond_13

    .line 1911
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v5, v5, v6

    aget v5, v5, v1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1917
    :cond_13
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v6, v1, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataSignalIconId(III)I

    move-result v6

    aput v6, v5, p1

    goto/16 :goto_7
.end method

.method private final updateZTMDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const v2, 0x7f0202e1

    .line 2120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2124
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 2126
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateZTMDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 2176
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 2177
    const v0, 0x7f0202e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 2183
    :goto_0
    return-void

    .line 2130
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 2131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2137
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 2138
    const v0, 0x7f0202e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2144
    :cond_2
    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2149
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 2150
    const v0, 0x7f0202e5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2152
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2157
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 2158
    const v0, 0x7f0202e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2160
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2168
    :pswitch_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2172
    :pswitch_7
    const v0, 0x7f0202e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2179
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2128
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

.method private final updateZVVDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const v2, 0x7f0202e1

    .line 2046
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 2050
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 2052
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateZVVDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 2102
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 2103
    const v0, 0x7f0202e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 2109
    :goto_0
    return-void

    .line 2056
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 2057
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2063
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 2064
    const v0, 0x7f0202e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2070
    :cond_2
    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2075
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 2076
    const v0, 0x7f0202e5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2078
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2083
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 2084
    const v0, 0x7f0202e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2086
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2094
    :pswitch_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2098
    :pswitch_7
    const v0, 0x7f0202e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2105
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 2054
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

.method private final updateZVVLACInfo(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 830
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 833
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 848
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowLAC:[Z

    aput-boolean v0, v1, p1

    .line 850
    :goto_0
    return-void

    .line 845
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowLAC:[Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEmergencyOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    aput-boolean v0, v1, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 833
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
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 620
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    :cond_0
    return-void
.end method

.method public addSubsLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 502
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 503
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 504
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 505
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 506
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 507
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 509
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkController for SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3675
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3676
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3677
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3678
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3679
    const-string v0, "  mMSimDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3680
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3681
    const-string v0, "  mMSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3682
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3683
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3684
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3685
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3686
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3687
    const-string v0, "  mSeperatedDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3688
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3689
    const-string v0, "  mMSimDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3690
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3691
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3692
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3693
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3694
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3695
    const-string v0, "  mSeperatedDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3696
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3697
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3698
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p4

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3699
    const-string v0, "  mMSimServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3700
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3701
    const-string v0, "  mMSimSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3702
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3703
    const-string v0, "  mLastSignalLevel"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3704
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3705
    const-string v0, "  mMSimNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3706
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3708
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3709
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3710
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3711
    const-string v0, "  mMSimPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3712
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3713
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3714
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3715
    const-string v0, "  mRssiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3716
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3717
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3718
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    const-string v0, "  mMSimDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3720
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3721
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3723
    const-string v0, "  mMSimDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3724
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3725
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3726
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3727
    const-string v0, "  mMSimDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3729
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3730
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3731
    const-string v0, " mCurrentSimSlot= "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3732
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3733
    const-string v0, " mSimFocus = "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3734
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3735
    const-string v0, " mRoamingIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3736
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3737
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3738
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3740
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3741
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3742
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3743
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3744
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3745
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3746
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3747
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3748
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3749
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3750
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3751
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3753
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3754
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3755
    const-string v0, "mDataStateDual ="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3756
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3758
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 3759
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3760
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3761
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3762
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3763
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3765
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3766
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3767
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3770
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3771
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3772
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3774
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3775
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3776
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3778
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3779
    const-string v0, "  mMSimLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3780
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3781
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3782
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3783
    const-string v0, "  mMSimLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3784
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3785
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3786
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3787
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3788
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3789
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3790
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3791
    const-string v0, "  mMSimLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3792
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3793
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3794
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3795
    const-string v0, "  mMSimLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3796
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3797
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3798
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3799
    const-string v0, "  mMSimLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3800
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3801
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3802
    return-void

    .line 3671
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public getDataNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 3656
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 3657
    const/4 v0, 0x0

    .line 3659
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method protected getDataSignalIconId(III)I
    .locals 3
    .param p1, "inetCondition"    # I
    .param p2, "iconLevel"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 5002
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 5021
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 5023
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 5004
    .end local v0    # "iconId":I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5005
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_CTC:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 5007
    .end local v0    # "iconId":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_2

    .line 5008
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 5010
    .end local v0    # "iconId":I
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 5013
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 5015
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 5016
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 5018
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 5019
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 5002
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getGsmSignalLevel(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 3664
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    const/4 v0, 0x0

    .line 3666
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getNumberOfSim()I
    .locals 3

    .prologue
    .line 4672
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 4673
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_0

    .line 4674
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 4679
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPhoneSignalIconList(II)[I
    .locals 3
    .param p1, "inetCondition"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 2794
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 2813
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2815
    .local v0, "iconList":[I
    :goto_0
    return-object v0

    .line 2796
    .end local v0    # "iconList":[I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCardIn6Mode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2797
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 2799
    .end local v0    # "iconList":[I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_2

    .line 2800
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 2802
    .end local v0    # "iconList":[I
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2805
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 2807
    .end local v0    # "iconList":[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2808
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 2810
    .end local v0    # "iconList":[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2811
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 2794
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getReadySimCount()I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 4896
    const/4 v2, 0x0

    .line 4897
    .local v2, "count":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsDGGDuos:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsUseIPC:Z

    if-eqz v7, :cond_7

    .line 4898
    :cond_0
    new-array v3, v10, [I

    .line 4899
    .local v3, "phone_on":[I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v6

    .line 4900
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v9

    .line 4901
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9,9"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4902
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4903
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v7, v0

    if-eq v7, v10, :cond_1

    .line 4934
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    :goto_0
    return v6

    .line 4905
    .restart local v0    # "cardStatusSlot":[Ljava/lang/String;
    .restart local v1    # "cardStatusTemp":Ljava/lang/String;
    .restart local v3    # "phone_on":[I
    :cond_1
    const/4 v5, 0x0

    .local v5, "sub":I
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v5, v6, :cond_6

    .line 4906
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v6, :cond_3

    .line 4907
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->hasSlotSwiching()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4908
    add-int/lit8 v2, v2, 0x1

    .line 4905
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4910
    :cond_3
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mIsUseIPC:Z

    if-eqz v6, :cond_5

    .line 4911
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-eqz v6, :cond_4

    .line 4912
    const-string v6, "gsm.sim.state"

    const-string v7, "NOT_READY"

    invoke-direct {p0, v6, v5, v7}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4913
    .local v4, "simState":Ljava/lang/String;
    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4914
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4916
    .end local v4    # "simState":Ljava/lang/String;
    :cond_4
    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    .line 4917
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4920
    :cond_5
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    .line 4921
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v6, v2

    .line 4925
    goto :goto_0

    .line 4927
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    .end local v5    # "sub":I
    :cond_7
    const-string v4, "NOT_READY"

    .line 4928
    .restart local v4    # "simState":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "sub":I
    :goto_3
    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v5, v6, :cond_9

    .line 4929
    const-string v6, "gsm.sim.state"

    const-string v7, "NOT_READY"

    invoke-direct {p0, v6, v5, v7}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4930
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4931
    add-int/lit8 v2, v2, 0x1

    .line 4928
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    move v6, v2

    .line 4934
    goto :goto_0
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 11

    .prologue
    .line 4620
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 4621
    .local v0, "FILE_PATH":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4622
    .local v4, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 4623
    .local v6, "in":Ljava/io/BufferedReader;
    const-string v1, "0"

    .line 4625
    .local v1, "current_slot":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4626
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4627
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4628
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v5, "fileReader":Ljava/io/FileReader;
    if-eqz v5, :cond_4

    .line 4629
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4630
    .end local v6    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    if-eqz v7, :cond_3

    .line 4631
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 4645
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 4646
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4651
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 4652
    const-string v1, "0"

    .line 4655
    :cond_2
    return-object v1

    .line 4633
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    const-string v8, "StatusBar.MSimNetworkController"

    const-string v9, "in == null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 4636
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :cond_4
    :try_start_5
    const-string v8, "StatusBar.MSimNetworkController"

    const-string v9, "fileReader == null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 4647
    :catch_0
    move-exception v2

    .line 4648
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "StatusBar.MSimNetworkController"

    const-string v9, "File close error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4640
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 4641
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v8, "StatusBar.MSimNetworkController"

    const-string v9, "File open error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4642
    const-string v1, "0"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4645
    if-eqz v6, :cond_1

    .line 4646
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 4647
    :catch_2
    move-exception v2

    .line 4648
    const-string v8, "StatusBar.MSimNetworkController"

    const-string v9, "File close error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4644
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 4645
    :goto_3
    if-eqz v6, :cond_5

    .line 4646
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 4649
    :cond_5
    :goto_4
    throw v8

    .line 4647
    :catch_3
    move-exception v2

    .line 4648
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "StatusBar.MSimNetworkController"

    const-string v10, "File close error"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4644
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 4640
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method public getVoiceNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 3650
    const/4 v0, 0x0

    .line 3652
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    .line 2557
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v3, v3, p1

    if-nez v3, :cond_2

    .line 2560
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 2561
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 2562
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 2563
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 2569
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFlightModePossible()Z
    .locals 5

    .prologue
    .line 4489
    const/4 v0, 0x0

    .line 4490
    .local v0, "flightModePossible":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v2, :cond_2

    .line 4491
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 4493
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4495
    :cond_0
    const/4 v0, 0x1

    .line 4491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4497
    :cond_1
    const/4 v0, 0x0

    .line 4498
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flightModePossible=false : mSim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":mServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simHasService()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isEmergencyOnly()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4503
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 855
    .local v11, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.samsung.intent.action.WIFI_CAPTIVE_NOT_LOGIN"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 859
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 860
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v3, :cond_1

    .line 861
    const/16 v21, 0x0

    .local v21, "sub":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 862
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 863
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 864
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 861
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 867
    .end local v21    # "sub":I
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1124
    :cond_2
    :goto_1
    return-void

    .line 869
    :cond_3
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 870
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "onReceive() - ACTION_SIM_STATE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimState(Landroid/content/Intent;)V

    .line 872
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 873
    const/16 v21, 0x0

    .restart local v21    # "sub":I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 874
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 875
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCmccCard(I)Z

    move-result v4

    aput-boolean v4, v3, v21

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCard(I)Z

    move-result v4

    aput-boolean v4, v3, v21

    .line 873
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 881
    .end local v21    # "sub":I
    :cond_4
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 882
    const-string v3, "subscription"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 883
    .local v22, "subId":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received SPN update on subId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 885
    .local v10, "phoneId":Ljava/lang/Integer;
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_5

    .line 886
    const-string v3, "phone"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 890
    :goto_3
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received SPN update on phoneId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 892
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "SPN_STRINGS_UPDATED broadcast with phone Id 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 888
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    .line 895
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mEFSPN:[I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "efspn"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v4

    .line 896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "showSpn"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v3, v4

    .line 897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "spn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "showPlmn"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v3, v4

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-boolean v4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-boolean v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v7, v3, v7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 904
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 905
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_1

    .line 906
    .end local v10    # "phoneId":Ljava/lang/Integer;
    .end local v22    # "subId":I
    :cond_7
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 908
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 910
    const/16 v21, 0x0

    .restart local v21    # "sub":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 911
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 910
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 913
    .end local v21    # "sub":I
    :cond_9
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 914
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_1

    .line 915
    :cond_a
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateAirplaneMode()V

    .line 917
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v14, v3, :cond_b

    .line 918
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    .line 919
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 921
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 917
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 924
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 925
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_1

    .line 926
    .end local v14    # "i":I
    :cond_c
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 929
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 930
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_1

    .line 931
    :cond_e
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 932
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->unregisterPhoneStateListener()V

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 935
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 937
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 938
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 941
    :cond_f
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Sim Slot value after intent change  : : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 943
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 946
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v14, v3, :cond_2

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCmccCard(I)Z

    move-result v4

    aput-boolean v4, v3, v14

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCtcCard:[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCtcCard(I)Z

    move-result v4

    aput-boolean v4, v3, v14

    .line 952
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 953
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 954
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 955
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 956
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 946
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 958
    .end local v14    # "i":I
    :cond_10
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateAirplaneMode()V

    .line 961
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNoSIMNotification()V

    .line 963
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "ACTION_LOCALE_CHANGED received"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v16

    .line 966
    .local v16, "numPhones":I
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_7
    move/from16 v0, v16

    if-ge v15, v0, :cond_12

    .line 967
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x1040395

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    .line 966
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 972
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x1040395

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    .line 976
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_1

    .line 977
    .end local v15    # "k":I
    .end local v16    # "numPhones":I
    :cond_13
    const-string v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 978
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v19

    .line 979
    .local v19, "simId1":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() - ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED : simId1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 982
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 985
    const/16 v21, 0x0

    .restart local v21    # "sub":I
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 986
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 985
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 988
    .end local v19    # "simId1":I
    .end local v21    # "sub":I
    :cond_14
    const-string v3, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 989
    const-string v3, "simcard_sim_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 990
    .local v18, "simId":I
    const-string v3, "simcard_sim_icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 991
    .local v17, "simIconIndex":Ljava/lang/String;
    const-string v3, "simcard_sim_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 992
    .local v20, "simName":Ljava/lang/String;
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() - ACTION_SIM_MGT_CHANGED :  simId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",simIconIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",simName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (mCurrentSimSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDualSimUiBySettings(ILjava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    move/from16 v0, v18

    if-eq v3, v0, :cond_15

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v3, :cond_2

    .line 997
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_1

    .line 999
    .end local v17    # "simIconIndex":Ljava/lang/String;
    .end local v18    # "simId":I
    .end local v20    # "simName":Ljava/lang/String;
    :cond_16
    const-string v3, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1002
    :cond_17
    const-string v3, "simcard_sim_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 1003
    .restart local v18    # "simId":I
    const-string v3, "simcard_sim_activate"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1005
    .local v12, "activate":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() - ACTION_SIM_MGT_ACTIVATED_CHANGED : simId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",activate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 1007
    const/4 v3, 0x1

    if-ne v12, v3, :cond_18

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v4, v3, v18

    .line 1022
    :cond_18
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 1025
    const/16 v21, 0x0

    .restart local v21    # "sub":I
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 1026
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1025
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 1020
    .end local v21    # "sub":I
    :cond_19
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mForceRefresh:Z

    goto :goto_9

    .line 1030
    .end local v12    # "activate":I
    .end local v18    # "simId":I
    :cond_1a
    const-string v3, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1031
    const-string v3, "caindicator"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1032
    const-string v3, "caindicator"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    .line 1033
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTE WIDEBAND with extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    if-eqz v3, :cond_1f

    .line 1040
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v14, v3, :cond_2

    .line 1041
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v3, :cond_1d

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1040
    :cond_1b
    :goto_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 1035
    .end local v14    # "i":I
    :cond_1c
    const-string v3, "ril.lte_wideband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1036
    .local v13, "currentBandwidth":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCAIndicator:Z

    .line 1037
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTE WIDEBAND without extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1043
    .end local v13    # "currentBandwidth":Ljava/lang/String;
    .restart local v14    # "i":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v3, v3, v14

    const v4, 0x7f0202d4

    if-ne v3, v4, :cond_1e

    .line 1044
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE WIDEBAND:LTE+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0202d7

    aput v4, v3, v14

    .line 1046
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1047
    const v3, 0x7f02031d

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1048
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_d

    .line 1049
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v3, v3, v14

    const v4, 0x7f0202aa

    if-ne v3, v4, :cond_1b

    .line 1050
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE WIDEBAND:4G+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0202b5

    aput v4, v3, v14

    .line 1052
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1053
    const v3, 0x7f020313

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1054
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_d

    .line 1058
    .end local v14    # "i":I
    :cond_1f
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v14, v3, :cond_2

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v3, v3, v14

    const v4, 0x7f0202d7

    if-ne v3, v4, :cond_21

    .line 1060
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE WIDEBAND:LTE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0202d4

    aput v4, v3, v14

    .line 1062
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1063
    const v3, 0x7f02031a

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1064
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1058
    :cond_20
    :goto_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .line 1065
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v3, v3, v14

    const v4, 0x7f0202b5

    if-ne v3, v4, :cond_20

    .line 1066
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "LTE WIDEBAND:4G"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v4, 0x7f0202aa

    aput v4, v3, v14

    .line 1068
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1069
    const v3, 0x7f02030f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1070
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_f

    .line 1076
    .end local v14    # "i":I
    :cond_22
    const-string v3, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1077
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "onReceive() - ACTION_CURRENT_NETWORK"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/16 v21, 0x0

    .restart local v21    # "sub":I
    :goto_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 1079
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 1080
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1078
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 1084
    .end local v21    # "sub":I
    :cond_23
    const-string v3, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1085
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "START_NETWORK_BOOSTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 1087
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_1

    .line 1088
    :cond_24
    const-string v3, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1089
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "STOP_NETWORK_BOOSTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 1091
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_1

    .line 1097
    :cond_25
    const-string v3, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1098
    const-string v3, "phone"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1100
    .local v10, "phoneId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v3, v3, v10

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v3, v3, v10

    const v4, 0x10403ad

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    aget-boolean v4, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v5, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    aget-boolean v6, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v7, v3, v10

    const/4 v8, 0x1

    const-string v3, "cbMsgBody"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 1103
    :cond_26
    const/16 v21, 0x0

    .restart local v21    # "sub":I
    :goto_11
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 1104
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1103
    add-int/lit8 v21, v21, 0x1

    goto :goto_11

    .line 1106
    .end local v10    # "phoneId":I
    .end local v21    # "sub":I
    :cond_27
    const-string v3, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1107
    const-string v3, "phone"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1108
    .restart local v10    # "phoneId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    aget-boolean v4, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v5, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    aget-boolean v6, v3, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v7, v3, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 1109
    const/16 v21, 0x0

    .restart local v21    # "sub":I
    :goto_12
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 1110
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 1109
    add-int/lit8 v21, v21, 0x1

    goto :goto_12

    .line 1113
    .end local v10    # "phoneId":I
    .end local v21    # "sub":I
    :cond_28
    const-string v3, "android.settings.DATA_NETWORK_KEY_PRESSED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1115
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "onReceive() - DATA_NETWORK_KEY_PRESSED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataKeyState()V

    goto/16 :goto_1

    .line 1120
    :cond_29
    const-string v3, "com.android.systemui.action.airplane_off"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setAirplaneModeOff()V

    goto/16 :goto_1
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 13
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 627
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;)V

    .line 631
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->shouldShowPermanentDataIcon(I)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setHasService(Z)V

    .line 633
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->shouldShowPermanentDataIcon(I)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setHasService2(Z)V

    .line 636
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 645
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiCaptiveNotLogin:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiCaptiveNotLogin(Z)V

    .line 648
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_3

    .line 649
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCHN(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 665
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 667
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v9, v0, p2

    move-object v0, p1

    move v7, p2

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    .line 713
    :cond_1
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setSimIcon(ZI)V

    .line 714
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setIsAirplaneMode(ZI)V

    .line 729
    return-void

    :cond_2
    move v0, v12

    .line 636
    goto :goto_0

    .line 652
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyOpen(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    goto :goto_1

    .line 667
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    goto :goto_2

    .line 678
    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-nez v0, :cond_7

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v0, v0, p2

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    if-eq v0, v2, :cond_7

    .line 681
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-nez v0, :cond_6

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v12, v0, p2

    .line 683
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster : making  mMSimDataTypeIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_6
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMobileActivityIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_8

    move v3, v1

    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v4, v0, p2

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v7, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v10, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v11, v0, p2

    move-object v2, p1

    move v9, p2

    invoke-interface/range {v2 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    .line 698
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_1

    .line 699
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v7, v0, 0x2

    .line 700
    .local v7, "opPhoneId":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_a

    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v0, v7

    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v3, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v4, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v9, v0, v7

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    goto/16 :goto_3

    .end local v7    # "opPhoneId":I
    :cond_8
    move v3, v12

    .line 688
    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v4, v0, p2

    goto :goto_5

    .restart local v7    # "opPhoneId":I
    :cond_a
    move v1, v12

    .line 700
    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v2, v0, v7

    goto :goto_7
.end method

.method protected refreshViews(I)V
    .locals 19
    .param p1, "phoneId"    # I

    .prologue
    .line 3035
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 3037
    .local v6, "context":Landroid/content/Context;
    const-string v5, ""

    .line 3038
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v12, ""

    .line 3039
    .local v12, "mobileLabel":Ljava/lang/String;
    const-string v14, ""

    .line 3042
    .local v14, "wifiLabel":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v15

    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    .line 3044
    .local v8, "dataSub":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v15, :cond_c

    .line 3045
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    aput v17, v15, p1

    .line 3046
    const-string v12, ""

    .line 3047
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 3126
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v15, :cond_12

    .line 3127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-nez v15, :cond_10

    .line 3128
    const v15, 0x7f0a029a

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3131
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    .line 3163
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v16, v0

    aput v16, v15, p1

    .line 3164
    move-object v5, v14

    .line 3165
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    aput v16, v15, p1

    .line 3166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, p1

    .line 3176
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-eqz v15, :cond_4

    .line 3177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v16, 0x7f0a01f3

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v16, v0

    aput v16, v15, p1

    .line 3179
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a0258

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, p1

    .line 3183
    const-string v15, "StatusBar.MSimNetworkController"

    const-string v16, "mBluetoothTethered:mDataTypeIconId is BT Tether Icon"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v16, v0

    aput v16, v15, p1

    .line 3185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 3186
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 3188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    sget-object v16, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mIsDGGDuos:Z

    if-nez v15, :cond_3

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-nez v15, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v15

    const-string v16, "CTC"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 3189
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 3193
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    const/4 v9, 0x1

    .line 3195
    .local v9, "ethernetConnected":Z
    :goto_3
    if-eqz v9, :cond_5

    .line 3197
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 3200
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v15, :cond_17

    .line 3204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0a0259

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, p1

    .line 3206
    const v15, 0x7f02049d

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneIconId:I

    .line 3207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, p1

    aput v18, v16, p1

    aput v18, v15, p1

    .line 3209
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 3210
    move/from16 v0, p1

    if-ne v0, v8, :cond_6

    .line 3211
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 3212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 3216
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v15, :cond_15

    .line 3218
    const-string v12, ""

    .line 3232
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 3233
    move/from16 v0, p1

    if-ne v0, v8, :cond_7

    .line 3234
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 3237
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3282
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_1b

    const/4 v15, 0x1

    :goto_6
    aput-boolean v15, v16, p1

    .line 3283
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v15

    if-nez v15, :cond_9

    .line 3284
    const-string v15, "persist.radio.multisim.stackid"

    const-string v16, "NONE"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3285
    .local v7, "crossMapping":Ljava/lang/String;
    const-string v15, "1,0"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 3286
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    const/16 v16, 0x1

    const/16 v17, 0x1

    aput-boolean v17, v15, v16

    .line 3291
    .end local v7    # "crossMapping":Ljava/lang/String;
    :cond_9
    :goto_7
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v15

    if-nez v15, :cond_a

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSlot2Locked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 3292
    const-string v15, "StatusBar.MSimNetworkController"

    const-string v16, "Sim in Only Slot 2 "

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput-boolean v17, v15, v16

    .line 3294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput-boolean v17, v15, v16

    .line 3296
    :cond_a
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkLocked()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 3297
    const-string v15, "StatusBar.MSimNetworkController"

    const-string v16, "Sim in Only Slot 2 in Network Locked device"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput-boolean v17, v15, v16

    .line 3299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput-boolean v17, v15, v16

    .line 3302
    :cond_b
    const-string v16, "StatusBar.MSimNetworkController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "refreshViews connected={"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v15, :cond_1d

    const-string v15, " wifi"

    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v15, v15, p1

    if-eqz v15, :cond_1e

    const-string v15, " data"

    :goto_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " } phoneId = "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " level="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v15, v15, p1

    if-nez v15, :cond_1f

    const-string v15, "??"

    :goto_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimcombinedSignalIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimcombinedActivityIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mAirplaneMode="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimDataActivity="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimPhoneSignalIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimDataDirectionIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimDataSignalIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimDataTypeIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mNoMSimIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mMSimMobileActivityIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mWifiIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mBluetoothTetherIconId=0x"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " mRoamingIconId=0x "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_20

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 3338
    .local v3, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_b

    .line 3073
    .end local v3    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v9    # "ethernetConnected":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v15, v15, p1

    if-eqz v15, :cond_e

    .line 3074
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3076
    move-object v5, v12

    .line 3077
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3079
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3080
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, p1

    aput-object v16, v15, p1

    .line 3083
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v15, v15, p1

    packed-switch v15, :pswitch_data_0

    .line 3101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v15, v15, p1

    if-eqz v15, :cond_d

    .line 3102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v16, 0x7f0204ac

    aput v16, v15, p1

    .line 3115
    :goto_c
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v15, v15, p1

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->shouldShowPermanentDataIcon(I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3116
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataEnabled:Z

    if-nez v15, :cond_f

    .line 3117
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v16, 0x7f02049e

    aput v16, v15, p1

    goto/16 :goto_0

    .line 3085
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v16, 0x7f0204a7

    aput v16, v15, p1

    goto :goto_c

    .line 3088
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v16, 0x7f0204b7

    aput v16, v15, p1

    goto :goto_c

    .line 3091
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v16, 0x7f0204a9

    aput v16, v15, p1

    goto :goto_c

    .line 3104
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    goto :goto_c

    .line 3110
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 3111
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    .line 3112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    goto :goto_c

    .line 3119
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v15, :cond_0

    .line 3120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    goto/16 :goto_0

    .line 3134
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 3140
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    packed-switch v15, :pswitch_data_1

    .line 3157
    :goto_d
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-nez v15, :cond_11

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiCaptiveNotLogin:Z

    if-eqz v15, :cond_1

    .line 3158
    :cond_11
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 3142
    :pswitch_3
    const v15, 0x7f0204a7

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_d

    .line 3145
    :pswitch_4
    const v15, 0x7f0204b7

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_d

    .line 3148
    :pswitch_5
    const v15, 0x7f0204a9

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_d

    .line 3151
    :pswitch_6
    const v15, 0x7f0204ac

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_d

    .line 3168
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_13

    .line 3169
    const-string v14, ""

    goto/16 :goto_2

    .line 3171
    :cond_13
    const v15, 0x7f0a0299

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 3193
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3220
    .restart local v9    # "ethernetConnected":Z
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_16

    .line 3222
    const-string v14, ""

    .line 3228
    :goto_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, p1

    .line 3230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    goto/16 :goto_4

    .line 3224
    :cond_16
    const v15, 0x7f0a0299

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3226
    move-object v5, v14

    goto :goto_e

    .line 3239
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v15, v15, p1

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-nez v15, :cond_8

    if-nez v9, :cond_8

    .line 3243
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v15, :cond_18

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mVoiceCapable:Z

    if-eqz v15, :cond_18

    .line 3244
    const v15, 0x7f0a0299

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3249
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v15, v15, p1

    :goto_f
    aput v15, v16, p1

    .line 3251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v15, v15, p1

    :goto_10
    aput-object v15, v16, p1

    .line 3255
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    goto/16 :goto_5

    .line 3249
    :cond_19
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    goto :goto_f

    .line 3251
    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_10

    .line 3282
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 3288
    .restart local v7    # "crossMapping":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput-boolean v17, v15, v16

    goto/16 :goto_7

    .line 3302
    .end local v7    # "crossMapping":Ljava/lang/String;
    :cond_1d
    const-string v15, ""

    goto/16 :goto_8

    :cond_1e
    const-string v15, ""

    goto/16 :goto_9

    :cond_1f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_a

    .line 3341
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiConnected:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconVisible:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRssiIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mForceRefresh:Z

    if-nez v15, :cond_22

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v15, :cond_23

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v15

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    const v16, 0x7f020627

    move/from16 v0, v16

    if-eq v15, v0, :cond_22

    :cond_21
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v15

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    const v16, 0x7f020627

    move/from16 v0, v16

    if-ne v15, v0, :cond_23

    .line 3378
    :cond_22
    const-string v15, "StatusBar.MSimNetworkController"

    const-string v16, "refreshSignalCluster : called"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_23

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .line 3380
    .local v4, "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    goto :goto_11

    .line 3384
    .end local v4    # "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_24

    .line 3385
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    .line 3389
    :cond_24
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_25

    .line 3390
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3394
    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_26

    .line 3395
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3398
    :cond_26
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_27

    .line 3399
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3403
    :cond_27
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_28

    .line 3404
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    .line 3407
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiConnected:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_29

    .line 3408
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiConnected:Z

    .line 3412
    :cond_29
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2a

    .line 3413
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3416
    :cond_2a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2b

    .line 3417
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3420
    :cond_2b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2c

    .line 3421
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3424
    :cond_2c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2d

    .line 3425
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 3429
    :cond_2d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2e

    .line 3430
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    .line 3433
    :cond_2e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2f

    .line 3435
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3439
    :cond_2f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_30

    .line 3440
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 3443
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_31

    .line 3444
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 3447
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_32

    .line 3448
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 3451
    :cond_32
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_33

    .line 3452
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    .line 3455
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_34

    .line 3456
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 3461
    :cond_34
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_35

    .line 3462
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3465
    :cond_35
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_36

    .line 3466
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 3469
    :cond_36
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    aget-boolean v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_37

    .line 3470
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    aput-boolean v16, v15, p1

    .line 3473
    :cond_37
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_38

    .line 3474
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3477
    :cond_38
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_12
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v10, v15, :cond_3b

    .line 3478
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v15, v15, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_39

    .line 3479
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    aput-object v16, v15, v10

    .line 3482
    :cond_39
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    aget v15, v15, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    move/from16 v0, v16

    if-eq v15, v0, :cond_3a

    .line 3483
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCallState:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    move-object/from16 v16, v0

    aget v16, v16, v10

    aput v16, v15, v10

    .line 3477
    :cond_3a
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 3487
    :cond_3b
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v15, :cond_3e

    .line 3488
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3c

    .line 3489
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3506
    :cond_3c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRssiIconId:[I

    aget v15, v15, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3d

    .line 3507
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRssiIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    aput v16, v15, p1

    .line 3509
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mForceRefresh:Z

    if-eqz v15, :cond_3e

    .line 3510
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mForceRefresh:Z

    .line 3515
    :cond_3e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3f

    .line 3516
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 3517
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3518
    .local v2, "N":I
    const/4 v10, 0x0

    :goto_13
    if-ge v10, v2, :cond_3f

    .line 3519
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 3520
    .local v13, "v":Landroid/widget/TextView;
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3518
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 3525
    .end local v2    # "N":I
    .end local v13    # "v":Landroid/widget/TextView;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3526
    .restart local v2    # "N":I
    const/4 v10, 0x0

    :goto_14
    if-ge v10, v2, :cond_41

    .line 3527
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 3528
    .restart local v13    # "v":Landroid/widget/TextView;
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3529
    const-string v15, ""

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_40

    .line 3530
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3526
    :goto_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 3532
    :cond_40
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 3537
    .end local v13    # "v":Landroid/widget/TextView;
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCarrierText()V

    .line 3539
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v15, :cond_43

    .line 3540
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getMobileLabelForCHN()Ljava/lang/String;

    move-result-object v12

    .line 3591
    :goto_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3592
    const/4 v10, 0x0

    :goto_17
    if-ge v10, v2, :cond_53

    .line 3593
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 3594
    .restart local v13    # "v":Landroid/widget/TextView;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3595
    const-string v15, ""

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_42

    .line 3596
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3592
    :cond_42
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 3542
    .end local v13    # "v":Landroid/widget/TextView;
    :cond_43
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v15, :cond_51

    .line 3543
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    sget-object v16, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_45

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    sget-object v16, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_45

    .line 3546
    const-string v15, "persist.radio.multisim.stackid"

    const-string v16, "NONE"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3547
    .restart local v7    # "crossMapping":Ljava/lang/String;
    const-string v15, "1,0"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_44

    .line 3548
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v12, v15, v16

    goto :goto_16

    .line 3550
    :cond_44
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v12, v15, v16

    goto :goto_16

    .line 3552
    .end local v7    # "crossMapping":Ljava/lang/String;
    :cond_45
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    sget-object v16, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_46

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v15

    if-nez v15, :cond_48

    .line 3553
    :cond_46
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v15

    sget-object v16, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_47

    .line 3554
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setMobileLabelForZVV(Ljava/lang/String;I)V

    .line 3556
    :cond_47
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v12, v15, v16

    goto/16 :goto_16

    .line 3557
    :cond_48
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    sget-object v16, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_49

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v15

    if-nez v15, :cond_4b

    .line 3558
    :cond_49
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v15

    sget-object v16, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4a

    .line 3559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setMobileLabelForZVV(Ljava/lang/String;I)V

    .line 3561
    :cond_4a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v12, v15, v16

    goto/16 :goto_16

    .line 3563
    :cond_4b
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mBrazilianCarriers:Z

    if-nez v15, :cond_4c

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mTFGCarrier:Z

    if-eqz v15, :cond_50

    .line 3564
    :cond_4c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v15

    sget-object v16, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4f

    .line 3565
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setMobileLabelForZVV(Ljava/lang/String;I)V

    .line 3566
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setMobileLabelForZVV(Ljava/lang/String;I)V

    .line 3567
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4d

    .line 3568
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "                    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_16

    .line 3569
    :cond_4d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4e

    .line 3570
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v12, v15, v16

    goto/16 :goto_16

    .line 3572
    :cond_4e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v12, v15, v16

    goto/16 :goto_16

    .line 3575
    :cond_4f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_16

    .line 3578
    :cond_50
    const-string v12, ""

    goto/16 :goto_16

    .line 3582
    :cond_51
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v15

    sget-object v16, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_52

    .line 3583
    const-string v12, ""

    goto/16 :goto_16

    .line 3585
    :cond_52
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v16, 0x7f0a049d

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_16

    .line 3602
    :cond_53
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCarrierText()V

    .line 3603
    return-void

    .line 3083
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3140
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v12, 0x7fffffff

    const/4 v11, 0x0

    const/16 v10, 0x1e1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 514
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 518
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    .line 519
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 520
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPhoneStateListener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    new-array v5, v5, [Landroid/telephony/PhoneStateListener;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 522
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v2, v5, :cond_2

    .line 523
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 524
    .local v4, "subIdtemp":[I
    if-eqz v4, :cond_6

    .line 525
    aget v3, v4, v8

    .line 526
    .local v3, "subId":I
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPhoneStateListener subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPhoneStateListener slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    if-lez v3, :cond_1

    .line 530
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v5, v2

    .line 533
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 522
    .end local v3    # "subId":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    .restart local v3    # "subId":I
    :cond_1
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 541
    const-string v5, "persist.radio.multisim.stackid"

    const-string v6, "NONE"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "crossMapping":Ljava/lang/String;
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPhoneStateListener crossMapping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v5, "1,0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 544
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v1, v5, v8

    .line 545
    .local v1, "crossSubID":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v5, v9

    .line 547
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 553
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v11, v5, v8

    .line 595
    .end local v0    # "crossMapping":Ljava/lang/String;
    .end local v1    # "crossSubID":I
    .end local v3    # "subId":I
    .end local v4    # "subIdtemp":[I
    :cond_2
    :goto_2
    return-void

    .line 555
    .restart local v0    # "crossMapping":Ljava/lang/String;
    .restart local v3    # "subId":I
    .restart local v4    # "subIdtemp":[I
    :cond_3
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v1, v5, v8

    .line 556
    .restart local v1    # "crossSubID":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v5, v8

    .line 558
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 564
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v11, v5, v9

    goto :goto_2

    .line 567
    .end local v0    # "crossMapping":Ljava/lang/String;
    .end local v1    # "crossSubID":I
    :cond_4
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 568
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v3, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v5, v8

    .line 570
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_1

    .line 577
    :cond_5
    const-string v5, "StatusBar.MSimNetworkController"

    const-string v6, "registerPhoneStateListener NULL "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v11, v5, v2

    goto/16 :goto_1

    .line 582
    .end local v3    # "subId":I
    :cond_6
    if-nez v2, :cond_0

    .line 583
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v12, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v5, v8

    .line 585
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_1
.end method

.method public setCurrentSimSlot(I)V
    .locals 0
    .param p1, "simSlot"    # I

    .prologue
    .line 4700
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    .line 4701
    return-void
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 2970
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2975
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2978
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    .line 2979
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v4, :cond_1

    .line 2980
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    .line 2981
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2987
    :goto_1
    const-string v4, "inetCondition"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2990
    .local v1, "connectionStatus":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: networkInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: connectionStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v6, 0x7

    if-ne v4, v6, :cond_2

    .line 2999
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    .line 3005
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWimaxIcons()V

    .line 3006
    const/4 v3, 0x0

    .local v3, "sub":I
    :goto_3
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v3, v4, :cond_3

    .line 3008
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 3009
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 3010
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 3006
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v1    # "connectionStatus":I
    .end local v3    # "sub":I
    :cond_0
    move v4, v5

    .line 2978
    goto :goto_0

    .line 2983
    :cond_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    .line 2984
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .line 3001
    .restart local v1    # "connectionStatus":I
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_2

    .line 3012
    .restart local v3    # "sub":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWifiIcons()V

    .line 3013
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .prologue
    .line 2724
    const-string v2, "StatusBar.MSimNetworkController"

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

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2728
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2729
    .local v0, "something":Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 2730
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2731
    const/4 v0, 0x1

    .line 2733
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2734
    if-eqz v0, :cond_1

    .line 2735
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2737
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2738
    const/4 v0, 0x1

    .line 2740
    :cond_2
    if-eqz v0, :cond_3

    .line 2741
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p5

    .line 2746
    :goto_0
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMSimNetworkName[phoneId] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    return-void

    .line 2743
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, p5

    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "showCB"    # Z
    .param p6, "CBmsg"    # Ljava/lang/String;
    .param p7, "phoneId"    # I

    .prologue
    .line 2753
    const-string v2, "StatusBar.MSimNetworkController"

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

    const-string v4, " showCB="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CBmsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2757
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2758
    .local v0, "something":Z
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCB:Ljava/lang/String;

    .line 2760
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 2761
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2762
    const/4 v0, 0x1

    .line 2764
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2765
    if-eqz v0, :cond_1

    .line 2766
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2768
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2769
    const/4 v0, 0x1

    .line 2771
    :cond_2
    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    .line 2772
    if-eqz v0, :cond_3

    .line 2773
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    :cond_3
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    const/4 v0, 0x1

    .line 2779
    :cond_4
    if-eqz v0, :cond_5

    .line 2780
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p7

    .line 2784
    :goto_0
    return-void

    .line 2782
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, p7

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1385
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1388
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "slot"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1390
    .local v1, "phoneId":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for phoneId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    if-ltz v1, :cond_1

    .line 1392
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1393
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1416
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, v1

    if-eq v2, v4, :cond_0

    .line 1417
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v4, v1

    .line 1418
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 1419
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState simState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 1423
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 1424
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    .line 1426
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    return-void

    .line 1395
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "IMSI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1398
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1400
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1401
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1404
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1406
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1407
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1410
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1413
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method
