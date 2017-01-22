.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p2, "x1"    # Lcom/android/systemui/power/PowerUI$1;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method

.method private updateSaverMode()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    # invokes: Lcom/android/systemui/power/PowerUI;->setSaverMode(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;Z)V

    .line 496
    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    .line 460
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 461
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_0

    .line 467
    const-string v2, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    :cond_0
    const-string v2, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    const-string v2, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    const-string v2, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v2, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v2, "LOW_BATTERY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v2, "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, p0, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 488
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v1, "permissionFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 492
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v20

    .line 503
    .local v20, "oldBatteryLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "level"

    const/16 v6, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$602(Lcom/android/systemui/power/PowerUI;I)I

    .line 504
    sget v23, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 505
    .local v23, "oldBatteryStatus":I
    const-string v3, "status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v27

    .line 508
    .local v27, "oldPlugType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "plugged"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$702(Lcom/android/systemui/power/PowerUI;I)I

    .line 509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)I

    move-result v26

    .line 510
    .local v26, "oldInvalidCharger":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "invalid_charger"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$802(Lcom/android/systemui/power/PowerUI;I)I

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    move/from16 v29, v0

    .line 514
    .local v29, "oldPogoState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v18, v0

    .line 515
    .local v18, "oldBatteryHealth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v21, v0

    .line 516
    .local v21, "oldBatteryOnline":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v17, v0

    .line 517
    .local v17, "oldBatteryChargetype":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    move/from16 v19, v0

    .line 519
    .local v19, "oldBatteryHighVoltageCharger":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "pogo_plugged"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    .line 520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "health"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "online"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "charge_type"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "current_avg"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "temperature"

    const/16 v6, 0x14

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "hv_charger"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v34, 0x1

    .line 530
    .local v34, "plugged":Z
    :goto_0
    if-eqz v27, :cond_3

    const/16 v28, 0x1

    .line 532
    .local v28, "oldPlugged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v20

    # invokes: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v3, v0}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;I)I

    move-result v24

    .line 533
    .local v24, "oldBucket":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    # invokes: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    .line 535
    .local v5, "bucket":I
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 536
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buckets   ....."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1000(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " .. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " .. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "level          "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "health         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugType       "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalidCharger "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bucket         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugged        "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "online  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chargeType  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$100(Lcom/android/systemui/power/PowerUI;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v8, v8, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v9, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    invoke-interface/range {v3 .. v11}, Lcom/android/systemui/power/PowerUI$WarningsUI;->update(IIJIIII)V

    .line 552
    if-nez v26, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 553
    const-string v3, "PowerUI"

    const-string v4, "showing invalid charger warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    .line 1205
    .end local v5    # "bucket":I
    .end local v17    # "oldBatteryChargetype":I
    .end local v18    # "oldBatteryHealth":I
    .end local v19    # "oldBatteryHighVoltageCharger":Z
    .end local v20    # "oldBatteryLevel":I
    .end local v21    # "oldBatteryOnline":I
    .end local v23    # "oldBatteryStatus":I
    .end local v24    # "oldBucket":I
    .end local v26    # "oldInvalidCharger":I
    .end local v27    # "oldPlugType":I
    .end local v28    # "oldPlugged":Z
    .end local v29    # "oldPogoState":I
    .end local v34    # "plugged":Z
    :cond_1
    :goto_2
    return-void

    .line 529
    .restart local v17    # "oldBatteryChargetype":I
    .restart local v18    # "oldBatteryHealth":I
    .restart local v19    # "oldBatteryHighVoltageCharger":Z
    .restart local v20    # "oldBatteryLevel":I
    .restart local v21    # "oldBatteryOnline":I
    .restart local v23    # "oldBatteryStatus":I
    .restart local v26    # "oldInvalidCharger":I
    .restart local v27    # "oldPlugType":I
    .restart local v29    # "oldPogoState":I
    :cond_2
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 530
    .restart local v34    # "plugged":Z
    :cond_3
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 556
    .restart local v5    # "bucket":I
    .restart local v24    # "oldBucket":I
    .restart local v28    # "oldPlugged":Z
    :cond_4
    if-eqz v26, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-nez v3, :cond_2a

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    .line 563
    :cond_5
    if-nez v34, :cond_2d

    move/from16 v0, v24

    if-lt v5, v0, :cond_6

    if-eqz v28, :cond_2d

    :cond_6
    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2d

    if-gez v5, :cond_2d

    .line 568
    move/from16 v0, v24

    if-ne v5, v0, :cond_7

    if-eqz v28, :cond_2b

    :cond_7
    const/16 v33, 0x1

    .line 569
    .local v33, "playSound":Z
    :goto_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2c

    move/from16 v0, v24

    if-eq v5, v0, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 593
    .end local v33    # "playSound":Z
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v0, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    move/from16 v25, v0

    .line 594
    .local v25, "oldCable":Z
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_34

    .line 595
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_33

    .line 596
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-eq v3, v4, :cond_9

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_32

    .line 597
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 598
    const-string v3, "PowerUI"

    const-string v4, "cable connects while wireless charging"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_5
    const/4 v15, 0x1

    .line 617
    .local v15, "isIntentNeeded":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    move/from16 v0, v29

    if-eq v0, v3, :cond_3a

    .line 618
    const/4 v3, 0x2

    move/from16 v0, v29

    if-ne v0, v3, :cond_37

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_36

    .line 620
    const-string v3, "PowerUI"

    const-string v4, "AC or USB is disconnected while pogo is charging so show the cable disconnected popup"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 643
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    move/from16 v0, v25

    if-eq v0, v3, :cond_b

    if-nez v15, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 645
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    if-eqz v3, :cond_3b

    .line 646
    new-instance v12, Landroid/content/Intent;

    const-string v3, "com.samsung.systemui.power.action.ACTION_CABLE_CONNECTED"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .local v12, "cableIntent":Landroid/content/Intent;
    const-string v3, "power_sharing"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 649
    const-string v3, "power_sharing"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 656
    :cond_d
    :goto_7
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cable  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v6, v6, Lcom/android/systemui/power/PowerUI;->mCable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mBootCompleted : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending cableIntent : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1402(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 671
    .end local v12    # "cableIntent":Landroid/content/Intent;
    :cond_e
    :goto_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "LOW_BATTERY_DUMP"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_12

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    sub-int v3, v20, v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    sub-int v3, v3, v20

    const/16 v4, 0xa

    if-lt v3, v4, :cond_10

    :cond_f
    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_11

    :cond_10
    move/from16 v0, v24

    if-ge v5, v0, :cond_12

    const/4 v3, -0x2

    if-ne v3, v5, :cond_12

    .line 677
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 678
    const-string v3, "PowerUI"

    const-string v4, "Low battery dump"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.samsung.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 685
    :cond_12
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->ATT:Z

    if-eqz v3, :cond_17

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 687
    .local v14, "isBatteryLowLevel":I
    const/16 v3, 0x14

    move/from16 v0, v20

    if-gt v0, v3, :cond_13

    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_16

    :cond_14
    const/4 v3, 0x1

    if-eq v14, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1600(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 691
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 692
    new-instance v36, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.POWERSAVING_AUTO_ENABLE"

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v36, "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 695
    const-string v3, "PowerUI"

    const-string v4, "the battery level goes below the threshold of Power saving mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1602(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 717
    .end local v14    # "isBatteryLowLevel":I
    .end local v36    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_17
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mSupportLED:Z

    if-eqz v3, :cond_18

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mForceShowFullBatteryNotification:Z

    if-eqz v3, :cond_1c

    .line 718
    :cond_18
    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v0, v23

    if-eq v0, v3, :cond_1c

    .line 719
    const/4 v3, 0x5

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_44

    .line 724
    const/16 v37, 0x1

    .line 726
    .local v37, "show":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/PowerManager;

    .line 727
    .local v35, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v16

    .line 728
    .local v16, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v35, :cond_1b

    if-eqz v16, :cond_1b

    if-eqz v34, :cond_1b

    if-eqz v28, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b

    :cond_19
    invoke-virtual/range {v35 .. v35}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual/range {v16 .. v16}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 733
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v3, :cond_1a

    .line 734
    const-string v3, "PowerUI"

    const-string v4, "Knox Customization: PowerUI: not waking for full battery notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_1a
    const/16 v37, 0x0

    .line 738
    :cond_1b
    if-eqz v37, :cond_1c

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 752
    .end local v16    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v35    # "powerManager":Landroid/os/PowerManager;
    .end local v37    # "show":Z
    :cond_1c
    :goto_a
    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_48

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1d

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1d

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_48

    .line 756
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_47

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/PowerManager;

    .line 758
    .restart local v35    # "powerManager":Landroid/os/PowerManager;
    if-nez v35, :cond_45

    .line 759
    const-string v3, "PowerUI"

    const-string v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .end local v35    # "powerManager":Landroid/os/PowerManager;
    :cond_1e
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1800(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x2

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_1f

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1802(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 830
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v0, v18

    if-eq v0, v3, :cond_21

    .line 831
    const/4 v3, 0x5

    move/from16 v0, v18

    if-eq v3, v0, :cond_20

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_20

    const/16 v3, 0x9

    move/from16 v0, v18

    if-eq v3, v0, :cond_20

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_21

    .line 835
    :cond_20
    const-string v3, "PowerUI"

    const-string v4, "Overvoltage/Undervoltage (recovered) so turn on the screen."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    .line 840
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v27

    if-eq v0, v3, :cond_24

    .line 841
    if-eqz v27, :cond_22

    const/4 v3, -0x1

    move/from16 v0, v27

    if-ne v3, v0, :cond_24

    .line 842
    :cond_22
    if-nez v27, :cond_24

    .line 843
    const/4 v3, 0x4

    move/from16 v0, v23

    if-eq v3, v0, :cond_50

    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_50

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_23

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_23

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_23

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_50

    .line 849
    :cond_23
    const-string v3, "PowerUI"

    const-string v4, "charging interruption so don\'t play charger connection sound"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_24
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v0, v21

    if-eq v0, v3, :cond_27

    .line 861
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v3, v0, :cond_51

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_51

    .line 863
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_25

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mJPNWirelessChargerPopUp:Z

    if-eqz v3, :cond_26

    .line 864
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargingNotice()V

    .line 891
    :cond_26
    :goto_d
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_27

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v3, :cond_5a

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerWarning()V

    .line 959
    :cond_27
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mShowChargingNotification:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1900(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    move/from16 v0, v19

    if-eq v0, v3, :cond_28

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v3, :cond_5b

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showHighVoltageChargerNotice()V

    .line 1021
    :cond_28
    :goto_f
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-nez v3, :cond_29

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v3, v4, :cond_1

    .line 1022
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    move/from16 v0, v17

    if-eq v0, v3, :cond_1

    .line 1023
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v3, v4, :cond_66

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eqz v3, :cond_66

    .line 1026
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v3, v4, :cond_65

    .line 1027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a043a

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1031
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSlowChargerWarning()V

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v3, :cond_1

    .line 1034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto/16 :goto_2

    .line 558
    .end local v15    # "isIntentNeeded":Z
    .end local v25    # "oldCable":Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_2

    .line 568
    :cond_2b
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 574
    .restart local v33    # "playSound":Z
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move/from16 v0, v33

    invoke-interface {v3, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto/16 :goto_4

    .line 576
    .end local v33    # "playSound":Z
    :cond_2d
    if-nez v34, :cond_2e

    move/from16 v0, v24

    if-le v5, v0, :cond_30

    if-lez v5, :cond_30

    .line 577
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 578
    const-string v3, "PowerUI"

    const-string v4, "removeCallbacks(mLowBatteryWarningTask)"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 582
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mForceTest:Z

    .line 583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto/16 :goto_4

    .line 585
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isCocktailLowBatteryWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v20

    if-eq v0, v3, :cond_31

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateCocktailLowBatteryWarning(Z)V

    .line 588
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mForceTest:Z

    .line 589
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v20

    if-eq v0, v3, :cond_8

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    goto/16 :goto_4

    .line 600
    .restart local v25    # "oldCable":Z
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 603
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 607
    :cond_34
    const-string v3, "power_sharing"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 612
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 622
    .restart local v15    # "isIntentNeeded":Z
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 623
    const-string v3, "PowerUI"

    const-string v4, "Both AC or USB and Pogo is disconnected so show the cable disconnected popup"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_6

    .line 626
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    if-nez v3, :cond_38

    .line 627
    const-string v3, "PowerUI"

    const-string v4, "Pogo is disconnected but not need to show the water damage popup"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 629
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 630
    :cond_38
    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    .line 631
    const-string v3, "PowerUI"

    const-string v4, "AC/USB is connected while pogo is connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_6

    .line 633
    :cond_39
    if-nez v29, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    const/16 v4, 0x17

    if-ne v3, v4, :cond_a

    .line 634
    const-string v3, "PowerUI"

    const-string v4, "AC is disconnected while pogo is connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_6

    .line 637
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_a

    .line 638
    const-string v3, "PowerUI"

    const-string v4, "only pogo is connected, do not send connected intent!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 640
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 653
    :cond_3b
    new-instance v12, Landroid/content/Intent;

    const-string v3, "com.samsung.systemui.power.action.ACTION_CABLE_DISCONNECTED"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v12    # "cableIntent":Landroid/content/Intent;
    goto/16 :goto_7

    .line 663
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1402(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_8

    .line 698
    .end local v12    # "cableIntent":Landroid/content/Intent;
    .restart local v14    # "isBatteryLowLevel":I
    .restart local v36    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1602(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_9

    .line 700
    .end local v36    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_3e
    const/16 v3, 0x14

    move/from16 v0, v20

    if-le v0, v3, :cond_3f

    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_40

    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_42

    :cond_40
    if-eqz v14, :cond_41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_42

    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1700(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 704
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 705
    new-instance v36, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.POWERSAVING_AUTO_ENABLE"

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .restart local v36    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 708
    const-string v3, "PowerUI"

    const-string v4, "the battery level goes over the threshold of Power saving mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1702(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_9

    .line 711
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1702(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_9

    .line 744
    .end local v14    # "isBatteryLowLevel":I
    .end local v36    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_44
    const/4 v3, 0x5

    move/from16 v0, v23

    if-ne v3, v0, :cond_1c

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    goto/16 :goto_a

    .line 761
    .restart local v35    # "powerManager":Landroid/os/PowerManager;
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const v4, 0x10000006

    const-string v6, "PowerUI"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_46

    .line 764
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 768
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 770
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1e

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_b

    .line 766
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_11

    .line 774
    .end local v35    # "powerManager":Landroid/os/PowerManager;
    :cond_47
    const/16 v3, 0x8

    move/from16 v0, v18

    if-ne v3, v0, :cond_1e

    .line 775
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1e

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_b

    .line 779
    :cond_48
    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_4d

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_4d

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_4b

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/PowerManager;

    .line 783
    .restart local v35    # "powerManager":Landroid/os/PowerManager;
    if-nez v35, :cond_49

    .line 784
    const-string v3, "PowerUI"

    const-string v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 786
    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const v4, 0x10000006

    const-string v6, "PowerUI"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_4a

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 793
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 795
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1e

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_b

    .line 791
    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_12

    .line 799
    .end local v35    # "powerManager":Landroid/os/PowerManager;
    :cond_4b
    const/4 v3, 0x3

    move/from16 v0, v18

    if-ne v3, v0, :cond_1e

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_4c

    .line 801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 804
    :cond_4c
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1e

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_b

    .line 808
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_1e

    .line 809
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_4f

    const/4 v3, 0x3

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_4f

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_4f

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1802(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 817
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-eqz v3, :cond_4e

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 820
    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_b

    .line 813
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1802(Lcom/android/systemui/power/PowerUI;Z)Z

    goto :goto_13

    .line 851
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->playSound(I)V

    goto/16 :goto_c

    .line 865
    :cond_51
    const/16 v3, 0xa

    move/from16 v0, v21

    if-eq v3, v0, :cond_52

    const/16 v3, 0x64

    move/from16 v0, v21

    if-ne v3, v0, :cond_55

    :cond_52
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_53

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_55

    .line 867
    :cond_53
    const-string v3, "PowerUI"

    const-string v4, "switch from wireless to cable"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWirelessChargingNotice()V

    .line 869
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-nez v3, :cond_54

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a042d

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 872
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    goto/16 :goto_d

    .line 873
    :cond_55
    const/4 v3, 0x3

    move/from16 v0, v21

    if-eq v3, v0, :cond_56

    const/4 v3, 0x4

    move/from16 v0, v21

    if-ne v3, v0, :cond_58

    :cond_56
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_58

    .line 875
    const-string v3, "PowerUI"

    const-string v4, "switch from cable to wireless"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-nez v3, :cond_57

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a042e

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 879
    :cond_57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    goto/16 :goto_d

    .line 880
    :cond_58
    const/4 v3, 0x1

    move/from16 v0, v21

    if-eq v3, v0, :cond_26

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_26

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWirelessChargingNotice()V

    .line 884
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowWirelessChargerDisconnectPopup:Z

    if-eqz v3, :cond_26

    const/16 v3, 0xa

    move/from16 v0, v21

    if-eq v3, v0, :cond_59

    const/16 v3, 0x64

    move/from16 v0, v21

    if-ne v3, v0, :cond_26

    .line 886
    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargingDisconnectWarning()V

    goto/16 :goto_d

    .line 900
    :cond_5a
    if-nez v21, :cond_27

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerWarning()V

    goto/16 :goto_e

    .line 964
    :cond_5b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissHighVoltageChargerNotice()V

    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelHighVoltageChargerNotification()V

    goto/16 :goto_f

    .line 972
    :cond_5c
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_5d

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v3, v4, :cond_5d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v3, :cond_28

    .line 974
    :cond_5d
    const/4 v3, 0x2

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_64

    .line 975
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-eq v3, v4, :cond_5e

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_61

    .line 976
    :cond_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v3, :cond_60

    .line 977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 981
    :goto_14
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowChargerAnimation:Z

    if-eqz v3, :cond_5f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$2000(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-nez v3, :cond_5f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v27

    if-eq v0, v3, :cond_5f

    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_5f

    .line 983
    const-string v3, "PowerUI"

    const-string v4, "Cable charger connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$2002(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # invokes: Lcom/android/systemui/power/PowerUI;->setChargerAnimationView()V
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$2100(Lcom/android/systemui/power/PowerUI;)V

    .line 1008
    :cond_5f
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$2000(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    goto/16 :goto_f

    .line 979
    :cond_60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_14

    .line 989
    :cond_61
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_63

    .line 990
    const/16 v3, 0x64

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_62

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 995
    :goto_16
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowChargerAnimation:Z

    if-eqz v3, :cond_5f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$2000(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-nez v3, :cond_5f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v27

    if-eq v0, v3, :cond_5f

    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_5f

    .line 997
    const-string v3, "PowerUI"

    const-string v4, "Wireless charger connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$2002(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # invokes: Lcom/android/systemui/power/PowerUI;->setChargerAnimationView()V
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$2100(Lcom/android/systemui/power/PowerUI;)V

    goto :goto_15

    .line 993
    :cond_62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_16

    .line 1004
    :cond_63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 1005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto/16 :goto_15

    .line 1011
    :cond_64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v3, :cond_28

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto/16 :goto_f

    .line 1029
    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0439

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    .line 1037
    :cond_66
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v3, v0, :cond_1

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissSlowChargerWarning()V

    goto/16 :goto_2

    .line 1052
    .end local v5    # "bucket":I
    .end local v15    # "isIntentNeeded":Z
    .end local v17    # "oldBatteryChargetype":I
    .end local v18    # "oldBatteryHealth":I
    .end local v19    # "oldBatteryHighVoltageCharger":Z
    .end local v20    # "oldBatteryLevel":I
    .end local v21    # "oldBatteryOnline":I
    .end local v23    # "oldBatteryStatus":I
    .end local v24    # "oldBucket":I
    .end local v25    # "oldCable":Z
    .end local v26    # "oldInvalidCharger":I
    .end local v27    # "oldPlugType":I
    .end local v28    # "oldPlugged":Z
    .end local v29    # "oldPogoState":I
    .end local v34    # "plugged":Z
    :cond_67
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerUI$Receiver;->updateSaverMode()V

    goto/16 :goto_2

    .line 1054
    :cond_68
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "mode"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # invokes: Lcom/android/systemui/power/PowerUI;->setSaverMode(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;Z)V

    goto/16 :goto_2

    .line 1058
    :cond_69
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mSupportLED:Z

    if-nez v3, :cond_6a

    const/4 v3, 0x5

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_6a

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    .line 1062
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify FullBatteryNotification again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 1067
    :cond_6a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    # invokes: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    .line 1068
    .restart local v5    # "bucket":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_6b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-nez v3, :cond_6b

    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6b

    if-gez v5, :cond_6b

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    .line 1072
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify LowBatteryNotification again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1078
    :cond_6b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v3, :cond_6c

    .line 1079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 1080
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify ChargingNotification again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    .line 1084
    :cond_6c
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_1

    .line 1086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v3, :cond_6d

    .line 1087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerWarning()V

    .line 1088
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify incompatible charger again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerWarning()V

    goto/16 :goto_2

    .line 1093
    :cond_6d
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v3, v4, :cond_1

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissSlowChargerWarning()V

    .line 1095
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify slow charging again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSlowChargerWarning()V

    goto/16 :goto_2

    .line 1102
    .end local v5    # "bucket":I
    :cond_6e
    const-string v3, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 1103
    const-string v3, "PowerUI"

    const-string v4, "Face detection is failed before dimming"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->notifyFaceDetectionFailureNotification()V

    goto/16 :goto_2

    .line 1107
    :cond_6f
    const-string v3, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1108
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 1109
    const-string v3, "PowerUI"

    const-string v4, "FTA mode ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1110
    :cond_70
    const-string v3, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1111
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 1112
    const-string v3, "PowerUI"

    const-string v4, "FTA mode OFF"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1113
    :cond_71
    const-string v3, "com.samsung.pen.INSERT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 1114
    const-string v3, "penInsert"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    .line 1115
    .local v32, "penInsert":Z
    if-nez v32, :cond_1

    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_72

    const/16 v3, 0x64

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_1

    .line 1117
    :cond_72
    const-string v3, "PowerUI"

    const-string v4, "S Pen is detached and wireless charging"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0a042f

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1120
    .end local v32    # "penInsert":Z
    :cond_73
    const-string v3, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 1121
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 1122
    const-string v3, "PowerUI"

    const-string v4, "cover camera start"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_1

    .line 1124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto/16 :goto_2

    .line 1125
    :cond_74
    const-string v3, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1126
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 1127
    const-string v3, "PowerUI"

    const-string v4, "cover camera stop"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1131
    :cond_75
    const-string v3, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1132
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_78

    .line 1133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    move/from16 v30, v0

    .line 1134
    .local v30, "oldSIOPLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "check_cooldown_level"

    const/4 v6, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 1135
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIOP Level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    move/from16 v0, v30

    if-eq v0, v3, :cond_1

    .line 1138
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-ne v3, v4, :cond_76

    .line 1139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const v4, 0xea60

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownWarningTask(I)V

    goto/16 :goto_2

    .line 1140
    :cond_76
    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-ne v3, v4, :cond_77

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownTask(I)V

    .line 1142
    const-string v3, "PowerUI"

    const-string v4, "SIOP level is critical so shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1143
    :cond_77
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-le v3, v4, :cond_1

    const/16 v3, 0x8

    move/from16 v0, v30

    if-gt v3, v0, :cond_1

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatShutdownWarning()V

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelOverheatShutdownWarningTask()V

    .line 1146
    const-string v3, "PowerUI"

    const-string v4, "SIOP level recovered from shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1150
    .end local v30    # "oldSIOPLevel":I
    :cond_78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    move/from16 v22, v0

    .line 1151
    .local v22, "oldBatteryOverheatLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "battery_overheat_level"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1152
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Battery overheat Level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    move/from16 v0, v22

    if-eq v0, v3, :cond_1

    .line 1155
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-ne v3, v4, :cond_79

    .line 1156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const v4, 0xea60

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownWarningTask(I)V

    goto/16 :goto_2

    .line 1157
    :cond_79
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-le v3, v4, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v22

    if-gt v3, v0, :cond_1

    .line 1158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatShutdownWarning()V

    .line 1159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelOverheatShutdownWarningTask()V

    .line 1160
    const-string v3, "PowerUI"

    const-string v4, "Battery overheat level recovered from shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1164
    .end local v22    # "oldBatteryOverheatLevel":I
    :cond_7a
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "com.android.systemui.power_overheat_shutdown"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1166
    .local v31, "overheatShutdownSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v31, :cond_7b

    .line 1167
    const-string v3, "OverheatShutdown"

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 1168
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1169
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "OverheatShutdown"

    const/4 v4, 0x0

    invoke-interface {v13, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1170
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.systemui.power.action.ACTION_CLEAR_SHUTDOWN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatShutdownNotice()V

    .line 1176
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1502(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_2

    .line 1179
    .end local v31    # "overheatShutdownSharedPrefs":Landroid/content/SharedPreferences;
    :cond_7c
    const-string v3, "LOW_BATTERY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 1180
    const-string v3, "PowerUI"

    const-string v4, "LOW_BATTERY received"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto/16 :goto_2

    .line 1184
    :cond_7d
    const-string v3, "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "cocktailbarWakeupState"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCocktailWakeUpState:Z

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isCocktailLowBatteryWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCocktailWakeUpState:Z

    if-nez v3, :cond_1

    .line 1187
    const-string v3, "PowerUI"

    const-string v4, "CocktailWakeUpState has been changed. Remove low battery warning on cocktailbar!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateCocktailLowBatteryWarning(Z)V

    goto/16 :goto_2

    .line 1203
    :cond_7e
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown intent: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
