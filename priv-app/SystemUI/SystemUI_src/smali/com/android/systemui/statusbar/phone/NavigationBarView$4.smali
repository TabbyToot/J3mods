.class Lcom/android/systemui/statusbar/phone/NavigationBarView$4;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 475
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "action":Ljava/lang/String;
    const-string v3, "PhoneStatusBar/NavigationBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 479
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentUser:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarView;)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 480
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # setter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentUser:I
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$602(Lcom/android/systemui/statusbar/phone/NavigationBarView;I)I

    .line 481
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->refreshExtButtonVisibility()V

    .line 503
    .end local v1    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    const-string v3, "com.sec.android.action.NAVIBAR_FAMILY_CONNECTED_VISIBILITY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 484
    const-string v3, "com.sec.android.extra.NAVIBAR_FAMILY_CONNECTED_VISIBLE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 486
    .local v2, "vis":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setFamilyConnectedVisibility(Z)V

    goto :goto_0

    .line 487
    .end local v2    # "vis":Z
    :cond_2
    const-string v3, "com.sec.android.action.NAVIBAR_HOME_SETTING_VISIBILITY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 488
    const-string v3, "com.sec.android.extra.NAVIBAR_HOME_SETTING_VISIBLE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 490
    .restart local v2    # "vis":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setHomeSettingVisibility(Z)V

    goto :goto_0

    .line 491
    .end local v2    # "vis":Z
    :cond_3
    const-string v3, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 492
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->refreshExtButtonVisibility()V

    goto :goto_0

    .line 493
    :cond_4
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const-string v5, "com.samsung.android.familyshare.dashboard"

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$800(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/android/systemui/statusbar/phone/NavigationBarView;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$900(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mFamilyConnectedInstalled:Z
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$702(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z

    .line 497
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const-string v5, "com.samsung.android.zeropage"

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/android/systemui/statusbar/phone/NavigationBarView;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$900(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeSettingInstalled:Z
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1002(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z

    .line 498
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->refreshExtButtonVisibility()V

    .line 499
    const-string v3, "PhoneStatusBar/NavigationBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After broadcast : mFamilyConnectedInstalled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mFamilyConnectedInstalled:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$700(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mHomeSettingInstalled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeSettingInstalled:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1000(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
