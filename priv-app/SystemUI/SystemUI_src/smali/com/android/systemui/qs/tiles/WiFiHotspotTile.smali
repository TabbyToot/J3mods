.class public Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WiFiHotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_AP_STATE:Ljava/lang/String; = "wifi_state"

.field private static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field private static final INFO_TYPE_DPM_HOTSPOT:I = 0x3

.field private static final KEY_LAST_USED_DATE:Ljava/lang/String; = "lastUsedDate"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field private static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "HotspotTile"

.field private static final WIFIAP_ENABLE_WARNING:Ljava/lang/String; = "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

.field private static final WIFI_AP_SAVED_STATE:Ljava/lang/String; = "wifi_ap_saved_state"

.field private static final WIFI_AP_STATE_DISABLED:I = 0xb

.field private static final WIFI_AP_STATE_ENABLED:I = 0xd

.field private static final WIFI_AP_STATE_FAILED:I = 0xe

.field private static final WIFI_DIALOG_ENABLING_HOTSPOT:I = 0x2

.field private static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field private final mCallback:Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

.field private mClickedTime:J

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mDefaultSSIDPwd:Ljava/lang/String;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mErrorMsgResId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

.field private final mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v4, 0x1

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 88
    new-instance v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Lcom/android/systemui/qs/tiles/WiFiHotspotTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

    .line 117
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    .line 462
    new-instance v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 134
    new-instance v0, Lcom/android/systemui/qs/UsageTracker;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const v3, 0x7f0c0042

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/UsageTracker;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    .line 138
    new-instance v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 144
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/systemui/qs/ToddlerModeSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/ToddlerModeSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->init()V

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;
    .param p2, "x2"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->generateDefaultSSID(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateTetherState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method private dimClick()V
    .locals 0

    .prologue
    .line 1005
    return-void
.end method

.method private generateDefaultSSID(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 18
    .param p1, "wifiMgr"    # Landroid/net/wifi/WifiManager;
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1010
    const/4 v8, 0x0

    .line 1011
    .local v8, "number":Ljava/lang/String;
    const-string v3, ""

    .line 1012
    .local v3, "defaultNumber":Ljava/lang/String;
    const-string v2, ""

    .line 1013
    .local v2, "SSID":Ljava/lang/String;
    const-string v4, ""

    .line 1015
    .local v4, "defaultSSID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 1016
    .local v7, "mgr":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_0

    .line 1017
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v8

    .line 1019
    :cond_0
    if-nez v8, :cond_1

    .line 1020
    const-string v8, ""

    .line 1023
    :cond_1
    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1024
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0477

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1030
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    .line 1031
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x4

    const/16 v17, 0x4

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 1032
    .local v6, "last4digitNum":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1033
    move-object v3, v6

    .line 1041
    .end local v6    # "last4digitNum":Ljava/lang/String;
    :goto_1
    new-instance p2, Landroid/net/wifi/WifiConfiguration;

    .end local p2    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1042
    .restart local p2    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p2

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1043
    const/4 v15, 0x0

    move-object/from16 v0, p2

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1045
    const-string v15, "WPA2/PSK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "WPA/PSK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1046
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1048
    .local v10, "randomUUID":Ljava/lang/String;
    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1049
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x9

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1066
    :cond_3
    :goto_2
    const-string v15, "WPA2/PSK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1067
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    .line 1076
    .end local v10    # "randomUUID":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v15

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 1077
    const/4 v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1081
    :goto_4
    return-void

    .line 1026
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1027
    .local v14, "splitSSID":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v2, v14, v15

    goto/16 :goto_0

    .line 1035
    .end local v14    # "splitSSID":[Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v11, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1036
    .local v11, "rnd":Ljava/util/Random;
    const/16 v15, 0x2327

    invoke-virtual {v11, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    add-int/lit16 v12, v15, 0x3e8

    .line 1037
    .local v12, "sequence":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1038
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1051
    .end local v11    # "rnd":Ljava/util/Random;
    .end local v12    # "sequence":I
    .restart local v10    # "randomUUID":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1052
    .local v13, "splitPwd":[Ljava/lang/String;
    array-length v15, v13

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1053
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x9

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 1055
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1056
    .local v9, "pwd":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_5
    array-length v15, v13

    if-ge v5, v15, :cond_3

    .line 1057
    const-string v15, "LAST4DIGIT"

    aget-object v16, v13, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1058
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    :goto_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1056
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1060
    :cond_8
    aget-object v15, v13, v5

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1069
    .end local v5    # "i":I
    .end local v9    # "pwd":Ljava/lang/StringBuilder;
    .end local v13    # "splitPwd":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 1072
    .end local v10    # "randomUUID":Ljava/lang/String;
    :cond_a
    const-string v15, ""

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1073
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 1079
    :cond_b
    invoke-virtual/range {p1 .. p2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_4
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v2, 0x7f0205e2

    const v1, 0x7f0205d4

    .line 408
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_1

    .line 409
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v0, :cond_0

    .line 410
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 443
    :goto_0
    return-void

    .line 413
    :cond_0
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 416
    :cond_1
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 418
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v0, :cond_2

    .line 419
    const v0, 0x7f0205d5

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 422
    :cond_2
    const v0, 0x7f0205e3

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 426
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v0, :cond_3

    .line 427
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 430
    :cond_3
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 434
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v0, :cond_4

    .line 435
    const v0, 0x7f0205d3

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 438
    :cond_4
    const v0, 0x7f0205e1

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 4

    .prologue
    .line 538
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 539
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 540
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    const-string v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v2, :cond_0

    .line 545
    const-string v2, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 553
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 555
    .local v1, "mgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    .line 556
    return-void

    .line 548
    .end local v1    # "mgr":Landroid/net/ConnectivityManager;
    :cond_0
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 7

    .prologue
    .line 1177
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1179
    .local v2, "mgnr":Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1180
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1181
    .local v1, "isP2PConnected":Z
    const-string v4, "HotspotTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isP2PConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    .end local v1    # "isP2PConnected":Z
    .end local v2    # "mgnr":Landroid/net/ConnectivityManager;
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v1

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "HotspotTile"

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 4

    .prologue
    .line 668
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 670
    .local v0, "SimState":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isMSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    const-string v1, "HotspotTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimReady(): MSIM enabledsim # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getReadySimCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isMSim()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isMSim()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getReadySimCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 677
    :cond_2
    const/4 v1, 0x0

    .line 679
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v8, -0x2

    const/4 v4, 0x1

    .line 559
    const/4 v2, 0x0

    .line 561
    .local v2, "wifiState":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 562
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 564
    const-string v3, "HotspotTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iput v9, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 569
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v3, :cond_1

    if-ne p1, v4, :cond_1

    .line 570
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 571
    const-string v3, "HotspotTile"

    const-string v4, "send WIFIAP_ENABLE_WARNING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    if-ne p1, v4, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-ne v2, v9, :cond_3

    .line 581
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 582
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "wifi_saved_state"

    invoke-static {v1, v3, p1, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 583
    const-string v3, "wifi_ap_saved_state"

    invoke-static {v1, v3, p1, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 585
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 587
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    const/4 v6, 0x0

    if-ne p1, v4, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v0, v6, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 594
    if-nez p1, :cond_0

    .line 595
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_saved_state"

    invoke-static {v3, v6, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 597
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    new-instance v4, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$5;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    const-wide/16 v6, 0x258

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/qs/QSTile$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    move v3, v5

    .line 587
    goto :goto_1
.end method

.method private showAttentionDialog(Z)V
    .locals 15
    .param p1, "state"    # Z

    .prologue
    .line 752
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 881
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v12, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    const v13, 0x7f0400d3

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 758
    .local v9, "mobileDataAlertView":Landroid/view/View;
    iget-object v12, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 759
    .local v10, "res":Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 760
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ja"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v2, "ja"

    .line 773
    .local v2, "language":Ljava/lang/String;
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0a0471

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0a0472

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<br>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 781
    .local v11, "summary":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<a href=\"http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".html\">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0a0473

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</a>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 786
    .local v4, "linkText":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".html"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "link":Ljava/lang/String;
    const v12, 0x7f0f0379

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 806
    .local v1, "attentionMsg":Landroid/widget/TextView;
    const v12, 0x7f0f037a

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 807
    .local v0, "attentionLink":Landroid/widget/TextView;
    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    new-instance v12, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;

    invoke-direct {v12, p0, v3}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    new-instance v12, Landroid/app/AlertDialog$Builder;

    iget-object v13, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x1040014

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x104000a

    new-instance v14, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$13;

    invoke-direct/range {v14 .. v16}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$13;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const/high16 v13, 0x1040000

    new-instance v14, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$12;

    invoke-direct {v14, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$12;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$11;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$11;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    .line 855
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$14;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$14;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 861
    iget-object v12, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v12}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 863
    iget-object v12, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v12}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v8

    .line 864
    .local v8, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v8, :cond_1

    .line 865
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v6

    .line 866
    .local v6, "mIsKeyguardOn":Z
    if-eqz v6, :cond_3

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v7, 0x1

    .line 868
    .local v7, "mIsKeyguardSecure":Z
    :goto_2
    if-eqz v6, :cond_5

    .line 869
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v12, :cond_4

    if-eqz v7, :cond_4

    .line 870
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d8

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    .line 880
    .end local v6    # "mIsKeyguardOn":Z
    .end local v7    # "mIsKeyguardSecure":Z
    :cond_1
    :goto_3
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 760
    .end local v0    # "attentionLink":Landroid/widget/TextView;
    .end local v1    # "attentionMsg":Landroid/widget/TextView;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "link":Ljava/lang/String;
    .end local v4    # "linkText":Ljava/lang/String;
    .end local v8    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .end local v11    # "summary":Ljava/lang/String;
    :cond_2
    const-string v2, "en"

    goto/16 :goto_1

    .line 866
    .restart local v0    # "attentionLink":Landroid/widget/TextView;
    .restart local v1    # "attentionMsg":Landroid/widget/TextView;
    .restart local v2    # "language":Ljava/lang/String;
    .restart local v3    # "link":Ljava/lang/String;
    .restart local v4    # "linkText":Ljava/lang/String;
    .restart local v6    # "mIsKeyguardOn":Z
    .restart local v8    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .restart local v11    # "summary":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 873
    .restart local v7    # "mIsKeyguardSecure":Z
    :cond_4
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d9

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    goto :goto_3

    .line 877
    :cond_5
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d8

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    goto :goto_3
.end method

.method private showBatteryUsageWarningDialog(Z)V
    .locals 7
    .param p1, "state"    # Z

    .prologue
    const/16 v6, 0x7d8

    .line 884
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0475

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0474

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$16;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$16;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$15;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$15;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    .line 919
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$18;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$18;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 925
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 927
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    .line 928
    .local v2, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v2, :cond_0

    .line 929
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    .line 930
    .local v0, "mIsKeyguardOn":Z
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 932
    .local v1, "mIsKeyguardSecure":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 933
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 934
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 944
    .end local v0    # "mIsKeyguardOn":Z
    .end local v1    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 945
    return-void

    .line 930
    .restart local v0    # "mIsKeyguardOn":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 937
    .restart local v1    # "mIsKeyguardSecure":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .line 941
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private showWarningDialog(Z)V
    .locals 8
    .param p1, "state"    # Z

    .prologue
    const/16 v7, 0x7d8

    .line 683
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 749
    :goto_0
    return-void

    .line 686
    :cond_0
    const v3, 0x7f0a046f

    .line 692
    .local v3, "stringId":I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a046e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$7;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$6;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 723
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 729
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 731
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    .line 732
    .local v2, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v2, :cond_1

    .line 733
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    .line 734
    .local v0, "mIsKeyguardOn":Z
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 736
    .local v1, "mIsKeyguardSecure":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 737
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    .line 738
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    .line 748
    .end local v0    # "mIsKeyguardOn":Z
    .end local v1    # "mIsKeyguardSecure":Z
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 734
    .restart local v0    # "mIsKeyguardOn":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 741
    .restart local v1    # "mIsKeyguardSecure":Z
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    .line 745
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private updateState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 613
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 624
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iput p1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 625
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    .line 626
    return-void
.end method

.method private updateTetherState(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 629
    const/4 v13, 0x0

    .line 630
    .local v13, "tethered":Z
    const/4 v5, 0x0

    .line 632
    .local v5, "errored":Z
    const-string v14, "activeArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 634
    .local v3, "arrayActiveTether":[Ljava/lang/Object;
    const-string v14, "erroredArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 637
    .local v4, "arrayErroredTether":[Ljava/lang/Object;
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v10, v1, v7

    .local v10, "o":Ljava/lang/Object;
    move-object v12, v10

    .line 638
    check-cast v12, Ljava/lang/String;

    .line 639
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v11, v2, v6

    .line 640
    .local v11, "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 641
    const/4 v13, 0x1

    .line 639
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 637
    .end local v11    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_0

    .line 645
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "o":Ljava/lang/Object;
    .end local v12    # "s":Ljava/lang/String;
    :cond_2
    move-object v1, v4

    .restart local v1    # "arr$":[Ljava/lang/Object;
    array-length v8, v1

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    move v7, v6

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v10, v1, v7

    .restart local v10    # "o":Ljava/lang/Object;
    move-object v12, v10

    .line 646
    check-cast v12, Ljava/lang/String;

    .line 647
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_3
    if-ge v6, v9, :cond_4

    aget-object v11, v2, v6

    .line 648
    .restart local v11    # "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 649
    const/4 v5, 0x1

    .line 647
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 645
    .end local v11    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_2

    .line 654
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "o":Ljava/lang/Object;
    .end local v12    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v13, :cond_6

    .line 655
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    .line 660
    :goto_4
    const-string v14, "HotspotTile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateTetherState():"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 658
    :cond_6
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    goto :goto_4
.end method


# virtual methods
.method public getActionMessageOnCover()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1161
    iget v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1162
    const-string v1, ""

    .line 1170
    :goto_0
    return-object v1

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "message":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 1168
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1170
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getActionTypeOnCover()I
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 1093
    new-array v2, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "false"

    aput-object v8, v2, v7

    .line 1097
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v9, "isWifiTetheringEnabled"

    invoke-static {v7, v8, v9, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1100
    .local v1, "isWifiTetheringEnabled":I
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isSettingsChangesAllowed"

    invoke-static {v7, v8, v9, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1103
    .local v0, "isSettingsChangesAllowed":I
    if-eq v1, v10, :cond_1

    if-eq v0, v10, :cond_1

    .line 1104
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1105
    :cond_0
    const-string v5, "HotspotTile"

    const-string v6, "onClick(): WiFiHotspot state change is not allowed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const v5, 0x1040b5a

    iput v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    .line 1155
    :goto_0
    return v4

    .line 1111
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v7}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v7

    if-eqz v7, :cond_2

    .line 1112
    const v5, 0x7f0a03c5

    iput v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    goto :goto_0

    .line 1116
    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v7, :cond_3

    .line 1117
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v7}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1118
    const v5, 0x7f0a03c6

    iput v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    goto :goto_0

    .line 1123
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1125
    .local v3, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isSimReady()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_5

    .line 1126
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v5, :cond_4

    .line 1127
    const v5, 0x7f0a03a6

    iput v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    goto :goto_0

    .line 1130
    :cond_4
    const v5, 0x7f0a03a4

    iput v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mErrorMsgResId:I

    goto :goto_0

    .line 1135
    :cond_5
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v6, :cond_6

    move v4, v5

    .line 1136
    goto :goto_0

    .line 1139
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v6, :cond_7

    const-string v4, "DCM"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    .line 1140
    goto :goto_0

    .line 1141
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1142
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v6, :cond_9

    move v4, v5

    .line 1143
    goto/16 :goto_0

    .line 1146
    :cond_8
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-eq v4, v5, :cond_9

    move v4, v5

    .line 1147
    goto/16 :goto_0

    .line 1152
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v5, :cond_a

    move v4, v6

    .line 1153
    goto/16 :goto_0

    :cond_a
    move v4, v5

    .line 1155
    goto/16 :goto_0
.end method

.method protected handleClick()V
    .locals 22

    .prologue
    .line 183
    const-string v19, "HotspotTile"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handleClick : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/qs/QSTile$MultiState;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    move/from16 v18, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 186
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mClickedTime:J

    move-wide/from16 v18, v0

    sub-long v18, v6, v18

    const-wide/16 v20, 0x1f4

    cmp-long v18, v18, v20

    if-gez v18, :cond_1

    .line 187
    const-string v18, "HotspotTile"

    const-string v19, "handleClick() ignored. within 500ms"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mClickedTime:J

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 193
    const-string v19, "HotspotTile"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handleClick isCoveredState : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/qs/QSTile$MultiState;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    move/from16 v18, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 204
    .local v17, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/qs/QSTile$MultiState;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 206
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showBatteryUsageWarningDialog(Z)V

    goto/16 :goto_0

    .line 210
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/qs/QSTile$MultiState;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V

    goto/16 :goto_0

    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 216
    :cond_4
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/qs/QSTile$MultiState;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    goto/16 :goto_0

    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 226
    .end local v17    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "false"

    aput-object v19, v15, v18

    .line 227
    .local v15, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v20, "isWifiTetheringEnabled"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 229
    .local v9, "isWifiTetheringEnabled":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v20, "isSettingsChangesAllowed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 231
    .local v8, "isSettingsChangesAllowed":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_8

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_8

    .line 232
    if-eqz v9, :cond_7

    if-nez v8, :cond_8

    .line 233
    :cond_7
    const-string v18, "HotspotTile"

    const-string v19, "onClick(): WiFiHotspot state change is not allowed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x1040b5a

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 239
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/qs/QSTile$MultiState;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v16, 0x1

    .line 241
    .local v16, "state":Z
    :goto_3
    const-string v18, "HotspotTile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handleClick : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/qs/QSTile$MultiState;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->dimClick()V

    goto/16 :goto_0

    .line 239
    .end local v16    # "state":Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_3

    .line 247
    .restart local v16    # "state":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v18

    if-eqz v18, :cond_b

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a03c5

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 252
    :cond_b
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v18, :cond_c

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    move-object/from16 v18, v0

    const v19, 0x7f0a03c6

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(I)V

    goto/16 :goto_0

    .line 259
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 272
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "phone"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 275
    .local v13, "mgr":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 277
    .restart local v17    # "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isSimReady()Z

    move-result v18

    if-nez v18, :cond_15

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v18

    if-nez v18, :cond_0

    .line 281
    :cond_e
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v14

    .line 282
    .local v14, "operator":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0a0553

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 285
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v18, :cond_10

    .line 286
    const v18, 0x7f0a0556

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 295
    :goto_4
    const v18, 0x104000a

    new-instance v19, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 303
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 305
    .local v4, "alert":Landroid/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v12

    .line 306
    .local v12, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v12, :cond_f

    .line 307
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v10

    .line 308
    .local v10, "mIsKeyguardOn":Z
    if-eqz v10, :cond_12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v18

    if-eqz v18, :cond_12

    const/4 v11, 0x1

    .line 309
    .local v11, "mIsKeyguardSecure":Z
    :goto_5
    if-eqz v10, :cond_14

    .line 310
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v18, :cond_13

    if-eqz v11, :cond_13

    .line 311
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x7d8

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setType(I)V

    .line 321
    .end local v10    # "mIsKeyguardOn":Z
    .end local v11    # "mIsKeyguardSecure":Z
    :cond_f
    :goto_6
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 323
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 288
    .end local v4    # "alert":Landroid/app/AlertDialog;
    .end local v12    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_10
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mNosimOfWifiHotspotForDCM:Z

    if-eqz v18, :cond_11

    .line 289
    const v18, 0x7f0a0555

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 291
    :cond_11
    const v18, 0x7f0a0554

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 308
    .restart local v4    # "alert":Landroid/app/AlertDialog;
    .restart local v10    # "mIsKeyguardOn":Z
    .restart local v12    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_12
    const/4 v11, 0x0

    goto :goto_5

    .line 314
    .restart local v11    # "mIsKeyguardSecure":Z
    :cond_13
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x7d9

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setType(I)V

    goto :goto_6

    .line 318
    :cond_14
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x7d8

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setType(I)V

    goto :goto_6

    .line 330
    .end local v4    # "alert":Landroid/app/AlertDialog;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "mIsKeyguardOn":Z
    .end local v11    # "mIsKeyguardSecure":Z
    .end local v12    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .end local v14    # "operator":Ljava/lang/String;
    :cond_15
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v18, :cond_17

    .line 331
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    .line 332
    if-eqz v16, :cond_16

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    .line 333
    const-string v18, "HotspotTile"

    const-string v19, "set as mMobileHotspotUSA"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 332
    :cond_16
    const/16 v18, 0x0

    goto :goto_7

    .line 338
    :cond_17
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 340
    if-eqz v16, :cond_1a

    .line 341
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showBatteryUsageWarningDialog(Z)V

    goto/16 :goto_0

    .line 345
    :cond_18
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/qs/QSTile$MultiState;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V

    goto/16 :goto_0

    :cond_19
    const/16 v18, 0x0

    goto :goto_8

    .line 358
    :cond_1a
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    .line 359
    if-eqz v16, :cond_1b

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    goto/16 :goto_0

    :cond_1b
    const/16 v18, 0x0

    goto :goto_9
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 160
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    .line 162
    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 955
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "true"

    aput-object v3, v2, v6

    .line 956
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v5, "isWifiTetheringEnabled"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 958
    .local v1, "isWifiTetheringEnabled":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 960
    .local v0, "isSettingsChangesAllowed":I
    if-eq v1, v7, :cond_1

    if-eq v0, v7, :cond_1

    .line 961
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 962
    :cond_0
    const-string v3, "HotspotTile"

    const-string v4, "onClick(): WiFiHotspot state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v4, 0x1040b5a

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 993
    :goto_0
    return-void

    .line 969
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v3, :cond_2

    .line 970
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 971
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    const v4, 0x7f0a03c6

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(I)V

    goto :goto_0

    .line 977
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-eqz v3, :cond_3

    .line 978
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0a03c5

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 982
    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_5

    .line 983
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotSetting:Z

    if-eqz v3, :cond_4

    .line 984
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :cond_4
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 990
    :cond_5
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->handleLongClick()V

    .line 950
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 375
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 376
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0a038d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 377
    const v0, 0x7f0a0365

    .line 379
    .local v0, "resContentDescription":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mJPNLabelType:Z

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0a038e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 381
    const v0, 0x7f0a0366

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 385
    .local v1, "value":I
    :cond_1
    :goto_0
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 386
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 387
    packed-switch v1, :pswitch_data_0

    .line 405
    :goto_1
    return-void

    .line 384
    .end local v1    # "value":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 389
    .restart local v1    # "value":I
    :pswitch_0
    const v2, 0x7f0a034b

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 394
    :pswitch_1
    const v2, 0x7f0a034c

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 399
    :pswitch_2
    const v2, 0x7f0a034d

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 179
    return-void
.end method

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    .line 1087
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/ToddlerModeSetting;->userSwitched(I)V

    .line 1089
    :cond_0
    return-void
.end method
