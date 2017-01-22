.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 316
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "action":Ljava/lang/String;
    const-string v3, "AirplaneModeTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 324
    const-string v3, "state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 325
    .local v2, "value":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    if-eqz v2, :cond_4

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v6, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    .line 329
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->EVR:Z

    if-eqz v3, :cond_1

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecEPDG:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$800()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 330
    .local v1, "mSupportEpdG":Z
    :cond_1
    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$900()Z

    move-result v3

    if-nez v3, :cond_2

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    .line 331
    :cond_2
    const-string v3, "AirplaneModeTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_AIRPLANE_MODE_CHANGED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$900()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DB "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    if-eqz v2, :cond_5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    .line 355
    .end local v1    # "mSupportEpdG":Z
    .end local v2    # "value":Z
    :cond_3
    :goto_2
    return-void

    .restart local v2    # "value":Z
    :cond_4
    move v3, v5

    .line 326
    goto :goto_0

    .restart local v1    # "mSupportEpdG":Z
    :cond_5
    move v4, v5

    .line 332
    goto :goto_1

    .line 334
    .end local v1    # "mSupportEpdG":Z
    .end local v2    # "value":Z
    :cond_6
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 338
    const-string v3, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 340
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z
    invoke-static {v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1202(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z

    .line 341
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    goto :goto_2

    .line 343
    :cond_7
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 344
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_2

    .line 349
    :cond_8
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->unregisterPhoneStateListener()V
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    .line 352
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;)V

    goto :goto_2
.end method
