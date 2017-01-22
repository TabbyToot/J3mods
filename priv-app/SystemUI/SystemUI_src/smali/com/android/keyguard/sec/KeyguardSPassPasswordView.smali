.class public Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSPassPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;
    }
.end annotation


# static fields
.field public static final LOCKOUT_ATTEMPT_DEADLINE_FOR_CHINA:Ljava/lang/String; = "lockscreen.lockoutattemptdeadlineforchina"

.field private static final TAG:Ljava/lang/String; = "KeyguardSPassPasswordView"


# instance fields
.field private isSupportMobileKeyboard:Z

.field private mAccountEmergencyArea:Landroid/widget/LinearLayout;

.field private mCurrentMobileKeyboard:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEmergencyArea:Landroid/widget/LinearLayout;

.field private mEnableFallback:Z

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field private mForgotPatternButton:Landroid/widget/Button;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mMobileKeyboard:Z

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordTimeTick:I

.field private mPasswordTitle:Landroid/widget/TextView;

.field private final mShowImeAtScreenOn:Z

.field private final mShowImeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 94
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mMobileKeyboard:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isSupportMobileKeyboard:Z

    .line 96
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCurrentMobileKeyboard:I

    .line 179
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeAtScreenOn:Z

    .line 106
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 107
    const-string v0, "KeyguardSPassPasswordView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowImeAtScreenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeAtScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isSupportMobileKeyboard:Z

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mMobileKeyboard:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCurrentMobileKeyboard:I

    .line 112
    return-void

    :cond_0
    move v0, v1

    .line 109
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$1408(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Ljava/lang/CharSequence;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassPasswordView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 419
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 422
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 424
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 426
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 452
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 427
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 430
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 431
    add-int/lit8 v2, v2, 0x1

    .line 432
    goto :goto_0

    .line 435
    :cond_2
    const/4 v0, 0x0

    .line 436
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 437
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 441
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 446
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 447
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 448
    goto :goto_0

    .line 452
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 508
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassPasswordView$1;)V

    .line 509
    .local v0, "accountAnalyzer":Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$AccountAnalyzer;->start()V

    .line 510
    return-void
.end method

.method private resizeKeyboardScreen()V
    .locals 5

    .prologue
    .line 366
    sget v3, Lcom/android/keyguard/R$id;->keyguard_top_space:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 367
    .local v1, "topSpace":Landroid/view/View;
    if-nez v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_spassword_top_margin_min_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 373
    .local v2, "topSpaceHeight":I
    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 375
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 376
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 379
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "topSpaceHeight":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_spassword_top_margin_max_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 381
    .restart local v2    # "topSpaceHeight":I
    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 383
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 384
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 492
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 484
    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 680
    const-string v0, "KeyguardSPassPasswordView"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 684
    :cond_0
    return-void
.end method

.method public getLockoutAttemptDeadlineforchina()J
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 704
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "lockscreen.lockoutattemptdeadlineforchina"

    invoke-static {v1, v8, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 705
    .local v2, "deadline":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 706
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 707
    .local v4, "now":J
    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    move-wide v2, v6

    .line 710
    .end local v2    # "deadline":J
    :cond_0
    return-wide v2
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/android/keyguard/R$id;->passwordEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 464
    sget v0, Lcom/android/keyguard/R$string;->kg_finger_print_backup_password_failed:I

    return v0
.end method

.method protected handleAttemptLockoutForChina(J)V
    .locals 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 715
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setPasswordEntryEnabled(Z)V

    .line 716
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 717
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 719
    .local v8, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 723
    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;

    sub-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 747
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    .line 357
    const-string v0, "KeyguardSPassPasswordView"

    const-string v1, "keyboard ConfigurationChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mMobileKeyboard:Z

    .line 359
    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCurrentMobileKeyboard:I

    .line 360
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->reset()V

    .line 362
    :cond_0
    return-void

    .line 358
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onDetachedFromWindow()V

    .line 175
    const-string v0, "KeyguardSPassPasswordView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->cleanUp()V

    .line 177
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 497
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->verifySpassPasswordAndUnlock()V

    .line 500
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 260
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 262
    sget v4, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;

    .line 263
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mForgotPatternButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 271
    .local v0, "imeOrDeleteButtonVisible":Z
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 274
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getPasswordTextViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 275
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v4

    if-nez v4, :cond_1

    .line 276
    sget v4, Lcom/android/keyguard/R$id;->keyguard_title_message_backup:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    .line 278
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 279
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 281
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 282
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setNewActionPopupMenu(IZ)V

    .line 288
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 296
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 298
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 320
    sget v4, Lcom/android/keyguard/R$id;->switch_ime_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 321
    .local v3, "switchImeButton":Landroid/view/View;
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v4, v6}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 322
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 323
    const/4 v0, 0x1

    .line 324
    new-instance v4, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_2
    if-nez v0, :cond_3

    .line 335
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 336
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_3

    move-object v1, v2

    .line 337
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 338
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 339
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 345
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->disableDevicePermanently()V

    .line 348
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->updateBlackTextOnWhiteWallpaper()V

    .line 349
    sget v4, Lcom/android/keyguard/R$id;->keyguard_single_emergency_carrier_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    .line 350
    sget v4, Lcom/android/keyguard/R$id;->keyguard_backup_pin_emergency_carrier_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    .line 351
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 214
    const-string v0, "KeyguardSPassPasswordView"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 220
    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 225
    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 227
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 9
    .param p1, "reason"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 191
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 192
    const-string v2, "KeyguardSPassPasswordView"

    const-string v3, "onResume() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v7, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v2, :cond_3

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetState()V

    .line 196
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 203
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    .line 204
    .local v0, "attempts":I
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    .line 205
    .local v1, "encrypted":Z
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    if-nez v1, :cond_2

    .line 206
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    :cond_2
    return-void

    .line 197
    .end local v0    # "attempts":I
    .end local v1    # "encrypted":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    .line 200
    .restart local v0    # "attempts":I
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_alternative_password_fail_title_instructions:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 488
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 231
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetPasswordText(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_5

    .line 234
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getLockoutAttemptDeadlineforchina()J

    move-result-wide v0

    .line 237
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockoutForChina(J)V

    .line 253
    .end local v0    # "deadline":J
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 254
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resizeKeyboardScreen()V

    .line 256
    :cond_1
    return-void

    .line 240
    .restart local v0    # "deadline":J
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetState()V

    goto :goto_0

    .line 243
    .end local v0    # "deadline":J
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 244
    .restart local v0    # "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockout(J)V

    goto :goto_0

    .line 247
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetState()V

    goto :goto_0

    .line 251
    .end local v0    # "deadline":J
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method protected resetPasswordText(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    return-void
.end method

.method protected resetState()V
    .locals 4

    .prologue
    .line 115
    const-string v0, "KeyguardSPassPasswordView"

    const-string v1, "resetState () "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_finger_print_backup_password_title_instructions_without_finger_print:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_spass_password_backup_password_font_small:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 129
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    :cond_1
    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_spass_backup_password_introductions:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLockoutAttemptDeadlineForChina(I)J
    .locals 6
    .param p1, "attempts"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x5

    .line 689
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 690
    .local v0, "c":Ljava/util/Calendar;
    if-ne p1, v4, :cond_0

    .line 691
    const/16 v1, 0xd

    const/16 v4, 0x3c

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 698
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 699
    .local v2, "deadline":J
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lockscreen.lockoutattemptdeadlineforchina"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 700
    return-wide v2

    .line 692
    .end local v2    # "deadline":J
    :cond_0
    if-ne p1, v5, :cond_1

    .line 693
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 695
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 408
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setAlpha(F)V

    .line 471
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 472
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 5

    .prologue
    const v2, -0x50506

    const v1, -0xbbbbbc

    .line 150
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateBlackTextOnWhiteWallpaper()V

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 153
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 160
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 170
    :cond_1
    :goto_1
    return-void

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowColor()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1
.end method

.method protected verifySpassPasswordAndUnlock()V
    .locals 14

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getPasswordText()Ljava/lang/String;

    move-result-object v10

    .line 588
    .local v10, "entry":Ljava/lang/String;
    const/4 v12, 0x0

    .line 590
    .local v12, "isUnpackMode":Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportUnpackMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const/4 v12, 0x1

    .line 592
    const-string v0, "KeyguardSPassPasswordView"

    const-string v1, "** verifyPasswordAndUnlock() in isUnpackMode = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternUtils;->checkFingerprintPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz v12, :cond_3

    .line 597
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setNullHintMessage()V

    .line 598
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 601
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 603
    new-instance v11, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_UNLOCKED_BY_PASSWORD"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 676
    .end local v11    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->resetPasswordText(Z)V

    .line 677
    return-void

    .line 607
    :cond_3
    const/4 v6, 0x0

    .line 608
    .local v6, "attempts":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_a

    .line 611
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v6

    .line 614
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v7

    .line 615
    .local v7, "encrypted":Z
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEnableFallback:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    if-lt v6, v0, :cond_4

    if-nez v7, :cond_4

    .line 617
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mEmergencyArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mAccountEmergencyArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    :cond_4
    rsub-int/lit8 v13, v6, 0xa

    .line 622
    .local v13, "remaining":I
    rem-int/lit8 v0, v6, 0x5

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_5

    if-eqz v13, :cond_7

    .line 624
    :cond_5
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 626
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setLockoutAttemptDeadlineForChina(I)J

    move-result-wide v8

    .line 627
    .local v8, "deadline":J
    invoke-virtual {p0, v8, v9}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockoutForChina(J)V

    .line 632
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 633
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_alternative_password_fail_title_instructions:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    .end local v7    # "encrypted":Z
    .end local v8    # "deadline":J
    .end local v13    # "remaining":I
    :cond_7
    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->isCountDownTimerRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 645
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWrongPasswordStringId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(IZ)V

    .line 646
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_8

    .line 647
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 650
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mPasswordTimeTick:I

    .line 651
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;

    const-wide/16 v2, 0x1f40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView$5;-><init>(Lcom/android/keyguard/sec/KeyguardSPassPasswordView;JJ)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    .line 670
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_0

    .line 629
    .restart local v7    # "encrypted":Z
    .restart local v13    # "remaining":I
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v8

    .line 630
    .restart local v8    # "deadline":J
    invoke-virtual {p0, v8, v9}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->handleAttemptLockout(J)V

    goto :goto_1

    .line 639
    .end local v7    # "encrypted":Z
    .end local v8    # "deadline":J
    .end local v13    # "remaining":I
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v6

    goto :goto_2

    .line 672
    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->getFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassPasswordView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0
.end method
