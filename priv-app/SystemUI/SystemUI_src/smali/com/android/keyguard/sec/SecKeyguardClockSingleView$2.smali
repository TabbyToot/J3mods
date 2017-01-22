.class Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockSingleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsKeyguardShowing:Z
    invoke-static {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$502(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z

    .line 171
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 136
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    sput v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mBatteryLevel:I

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsScreenOn:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsKeyguardShowing:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$402(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onScreenTurnedOff()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$700(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    .line 166
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mIsScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$402(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onScreenTurnedOn()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$600(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    .line 160
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    .line 147
    return-void
.end method
