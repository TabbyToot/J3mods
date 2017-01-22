.class Lcom/android/systemui/qs/tiles/MobileDataTile$5;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "intentAction":Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$002(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 268
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v2

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$202(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 269
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->updateStatus()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 302
    :cond_0
    :goto_1
    return-void

    .line 267
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 271
    :cond_2
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 275
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v3

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$202(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 277
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 278
    const-string v1, "MobileDataTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_SIM_STATE_CHANGED : MSIM enabledsim # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->updateStatus()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    goto :goto_1

    .line 281
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v1, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v4, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 286
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$900(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 288
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->updateStatus()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    goto/16 :goto_1

    .line 291
    :cond_7
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 293
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_1

    .line 298
    :cond_8
    const-string v1, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "MobileDataTile"

    const-string v2, "onReceive: ACTION_MOBILE_DATA_ENABLE_POPUP"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$5;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataOnAlert()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1100(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    goto/16 :goto_1
.end method
