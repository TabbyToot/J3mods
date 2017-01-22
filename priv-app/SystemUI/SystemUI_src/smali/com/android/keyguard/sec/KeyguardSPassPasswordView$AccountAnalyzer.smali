.class Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardSPassPasswordView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;)V
    .locals 3
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 521
    const-string v0, "com.google"

    new-instance v1, Landroid/os/UserHandle;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    .line 523
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
    .param p2, "x1"    # Landroid/accounts/AccountManager;
    .param p3, "x2"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;

    .prologue
    .line 512
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$800(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 546
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    const/4 v4, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$702(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Z)Z

    .line 549
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    .line 550
    .local v0, "attempts":I
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    .line 551
    .local v1, "encrypted":Z
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    if-nez v1, :cond_0

    .line 552
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$1300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    .end local v0    # "attempts":I
    .end local v1    # "encrypted":Z
    :cond_0
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    .line 581
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    .line 583
    .end local v2    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v3

    .line 580
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    .line 581
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 575
    :catch_1
    move-exception v3

    .line 580
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    .line 581
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 577
    :catch_2
    move-exception v3

    .line 580
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    .line 581
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    .line 581
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    throw v3
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 538
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->this$0:Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    # setter for: Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->access$702(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Z)Z

    .line 539
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->mAccountIndex:I

    .line 540
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->next()V

    .line 541
    return-void
.end method
