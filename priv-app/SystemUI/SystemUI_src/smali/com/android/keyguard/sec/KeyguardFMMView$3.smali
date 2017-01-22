.class Lcom/android/keyguard/sec/KeyguardFMMView$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardFMMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardFMMView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardFMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardFMMView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$1000(Lcom/android/keyguard/sec/KeyguardFMMView;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # invokes: Lcom/android/keyguard/sec/KeyguardFMMView;->isCountDownTimerRunning()Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$1100(Lcom/android/keyguard/sec/KeyguardFMMView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    const-string v1, ""

    const/4 v2, 0x1

    # invokes: Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$1200(Lcom/android/keyguard/sec/KeyguardFMMView;Ljava/lang/CharSequence;Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # operator++ for: Lcom/android/keyguard/sec/KeyguardFMMView;->mPasswordTimeTick:I
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$508(Lcom/android/keyguard/sec/KeyguardFMMView;)I

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/sec/KeyguardFMMView;->mPasswordTimeTick:I
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$600(Lcom/android/keyguard/sec/KeyguardFMMView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$700(Lcom/android/keyguard/sec/KeyguardFMMView;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    # invokes: Lcom/android/keyguard/sec/KeyguardFMMView;->isCountDownTimerRunning()Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$800(Lcom/android/keyguard/sec/KeyguardFMMView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/sec/KeyguardFMMView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFMMView;->getFailedAutoWipeAttemptMessage()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->access$900(Lcom/android/keyguard/sec/KeyguardFMMView;Ljava/lang/CharSequence;Z)V

    .line 217
    :cond_0
    return-void
.end method
