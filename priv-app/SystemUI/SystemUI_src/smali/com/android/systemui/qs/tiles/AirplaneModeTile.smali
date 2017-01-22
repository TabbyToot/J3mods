.class public Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DSNETWORK:Ljava/lang/String; = "DSNETWORK"

.field private static final REASON_USB30:Ljava/lang/String; = "airplane_mode_on_reason_usb3"

.field private static final TAG:Ljava/lang/String; = "AirplaneModeTile"

.field private static final sSupportMovialWFC:Z

.field private static final sSupportSecEPDG:Z

.field private static final sSupportSecWFC:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertShowing:Z

.field private mClickedTime:J

.field private mDSNetork:Z

.field private mIsWaitingForEcmExit:Z

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneCount:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final mdsNetworkObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z

    .line 97
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z

    .line 98
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecEPDG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDSNetork:Z

    .line 102
    iput v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    .line 134
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mdsNetworkObserver:Landroid/database/ContentObserver;

    .line 316
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 503
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 108
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 120
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on_reason_usb3"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->init()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDSNetork:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDSNetork:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/systemui/qs/tiles/AirplaneModeTile;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mClickedTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecEPDG:Z

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z

    return v0
.end method

.method private getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 490
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 493
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 496
    .end local v0    # "phoneId":I
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 360
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)V

    .line 417
    .local v0, "mListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f02053f

    .line 287
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 288
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 302
    :goto_0
    return-void

    .line 290
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    const v0, 0x7f020540

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 295
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 298
    :pswitch_2
    const v0, 0x7f02053e

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 531
    const-string v1, "AirplaneModeTile"

    const-string v3, "init"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    .line 551
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 557
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 561
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 562
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDisableAirplaneModeWhenPUK:Z

    if-eqz v1, :cond_2

    .line 568
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "DSNETWORK"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mdsNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 571
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 572
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 573
    return-void

    .line 572
    :cond_3
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private isDataCapable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 816
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 817
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method public static isSimCardInserted(I)Z
    .locals 8
    .param p0, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 456
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 458
    if-nez p0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v4

    .line 461
    goto :goto_0

    .line 465
    :cond_2
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "iccTemp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 473
    const/4 v2, 0x0

    .line 474
    .local v2, "key":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 482
    :goto_1
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 485
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    .line 476
    :pswitch_0
    aget-object v2, v0, v5

    .line 477
    goto :goto_1

    .line 479
    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_1

    :cond_3
    move v4, v5

    .line 485
    goto :goto_2

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSupportVoLte()Z
    .locals 9

    .prologue
    const/16 v8, 0x5d

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "isVolteProvisioned":Z
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 823
    .local v1, "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-eqz v1, :cond_0

    .line 824
    new-array v2, v4, [I

    aput v8, v2, v5

    .line 825
    .local v2, "reqFields":[I
    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v3

    .line 826
    .local v3, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v6, "1"

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 827
    const/4 v0, 0x1

    .line 830
    .end local v2    # "reqFields":[I
    .end local v3    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_0
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    .line 810
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 812
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 421
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    .line 422
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    .line 423
    const-string v3, "AirplaneModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 425
    iget v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    if-ge v0, v3, :cond_3

    .line 427
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 428
    .local v2, "subIdtemp":[I
    if-eqz v2, :cond_0

    .line 429
    aget v1, v2, v6

    .line 430
    .local v1, "subId":I
    const-string v3, "AirplaneModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-lez v1, :cond_1

    .line 432
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 433
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 442
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimServiceState:[I

    aput v6, v3, v0

    .line 426
    .end local v1    # "subId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .restart local v1    # "subId":I
    :cond_1
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 436
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 437
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 439
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    .line 445
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_3
    return-void
.end method

.method private setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 232
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 233
    return-void
.end method

.method private showConfirmCheckboxPopup(ZZ)V
    .locals 18
    .param p1, "state"    # Z
    .param p2, "upgradeLollipop"    # Z

    .prologue
    .line 669
    const/4 v7, 0x0

    .line 670
    .local v7, "isVzwUsb30Popup":Z
    const/4 v4, 0x0

    .line 672
    .local v4, "checkboxshowing":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v16, 0x7f0400c3

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 673
    .local v2, "airPlaneMessageDataAlertView":Landroid/view/View;
    const v15, 0x7f0f0365

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 674
    .local v5, "contentText":Landroid/widget/TextView;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 675
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const v15, 0x7f0f0366

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 677
    .local v6, "dontShowCheckbox":Landroid/widget/CheckBox;
    new-instance v15, Lcom/android/systemui/qs/tiles/AirplaneModeTile$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$10;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v6, v15}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    .line 683
    if-eqz v7, :cond_0

    .line 684
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v15, :cond_0

    .line 685
    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v15}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v15}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v7, 0x1

    .line 690
    :cond_0
    :goto_0
    const/4 v14, -0x1

    .line 691
    .local v14, "resTitle":I
    if-eqz p1, :cond_9

    .line 692
    const v14, 0x7f0a049c

    .line 693
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v15, :cond_1

    .line 694
    const v14, 0x7f0a049e

    .line 705
    :cond_1
    :goto_1
    const/4 v12, -0x1

    .line 706
    .local v12, "resOnMessageId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isVoiceCapable()Z

    move-result v15

    if-nez v15, :cond_b

    .line 707
    const v12, 0x7f0a04a1

    .line 718
    :goto_2
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v15, :cond_2

    .line 719
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isSupportVoLte()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 720
    const v12, 0x7f0a03b8

    .line 727
    :cond_2
    :goto_3
    const/4 v11, -0x1

    .line 728
    .local v11, "resOffMessageId":I
    if-eqz v7, :cond_f

    .line 729
    const v11, 0x7f0a04b8

    .line 734
    :goto_4
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-nez v15, :cond_3

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v15, :cond_4

    .line 735
    :cond_3
    const/4 v4, 0x1

    .line 738
    :cond_4
    if-eqz p1, :cond_5

    if-nez v4, :cond_6

    .line 739
    :cond_5
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 742
    :cond_6
    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 743
    if-eqz p1, :cond_10

    .end local v12    # "resOnMessageId":I
    :goto_5
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    .line 746
    const/4 v13, -0x1

    .line 747
    .local v13, "resPositiveButtonId":I
    if-eqz v7, :cond_11

    if-nez p1, :cond_11

    .line 748
    const v13, 0x1040950

    .line 762
    :goto_6
    new-instance v15, Lcom/android/systemui/qs/tiles/AirplaneModeTile$11;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$11;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;ZLandroid/widget/CheckBox;)V

    invoke-virtual {v3, v13, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 778
    const/high16 v15, 0x1040000

    new-instance v16, Lcom/android/systemui/qs/tiles/AirplaneModeTile$12;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$12;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 784
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 786
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 788
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/android/systemui/qs/tiles/AirplaneModeTile$13;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$13;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v15}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 795
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v15}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v10

    .line 796
    .local v10, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v10, :cond_7

    .line 797
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v8

    .line 798
    .local v8, "mIsKeyguardOn":Z
    if-eqz v8, :cond_14

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v15

    if-eqz v15, :cond_14

    const/4 v9, 0x1

    .line 800
    .local v9, "mIsKeyguardSecure":Z
    :goto_7
    if-eqz v8, :cond_15

    .line 801
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d9

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    .line 806
    .end local v8    # "mIsKeyguardOn":Z
    .end local v9    # "mIsKeyguardSecure":Z
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 807
    return-void

    .line 685
    .end local v10    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .end local v11    # "resOffMessageId":I
    .end local v13    # "resPositiveButtonId":I
    .end local v14    # "resTitle":I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 697
    .restart local v14    # "resTitle":I
    :cond_9
    if-eqz v7, :cond_a

    .line 698
    const v14, 0x7f0a04b9

    goto/16 :goto_1

    .line 700
    :cond_a
    const v14, 0x7f0a049d

    goto/16 :goto_1

    .line 709
    .restart local v12    # "resOnMessageId":I
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 710
    const v12, 0x7f0a049f

    goto/16 :goto_2

    .line 711
    :cond_c
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v15, :cond_d

    .line 712
    const v12, 0x7f0a04a2

    goto/16 :goto_2

    .line 714
    :cond_d
    const v12, 0x7f0a04e7

    goto/16 :goto_2

    .line 722
    :cond_e
    const v12, 0x7f0a03ba

    goto/16 :goto_3

    .line 731
    .restart local v11    # "resOffMessageId":I
    :cond_f
    const v11, 0x7f0a04a0

    goto/16 :goto_4

    :cond_10
    move v12, v11

    .line 743
    goto/16 :goto_5

    .line 750
    .end local v12    # "resOnMessageId":I
    .restart local v13    # "resPositiveButtonId":I
    :cond_11
    if-eqz p1, :cond_13

    .line 751
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v15, :cond_12

    .line 752
    const/high16 v13, 0x7f0a0000

    goto/16 :goto_6

    .line 754
    :cond_12
    const v13, 0x10407ea

    goto/16 :goto_6

    .line 757
    :cond_13
    const v13, 0x10407e9

    goto/16 :goto_6

    .line 798
    .restart local v8    # "mIsKeyguardOn":Z
    .restart local v10    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_14
    const/4 v9, 0x0

    goto :goto_7

    .line 803
    .restart local v9    # "mIsKeyguardSecure":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    goto :goto_8
.end method

.method private showConfirmPopup(Z)V
    .locals 10
    .param p1, "state"    # Z

    .prologue
    const v7, 0x7f0a04a0

    .line 576
    const/4 v1, 0x0

    .line 578
    .local v1, "isVzwUsb30Popup":Z
    if-eqz p1, :cond_5

    const v6, 0x7f0a049c

    .line 581
    .local v6, "resTitle":I
    :goto_0
    const/4 v5, 0x0

    .line 588
    .local v5, "resMsg":I
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v8, :cond_7

    .line 589
    if-eqz p1, :cond_6

    const v5, 0x1040a3a

    .line 596
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 597
    if-eqz p1, :cond_b

    const v5, 0x7f0a04a1

    .line 601
    :cond_0
    :goto_2
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowFlightModePopup:Z

    if-eqz v7, :cond_1

    .line 602
    const v6, 0x7f0a049c

    .line 603
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 604
    const v6, 0x7f0a049c

    .line 608
    :cond_1
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v7}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v7

    if-eqz v7, :cond_2

    .line 611
    const v6, 0x7f0a04b9

    .line 612
    const v5, 0x7f0a04b8

    .line 614
    const/4 v1, 0x1

    .line 616
    :cond_2
    const/high16 v0, 0x1040000

    .line 617
    .local v0, "NegativeButtonLabel":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "vi_VN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 618
    const v0, 0x7f0a057a

    .line 620
    :cond_3
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    if-eqz v1, :cond_c

    const v7, 0x1040950

    :goto_3
    new-instance v9, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;

    invoke-direct {v9, p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    invoke-virtual {v8, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v7, v0, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 647
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/AirplaneModeTile$9;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$9;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 652
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 654
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    .line 655
    .local v4, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v4, :cond_4

    .line 656
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    .line 657
    .local v2, "mIsKeyguardOn":Z
    if-eqz v2, :cond_e

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v3, 0x1

    .line 659
    .local v3, "mIsKeyguardSecure":Z
    :goto_4
    if-eqz v2, :cond_f

    .line 660
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 665
    .end local v2    # "mIsKeyguardOn":Z
    .end local v3    # "mIsKeyguardSecure":Z
    :cond_4
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 666
    return-void

    .line 578
    .end local v0    # "NegativeButtonLabel":I
    .end local v4    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .end local v5    # "resMsg":I
    .end local v6    # "resTitle":I
    :cond_5
    const v6, 0x7f0a049d

    goto/16 :goto_0

    .restart local v5    # "resMsg":I
    .restart local v6    # "resTitle":I
    :cond_6
    move v5, v7

    .line 589
    goto/16 :goto_1

    .line 590
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 591
    if-eqz p1, :cond_8

    const v5, 0x7f0a049f

    :goto_6
    goto/16 :goto_1

    :cond_8
    move v5, v7

    goto :goto_6

    .line 593
    :cond_9
    if-eqz p1, :cond_a

    const v5, 0x7f0a04e7

    :goto_7
    goto/16 :goto_1

    :cond_a
    move v5, v7

    goto :goto_7

    .line 597
    :cond_b
    const v5, 0x104094e

    goto/16 :goto_2

    .line 620
    .restart local v0    # "NegativeButtonLabel":I
    :cond_c
    if-eqz p1, :cond_d

    const v7, 0x10407ea

    goto :goto_3

    :cond_d
    const v7, 0x10407e9

    goto/16 :goto_3

    .line 657
    .restart local v2    # "mIsKeyguardOn":Z
    .restart local v4    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_e
    const/4 v3, 0x0

    goto :goto_4

    .line 662
    .restart local v3    # "mIsKeyguardSecure":Z
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_5
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 448
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    return-void
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 898
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowFlightModePopup:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v1, :cond_1

    .line 899
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tw_globalactions_dont_show_again"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 901
    const/4 v0, 0x1

    .line 906
    :cond_1
    return v0
.end method

.method public handleClick()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 157
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mIsLDUDevice:Z

    if-eqz v5, :cond_1

    .line 158
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0563

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 159
    const-string v5, "AirplaneModeTile"

    const-string v6, "handleClick : LDU device"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 163
    .local v0, "currentTime":J
    iget-wide v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mClickedTime:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x1f4

    cmp-long v5, v8, v10

    if-gez v5, :cond_2

    .line 164
    const-string v5, "AirplaneModeTile"

    const-string v6, "handleClick() ignored. within 500ms"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_2
    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mClickedTime:J

    .line 170
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v4, v7

    .line 171
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v9, "isAirplaneModeAllowed"

    invoke-static {v5, v8, v9, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, "isAirplaneModeAllowed":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isSettingsChangesAllowed"

    invoke-static {v5, v8, v9, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 175
    .local v3, "isSettingsChangesAllowed":I
    if-eq v2, v12, :cond_4

    if-eq v3, v12, :cond_4

    .line 176
    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    .line 177
    :cond_3
    const-string v5, "AirplaneModeTile"

    const-string v6, "onClick(): AirplaneMode state change is not allowed by EDM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 183
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 189
    :cond_5
    const-string v8, "AirplaneModeTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleClick : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", mSetting.getValue()="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v9}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v5, v13, :cond_0

    .line 194
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eq v5, v6, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_0

    .line 198
    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    .line 200
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_10

    .line 201
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v5, :cond_e

    .line 202
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tw_globalactions_dont_show_again"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_a

    .line 203
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_9

    move v5, v6

    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(ZZ)V

    goto/16 :goto_0

    :cond_9
    move v5, v7

    goto :goto_1

    .line 205
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eqz v5, :cond_c

    .line 206
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_b

    move v7, v6

    :cond_b
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(ZZ)V

    goto/16 :goto_0

    .line 208
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_d

    :goto_2
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_d
    move v6, v7

    goto :goto_2

    .line 212
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_f

    :goto_3
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmPopup(Z)V

    goto/16 :goto_0

    :cond_f
    move v6, v7

    goto :goto_3

    .line 215
    :cond_10
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowFlightModePopup:Z

    if-nez v5, :cond_11

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForCMCC:Z

    if-eqz v5, :cond_15

    .line 216
    :cond_11
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tw_globalactions_dont_show_again"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_13

    .line 218
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_12

    :goto_4
    invoke-direct {p0, v6, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(ZZ)V

    goto/16 :goto_0

    :cond_12
    move v6, v7

    goto :goto_4

    .line 220
    :cond_13
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_14

    :goto_5
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_14
    move v6, v7

    goto :goto_5

    .line 223
    :cond_15
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_16

    :goto_6
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_16
    move v6, v7

    goto :goto_6
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 837
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 838
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 839
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 840
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDisableAirplaneModeWhenPUK:Z

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mdsNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 843
    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 852
    const-string v4, "AirplaneModeTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLongClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsLDUDevice:Z

    if-eqz v3, :cond_0

    .line 854
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0563

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 855
    const-string v3, "AirplaneModeTile"

    const-string v4, "handleLongClick : LDU device"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_0
    return-void

    .line 859
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    .line 860
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v5, "isAirplaneModeAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 862
    .local v0, "isAirplaneModeAllowed":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 864
    .local v1, "isSettingsChangesAllowed":I
    if-eq v0, v6, :cond_2

    if-eq v1, v6, :cond_2

    .line 865
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 866
    :cond_1
    const-string v3, "AirplaneModeTile"

    const-string v4, "handleLongClick(): Setting access is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 873
    :cond_2
    const-string v3, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleLongClick()V

    .line 848
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0a034a

    .line 245
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 246
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 248
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 249
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0349

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 265
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 266
    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_1
    return-void

    .line 245
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 268
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0a034b

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 273
    :pswitch_1
    const v1, 0x7f0a034c

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 278
    :pswitch_2
    const v1, 0x7f0a034d

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 266
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
    .line 81
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 314
    return-void
.end method
