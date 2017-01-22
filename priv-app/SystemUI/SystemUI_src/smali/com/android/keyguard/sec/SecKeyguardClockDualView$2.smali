.class Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockDualView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockDualView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clockfont"    # Ljava/lang/String;
    .param p2, "numfont"    # Ljava/lang/String;

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {p1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$502(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockStyle()V

    .line 140
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mClockThemeTypeface:Landroid/graphics/Typeface;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$502(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mIsKeyguardShowing:Z
    invoke-static {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$402(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Z)Z

    .line 156
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 119
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    sput v0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mBatteryLevel:I

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mIsScreenOn:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$300(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mIsKeyguardShowing:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mIsScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$302(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Z)Z

    .line 151
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mIsScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$302(Lcom/android/keyguard/sec/SecKeyguardClockDualView;Z)Z

    .line 145
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
