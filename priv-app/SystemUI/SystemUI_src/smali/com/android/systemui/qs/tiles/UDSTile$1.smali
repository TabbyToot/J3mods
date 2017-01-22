.class Lcom/android/systemui/qs/tiles/UDSTile$1;
.super Landroid/content/BroadcastReceiver;
.source "UDSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UDSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UDSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UDSTile;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    const-string v4, "UDSTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive : action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v4, "com.samsung.android.sm.app.datausage.intent.action.update_notification_panel_icons"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    const-string v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$002(Lcom/android/systemui/qs/tiles/UDSTile;Z)Z

    .line 82
    const-string v2, "UDSTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/UDSTile;->access$000(Lcom/android/systemui/qs/tiles/UDSTile;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # invokes: Lcom/android/systemui/qs/tiles/UDSTile;->updateStatus()V
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UDSTile;->access$100(Lcom/android/systemui/qs/tiles/UDSTile;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v4, "com.samsung.android.sm.app.datausage.intent.action.first"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    const-string v4, "accept"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/tiles/UDSTile;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 87
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "isFirst"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/UDSTile;->access$002(Lcom/android/systemui/qs/tiles/UDSTile;Z)Z

    .line 91
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # invokes: Lcom/android/systemui/qs/tiles/UDSTile;->updateStatus()V
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UDSTile;->access$100(Lcom/android/systemui/qs/tiles/UDSTile;)V

    goto :goto_0

    .line 93
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UDSTile;->access$200(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UDSTile;->access$200(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UDSTile;->access$200(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 96
    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDisplayDialog:Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$302(Z)Z

    goto :goto_0

    .line 98
    :cond_3
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mAirplane:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/UDSTile;->access$400(Lcom/android/systemui/qs/tiles/UDSTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # invokes: Lcom/android/systemui/qs/tiles/UDSTile;->isSimPresent()Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/UDSTile;->access$500(Lcom/android/systemui/qs/tiles/UDSTile;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/UDSTile;->access$600(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "udsState"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_5

    :goto_1
    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v4, v2}, Lcom/android/systemui/qs/tiles/UDSTile;->access$002(Lcom/android/systemui/qs/tiles/UDSTile;Z)Z

    .line 102
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile$1;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # invokes: Lcom/android/systemui/qs/tiles/UDSTile;->updateStatus()V
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UDSTile;->access$100(Lcom/android/systemui/qs/tiles/UDSTile;)V

    goto/16 :goto_0

    :cond_5
    move v2, v3

    .line 100
    goto :goto_1
.end method
