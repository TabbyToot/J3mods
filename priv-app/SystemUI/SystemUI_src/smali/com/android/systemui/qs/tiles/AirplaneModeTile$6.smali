.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 506
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 507
    .local v1, "value":Z
    :goto_0
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->EVR:Z

    if-eqz v4, :cond_5

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecEPDG:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$800()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    .line 508
    .local v0, "mSupportEpdG":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v4

    if-nez v4, :cond_0

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$900()Z

    move-result v4

    if-nez v4, :cond_0

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 511
    :cond_1
    :goto_2
    const-string v4, "AirplaneModeTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPhoneStateListener - inAirplaneMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 513
    const-string v4, "AirplaneModeTile"

    const-string v5, "Alert Dialog is showing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z
    invoke-static {v4, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2302(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    .line 519
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 520
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    :cond_2
    if-ne v1, v3, :cond_3

    .line 521
    const-string v3, "AirplaneModeTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshState() on PhoneStateListener() value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDSNetork:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 523
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    if-eqz v1, :cond_8

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    .line 527
    :cond_3
    return-void

    .end local v0    # "mSupportEpdG":Z
    .end local v1    # "value":Z
    :cond_4
    move v1, v3

    .line 506
    goto/16 :goto_0

    .restart local v1    # "value":Z
    :cond_5
    move v0, v3

    .line 507
    goto/16 :goto_1

    .restart local v0    # "mSupportEpdG":Z
    :cond_6
    move v1, v3

    .line 509
    goto/16 :goto_2

    .line 516
    :cond_7
    const-string v4, "AirplaneModeTile"

    const-string v5, "Alert Dialog is not showing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z
    invoke-static {v4, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2302(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    goto :goto_3

    .line 523
    :cond_8
    const/4 v2, 0x2

    goto :goto_4
.end method
