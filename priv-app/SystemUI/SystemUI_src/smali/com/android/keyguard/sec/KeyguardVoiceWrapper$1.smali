.class Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;
.super Ljava/lang/Object;
.source "KeyguardVoiceWrapper.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardVoiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissWithAction(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$400(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$400(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$3;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;Landroid/content/Intent;)V

    invoke-interface {v0, v1, v2, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    .line 123
    :cond_0
    return-void
.end method

.method public refreshVoiceUnlockHelpText()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mTextChageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$300(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$2;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    :cond_0
    return-void
.end method

.method public setVoiceRecognitionFailCue()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$000(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mTextChageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$300(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1$1;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    # getter for: Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$400(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;->this$0:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    # invokes: Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->dismissKeyguard()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->access$500(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)V

    .line 87
    :cond_0
    return-void
.end method
