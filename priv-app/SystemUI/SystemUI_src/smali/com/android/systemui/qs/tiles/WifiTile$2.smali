.class Lcom/android/systemui/qs/tiles/WifiTile$2;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 498
    return-void
.end method

.method public onMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 503
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "mobileSignalContentDescriptionId"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataTypeContentDescriptionId"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "isDataTypeIconWide"    # Z

    .prologue
    .line 489
    return-void
.end method

.method public onNoSimVisibleChanged(Z)V
    .locals 0
    .param p1, "noSims"    # Z

    .prologue
    .line 493
    return-void
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "connected"    # Z
    .param p3, "wifiSignalIconId"    # I
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "wifiSignalContentDescriptionId"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 455
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$1;)V

    .line 456
    .local v0, "info":Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 457
    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    .line 458
    iput p3, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 459
    iput-object p7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 460
    iput-boolean p4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    .line 461
    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    .line 462
    iput-object p6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 463
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2, p7}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1102(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1102(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1102(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z
    invoke-static {v5, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1202(Lcom/android/systemui/qs/tiles/WifiTile;Z)Z

    .line 473
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result v5

    if-eqz v5, :cond_5

    .end local p3    # "wifiSignalIconId":I
    :goto_1
    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiSignalIconResId:I
    invoke-static {v2, p3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1302(Lcom/android/systemui/qs/tiles/WifiTile;I)I

    .line 475
    iget v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v2, :cond_6

    move v1, v3

    .line 476
    .local v1, "wifiNotConnected":Z
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1400(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    .line 477
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1500(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V

    .line 479
    :cond_3
    return-void

    .end local v1    # "wifiNotConnected":Z
    .restart local p3    # "wifiSignalIconId":I
    :cond_4
    move v2, v4

    .line 472
    goto :goto_0

    :cond_5
    move p3, v4

    .line 473
    goto :goto_1

    .end local p3    # "wifiSignalIconId":I
    :cond_6
    move v1, v4

    .line 475
    goto :goto_2
.end method
