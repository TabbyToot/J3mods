.class Lcom/android/keyguard/KeyguardUniversalLockView$13;
.super Landroid/os/CountDownTimer;
.source "KeyguardUniversalLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 1159
    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->displayDefaultSecurityMessage()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$4000(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    .line 1162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1163
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 1166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->resetmTimer()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$100(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    .line 1167
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$200(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    .line 1171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1600(Lcom/android/keyguard/KeyguardUniversalLockView;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    sget-object v1, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$4100(Lcom/android/keyguard/KeyguardUniversalLockView;Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V

    .line 1177
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$4202(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 1178
    return-void

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    sget-object v1, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$4100(Lcom/android/keyguard/KeyguardUniversalLockView;Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v4, 0x1

    .line 1138
    const-string v1, "KeyguardUniversalLockView"

    const-string v2, "in onTick()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 1146
    .local v0, "secondsRemaining":I
    if-le v0, v4, :cond_1

    .line 1148
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3800(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3700(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->universal_lock_too_many_failed_attempts_countdown:I

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3800(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$13;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
