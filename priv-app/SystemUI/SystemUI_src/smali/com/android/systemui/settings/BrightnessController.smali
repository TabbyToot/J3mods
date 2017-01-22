.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_ADJ_RESOLUTION:F = 253.0f

.field private static final SHOW_AUTOMATIC_ICON:Z = true

.field private static final TAG:Ljava/lang/String; = "StatusBar.BrightnessController"


# instance fields
.field private mAutomatic:Z

.field private mAutomaticAvailable:Z

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private final mDeafultBacklight:I

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIcon:Landroid/widget/ImageView;

.field private mListening:Z

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mPower:Landroid/os/IPowerManager;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/widget/ImageView;
    .param p3, "control"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 193
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    .line 195
    iput-object p3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 196
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance v5, Lcom/android/systemui/settings/BrightnessController$1;

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 213
    new-instance v5, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    .line 215
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 216
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 217
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 218
    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    .line 221
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 222
    const-string v5, "sensor"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 223
    .local v3, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 224
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 225
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 227
    .local v4, "sensorType":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 228
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v4    # "sensorType":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateMode()V

    .line 234
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 236
    iget-boolean v5, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    if-nez v5, :cond_2

    .line 238
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v5, :cond_3

    .line 239
    const-string v5, "StatusBar.BrightnessController"

    const-string v6, "support OutDoorMode "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateOutdoorMode()V

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateEmergencyMode()V

    .line 247
    :cond_2
    :goto_1
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v5, :cond_4

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateTwSlider()V

    .line 259
    :goto_2
    return-void

    .line 244
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v5}, Lcom/android/systemui/settings/ToggleSlider;->hideToggle()V

    goto :goto_1

    .line 257
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->initValues()V

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateTwSlider()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateSlider()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateOutdoorMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateHbmPMSEnter()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateHbmUserEnable()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateEmergencyMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 1
    .param p1, "adj"    # F

    .prologue
    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 425
    return-void
.end method

.method private updateEmergencyMode()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 519
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 522
    .local v0, "mEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/settings/ToggleSlider;->setToggleVisibility(Z)V

    .line 524
    return-void

    .end local v0    # "mEnabled":Z
    :cond_0
    move v0, v2

    .line 519
    goto :goto_0

    .restart local v0    # "mEnabled":Z
    :cond_1
    move v1, v2

    .line 522
    goto :goto_1
.end method

.method private updateHbmPMSEnter()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_brightness_mode_pms_enter"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 528
    .local v0, "isHbmPMSEner":Z
    :cond_0
    const-string v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHbmPMSEnter + isHbmPMSEner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->setHbmPMSEnter(Z)V

    .line 530
    return-void
.end method

.method private updateHbmUserEnable()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 534
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_brightness_mode_user_enable"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 535
    .local v0, "isHbmEnable":Z
    :cond_0
    const-string v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHbmUserEnable isHbmEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->setHbmUserEnable(Z)V

    .line 537
    return-void
.end method

.method private updateIcon(Z)V
    .locals 0
    .param p1, "automatic"    # Z

    .prologue
    .line 449
    return-void
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 459
    .local v0, "automatic":I
    const-string v2, "StatusBar.BrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    .line 461
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    .line 462
    iget-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    .line 473
    .end local v0    # "automatic":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSlider;->initSliderValue()V

    .line 474
    return-void

    .line 464
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v2, :cond_2

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateOutdoorMode()V

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateEmergencyMode()V

    .line 471
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    goto :goto_0

    .line 469
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v2, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateOutdoorMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_outdoor_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 514
    .local v0, "outDoorMode":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOutdoorMode(ZZ)V

    .line 515
    return-void

    .end local v0    # "outDoorMode":Z
    :cond_0
    move v0, v1

    .line 510
    goto :goto_0
.end method

.method private updateSlider()V
    .locals 5

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 489
    .local v0, "value":I
    const-string v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSlider : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 491
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 492
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setFromUser(Z)V

    .line 494
    return-void
.end method

.method private updateTwSlider()V
    .locals 6

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    .line 497
    iget-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 501
    .local v0, "autoValue":F
    const-string v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTwSlider : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-float v3, v0, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setSplitMax(I)V

    .line 503
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    div-float v2, v0, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setSplitValue(I)V

    .line 504
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    div-float v2, v0, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setSplitText(I)V

    .line 505
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setFromUser(Z)V

    .line 507
    .end local v0    # "autoValue":F
    :cond_0
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public initTwValues()V
    .locals 6

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    .line 283
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 286
    .local v0, "autoValue":F
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setSplitMax(I)V

    .line 287
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    div-float v2, v0, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->initSplitValue(I)V

    .line 288
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    div-float v2, v0, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setSplitText(I)V

    .line 289
    return-void
.end method

.method public initValues()V
    .locals 5

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 278
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 279
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->initValue(I)V

    .line 280
    return-void
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZ)V
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p2, "mode"    # Z
    .param p3, "changeDB"    # Z

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_outdoor_mode"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V
    .locals 10
    .param p1, "view"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p2, "tracking"    # Z
    .param p3, "automatic"    # Z
    .param p4, "value"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v9, -0x2

    const/4 v5, 0x0

    .line 337
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v6, v4}, Lcom/android/systemui/settings/ToggleSlider;->setFromUser(Z)V

    .line 338
    iget-boolean v6, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz v6, :cond_1

    .line 419
    :cond_0
    return-void

    .line 339
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 340
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 341
    const/4 p3, 0x0

    .line 342
    const-string v6, "StatusBar.BrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onChanged  automatic = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eq v6, p3, :cond_3

    .line 347
    const-string v6, "StatusBar.BrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onChanged  setMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    if-eqz p3, :cond_6

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->setMode(I)V

    .line 352
    :cond_3
    if-nez p3, :cond_7

    .line 353
    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    add-int v3, p4, v4

    .line 354
    .local v3, "val":I
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness"

    iget v7, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    invoke-static {v4, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 357
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v4, v5}, Lcom/android/systemui/settings/ToggleSlider;->setFromUser(Z)V

    .line 358
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    .line 359
    if-nez p2, :cond_5

    .line 360
    new-instance v4, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 416
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 417
    .local v1, "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_2

    .end local v1    # "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "val":I
    :cond_6
    move v4, v5

    .line 348
    goto :goto_0

    .line 370
    :cond_7
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v4, :cond_9

    .line 371
    mul-int/lit8 v3, p4, 0x14

    .line 372
    .restart local v3    # "val":I
    int-to-float v4, v3

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_brightness_detail"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v6

    cmpl-float v4, v4, v6

    if-nez v4, :cond_8

    .line 375
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v4, v5}, Lcom/android/systemui/settings/ToggleSlider;->setFromUser(Z)V

    .line 376
    :cond_8
    new-instance v4, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 387
    .end local v3    # "val":I
    :cond_9
    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    add-int v3, p4, v4

    .line 388
    .restart local v3    # "val":I
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness"

    iget v7, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    invoke-static {v4, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 391
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v4, v5}, Lcom/android/systemui/settings/ToggleSlider;->setFromUser(Z)V

    .line 393
    :cond_a
    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    if-le v3, v4, :cond_b

    .line 394
    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v6, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 400
    .local v0, "adj":F
    :goto_3
    const-string v4, "StatusBar.BrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMaximumBacklight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMinimumBacklight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDeafultBacklight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v4, "StatusBar.BrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "val = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " adj = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setBrightnessAdj(F)V

    .line 404
    if-nez p2, :cond_5

    .line 405
    new-instance v4, Lcom/android/systemui/settings/BrightnessController$4;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/settings/BrightnessController$4;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 395
    .end local v0    # "adj":F
    :cond_b
    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    if-ge v3, v4, :cond_c

    .line 396
    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    iget v6, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v0, v4, v5

    .restart local v0    # "adj":F
    goto :goto_3

    .line 398
    .end local v0    # "adj":F
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "adj":F
    goto :goto_3
.end method

.method public onChangedHBM(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 326
    const-string v0, "StatusBar.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedHBM checked  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_brightness_mode_user_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 328
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0
    .param p1, "control"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 272
    return-void
.end method

.method public registerCallbacks()V
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->startObserving()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateMode()V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateSlider()V

    .line 305
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->initTwValues()V

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateTwSlider()V

    .line 310
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    goto :goto_0
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;)Z
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregisterCallbacks()V
    .locals 2

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->stopObserving()V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    goto :goto_0
.end method
