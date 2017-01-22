.class public Lcom/android/systemui/statusbar/MSimSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "MSim-SignalClusterView"


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mBtTetherState:Z

.field private mCurrentDataSlot:I

.field mDataSignalSpacer:Landroid/view/View;

.field private mDefaultPhoneId:I

.field private mHasService:Z

.field private mHasService2:Z

.field private mIsAirplaneMode:Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

.field mMobile:[Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field mMobileActivity2:Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileDataState:[I

.field private mMobileDataState1:I

.field private mMobileDataState2:I

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileFocus:[Landroid/widget/ImageView;

.field private mMobileFocusResourceId:[I

.field private mMobileFocusSub:[Z

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileGroupResourceId:[I

.field private mMobileResourceId:[I

.field mMobileRoaming:[Landroid/widget/ImageView;

.field mMobileRoamingId:[I

.field private mMobileRoamingResourceId:[I

.field private mMobileRssiId:[I

.field mMobileRssiType:[Landroid/widget/ImageView;

.field private mMobileStrengthId:[I

.field mMobileType:Landroid/widget/ImageView;

.field mMobileType2:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileTypeResourceId:[I

.field private mMobileVisible:[Z

.field mNWBoosterActivity:Landroid/widget/ImageView;

.field private mNWBoosterActivityId:I

.field mNWBoosterGroup:Landroid/view/ViewGroup;

.field mNWBoosterMobileType:Landroid/widget/ImageView;

.field private mNWBoosterMobileTypeId:I

.field private mNWBoosterRunning:Z

.field private mNWBoosterVisible:Z

.field mNWBoosterWifi:Landroid/widget/ImageView;

.field private mNWBoosterWifiId:I

.field private mNoSimIconId:I

.field mNoSimSlot:Landroid/widget/ImageView;

.field private mNoSimSlotResourceId:I

.field private final mNumPhones:I

.field private mRoamingIconId:[I

.field private mRssiTypeResourceId:[I

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field mSeparateMobileGroup:Landroid/view/ViewGroup;

.field mSeparateMobileGroup2:Landroid/view/ViewGroup;

.field private mShowTwoBars:[I

.field mSimFous:[Z

.field mSimIcon:Landroid/widget/ImageView;

.field private mSimIconId:I

.field private mSimIconVisible:Z

.field private mSpacer:Landroid/view/View;

.field private mStyle:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiCaptiveNotLogin:Z

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 64
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 65
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 66
    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 68
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    .line 74
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 76
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    .line 78
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 79
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 121
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    .line 123
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    .line 125
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    .line 127
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRssiTypeResourceId:[I

    .line 139
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    .line 142
    const v1, 0x7f0f019d

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:I

    .line 160
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    .line 161
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    .line 163
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    .line 165
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusResourceId:[I

    .line 169
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingResourceId:[I

    .line 822
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    .line 824
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService:Z

    .line 826
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 832
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCurrentDataSlot:I

    .line 843
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    .line 844
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    .line 847
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService2:Z

    .line 850
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiCaptiveNotLogin:Z

    .line 912
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    .line 914
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    .line 916
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    .line 187
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    .line 188
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    .line 189
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    .line 192
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingIconId:[I

    .line 193
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    .line 194
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusSub:[Z

    .line 195
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:I

    .line 196
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 197
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    .line 198
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    .line 199
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    .line 200
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    .line 201
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    .line 202
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    .line 203
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    .line 206
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    .line 207
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v1, v0

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput v2, v1, v0

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingIconId:[I

    aput v2, v1, v0

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aput-boolean v2, v1, v0

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusSub:[Z

    aput-boolean v2, v1, v0

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v1, v0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aput v2, v1, v0

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aput v2, v1, v0

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aput-boolean v2, v1, v0

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aput v2, v1, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    return-void

    .line 121
    :array_0
    .array-data 4
        0x7f0f018c
        0x7f0f01ab
        0x7f0f019e
    .end array-data

    .line 123
    :array_1
    .array-data 4
        0x7f0f018d
        0x7f0f01ad
        0x7f0f01a0
    .end array-data

    .line 125
    :array_2
    .array-data 4
        0x7f0f018e
        0x7f0f01ae
        0x7f0f01a1
    .end array-data

    .line 127
    :array_3
    .array-data 4
        0x7f0f01a7
        0x7f0f01b0
        0x7f0f01a3
    .end array-data

    .line 165
    :array_4
    .array-data 4
        0x7f0f01a5
        0x7f0f01ac
        0x7f0f019f
    .end array-data

    .line 169
    :array_5
    .array-data 4
        0x7f0f01a6
        0x7f0f01af
        0x7f0f01a2
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    return-void
.end method

.method private apply(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const v7, 0x3ecccccd    # 0.4f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_5

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService2:Z

    if-eqz v0, :cond_4

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 594
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-gt p1, v0, :cond_3

    if-gez p1, :cond_6

    .line 595
    :cond_3
    const-string v0, "MSim-SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 586
    goto :goto_1

    .line 588
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 598
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_10

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_f

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v0, v0, p1

    const v3, 0x7f0202d9

    if-ne v0, v3, :cond_7

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    const v3, 0x7f0202db

    aput v3, v0, p1

    .line 611
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 627
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aget v0, v0, p1

    if-eqz v0, :cond_11

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 637
    :goto_5
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_8

    .line 638
    const-string v0, "persist.radio.dataprefer.slotId"

    const-string v3, "-1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCurrentDataSlot:I

    .line 645
    :cond_8
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_15

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    if-eq v0, v6, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_13

    :cond_9
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_13

    .line 649
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 654
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-ne v0, v5, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aget-boolean v0, v0, v1

    if-ne v0, v5, :cond_12

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    if-ne v0, v6, :cond_14

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_14

    .line 670
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 716
    :goto_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_22

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 734
    :goto_8
    if-eqz p1, :cond_d

    .line 735
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_23

    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_23

    .line 737
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 743
    :cond_d
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_24

    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_24

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 760
    :goto_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    if-eqz v0, :cond_2d

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 765
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_26

    .line 766
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-eqz v0, :cond_25

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 803
    :goto_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2e

    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 609
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 620
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 631
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 660
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 663
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 675
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 679
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v1

    if-eq v0, v6, :cond_16

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_18

    :cond_16
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_18

    .line 682
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 687
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v5

    if-eq v0, v6, :cond_19

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_1b

    :cond_19
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_1b

    .line 690
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 698
    :cond_1b
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCurrentDataSlot:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1c

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 701
    :cond_1c
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v1

    if-eq v0, v6, :cond_1e

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCurrentDataSlot:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v0

    if-ne v0, v5, :cond_1e

    :cond_1d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_1f

    :cond_1e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_20

    .line 702
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 705
    :cond_20
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v5

    if-eq v0, v6, :cond_21

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCurrentDataSlot:I

    if-ne v0, v5, :cond_21

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService2:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_21

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 711
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 720
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 739
    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 746
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 770
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_b

    .line 773
    :cond_26
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v0, :cond_28

    .line 774
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-eqz v0, :cond_27

    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_b

    .line 777
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_b

    .line 780
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 782
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-eqz v0, :cond_2a

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 787
    :goto_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiCaptiveNotLogin:Z

    if-nez v0, :cond_2b

    .line 788
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 792
    :goto_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v1

    if-eq v0, v6, :cond_29

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v5

    if-ne v0, v6, :cond_2c

    .line 793
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_b

    .line 785
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_c

    .line 790
    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_d

    .line 795
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_b

    .line 800
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_b

    .line 808
    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 508
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 253
    const v1, 0x7f0f0193

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 254
    const v1, 0x7f0f0194

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 255
    const v1, 0x7f0f01a4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 256
    const v1, 0x7f0f01b1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 260
    const v1, 0x7f0f019d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 265
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 267
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 268
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 274
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRssiTypeResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f020498

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 278
    :cond_1
    const v1, 0x7f0f0195

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 280
    const v1, 0x7f0f0199

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 281
    const v1, 0x7f0f019b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 282
    const v1, 0x7f0f019a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 283
    const v1, 0x7f0f019c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    .line 296
    const v1, 0x7f0f018f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    .line 297
    const v1, 0x7f0f0190

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    .line 298
    const v1, 0x7f0f0191

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    .line 299
    const v1, 0x7f0f0192

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    .line 302
    const v1, 0x7f0f0196

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 304
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    const v1, 0x7f0f0198

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    const v1, 0x7f0f01a8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    .line 309
    const v1, 0x7f0f01aa

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    .line 310
    const v1, 0x7f0f01a9

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    .line 321
    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    .line 322
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 323
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 328
    :goto_2
    return-void

    .line 325
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 333
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 334
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 335
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 336
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 338
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 339
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    .line 343
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 345
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 346
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 347
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 348
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    .line 352
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_0

    .line 353
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    .line 354
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    .line 355
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    .line 359
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 365
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 376
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x0

    .line 521
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 532
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 536
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_6

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 541
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 545
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 548
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_6
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 393
    return-void
.end method

.method public setBtTetherState(Z)V
    .locals 0
    .param p1, "btTetherState"    # Z

    .prologue
    .line 899
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    .line 900
    return-void
.end method

.method public setDataState(II)V
    .locals 1
    .param p1, "dataState"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aput p1, v0, p2

    .line 873
    return-void
.end method

.method public setDataStateForSeperatedData(II)V
    .locals 0
    .param p1, "dataState"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 877
    if-nez p2, :cond_0

    .line 878
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    .line 884
    :goto_0
    return-void

    .line 880
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    goto :goto_0
.end method

.method public setHasService(Z)V
    .locals 0
    .param p1, "hasService"    # Z

    .prologue
    .line 888
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService:Z

    .line 889
    return-void
.end method

.method public setHasService2(Z)V
    .locals 0
    .param p1, "hasService"    # Z

    .prologue
    .line 893
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService2:Z

    .line 894
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 2
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 498
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 500
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method

.method public setMobileActivityIcon(II)V
    .locals 1
    .param p1, "mobileActivityIconId"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput p1, v0, p2

    .line 856
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "typeIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "typeContentDescription"    # Ljava/lang/String;
    .param p7, "phoneId"    # I
    .param p8, "noSimIcon"    # I
    .param p9, "simFocus"    # Z

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aput-boolean p1, v0, p7

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput p2, v0, p7

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput p4, v0, p7

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v0, p7

    .line 421
    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aput-boolean p9, v0, p7

    .line 492
    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 493
    return-void
.end method

.method public setMobileFocusIcon(II)V
    .locals 1
    .param p1, "mobileFocusIconId"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 962
    return-void
.end method

.method public setNWBoosterIndicators(ZZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "running"    # Z
    .param p3, "activityIcon"    # I

    .prologue
    .line 943
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    .line 944
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    .line 945
    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    .line 946
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    .line 947
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
.end method

.method public setNWBoosterIndicators(ZZIIILjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "running"    # Z
    .param p3, "strengthIcon"    # I
    .param p4, "activityIcon"    # I
    .param p5, "typeIcon"    # I
    .param p6, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 925
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    .line 926
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    .line 927
    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    .line 928
    iput p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    .line 929
    iput p5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    .line 930
    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 932
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    .line 933
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 939
    :goto_0
    return-void

    .line 936
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .line 239
    return-void
.end method

.method public setRoamingIcon(II)V
    .locals 1
    .param p1, "roamingIconId"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aput p1, v0, p2

    .line 866
    return-void
.end method

.method public setRssiIcon(II)V
    .locals 1
    .param p1, "rssiIconId"    # I
    .param p2, "mPhoneId"    # I

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aput p1, v0, p2

    .line 957
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 1
    .param p1, "sc"    # Lcom/android/systemui/statusbar/policy/SecurityController;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 246
    return-void
.end method

.method public setSimIcon(ZI)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "simIconId"    # I

    .prologue
    .line 559
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    .line 560
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    .line 561
    return-void
.end method

.method public setWifiActivityIcon(I)V
    .locals 0
    .param p1, "wifiActivityIconId"    # I

    .prologue
    .line 860
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 861
    return-void
.end method

.method public setWifiCaptiveNotLogin(Z)V
    .locals 0
    .param p1, "wifiCaptivaeNotLogIn"    # Z

    .prologue
    .line 907
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiCaptiveNotLogin:Z

    .line 908
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 400
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    .line 401
    iput-object p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 403
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    .line 404
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
.end method
