.class Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;
.super Landroid/content/BroadcastReceiver;
.source "SubPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

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

    .line 596
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SubPhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    .line 619
    :cond_1
    :goto_0
    return-void

    .line 606
    :cond_2
    const-string v3, "com.sec.android.action.FLOATING_BACK_KEY_VISIBILITY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 607
    const-string v3, "com.sec.android.extra.FLOATING_BACK_KEY_VISIBLE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 608
    .local v2, "visible":Z
    const-string v3, "SubPhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " received FLOATING_BACK_KEY_VISIBILITY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$300(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromVisibilityIntent:Z
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$402(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Z)Z

    .line 611
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addFloatingBackKey()V

    goto :goto_0

    .line 612
    .end local v2    # "visible":Z
    :cond_3
    const-string v3, "com.sec.android.action.NOTIFY_COUPLEDTASK_RESUMED_STATUS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    const-string v3, "com.sec.android.extra.COUPLED_RESUMED_STATUS"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 614
    .local v1, "isCoupled":Z
    const-string v3, "SubPhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " received NOTIFY_COUPLEDTASK_RESUMED_STATUS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$300(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingKeyFromCoupledTaskIntent:Z
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$502(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;Z)Z

    .line 617
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addFloatingBackKey()V

    goto/16 :goto_0
.end method
