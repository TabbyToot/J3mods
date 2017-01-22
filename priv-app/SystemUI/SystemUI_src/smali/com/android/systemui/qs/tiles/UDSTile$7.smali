.class Lcom/android/systemui/qs/tiles/UDSTile$7;
.super Ljava/lang/Object;
.source "UDSTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/UDSTile;->displaydialog()V
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
    .line 301
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UDSTile$7;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 304
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$7;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDataMonitor:Z
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/UDSTile;->access$002(Lcom/android/systemui/qs/tiles/UDSTile;Z)Z

    .line 305
    # setter for: Lcom/android/systemui/qs/tiles/UDSTile;->mDisplayDialog:Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/UDSTile;->access$302(Z)Z

    .line 306
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$7;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # invokes: Lcom/android/systemui/qs/tiles/UDSTile;->updateStatus()V
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$100(Lcom/android/systemui/qs/tiles/UDSTile;)V

    .line 307
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.sm.app.datausage.intent.action.launch_notification_panel"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "DataMonitor"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$7;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$1200(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    const-string v3, "UDSTile"

    const-string v6, "sendBroadcast DataMonitor true"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$7;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$1300(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "checkboxchecked"

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mIsCheckboxChecked:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/UDSTile;->access$900()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$7;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$1400(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v3

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 313
    .local v0, "connService":Landroid/net/ConnectivityManager;
    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mIsCheckboxChecked:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/UDSTile;->access$900()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 317
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$7;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$1500(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v3

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 318
    .local v2, "telManager":Landroid/telephony/TelephonyManager;
    const-string v3, "UDSTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPositiveButton(Enable) getSimState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getDataEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 320
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$7;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$1600(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a03d7

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 324
    :goto_1
    return-void

    .end local v0    # "connService":Landroid/net/ConnectivityManager;
    .end local v2    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_1
    move v3, v5

    .line 311
    goto :goto_0

    .line 322
    .restart local v0    # "connService":Landroid/net/ConnectivityManager;
    .restart local v2    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UDSTile$7;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    # getter for: Lcom/android/systemui/qs/tiles/UDSTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UDSTile;->access$1700(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a03d8

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
