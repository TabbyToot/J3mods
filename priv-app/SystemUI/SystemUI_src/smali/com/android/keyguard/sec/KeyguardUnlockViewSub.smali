.class public Lcom/android/keyguard/sec/KeyguardUnlockViewSub;
.super Landroid/widget/FrameLayout;
.source "KeyguardUnlockViewSub.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DEBUG:Z

.field private static final MAX_AWAKE_TIME:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "KeyguardUnlockViewSub"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

.field private mResumedTimeMillis:J

.field private mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field protected mShowing:Z

.field private mUnlockExecuted:Z

.field private mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mResumedTimeMillis:J

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mShowing:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mUnlockExecuted:Z

    .line 262
    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardUnlockViewSub$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockViewSub;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 78
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->setFocusable(Z)V

    .line 81
    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->setFocusableInTouchMode(Z)V

    .line 83
    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 84
    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 85
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardUnlockViewSub;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockViewSub;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    return-object v0
.end method

.method private pokeWakelockWithTimeCheck()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x4e20

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 176
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .line 178
    .local v0, "diff":J
    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    const-wide/16 v4, 0x7530

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 118
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    .line 120
    .local v4, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x7f

    if-eq v7, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x7e

    if-eq v7, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x57

    if-eq v7, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x58

    if-eq v7, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x59

    if-eq v7, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_4

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "callDismiss":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->isExternal()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    const-string v7, "KeyguardUnlockViewSub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchKeyEvent : getDevice is null!! or isExternal ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->isExternal()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    const-string v7, "KeyguardUnlockViewSub"

    const-string v8, "dispatchKeyEvent : blueTooth"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x1

    .line 140
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sidesync_source_connect"

    invoke-static {v7, v8, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_5

    move v3, v5

    .line 141
    .local v3, "isSideSync":Z
    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "KMS_SERVICE_CONNECTED"

    invoke-static {v7, v8, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v6, :cond_6

    move v2, v6

    .line 142
    .local v2, "isKms":Z
    :goto_1
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 143
    :cond_1
    const-string v5, "KeyguardUnlockViewSub"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchKeyEvent : isSideSync ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isKms = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x1

    .line 147
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->isFolderDevice(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    const/4 v0, 0x1

    .line 150
    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v5, :cond_4

    .line 151
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6, v6}, Lcom/android/keyguard/ViewMediatorCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    .line 155
    .end local v0    # "callDismiss":Z
    .end local v2    # "isKms":Z
    .end local v3    # "isSideSync":Z
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    return v5

    .restart local v0    # "callDismiss":Z
    :cond_5
    move v3, v6

    .line 140
    goto :goto_0

    .restart local v3    # "isSideSync":Z
    :cond_6
    move v2, v5

    .line 141
    goto :goto_1
.end method

.method varargs doTransition(F[Landroid/view/View;)V
    .locals 5
    .param p1, "to"    # F
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 194
    if-nez p2, :cond_1

    .line 203
    :cond_0
    return-void

    .line 198
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 199
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 198
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 92
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->cleanUp()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 103
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUnlockExecuted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 227
    const-string v0, "KeyguardUnlockViewSub"

    const-string v1, "onUnlockExecuted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-nez v0, :cond_0

    .line 229
    const-string v0, "KeyguardUnlockViewSub"

    const-string v1, "mCallback is null we can\'t exit program"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mUnlockExecuted:Z

    if-nez v0, :cond_1

    .line 233
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mUnlockExecuted:Z

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/android/keyguard/ViewMediatorCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    .line 242
    :cond_2
    return-void
.end method

.method public onUnlockViewPressed()V
    .locals 2

    .prologue
    .line 246
    const-string v0, "KeyguardUnlockViewSub"

    const-string v1, "onUnlockViewPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 2

    .prologue
    .line 251
    const-string v0, "KeyguardUnlockViewSub"

    const-string v1, "onUnlockViewReleased()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mUnlockExecuted:Z

    .line 253
    return-void
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 2
    .param p1, "swiped"    # Z

    .prologue
    .line 257
    const-string v0, "KeyguardUnlockViewSub"

    const-string v1, "onUnlockViewSwiped()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 166
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 167
    const-string v1, "KeyguardUnlockViewSub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v0, "focused"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    if-nez p1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    .line 172
    :cond_1
    return-void

    .line 167
    :cond_2
    const-string v0, "unfocused"

    goto :goto_0
.end method

.method public setHelpText()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 285
    return-void
.end method

.method public showUnlockAffordance()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 206
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 207
    .local v1, "outRect":Landroid/graphics/Rect;
    const/4 v0, 0x1

    .line 208
    .local v0, "isValidRect":Z
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 210
    const-string v2, "KeyguardUnlockViewSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v2, "KeyguardUnlockViewSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-wide/16 v4, 0x1f4

    invoke-interface {v2, v4, v5, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 216
    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockViewSub;->pokeWakelockWithTimeCheck()V

    .line 223
    :cond_0
    return-void
.end method
