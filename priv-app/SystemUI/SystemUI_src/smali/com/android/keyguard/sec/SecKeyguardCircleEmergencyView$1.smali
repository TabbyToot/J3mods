.class Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardCircleEmergencyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .param p1, "phoneState"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$000(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    .line 85
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$000(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    .line 80
    return-void
.end method
