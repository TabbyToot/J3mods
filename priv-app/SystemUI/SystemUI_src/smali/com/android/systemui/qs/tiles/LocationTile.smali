.class public Lcom/android/systemui/qs/tiles/LocationTile;
.super Lcom/android/systemui/qs/QSTile;
.source "LocationTile.java"


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
.field private static final CURRENT_MODE_KEY:Ljava/lang/String; = "CURRENT_MODE"

.field private static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings.location.MODE_CHANGING"

.field private static final NEW_MODE_KEY:Ljava/lang/String; = "NEW_MODE"

.field private static final TW_TAG:Ljava/lang/String; = "LocationTile"

.field private static final VZW_GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "com.nim.vznavigator.app2app"

.field private static final VZW_GPS_INTENT_EXTRA:Ljava/lang/String; = "context"

.field private static final VZW_GPS_INTENT_EXTRA_VALUE:Ljava/lang/String; = "vznavigator:app2app?version=2.0&credential=0211&commands="

.field private static final VZW_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDisabledByUserRestrictions:Z

.field private mGpsActivated:Z

.field private mIsPrefChecked:Z

.field private mListening:Z

.field private mPreviousGPSState:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mVzwGpsIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mVzwGpsIntent:Landroid/content/Intent;

    .line 90
    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/LocationTile$1;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nim.vznavigator.app2app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mVzwGpsIntent:Landroid/content/Intent;

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    .line 108
    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "location_providers_allowed"

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile$2;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 146
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsPrefChecked:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsPrefChecked:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/LocationTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->setGpsMode(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/LocationTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/LocationTile;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/LocationTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f020564

    .line 336
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 337
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 351
    :goto_0
    return-void

    .line 339
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 341
    :pswitch_0
    const v0, 0x7f020565

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 344
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 347
    :pswitch_2
    const v0, 0x7f020563

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isGpsOn(I)Z
    .locals 5
    .param p1, "locationMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "result":Z
    const-string v2, "LocationTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGpsOn : CHN? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currMode  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v2, :cond_2

    .line 371
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    .line 373
    :cond_0
    const/4 v0, 0x1

    .line 377
    :cond_1
    :goto_0
    return v0

    .line 375
    :cond_2
    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "deviceType":Ljava/lang/String;
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUserLocationRestricted()Z
    .locals 6

    .prologue
    .line 354
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 355
    .local v0, "currentUserId":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 357
    .local v3, "um":Landroid/os/UserManager;
    const/4 v2, 0x0

    .line 359
    .local v2, "ret":Z
    :try_start_0
    const-string v4, "no_share_location"

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 364
    :goto_0
    return v2

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "LocationTile"

    const-string v5, "Exception inside isUserLocationRestricted()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readLocationMode()I
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setGpsMode(Z)V
    .locals 6
    .param p1, "state"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v5, -0x2

    .line 387
    if-eqz p1, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 410
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    return-void

    .line 394
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    .line 399
    .local v1, "newMode":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v2, :cond_2

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 401
    const/4 v1, 0x2

    .line 405
    :cond_1
    :goto_1
    const-string v2, "LocationTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHN setGpsMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 402
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 403
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setVzwProviderAndMode()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method private showConfirmPopup(Z)V
    .locals 14
    .param p1, "state"    # Z

    .prologue
    .line 527
    const-string v11, "LocationTile"

    const-string v12, "showConfirmPopup"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 531
    .local v0, "mGpsAlertLayoutInflater":Landroid/view/LayoutInflater;
    const v11, 0x7f0400bd

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 534
    .local v1, "mGpsAlertView":Landroid/view/View;
    const v11, 0x7f0f035b

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 537
    .local v2, "mGpsCheckBox":Landroid/widget/CheckBox;
    const v11, 0x7f0f0357

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 538
    .local v9, "mVzwText":Landroid/widget/TextView;
    const v11, 0x7f0f0358

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 539
    .local v8, "mUsccTitle":Landroid/widget/TextView;
    const v11, 0x7f0f0359

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 540
    .local v6, "mUsccBody":Landroid/widget/TextView;
    const v11, 0x7f0f035a

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 542
    .local v7, "mUsccBottom":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsPrefChecked:Z

    .line 544
    new-instance v11, Lcom/android/systemui/qs/tiles/LocationTile$9;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/qs/tiles/LocationTile$9;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 553
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 554
    .local v10, "value":Z
    new-instance v12, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-direct {v12, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v11, :cond_1

    const v11, 0x7f0a046d

    :goto_0
    invoke-virtual {v12, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0466

    new-instance v13, Lcom/android/systemui/qs/tiles/LocationTile$11;

    invoke-direct {v13, p0, v10}, Lcom/android/systemui/qs/tiles/LocationTile$11;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Z)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/high16 v12, 0x1040000

    new-instance v13, Lcom/android/systemui/qs/tiles/LocationTile$10;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/tiles/LocationTile$10;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 578
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v12, Lcom/android/systemui/qs/tiles/LocationTile$12;

    invoke-direct {v12, p0}, Lcom/android/systemui/qs/tiles/LocationTile$12;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 586
    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v11, :cond_2

    .line 587
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 595
    :goto_1
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v11}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 597
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v11}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v5

    .line 598
    .local v5, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v5, :cond_0

    .line 599
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v3

    .line 600
    .local v3, "mIsKeyguardOn":Z
    if-eqz v3, :cond_3

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    .line 602
    .local v4, "mIsKeyguardSecure":Z
    :goto_2
    if-eqz v3, :cond_5

    .line 603
    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v11, :cond_4

    if-eqz v4, :cond_4

    .line 604
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d8

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 614
    .end local v3    # "mIsKeyguardOn":Z
    .end local v4    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_3
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 615
    return-void

    .line 554
    .end local v5    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_1
    const v11, 0x7f0a0462

    goto :goto_0

    .line 592
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 600
    .restart local v3    # "mIsKeyguardOn":Z
    .restart local v5    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 607
    .restart local v4    # "mIsKeyguardSecure":Z
    :cond_4
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d9

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    goto :goto_3

    .line 611
    :cond_5
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d8

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    goto :goto_3
.end method

.method private showDCMLocationConsentDialog()V
    .locals 7

    .prologue
    const/16 v6, 0x7d8

    .line 471
    const-string v3, "LocationTile"

    const-string v4, "showDCMLocationConsentDialog()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a054b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a054a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0466

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/LocationTile$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/LocationTile$8;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0467

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/LocationTile$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/LocationTile$7;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/LocationTile$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/LocationTile$6;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 505
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    .line 506
    .local v2, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    .line 508
    .local v0, "mIsKeyguardOn":Z
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 510
    .local v1, "mIsKeyguardSecure":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 511
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 512
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 522
    .end local v0    # "mIsKeyguardOn":Z
    .end local v1    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 524
    return-void

    .line 508
    .restart local v0    # "mIsKeyguardOn":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 515
    .restart local v1    # "mIsKeyguardSecure":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .line 519
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 644
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v1, :cond_0

    .line 645
    const/4 v0, 0x2

    .line 647
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 15

    .prologue
    const/4 v9, 0x0

    const/4 v14, -0x2

    const/4 v13, 0x3

    const/4 v7, 0x1

    const/4 v12, -0x1

    .line 176
    const-string v10, "LocationTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleClick : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v8, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    new-array v6, v7, [Ljava/lang/String;

    const-string v8, "false"

    aput-object v8, v6, v9

    .line 184
    .local v6, "selectionArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSettingsChangesAllowed"

    invoke-static {v8, v10, v11, v6}, Lcom/android/systemui/qs/tiles/LocationTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 186
    .local v4, "isSettingsChangesAllowed":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/LocationPolicy"

    const-string v11, "isLocationProviderBlocked"

    invoke-static {v8, v10, v11, v6}, Lcom/android/systemui/qs/tiles/LocationTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 188
    .local v2, "isLocationProviderBlocked":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/LocationPolicy"

    const-string v11, "isGPSStateChangeAllowed"

    invoke-static {v8, v10, v11}, Lcom/android/systemui/qs/tiles/LocationTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 190
    .local v3, "isLocationStateChangeBlocked":I
    if-eq v4, v12, :cond_3

    if-eq v2, v12, :cond_3

    if-eq v3, v12, :cond_3

    .line 191
    if-eqz v4, :cond_2

    if-eq v2, v7, :cond_2

    if-nez v3, :cond_3

    .line 192
    :cond_2
    const-string v8, "LocationTile"

    const-string v9, "onClick(): Location state change is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v8, v13, :cond_0

    .line 201
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 203
    .local v7, "state":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    .line 204
    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    if-eqz v8, :cond_5

    .line 205
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    .line 206
    const-string v8, "LocationTile"

    const-string v9, "onClick(): mDisabledByUserRestrictions..."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v7    # "state":Z
    :cond_4
    move v7, v9

    .line 201
    goto :goto_1

    .line 221
    .restart local v7    # "state":Z
    :cond_5
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v8, :cond_6

    .line 227
    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tiles/LocationTile;->setGpsMode(Z)V

    goto :goto_0

    .line 231
    :cond_6
    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    if-eq v7, v8, :cond_0

    .line 232
    const/4 v5, 0x0

    .line 233
    .local v5, "newMode":I
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    .line 235
    .local v0, "currMode":I
    if-eqz v7, :cond_a

    .line 236
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mShowDCMLocationConsentPopup:Z

    if-eqz v8, :cond_7

    .line 237
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->showDCMLocationConsentDialog()V

    goto/16 :goto_0

    .line 241
    :cond_7
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mEnableNLPAlertForCHN:Z

    if-eqz v8, :cond_8

    .line 242
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 244
    :cond_8
    const/4 v5, 0x3

    .line 258
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "location_mode"

    invoke-static {v8, v9, v5, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 261
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.settings.GPS_CHANGED"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mEnableNLPAlertForCHN:Z

    if-eqz v8, :cond_9

    .line 264
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v8, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v8, "CURRENT_MODE"

    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v8, "NEW_MODE"

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 269
    :cond_9
    const-string v8, "LocationTile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GPS set("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_a
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v8, :cond_c

    .line 247
    if-ne v0, v13, :cond_b

    .line 248
    const/4 v5, 0x2

    goto :goto_2

    .line 251
    :cond_b
    const/4 v5, 0x0

    goto :goto_2

    .line 254
    :cond_c
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->setListening(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 172
    return-void
.end method

.method public handleLongClick()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 281
    const-string v4, "LocationTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLongClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    .line 284
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 286
    .local v1, "isSettingsChangesAllowed":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/LocationPolicy"

    const-string v5, "isLocationProviderBlocked"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, "isLocationProviderBlocked":I
    if-eq v1, v6, :cond_1

    if-eq v0, v6, :cond_1

    .line 289
    if-eqz v1, :cond_0

    if-ne v0, v7, :cond_1

    .line 290
    :cond_0
    const-string v3, "LocationTile"

    const-string v4, "handleLongClick(): Setting access is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_1
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->handleLongClick()V

    .line 277
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 300
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 301
    .local v2, "value":I
    :goto_0
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 302
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 305
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDivideGPSWithNLPForCHN:Z

    if-eqz v3, :cond_1

    .line 306
    const v1, 0x7f0a0379

    .line 307
    .local v1, "labelId":I
    const v0, 0x7f0a0354

    .line 314
    .local v0, "contentDesId":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 315
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 316
    packed-switch v2, :pswitch_data_0

    .line 333
    :goto_2
    return-void

    .line 300
    .end local v0    # "contentDesId":I
    .end local v1    # "labelId":I
    .end local v2    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 310
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v2    # "value":I
    :cond_1
    const v1, 0x7f0a0378

    .line 311
    .restart local v1    # "labelId":I
    const v0, 0x7f0a0353

    .restart local v0    # "contentDesId":I
    goto :goto_1

    .line 318
    :pswitch_0
    const v3, 0x7f0a034b

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 323
    :pswitch_1
    const v3, 0x7f0a034c

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 328
    :pswitch_2
    const v3, 0x7f0a034d

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    .line 316
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
    .line 66
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/LocationTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 155
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 156
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mListening:Z

    .line 157
    if-eqz p1, :cond_1

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 162
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public showVzwLocationConsentDialog()V
    .locals 2

    .prologue
    .line 415
    const-string v0, "LocationTile"

    const-string v1, "showVzwLocationConsentDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method public userSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->userSwitched(I)V

    .line 640
    return-void
.end method
