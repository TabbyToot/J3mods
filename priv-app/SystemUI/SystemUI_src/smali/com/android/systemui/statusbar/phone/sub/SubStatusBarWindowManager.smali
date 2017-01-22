.class public Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;
.super Ljava/lang/Object;
.source "SubStatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;,
        Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubStatusBarWindowManager"


# instance fields
.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

.field private final mKeyguardScreenRotation:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mSubStatusBarWindowView:Landroid/view/View;

.field private mWindowManagerImpl:Landroid/view/WindowManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mKeyguardScreenRotation:Z

    .line 63
    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->getScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 144
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 220
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 221
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyHeight(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sViewCoverShowing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sAppCoverShowing:Z

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 203
    .local v0, "useFullScreen":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 206
    :cond_1
    return-void

    .end local v0    # "useFullScreen":Z
    :cond_2
    move v0, v1

    .line 200
    goto :goto_0

    .restart local v0    # "useFullScreen":Z
    :cond_3
    move v2, v1

    .line 204
    goto :goto_1
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    const v2, -0x20001

    .line 171
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 182
    :goto_0
    return-void

    .line 175
    :cond_0
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarFocusable:Z

    if-eqz v0, :cond_2

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    .line 185
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardFadingAway:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 188
    .local v0, "expanded":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 194
    :goto_1
    const-string v1, "SubStatusBarWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyHeight h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fa = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardFadingAway:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sAppCoverShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sViewCoverShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 185
    .end local v0    # "expanded":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    .restart local v0    # "expanded":Z
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    .line 209
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    const v3, -0x100001

    .line 113
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isHomeWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 121
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->isDisableStatusBarTransparent:Z

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 128
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.action.FLOATING_BACK_KEY_VISIBILITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.extra.FLOATING_BACK_KEY_VISIBLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    :goto_1
    return-void

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.action.FLOATING_BACK_KEY_VISIBILITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.extra.FLOATING_BACK_KEY_VISIBLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private getScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)I
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .prologue
    .line 147
    const/4 v0, -0x1

    .line 149
    .local v0, "orientation":I
    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-eqz v1, :cond_0

    .line 151
    const/4 v0, 0x2

    .line 159
    :goto_0
    return v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
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


# virtual methods
.method public add(Landroid/view/View;I)V
    .locals 7
    .param p1, "statusBarView"    # Landroid/view/View;
    .param p2, "barHeight"    # I

    .prologue
    .line 82
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SubStatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    .line 99
    iput p2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mBarHeight:I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    .line 102
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 103
    .local v6, "display":Landroid/view/Display;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, v6}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method

.method public getScreenOrientation(Z)I
    .locals 1
    .param p1, "isOccluded"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardOccluded:Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    return v0
.end method

.method public getSubStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    return-object v0
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->bouncerShowing:Z

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 263
    return-void
.end method

.method public setCoverShowing(ZZI)V
    .locals 2
    .param p1, "sViewShowing"    # Z
    .param p2, "sAppShowing"    # Z
    .param p3, "coverType"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sViewCoverShowing:Z

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->sAppCoverShowing:Z

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->isFlipCover:Z

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 281
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1
    .param p1, "keyguardFadingAway"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardFadingAway:Z

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 268
    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardNeedsInput:Z

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 242
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardOccluded:Z

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 237
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardShowing:Z

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 232
    return-void
.end method

.method public setKeyguardUserActivityTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-wide p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 258
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->qsExpanded:Z

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 273
    return-void
.end method

.method public setStatusBarExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarExpanded:Z

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarFocusable:Z

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 248
    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarFocusable:Z

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 253
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;->statusBarState:I

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V

    .line 290
    return-void
.end method
