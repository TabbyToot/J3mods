.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.super Ljava/lang/Object;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;
    }
.end annotation


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final AWAKE_INTERVAL_DEFAULT_MS_LIVE_DEMO:I = 0x927c0

.field private static final AWAKE_INTERVAL_DEFAULT_MS_WITH_POWER_SAVING:I = 0xbb8

.field private static final AWAKE_INTERVAL_DEFAULT_MS_WITH_SMART_STAY:I = 0x1388

.field private static final AWAKE_INTERVAL_DEFAULT_MS_WITH_TMO:I = 0x1770

.field private static final MSG_USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x64


# instance fields
.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

.field private final mHandler:Landroid/os/Handler;

.field private mIsSupportWindowCover:Z

.field private final mKeyguardScreenRotation:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mStatusBarView:Landroid/view/View;

.field private mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

.field private mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mIsSupportWindowCover:Z

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 420
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    .line 434
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    .line 77
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->startObservingUserActivityTimeout()V

    .line 91
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->handleUserActivityTimeoutChanged()V

    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 167
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applySViewCoverFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 305
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 308
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 309
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    :cond_0
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 261
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 264
    .local v0, "useFullScreen":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 267
    :cond_1
    return-void

    .end local v0    # "useFullScreen":Z
    :cond_2
    move v0, v1

    .line 261
    goto :goto_0

    .restart local v0    # "useFullScreen":Z
    :cond_3
    move v2, v1

    .line 265
    goto :goto_1
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const v3, -0x20001

    .line 204
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 215
    :goto_0
    const-string v1, "StatusBar-Window"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fnf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sanc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", kni="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sbf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-nez v0, :cond_4

    .line 222
    const-string v0, "CoverUI"

    const-string v1, "applyFocusableFlag() : Focusable for SViewCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 225
    const-string v0, "CoverUI"

    const-string v1, "applyFocusableFlag() : SAMSUNG_FLAG_SVIEW_COVER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 238
    :goto_2
    return-void

    .line 208
    :cond_0
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    if-eqz v0, :cond_2

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_0

    .line 215
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 228
    :cond_4
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-eqz v0, :cond_5

    .line 229
    const-string v0, "CoverUI"

    const-string v1, "applyFocusableFlag() : Remove Focusable for AppCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 234
    :cond_5
    const-string v0, "CoverUI"

    const-string v1, "applyFocusableFlag() : Remove SAMSUNG_FLAG_SVIEW_COVER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_2
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const/4 v3, -0x1

    .line 241
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 243
    .local v0, "expanded":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 249
    :goto_1
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-eqz v1, :cond_4

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 255
    :cond_1
    :goto_2
    const-string v1, "CoverUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyHeight h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fa = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 241
    .end local v0    # "expanded":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    .restart local v0    # "expanded":Z
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 251
    :cond_4
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 290
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const v2, -0x100001

    .line 137
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isHomeWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 145
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->isDisableStatusBarTransparent:Z

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 154
    :cond_1
    :goto_1
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1
.end method

.method private applySViewCoverFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 158
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_0
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 270
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v4, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 282
    :goto_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v2, 0x1770

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v4, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 287
    :cond_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_0
.end method

.method private getScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)I
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 170
    const/4 v0, -0x1

    .line 172
    .local v0, "orientation":I
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-eqz v1, :cond_1

    .line 174
    const/4 v0, 0x2

    .line 182
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mIsSupportWindowCover:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isFlipCover:Z

    if-nez v1, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 186
    :cond_0
    return v0

    .line 176
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 179
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handleUserActivityTimeoutChanged()V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 508
    :cond_0
    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startObservingUserActivityTimeout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaving_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isLowLevel"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_auto_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    .line 460
    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;I)V
    .locals 6
    .param p1, "statusBarView"    # Landroid/view/View;
    .param p2, "barHeight"    # I

    .prologue
    .line 113
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    .line 129
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 134
    return-void
.end method

.method public getScreenOrientation(Z)I
    .locals 2
    .param p1, "isOccluded"    # Z

    .prologue
    .line 192
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;)V

    .line 193
    .local v0, "newState":Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    .line 194
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isFlipCover:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isFlipCover:Z

    .line 199
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)I

    move-result v1

    return v1
.end method

.method public getUserActivityTimeout()J
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 463
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "intelligent_sleep_mode"

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v7, :cond_6

    move v6, v7

    .line 465
    .local v6, "isSmartStayOn":Z
    :goto_0
    const/4 v4, 0x0

    .line 470
    .local v4, "isPowerSavingMode":Z
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "psm_switch"

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v7, :cond_7

    move v4, v7

    .line 472
    :goto_1
    if-nez v4, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ultra_powersaving_mode"

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eq v9, v7, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "emergency_mode"

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v7, :cond_8

    :cond_0
    move v5, v7

    .line 476
    .local v5, "isPowerSavingOn":Z
    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v5, :cond_1

    .line 477
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "isLowLevel"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_9

    move v3, v7

    .line 478
    .local v3, "isLowLevel":Z
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "psm_auto_turn_on"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_a

    move v2, v7

    .line 480
    .local v2, "isAutoEnable":Z
    :goto_4
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 481
    const/4 v5, 0x0

    .line 485
    .end local v2    # "isAutoEnable":Z
    .end local v3    # "isLowLevel":Z
    :cond_1
    const-wide/16 v0, 0x2710

    .line 487
    .local v0, "displayTimeout":J
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTMOModel()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 488
    const-wide/16 v0, 0x1770

    .line 491
    :cond_2
    if-ne v6, v7, :cond_3

    const-wide/16 v8, 0x1388

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .end local v0    # "displayTimeout":J
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 493
    .restart local v0    # "displayTimeout":J
    if-ne v5, v7, :cond_4

    const-wide/16 v8, 0xbb8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .end local v0    # "displayTimeout":J
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 496
    .restart local v0    # "displayTimeout":J
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportUnpackMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 497
    const-wide/32 v0, 0x927c0

    .line 500
    :cond_5
    return-wide v0

    .end local v0    # "displayTimeout":J
    .end local v4    # "isPowerSavingMode":Z
    .end local v5    # "isPowerSavingOn":Z
    .end local v6    # "isSmartStayOn":Z
    :cond_6
    move v6, v8

    .line 463
    goto/16 :goto_0

    .restart local v4    # "isPowerSavingMode":Z
    .restart local v6    # "isSmartStayOn":Z
    :cond_7
    move v4, v8

    .line 470
    goto/16 :goto_1

    :cond_8
    move v5, v8

    .line 472
    goto :goto_2

    .restart local v5    # "isPowerSavingOn":Z
    :cond_9
    move v3, v8

    .line 477
    goto :goto_3

    .restart local v3    # "isLowLevel":Z
    :cond_a
    move v2, v8

    .line 478
    goto :goto_4
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 350
    return-void
.end method

.method public setCoverShowing(ZZI)V
    .locals 2
    .param p1, "sViewShowing"    # Z
    .param p2, "sAppShowing"    # Z
    .param p3, "coverType"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isFlipCover:Z

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 368
    return-void

    .line 366
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1
    .param p1, "keyguardFadingAway"    # Z

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 355
    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 329
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 324
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 319
    return-void
.end method

.method public setKeyguardUserActivityTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-wide p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 345
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 360
    return-void
.end method

.method public setStatusBarExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarExpanded:Z

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 335
    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 340
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 377
    return-void
.end method
