.class Lcom/android/keyguard/KeyguardAccountView$4;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;Z)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardAccountView$4;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 233
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->val$success:Z

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 236
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 238
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$300(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lockscreen.lockoutattemptdeadlineforchina"

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 246
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_2

    .line 248
    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$400(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardAccountView;->access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v6, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$500(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 259
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unlock account screen succeeded."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$500(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 280
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$600(Lcom/android/keyguard/KeyguardAccountView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$700(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v3, Lcom/android/keyguard/R$string;->kg_login_invalid_input:I

    invoke-interface {v1, v3, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 271
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$800(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$500(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 275
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unlock account screen failed."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$4;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$700(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v3, Lcom/android/keyguard/R$string;->no_network_connection:I

    invoke-interface {v1, v3, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_2

    .line 253
    .restart local v6    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
