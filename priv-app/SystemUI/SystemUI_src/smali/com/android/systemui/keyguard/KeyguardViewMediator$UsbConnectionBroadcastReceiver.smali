.class Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbConnectionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p2, "x1"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 850
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 851
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 852
    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 853
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 854
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 856
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAdbEnabled()Z
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V
    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z
    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    goto :goto_0
.end method
