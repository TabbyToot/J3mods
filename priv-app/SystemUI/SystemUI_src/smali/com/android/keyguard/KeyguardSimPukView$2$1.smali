.class Lcom/android/keyguard/KeyguardSimPukView$2$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView$2;->onSimLockChangedResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$2;II)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 374
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_0

    .line 375
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->hide()V

    .line 377
    :cond_0
    iget v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    if-nez v5, :cond_4

    .line 378
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v6, v6, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I
    invoke-static {v6}, Lcom/android/keyguard/KeyguardSimPukView;->access$300(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 381
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 382
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 383
    invoke-static {v10}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 384
    invoke-static {v10}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    .line 387
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$400(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "DSNETWORK"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    const-string v5, "KeyguardSimPukView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "verifyPasswordAndUnlock--DSNETWORK VALUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardSimPukView;->access$500(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "DSNETWORK"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v0, "i":Landroid/content/Intent;
    const-string v5, "ACTION_UNLOCK_PIN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v5, "PINPUKUnlock"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 398
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSIMToastEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 399
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$600(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 400
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x10900fe

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const v7, 0x1020365

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 405
    .local v2, "layout":Landroid/view/View;
    const v5, 0x102000b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 407
    .local v3, "text":Landroid/widget/TextView;
    sget v5, Lcom/android/keyguard/R$string;->lockscreen_pin_unblocked:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 409
    new-instance v4, Landroid/widget/Toast;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # getter for: Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$700(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 410
    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4, v9}, Landroid/widget/Toast;->setDuration(I)V

    .line 411
    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 412
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 435
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layout":Landroid/view/View;
    .end local v3    # "text":Landroid/widget/TextView;
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v6, 0x0

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardSimPukView;->access$802(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 436
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iput-boolean v10, v5, Lcom/android/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    .line 437
    return-void

    .line 416
    :cond_4
    iget v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    if-ne v5, v9, :cond_5

    .line 418
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardSimPukView;->getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 422
    :goto_1
    const-string v5, "KeyguardSimPukView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 426
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 427
    iget v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 428
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v6, v6, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10408fb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSimPukView;->getSimIconResId()I

    move-result v7

    invoke-interface {v5, v6, v7, v9}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    .line 430
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    # setter for: Lcom/android/keyguard/KeyguardSimPukView;->isWrongPUKCrash:Z
    invoke-static {v5, v9}, Lcom/android/keyguard/KeyguardSimPukView;->access$202(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 431
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v5, v9}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(Z)V

    goto :goto_0

    .line 420
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    sget v6, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSimPukView;->getSimIconResId()I

    move-result v7

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/keyguard/KeyguardSimPukView;->setHintOrMessageText(IIZ)V

    goto :goto_1
.end method
