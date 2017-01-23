.class public Lcom/android/wubydax/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wubydax/NetworkTraffic$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KILOBIT:I = 0x3e8

.field private static final KILOBYTE:I = 0x400

.field public static final MASK_DOWN:I = 0x2

.field public static final MASK_UP:I = 0x1

.field private static NETWORK_TRAFFIC_ARROWS_POSITION:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_ARROW_COLOR:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_AUTOHIDE:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_AUTOHIDE_THRESHOLD:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_COLOR:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_DOWNLOAD_COLOR:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_GLOBAL_COLOR:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_SCALE:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_SHOW_ARROWS:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_STATE:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_TEXT_STYLE:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_UNIT:Ljava/lang/String;

.field private static NETWORK_TRAFFIC_UPLOAD_COLOR:Ljava/lang/String;

.field private static decimalFormat:Ljava/text/DecimalFormat;


# instance fields
.field private GB:I

.field private KB:I

.field private MB:I

.field private lastUpdateTime:J

.field private mAutoHide:Z

.field private mAutoHideThreshold:I

.field private mContext:Landroid/content/Context;

.field private mDownloadColor:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsGlobalColor:Z

.field private mIsToStart:Z

.field private mNetworkTrafficArrowColor:I

.field private mNetworkTrafficColor:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mSettingsObserver:Lcom/android/wubydax/NetworkTraffic$SettingsObserver;

.field private mShowArrows:Z

.field private mState:I

.field private mTextStyle:I

.field private mTrafficHandler:Landroid/os/Handler;

.field private mUploadColor:I

.field private totalRxBytes:J

.field private totalTxBytes:J

.field private txtSizeMulti:I

.field private txtSizeSingle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "network_traffic_state"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_STATE:Ljava/lang/String;

    .line 48
    const-string v0, "network_traffic_color"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_COLOR:Ljava/lang/String;

    .line 49
    const-string v0, "network_traffic_autohide"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_AUTOHIDE:Ljava/lang/String;

    .line 50
    const-string v0, "network_traffic_show_arrows"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_SHOW_ARROWS:Ljava/lang/String;

    .line 51
    const-string v0, "network_traffic_threshold"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_AUTOHIDE_THRESHOLD:Ljava/lang/String;

    .line 52
    const-string v0, "network_traffic_unit"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_UNIT:Ljava/lang/String;

    .line 53
    const-string v0, "network_traffic_arrow_color"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_ARROW_COLOR:Ljava/lang/String;

    .line 54
    const-string v0, "network_traffic_global_color"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_GLOBAL_COLOR:Ljava/lang/String;

    .line 55
    const-string v0, "network_traffic_arrows_position"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_ARROWS_POSITION:Ljava/lang/String;

    .line 56
    const-string v0, "network_traffic_scale"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_SCALE:Ljava/lang/String;

    .line 57
    const-string v0, "network_traffic_text_style"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_TEXT_STYLE:Ljava/lang/String;

    .line 58
    const-string v0, "network_traffic_upload_color"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_UPLOAD_COLOR:Ljava/lang/String;

    .line 59
    const-string v0, "network_traffic_download_color"

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_DOWNLOAD_COLOR:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wubydax/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    .line 63
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 64
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/wubydax/NetworkTraffic;->mState:I

    .line 73
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/wubydax/NetworkTraffic;->KB:I

    .line 74
    iget v2, p0, Lcom/android/wubydax/NetworkTraffic;->KB:I

    iget v3, p0, Lcom/android/wubydax/NetworkTraffic;->KB:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/wubydax/NetworkTraffic;->MB:I

    .line 75
    iget v2, p0, Lcom/android/wubydax/NetworkTraffic;->MB:I

    iget v3, p0, Lcom/android/wubydax/NetworkTraffic;->KB:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/wubydax/NetworkTraffic;->GB:I

    .line 82
    new-instance v2, Lcom/android/wubydax/NetworkTraffic$1;

    invoke-direct {v2, p0}, Lcom/android/wubydax/NetworkTraffic$1;-><init>(Lcom/android/wubydax/NetworkTraffic;)V

    iput-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    .line 180
    new-instance v2, Lcom/android/wubydax/NetworkTraffic$2;

    invoke-direct {v2, p0}, Lcom/android/wubydax/NetworkTraffic$2;-><init>(Lcom/android/wubydax/NetworkTraffic;)V

    iput-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    .line 186
    new-instance v2, Lcom/android/wubydax/NetworkTraffic$3;

    invoke-direct {v2, p0}, Lcom/android/wubydax/NetworkTraffic$3;-><init>(Lcom/android/wubydax/NetworkTraffic;)V

    iput-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    iput-object p1, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p0}, Lcom/android/wubydax/NetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 201
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "net_traffic_single_text_size"

    const-string v3, "dimen"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/wubydax/NetworkTraffic;->txtSizeSingle:I

    .line 202
    const-string v2, "net_traffic_multi_text_size"

    const-string v3, "dimen"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/wubydax/NetworkTraffic;->txtSizeMulti:I

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 204
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/wubydax/NetworkTraffic$SettingsObserver;

    invoke-direct {v2, p0, v0}, Lcom/android/wubydax/NetworkTraffic$SettingsObserver;-><init>(Lcom/android/wubydax/NetworkTraffic;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mSettingsObserver:Lcom/android/wubydax/NetworkTraffic$SettingsObserver;

    .line 205
    invoke-direct {p0}, Lcom/android/wubydax/NetworkTraffic;->updateSettings()V

    .line 206
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/wubydax/NetworkTraffic;->setGravity(I)V

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/wubydax/NetworkTraffic;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/wubydax/NetworkTraffic;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/wubydax/NetworkTraffic;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/wubydax/NetworkTraffic;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/wubydax/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/wubydax/NetworkTraffic;->mState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/wubydax/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/wubydax/NetworkTraffic;->txtSizeMulti:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/wubydax/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/wubydax/NetworkTraffic;->txtSizeSingle:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/wubydax/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/wubydax/NetworkTraffic;->mDownloadColor:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/wubydax/NetworkTraffic;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/wubydax/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/wubydax/NetworkTraffic;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/wubydax/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/text/DecimalFormat;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->decimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/wubydax/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/wubydax/NetworkTraffic;->MB:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/wubydax/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/wubydax/NetworkTraffic;->GB:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/wubydax/NetworkTraffic;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/wubydax/NetworkTraffic;->mAutoHide:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/wubydax/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/wubydax/NetworkTraffic;->mAutoHideThreshold:I

    return v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/wubydax/NetworkTraffic;->getInterval(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/wubydax/NetworkTraffic;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/wubydax/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/wubydax/NetworkTraffic;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_STATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_AUTOHIDE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_SHOW_ARROWS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_AUTOHIDE_THRESHOLD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_COLOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_UNIT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_ARROW_COLOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_GLOBAL_COLOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/wubydax/NetworkTraffic;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/wubydax/NetworkTraffic;->totalRxBytes:J

    return-wide v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_ARROWS_POSITION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/wubydax/NetworkTraffic;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/wubydax/NetworkTraffic;->totalRxBytes:J

    return-wide p1
.end method

.method static synthetic access$3100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_TEXT_STYLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_SCALE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_UPLOAD_COLOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_DOWNLOAD_COLOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/wubydax/NetworkTraffic;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/wubydax/NetworkTraffic;->totalTxBytes:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/wubydax/NetworkTraffic;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/wubydax/NetworkTraffic;->totalTxBytes:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/wubydax/NetworkTraffic;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/wubydax/NetworkTraffic;->getConnectAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/wubydax/NetworkTraffic;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/wubydax/NetworkTraffic;->clearHandlerCallbacks()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/wubydax/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/wubydax/NetworkTraffic;->KB:I

    return v0
.end method

.method static synthetic access$800(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/wubydax/NetworkTraffic;->isSet(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/wubydax/NetworkTraffic;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/wubydax/NetworkTraffic;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/wubydax/NetworkTraffic;->mUploadColor:I

    return v0
.end method

.method private clearHandlerCallbacks()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/wubydax/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wubydax/NetworkTraffic;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 352
    iget-object v0, p0, Lcom/android/wubydax/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    iget-object v0, p0, Lcom/android/wubydax/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    return-void
.end method

.method private getConnectAvailable()Z
    .locals 4

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 246
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 247
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 248
    .local v1, "network":Landroid/net/NetworkInfo;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 247
    .end local v1    # "network":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 248
    .restart local v1    # "network":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getInterval(I)I
    .locals 2
    .param p0, "intState"    # I

    .prologue
    .line 215
    ushr-int/lit8 v0, p0, 0x10

    .line 216
    .local v0, "intInterval":I
    const/16 v1, 0xfa

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fee

    if-gt v0, v1, :cond_0

    .end local v0    # "intInterval":I
    :goto_0
    return v0

    .restart local v0    # "intInterval":I
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method private static isSet(II)Z
    .locals 1
    .param p0, "intState"    # I
    .param p1, "intMask"    # I

    .prologue
    .line 211
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUpStyle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    iget v0, p0, Lcom/android/wubydax/NetworkTraffic;->mTextStyle:I

    packed-switch v0, :pswitch_data_0

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/wubydax/NetworkTraffic;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 348
    :goto_0
    return-void

    .line 337
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/wubydax/NetworkTraffic;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 340
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/wubydax/NetworkTraffic;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 343
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/wubydax/NetworkTraffic;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSettings()V
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 252
    iget-object v9, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 255
    .local v4, "resolver":Landroid/content/ContentResolver;
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_AUTOHIDE:Ljava/lang/String;

    invoke-static {v4, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_3

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Lcom/android/wubydax/NetworkTraffic;->mAutoHide:Z

    .line 258
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_SHOW_ARROWS:Ljava/lang/String;

    invoke-static {v4, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_4

    move v9, v10

    :goto_1
    iput-boolean v9, p0, Lcom/android/wubydax/NetworkTraffic;->mShowArrows:Z

    .line 261
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_AUTOHIDE_THRESHOLD:Ljava/lang/String;

    invoke-static {v4, v9, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->mAutoHideThreshold:I

    .line 264
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_GLOBAL_COLOR:Ljava/lang/String;

    invoke-static {v4, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_5

    move v9, v10

    :goto_2
    iput-boolean v9, p0, Lcom/android/wubydax/NetworkTraffic;->mIsGlobalColor:Z

    .line 266
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_STATE:Ljava/lang/String;

    invoke-static {v4, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->mState:I

    .line 268
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_ARROW_COLOR:Ljava/lang/String;

    invoke-static {v4, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->mNetworkTrafficArrowColor:I

    .line 270
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_UNIT:Ljava/lang/String;

    invoke-static {v4, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_6

    move v3, v10

    .line 272
    .local v3, "isBytes":Z
    :goto_3
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_ARROWS_POSITION:Ljava/lang/String;

    invoke-static {v4, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_7

    move v9, v10

    :goto_4
    iput-boolean v9, p0, Lcom/android/wubydax/NetworkTraffic;->mIsToStart:Z

    .line 274
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_COLOR:Ljava/lang/String;

    invoke-static {v4, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->mNetworkTrafficColor:I

    .line 277
    iget-boolean v9, p0, Lcom/android/wubydax/NetworkTraffic;->mIsGlobalColor:Z

    if-eqz v9, :cond_8

    iget v9, p0, Lcom/android/wubydax/NetworkTraffic;->mNetworkTrafficColor:I

    :goto_5
    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->mDownloadColor:I

    .line 279
    iget-boolean v9, p0, Lcom/android/wubydax/NetworkTraffic;->mIsGlobalColor:Z

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/android/wubydax/NetworkTraffic;->mNetworkTrafficColor:I

    :goto_6
    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->mUploadColor:I

    .line 281
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_SCALE:Ljava/lang/String;

    invoke-static {v4, v9, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v12, 0x41200000    # 10.0f

    div-float v5, v9, v12

    .line 282
    .local v5, "scale":F
    invoke-virtual {p0, v5}, Lcom/android/wubydax/NetworkTraffic;->setScaleX(F)V

    .line 283
    invoke-virtual {p0, v5}, Lcom/android/wubydax/NetworkTraffic;->setScaleY(F)V

    .line 285
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_TEXT_STYLE:Ljava/lang/String;

    invoke-static {v4, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->mTextStyle:I

    .line 286
    invoke-direct {p0}, Lcom/android/wubydax/NetworkTraffic;->setUpStyle()V

    .line 288
    iget-boolean v9, p0, Lcom/android/wubydax/NetworkTraffic;->mIsGlobalColor:Z

    if-eqz v9, :cond_0

    .line 289
    iget v9, p0, Lcom/android/wubydax/NetworkTraffic;->mNetworkTrafficColor:I

    invoke-virtual {p0, v9}, Lcom/android/wubydax/NetworkTraffic;->setTextColor(I)V

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/android/wubydax/NetworkTraffic;->updateTrafficDrawable()V

    .line 294
    iget v9, p0, Lcom/android/wubydax/NetworkTraffic;->mState:I

    const/4 v12, 0x3

    invoke-static {v9, v12}, Lcom/android/wubydax/NetworkTraffic;->isSet(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/wubydax/NetworkTraffic;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/android/wubydax/NetworkTraffic;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "data":[Ljava/lang/String;
    array-length v9, v0

    if-le v9, v10, :cond_1

    .line 298
    aget-object v7, v0, v11

    .line 299
    .local v7, "upload":Ljava/lang/String;
    aget-object v1, v0, v10

    .line 300
    .local v1, "download":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 301
    .local v6, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 302
    .local v8, "uploadColored":Landroid/text/SpannableString;
    iget v9, p0, Lcom/android/wubydax/NetworkTraffic;->mUploadColor:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v11, v12, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 303
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 304
    .local v2, "downloadColored":Landroid/text/SpannableString;
    iget v9, p0, Lcom/android/wubydax/NetworkTraffic;->mDownloadColor:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2, v9, v11, v12, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 305
    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-string v12, "\n"

    invoke-virtual {v9, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 306
    invoke-virtual {p0, v6}, Lcom/android/wubydax/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .end local v0    # "data":[Ljava/lang/String;
    .end local v1    # "download":Ljava/lang/String;
    .end local v2    # "downloadColored":Landroid/text/SpannableString;
    .end local v6    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v7    # "upload":Ljava/lang/String;
    .end local v8    # "uploadColored":Landroid/text/SpannableString;
    :cond_1
    if-eqz v3, :cond_a

    .line 312
    const/16 v9, 0x400

    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->KB:I

    .line 316
    :goto_7
    iget v9, p0, Lcom/android/wubydax/NetworkTraffic;->KB:I

    iget v12, p0, Lcom/android/wubydax/NetworkTraffic;->KB:I

    mul-int/2addr v9, v12

    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->MB:I

    .line 317
    iget v9, p0, Lcom/android/wubydax/NetworkTraffic;->MB:I

    iget v12, p0, Lcom/android/wubydax/NetworkTraffic;->KB:I

    mul-int/2addr v9, v12

    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->GB:I

    .line 319
    iget v9, p0, Lcom/android/wubydax/NetworkTraffic;->mState:I

    invoke-static {v9, v10}, Lcom/android/wubydax/NetworkTraffic;->isSet(II)Z

    move-result v9

    if-nez v9, :cond_2

    iget v9, p0, Lcom/android/wubydax/NetworkTraffic;->mState:I

    const/4 v12, 0x2

    invoke-static {v9, v12}, Lcom/android/wubydax/NetworkTraffic;->isSet(II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 320
    :cond_2
    invoke-direct {p0}, Lcom/android/wubydax/NetworkTraffic;->getConnectAvailable()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 321
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/wubydax/NetworkTraffic;->totalRxBytes:J

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/wubydax/NetworkTraffic;->lastUpdateTime:J

    .line 323
    iget-object v9, p0, Lcom/android/wubydax/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    invoke-virtual {p0, v11}, Lcom/android/wubydax/NetworkTraffic;->setVisibility(I)V

    .line 325
    invoke-direct {p0}, Lcom/android/wubydax/NetworkTraffic;->updateTrafficDrawable()V

    .line 332
    :goto_8
    return-void

    .end local v3    # "isBytes":Z
    .end local v5    # "scale":F
    :cond_3
    move v9, v11

    .line 255
    goto/16 :goto_0

    :cond_4
    move v9, v11

    .line 258
    goto/16 :goto_1

    :cond_5
    move v9, v11

    .line 264
    goto/16 :goto_2

    :cond_6
    move v3, v11

    .line 270
    goto/16 :goto_3

    .restart local v3    # "isBytes":Z
    :cond_7
    move v9, v11

    .line 272
    goto/16 :goto_4

    .line 277
    :cond_8
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_DOWNLOAD_COLOR:Ljava/lang/String;

    invoke-static {v4, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_5

    .line 279
    :cond_9
    sget-object v9, Lcom/android/wubydax/NetworkTraffic;->NETWORK_TRAFFIC_UPLOAD_COLOR:Ljava/lang/String;

    invoke-static {v4, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_6

    .line 314
    .restart local v5    # "scale":F
    :cond_a
    const/16 v9, 0x3e8

    iput v9, p0, Lcom/android/wubydax/NetworkTraffic;->KB:I

    goto :goto_7

    .line 329
    :cond_b
    invoke-direct {p0}, Lcom/android/wubydax/NetworkTraffic;->clearHandlerCallbacks()V

    .line 331
    :cond_c
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/wubydax/NetworkTraffic;->setVisibility(I)V

    goto :goto_8
.end method

.method private updateTrafficDrawable()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 359
    iget-boolean v2, p0, Lcom/android/wubydax/NetworkTraffic;->mShowArrows:Z

    if-eqz v2, :cond_6

    .line 361
    iget v2, p0, Lcom/android/wubydax/NetworkTraffic;->mState:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/wubydax/NetworkTraffic;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "stat_sys_network_traffic_updown"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 370
    .local v1, "intTrafficDrawable":I
    :goto_0
    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/android/wubydax/NetworkTraffic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 372
    .local v0, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 373
    iget-boolean v2, p0, Lcom/android/wubydax/NetworkTraffic;->mIsGlobalColor:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/wubydax/NetworkTraffic;->mNetworkTrafficColor:I

    :goto_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 374
    iget-boolean v2, p0, Lcom/android/wubydax/NetworkTraffic;->mIsToStart:Z

    if-eqz v2, :cond_5

    .line 375
    invoke-virtual {p0, v0, v6, v6, v6}, Lcom/android/wubydax/NetworkTraffic;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 384
    .end local v0    # "drw":Landroid/graphics/drawable/Drawable;
    .end local v1    # "intTrafficDrawable":I
    :cond_0
    :goto_2
    return-void

    .line 363
    :cond_1
    iget v2, p0, Lcom/android/wubydax/NetworkTraffic;->mState:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/wubydax/NetworkTraffic;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "stat_sys_network_traffic_up"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "intTrafficDrawable":I
    goto :goto_0

    .line 365
    .end local v1    # "intTrafficDrawable":I
    :cond_2
    iget v2, p0, Lcom/android/wubydax/NetworkTraffic;->mState:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/wubydax/NetworkTraffic;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "stat_sys_network_traffic_down"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "intTrafficDrawable":I
    goto :goto_0

    .line 368
    .end local v1    # "intTrafficDrawable":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "intTrafficDrawable":I
    goto :goto_0

    .line 373
    .restart local v0    # "drw":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget v2, p0, Lcom/android/wubydax/NetworkTraffic;->mNetworkTrafficArrowColor:I

    goto :goto_1

    .line 377
    :cond_5
    invoke-virtual {p0, v6, v6, v0, v6}, Lcom/android/wubydax/NetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 382
    .end local v0    # "drw":Landroid/graphics/drawable/Drawable;
    .end local v1    # "intTrafficDrawable":I
    :cond_6
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/android/wubydax/NetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mSettingsObserver:Lcom/android/wubydax/NetworkTraffic$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/wubydax/NetworkTraffic$SettingsObserver;->observe()V

    .line 224
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wubydax/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/wubydax/NetworkTraffic;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "wubydax"

    const-string v3, "onAttachedToWindow receiver still registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 235
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/wubydax/NetworkTraffic;->mSettingsObserver:Lcom/android/wubydax/NetworkTraffic$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/wubydax/NetworkTraffic$SettingsObserver;->unObserve()V

    .line 238
    iget-object v1, p0, Lcom/android/wubydax/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "wubydax"

    const-string v2, "onDetachedFromWindow  receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
